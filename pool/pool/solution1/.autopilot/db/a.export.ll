; ModuleID = 'C:/Users/19591/Desktop/mnist/pool/pool/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@mode1 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@bundle2 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@Pool_str = internal unnamed_addr constant [5 x i8] c"Pool\00"
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i2 @_ssdm_op_Read.s_axilite.i2(i2) {
entry:
  ret i2 %0
}

define weak i16 @_ssdm_op_Read.s_axilite.i16(i16) {
entry:
  ret i16 %0
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i8
  ret i8 %empty_4
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i30
  ret i30 %empty_5
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define void @Pool(float* %gmem, i16 %CHin_V, i16 %Hin_V, i16 %Win_V, i8 %Kx_V, i8 %Ky_V, i2 %mode_V, i32 %feature_in, i32 %feature_out) {
  %feature_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_out)
  %feature_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %feature_in)
  %mode_V_read = call i2 @_ssdm_op_Read.s_axilite.i2(i2 %mode_V)
  %Ky_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Ky_V)
  %Kx_V_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %Kx_V)
  %Win_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Win_V)
  %Hin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %Hin_V)
  %CHin_V_read = call i16 @_ssdm_op_Read.s_axilite.i16(i16 %CHin_V)
  %tmp_3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %feature_out_read, i32 2, i32 31)
  %tmp_31_cast = zext i30 %tmp_3 to i49
  %tmp_5 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %feature_in_read, i32 2, i32 31)
  %tmp_32_cast = zext i30 %tmp_5 to i48
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %CHin_V), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Hin_V), !map !106
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %Win_V), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Kx_V), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %Ky_V), !map !118
  call void (...)* @_ssdm_op_SpecBitsMap(i2 %mode_V), !map !122
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Pool_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_out, [10 x i8]* @mode1, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @bundle2, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %feature_in, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 4294967295, [1 x i8]* @bundle, [6 x i8]* @p_str2, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Win_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Kx_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %Hin_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i2 %mode_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %Ky_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %CHin_V, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %lhs_V = zext i8 %Kx_V_read to i16
  %r_V_15 = udiv i16 %Win_V_read, %lhs_V
  %rhs_V = zext i8 %Ky_V_read to i16
  %tmp_4 = udiv i16 %Hin_V_read, %rhs_V
  %tmp_6 = icmp eq i2 %mode_V_read, 0
  %tmp_7 = icmp eq i2 %mode_V_read, 1
  %rhs_V_1 = zext i16 %CHin_V_read to i32
  %rhs_V_2 = zext i16 %Win_V_read to i48
  %r_V_16 = mul i16 %rhs_V, %lhs_V
  %tmp_s = zext i16 %r_V_16 to i32
  %tmp_1 = sitofp i32 %tmp_s to float
  %rhs_V_1_cast = zext i16 %r_V_15 to i32
  %rhs_V_2_cast = zext i16 %CHin_V_read to i48
  %sum = select i1 %tmp_6, float 0.000000e+00, float 0x4376345780000000
  %tmp_2 = or i1 %tmp_6, %tmp_7
  %p_sum = select i1 %tmp_2, float %sum, float 0xC376345780000000
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader1011
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %op_assign_8 = phi i16 [ 0, %0 ], [ %c, %.loopexit.loopexit ]
  %i_op_assign_17_cast6 = zext i16 %op_assign_8 to i32
  %exitcond1 = icmp eq i16 %op_assign_8, %CHin_V_read
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65535, i64 0)
  %c = add i16 %op_assign_8, 1
  br i1 %exitcond1, label %7, label %.preheader1011.preheader

.preheader1011.preheader:                         ; preds = %.loopexit
  %rhs_V_7_cast = zext i16 %op_assign_8 to i48
  br label %.preheader1011

.preheader1011.loopexit:                          ; preds = %.preheader1010
  br label %.preheader1011

