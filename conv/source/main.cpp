#include "stdio.h"
#include "conv_core.h"

// 定义输入特征图的宽度、高度和通道数
#define IN_WIDTH 10
#define IN_HEIGHT 10
#define IN_CH 16

// 定义卷积核的宽度、高度、水平步幅和垂直步幅
#define KERNEL_WIDTH 5
#define KERNEL_HEIGHT 5
#define X_STRIDE 1
#define Y_STRIDE 1

// 定义ReLU启用标志和填充模式
#define RELU_EN  0
#define MODE     0          // 0:VALID, 1:SAME
#define X_PADDING (MODE?(KERNEL_WIDTH-1)/2:0) // 根据模式计算水平填充
#define Y_PADDING (MODE?(KERNEL_HEIGHT-1)/2:0) // 根据模式计算垂直填充

// 定义输出特征图的通道数、宽度和高度
#define OUT_CH 1
#define OUT_WIDTH ((IN_WIDTH+2*X_PADDING-KERNEL_WIDTH)/X_STRIDE+1) // 计算输出宽度
#define OUT_HEIGHT ((IN_HEIGHT+2*Y_PADDING-KERNEL_HEIGHT)/Y_STRIDE+1) // 计算输出高度

int main(void)
{
    // 初始化输入特征图、卷积核权重和偏置
	Dtype_f feature_in[IN_HEIGHT][IN_WIDTH][IN_CH];
	Dtype_w W[KERNEL_HEIGHT][KERNEL_WIDTH][IN_CH][OUT_CH];
	Dtype_w bias[OUT_CH];
	Dtype_f feature_out[OUT_HEIGHT][OUT_WIDTH][OUT_CH];

    // 填充输入特征图的值
	for(int i=0;i<IN_HEIGHT;i++)
		for(int j=0;j<IN_WIDTH;j++)
			for(int cin=0;cin<IN_CH;cin++)
				feature_in[i][j][cin]=i*IN_WIDTH+j;

    // 填充卷积核权重的值
	for(int i=0;i<KERNEL_HEIGHT;i++)
		for(int j=0;j<KERNEL_WIDTH;j++)
			for(int cin=0;cin<IN_CH;cin++)
				for(int cout=0;cout<OUT_CH;cout++)
					W[i][j][cin][cout]=i*KERNEL_WIDTH+j;

    // 初始化偏置为0
	for(int cout=0;cout<OUT_CH;cout++)
		bias[cout]=0;

    // 打印初始消息
	printf("1234\n");

    // 调用卷积函数进行计算
	Conv(IN_CH,IN_HEIGHT,IN_WIDTH,OUT_CH,
			KERNEL_WIDTH,KERNEL_HEIGHT,X_STRIDE,Y_STRIDE,MODE,RELU_EN,
			feature_in[0][0],W[0][0][0],bias,feature_out[0][0]
		);

    // 打印输出特征图的结果
	for(int i=0;i<OUT_HEIGHT;i++)
		for(int j=0;j<OUT_WIDTH;j++)
			for(int cout=0;cout<OUT_CH;cout++)
			{
				printf("OUT[%d][%d][%d]=%f\n",i,j,cout,feature_out[i][j][cout]);
			}

	return 0;
}
