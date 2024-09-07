#include "conv_core.h"

// 输入特征图的维度�? [H][W][C] （高度�?�宽度�?��?�道数）
// 卷积核的维度�? [Ky][Kx][CHin][CHout] （卷积核的高度�?�宽度�?�输入�?�道数�?�输出�?�道数）

void Conv(ap_uint<16> CHin,ap_uint<16> Hin,ap_uint<16> Win,ap_uint<16> CHout,
		ap_uint<8> Kx,ap_uint<8> Ky,ap_uint<8> Sx,ap_uint<8> Sy,ap_uint<1> mode,ap_uint<1> relu_en,
		Dtype_f feature_in[],Dtype_w W[],Dtype_w bias[],Dtype_f feature_out[]
	)// mode: 0:VALID, 1:SAME
{
	//#pragma HLS PIPELINE enable_flush // HLS指令：开启流水线并使能刷�?
	#pragma HLS INTERFACE m_axi depth=4294967295 port=feature_out offset=slave // HLS接口指令：特征图输出端口，AXI接口
	#pragma HLS INTERFACE m_axi depth=4294967295 port=bias offset=slave // HLS接口指令：偏置端口，AXI接口
	#pragma HLS INTERFACE m_axi depth=4294967295 port=W offset=slave // HLS接口指令：卷积核权重端口，AXI接口
	#pragma HLS INTERFACE m_axi depth=4294967295 port=feature_in offset=slave // HLS接口指令：输入特征图端口，AXI接口
	#pragma HLS INTERFACE s_axilite port=relu_en // HLS接口指令：ReLU启用标志端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=CHout // HLS接口指令：输出�?�道数端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=Sx // HLS接口指令：水平步幅端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=Hin // HLS接口指令：输入特征图的高度端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=CHin // HLS接口指令：输入�?�道数端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=Kx // HLS接口指令：卷积核宽度端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=mode // HLS接口指令：卷积模式（VALID/SAME）端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=Sy // HLS接口指令：垂直步幅端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=Ky // HLS接口指令：卷积核高度端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=Win // HLS接口指令：输入特征图的宽度端口，AXI Lite接口
	#pragma HLS INTERFACE s_axilite port=return // HLS接口指令：返回端口，AXI Lite接口

	ap_uint<8> pad_x, pad_y; // 定义填充的宽度和高度
	if (mode == 0)
	{
		pad_x = 0; pad_y = 0; // VALID模式下，不进行填�?
	}
	else
	{
		pad_x = (Kx - 1) / 2; pad_y = (Ky - 1) / 2; // SAME模式下，计算填充大小
	}
	ap_uint<16> Hout, Wout; // 定义输出特征图的高度和宽�?
	Wout = (Win + 2 * pad_x - Kx) / Sx + 1; // 计算输出宽度
	Hout = (Hin + 2 * pad_y - Ky) / Sy + 1; // 计算输出高度

	for (int cout = 0; cout < CHout; cout++) // 遍历�?有输出�?�道
		for (int i = 0; i < Hout; i++) // 遍历输出特征图的高度
			for (int j = 0; j < Wout; j++) // 遍历输出特征图的宽度
			{
				Dtype_acc sum = 0; // 初始化卷积和
				for (int ii = 0; ii < Ky; ii++) // 遍历卷积核的高度
					for (int jj = 0; jj < Kx; jj++) // 遍历卷积核的宽度
					{
						ap_int<16> h = i * Sy - pad_y + ii; // 计算输入特征图的高度索引
						ap_int<16> w = j * Sx - pad_x + jj; // 计算输入特征图的宽度索引
						if (h >= 0 && w >= 0 && h < Hin && w < Win) // �?查索引是否在有效范围�?
						{
							for (int cin = 0; cin < CHin; cin++) // 遍历输入通道
							{
								// 计算卷积结果
								Dtype_mul tp = feature_in[h * CHin * Win + w * CHin + cin] * W[ii * Kx * CHin * CHout + jj * CHin * CHout + cin * CHout + cout];
								sum += tp; // 累加卷积结果
							}
						}
					}

				sum += bias[cout]; // 加上偏置
				if (relu_en & sum < 0) // 如果启用ReLU并且结果小于0
					sum = 0; // 应用ReLU�?活函�?
				feature_out[i * Wout * CHout + j * CHout + cout] = sum; // 存储输出特征�?
			}
}