.preheader1011:                                   ; preds = %.preheader1011.loopexit, %.preheader1011.preheader
  %i_op_assign_s = phi i16 [ 0, %.preheader1011.preheader ], [ %i, %.preheader1011.loopexit ]
  %phi_mul1 = phi i16 [ 0, %.preheader1011.preheader ], [ %next_mul2, %.preheader1011.loopexit ]
  %r_V_4 = phi i32 [ 0, %.preheader1011.preheader ], [ %next_mul1, %.preheader1011.loopexit ]
  %next_mul1 = add i32 %r_V_4, %rhs_V_1_cast
  %next_mul2 = add i16 %phi_mul1, %rhs_V
  %exitcond2 = icmp eq i16 %i_op_assign_s, %tmp_4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65535, i64 0)
  %i = add i16 %i_op_assign_s, 1
  br i1 %exitcond2, label %.loopexit.loopexit, label %.preheader1010.preheader

.preheader1010.preheader:                         ; preds = %.preheader1011
  %r_V_cast = zext i32 %r_V_4 to i48
  %r_V_1 = mul i48 %r_V_cast, %rhs_V_2_cast
  br label %.preheader1010

.preheader1010:                                   ; preds = %._crit_edge1017, %.preheader1010.preheader
  %i_op_assign_1 = phi i16 [ %j, %._crit_edge1017 ], [ 0, %.preheader1010.preheader ]
  %r_V_10 = phi i32 [ %next_mul, %._crit_edge1017 ], [ 0, %.preheader1010.preheader ]
  %phi_mul8 = phi i16 [ %next_mul9, %._crit_edge1017 ], [ 0, %.preheader1010.preheader ]
  %next_mul9 = add i16 %phi_mul8, %lhs_V
  %next_mul = add i32 %r_V_10, %rhs_V_1
  %exitcond = icmp eq i16 %i_op_assign_1, %r_V_15
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65535, i64 0)
  %j = add i16 %i_op_assign_1, 1
  br i1 %exitcond, label %.preheader1011.loopexit, label %.preheader1009.preheader

.preheader1009.preheader:                         ; preds = %.preheader1010
  br label %.preheader1009

.preheader1009.loopexit:                          ; preds = %.preheader
  br label %.preheader1009

.preheader1009:                                   ; preds = %.preheader1009.preheader, %.preheader1009.loopexit
  %i_op_assign = phi float [ %sum_3, %.preheader1009.loopexit ], [ %p_sum, %.preheader1009.preheader ]
  %i_op_assign_2 = phi i8 [ %ii, %.preheader1009.loopexit ], [ 0, %.preheader1009.preheader ]
  %exitcond3 = icmp eq i8 %i_op_assign_2, %Ky_V_read
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 255, i64 0)
  %ii = add i8 %i_op_assign_2, 1
  br i1 %exitcond3, label %5, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1009
  %tmp_8 = zext i8 %i_op_assign_2 to i16
  %h_V = add i16 %tmp_8, %phi_mul1
  %lhs_V_1 = sext i16 %h_V to i32
  %r_V = mul nsw i32 %lhs_V_1, %rhs_V_1
  %lhs_V_2 = sext i32 %r_V to i48
  %r_V_2 = mul nsw i48 %lhs_V_2, %rhs_V_2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %sum_3 = phi float [ %i_op_assign, %.preheader.preheader ], [ %sum_3_be, %.preheader.backedge ]
  %i_op_assign_3 = phi i8 [ 0, %.preheader.preheader ], [ %jj, %.preheader.backedge ]
  %exitcond4 = icmp eq i8 %i_op_assign_3, %Kx_V_read
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 255, i64 0)
  %jj = add i8 %i_op_assign_3, 1
  br i1 %exitcond4, label %.preheader1009.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_10 = zext i8 %i_op_assign_3 to i16
  %w_V = add i16 %phi_mul8, %tmp_10
  switch i2 %mode_V_read, label %.preheader.backedge [
    i2 0, label %2
    i2 1, label %3
    i2 -2, label %4
  ]

; <label>:2                                       ; preds = %1
  %lhs_V_3 = sext i16 %w_V to i32
  %r_V_5 = mul nsw i32 %rhs_V_1, %lhs_V_3
  %rhs_V_6_cast = sext i32 %r_V_5 to i48
  %r_V_6 = add i48 %rhs_V_6_cast, %r_V_2
  %r_V_7 = add i48 %rhs_V_7_cast, %r_V_6
  %feature_in2_sum6 = add i48 %r_V_7, %tmp_32_cast
  %feature_in2_sum6_cas = sext i48 %feature_in2_sum6 to i64
  %gmem_addr_1 = getelementptr inbounds float* %gmem, i64 %feature_in2_sum6_cas
  %gmem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_1, i32 1)
  %gmem_addr_1_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_1)
  %sum_2 = fadd float %sum_3, %gmem_addr_1_read
  br label %.preheader.backedge

; <label>:3                                       ; preds = %1
  %lhs_V_4 = sext i16 %w_V to i32
  %r_V_8 = mul nsw i32 %rhs_V_1, %lhs_V_4
  %rhs_V_8_cast = sext i32 %r_V_8 to i48
  %r_V_9 = add i48 %rhs_V_8_cast, %r_V_2
  %r_V_11 = add i48 %rhs_V_7_cast, %r_V_9
  %feature_in2_sum5 = add i48 %tmp_32_cast, %r_V_11
  %feature_in2_sum5_cas = sext i48 %feature_in2_sum5 to i64
  %gmem_addr_2 = getelementptr inbounds float* %gmem, i64 %feature_in2_sum5_cas
  %gmem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_2, i32 1)
  %gmem_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_2)
  %sum_3_to_int = bitcast float %sum_3 to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_3_to_int, i32 23, i32 30)
  %tmp_11 = trunc i32 %sum_3_to_int to i23
  %feature_in_load_1_to = bitcast float %gmem_addr_2_read to i32
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %feature_in_load_1_to, i32 23, i32 30)
  %tmp_13 = trunc i32 %feature_in_load_1_to to i23
  %notlhs1 = icmp ne i8 %tmp, -1
  %notrhs1 = icmp eq i23 %tmp_11, 0
  %tmp_14 = or i1 %notrhs1, %notlhs1
  %notlhs2 = icmp ne i8 %tmp_12, -1
  %notrhs2 = icmp eq i23 %tmp_13, 0
  %tmp_15 = or i1 %notrhs2, %notlhs2
  %tmp_16 = and i1 %tmp_14, %tmp_15
  %tmp_17 = fcmp ogt float %sum_3, %gmem_addr_2_read
  %tmp_18 = and i1 %tmp_16, %tmp_17
  %feature_in_load_1_su = select i1 %tmp_18, float %gmem_addr_2_read, float %sum_3
  br label %.preheader.backedge

; <label>:4                                       ; preds = %1
  %lhs_V_5 = sext i16 %w_V to i32
  %r_V_12 = mul nsw i32 %rhs_V_1, %lhs_V_5
  %rhs_V_9_cast = sext i32 %r_V_12 to i48
  %r_V_13 = add i48 %rhs_V_9_cast, %r_V_2
  %r_V_14 = add i48 %rhs_V_7_cast, %r_V_13
  %feature_in2_sum = add i48 %tmp_32_cast, %r_V_14
  %feature_in2_sum_cast = sext i48 %feature_in2_sum to i64
  %gmem_addr_3 = getelementptr inbounds float* %gmem, i64 %feature_in2_sum_cast
  %gmem_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_addr_3, i32 1)
  %gmem_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_addr_3)
  %sum_3_to_int7 = bitcast float %sum_3 to i32
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sum_3_to_int7, i32 23, i32 30)
  %tmp_20 = trunc i32 %sum_3_to_int7 to i23
  %feature_in_load_2_to = bitcast float %gmem_addr_3_read to i32
  %tmp_21 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %feature_in_load_2_to, i32 23, i32 30)
  %tmp_22 = trunc i32 %feature_in_load_2_to to i23
  %notlhs = icmp ne i8 %tmp_19, -1
  %notrhs = icmp eq i23 %tmp_20, 0
  %tmp_23 = or i1 %notrhs, %notlhs
  %notlhs8 = icmp ne i8 %tmp_21, -1
  %notrhs9 = icmp eq i23 %tmp_22, 0
  %tmp_24 = or i1 %notrhs9, %notlhs8
  %tmp_25 = and i1 %tmp_23, %tmp_24
  %tmp_26 = fcmp ogt float %sum_3, %gmem_addr_3_read
  %tmp_27 = and i1 %tmp_25, %tmp_26
  %sum_3_feature_in_loa = select i1 %tmp_27, float %sum_3, float %gmem_addr_3_read
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %4, %3, %2, %1
  %sum_3_be = phi float [ %sum_2, %2 ], [ %sum_3, %1 ], [ %feature_in_load_1_su, %3 ], [ %sum_3_feature_in_loa, %4 ]
  br label %.preheader

; <label>:5                                       ; preds = %.preheader1009
  br i1 %tmp_6, label %6, label %._crit_edge1017

; <label>:6                                       ; preds = %5
  %sum_1 = fdiv float %i_op_assign, %tmp_1
  br label %._crit_edge1017

._crit_edge1017:                                  ; preds = %6, %5
  %sum_5 = phi float [ %sum_1, %6 ], [ %i_op_assign, %5 ]
  %tmp1 = add i32 %i_op_assign_17_cast6, %r_V_10
  %tmp1_cast = zext i32 %tmp1 to i48
  %tmp_9 = add i48 %r_V_1, %tmp1_cast
  %tmp_17_cast_cast = zext i48 %tmp_9 to i49
  %feature_out4_sum = add i49 %tmp_17_cast_cast, %tmp_31_cast
  %feature_out4_sum_cas = zext i49 %feature_out4_sum to i64
  %gmem_addr = getelementptr inbounds float* %gmem, i64 %feature_out4_sum_cas
  %gmem_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_addr, float %sum_5, i4 -1)
  %gmem_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_addr)
  br label %.preheader1010

; <label>:7                                       ; preds = %.loopexit
  ret void
}

!opencl.kernels = !{!0, !7, !13, !19, !19, !7, !25, !7, !7, !7, !28, !28, !30, !30, !32, !7, !7, !7, !34, !34, !36, !36, !38, !7, !7, !7, !40, !40, !34, !34, !42, !45, !47, !7, !7, !7, !49, !49, !7, !51, !53, !7, !7, !7, !28, !28, !55, !55, !57, !7, !7, !7, !28, !28, !34, !34, !59, !7, !7, !7, !40, !40, !28, !28, !61, !7, !7, !40, !40, !63, !63, !7, !65, !65, !7, !7, !67, !69, !7, !7, !7, !28, !28, !71, !71, !73, !75, !7, !7, !7, !49, !49, !28, !28, !7, !77, !79, !7, !40, !40, !81, !83, !7, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!85}
!axi4.master.portmap = !{!92}
!axi4.slave.bundlemap = !{!93, !94}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<16>", metadata !"ap_uint<16>", metadata !"ap_uint<16>", metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"ap_uint<2>", metadata !"Dtype_f*", metadata !"Dtype_f*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"CHin", metadata !"Hin", metadata !"Win", metadata !"Kx", metadata !"Ky", metadata !"mode", metadata !"feature_in", metadata !"feature_out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!25 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"const ap_int_base<32, true> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!28 = metadata !{null, metadata !20, metadata !21, metadata !29, metadata !23, metadata !24, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!30 = metadata !{null, metadata !20, metadata !21, metadata !31, metadata !23, metadata !24, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!32 = metadata !{null, metadata !14, metadata !15, metadata !33, metadata !17, metadata !27, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<48, true> &"}
!34 = metadata !{null, metadata !20, metadata !21, metadata !35, metadata !23, metadata !24, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &"}
!36 = metadata !{null, metadata !20, metadata !21, metadata !37, metadata !23, metadata !24, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!38 = metadata !{null, metadata !14, metadata !15, metadata !39, metadata !17, metadata !27, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &", metadata !"const ap_int_base<16, false> &"}
!40 = metadata !{null, metadata !20, metadata !21, metadata !41, metadata !23, metadata !24, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!42 = metadata !{null, metadata !14, metadata !15, metadata !43, metadata !17, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<16, false> &"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!45 = metadata !{null, metadata !14, metadata !15, metadata !46, metadata !17, metadata !44, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"const ap_int_base<16, false> &"}
!47 = metadata !{null, metadata !14, metadata !15, metadata !48, metadata !17, metadata !27, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!49 = metadata !{null, metadata !20, metadata !21, metadata !50, metadata !23, metadata !24, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!51 = metadata !{null, metadata !14, metadata !15, metadata !52, metadata !17, metadata !18, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &", metadata !"int"}
!53 = metadata !{null, metadata !14, metadata !15, metadata !54, metadata !17, metadata !27, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &", metadata !"const ap_int_base<32, true> &"}
!55 = metadata !{null, metadata !20, metadata !21, metadata !56, metadata !23, metadata !24, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &"}
!57 = metadata !{null, metadata !14, metadata !15, metadata !58, metadata !17, metadata !27, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &", metadata !"const ap_int_base<32, true> &"}
!59 = metadata !{null, metadata !14, metadata !15, metadata !60, metadata !17, metadata !27, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<16, false> &"}
!61 = metadata !{null, metadata !14, metadata !15, metadata !62, metadata !17, metadata !27, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"const ap_int_base<16, false> &"}
!63 = metadata !{null, metadata !20, metadata !21, metadata !64, metadata !23, metadata !24, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!65 = metadata !{null, metadata !20, metadata !21, metadata !66, metadata !23, metadata !24, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, true> &"}
!67 = metadata !{null, metadata !14, metadata !15, metadata !68, metadata !17, metadata !18, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, true> &", metadata !"int"}
!69 = metadata !{null, metadata !14, metadata !15, metadata !70, metadata !17, metadata !27, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, true> &", metadata !"const ap_int_base<32, true> &"}
!71 = metadata !{null, metadata !20, metadata !21, metadata !72, metadata !23, metadata !24, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, true> &"}
!73 = metadata !{null, metadata !14, metadata !15, metadata !74, metadata !17, metadata !44, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<8, false> &"}
!75 = metadata !{null, metadata !14, metadata !15, metadata !76, metadata !17, metadata !27, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<8, false> &"}
!77 = metadata !{null, metadata !14, metadata !15, metadata !78, metadata !17, metadata !27, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2, false> &", metadata !"int"}
!79 = metadata !{null, metadata !20, metadata !21, metadata !29, metadata !23, metadata !80, metadata !6}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!81 = metadata !{null, metadata !20, metadata !21, metadata !82, metadata !23, metadata !80, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!83 = metadata !{null, metadata !14, metadata !15, metadata !84, metadata !17, metadata !27, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"const ap_int_base<8, false> &"}
!85 = metadata !{metadata !86, [0 x i32]* @llvm_global_ctors_0}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 31, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"llvm.global_ctors.0", metadata !90, metadata !"", i32 0, i32 31}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 0, i32 1}
!92 = metadata !{metadata !"gmem", metadata !"feature_in", metadata !"READONLY", metadata !"feature_out", metadata !"WRITEONLY"}
!93 = metadata !{metadata !"feature_in", metadata !""}
!94 = metadata !{metadata !"feature_out", metadata !""}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98, metadata !99}
!98 = metadata !{metadata !"feature_in", metadata !90, metadata !"float", i32 0, i32 31}
!99 = metadata !{metadata !"feature_out", metadata !90, metadata !"float", i32 0, i32 31}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 15, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"CHin.V", metadata !104, metadata !"uint16", i32 0, i32 15}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 0, i32 0}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 15, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"Hin.V", metadata !104, metadata !"uint16", i32 0, i32 15}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 15, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"Win.V", metadata !104, metadata !"uint16", i32 0, i32 15}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 7, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"Kx.V", metadata !104, metadata !"uint8", i32 0, i32 7}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 7, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"Ky.V", metadata !104, metadata !"uint8", i32 0, i32 7}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 1, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"mode.V", metadata !104, metadata !"uint2", i32 0, i32 1}
