; ModuleID = 'ir/25_0.ll'
source_filename = "/home/Jinming/research/aie_project/n2n/Work/aie/25_0/src/25_0.cc"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:256:256-a0:8:8-S256-n32:64-v128:32:32-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:1:32:32:32:32-p10:1:32:32:32:32-p11:1:32:32:32:32-p12:1:32:32:32:32-p13:1:32:32:32:32-p14:1:32:32:32:32-p15:1:32:32:32:32-p16:1:32:32:32:32-p17:1:32:32:32:32-p18:1:32:32:32:32-p19:1:32:32:32:32-p20:1:32:32:32:32-p21:1:32:32:32:32-p22:1:32:32:32:32-p23:1:32:32:32:32-p24:1:32:32:32:32"
target triple = "pdarch-unknown-unknown-elf"

%struct.v8int16 = type { %struct.ipd.custom_type.v16int8.v16int8 }
%struct.ipd.custom_type.v16int8.v16int8 = type { i128 }
%struct.window_internal = type { i32, i32, i8*, i8*, [2 x i8*], i8*, [2 x i8*], i32, i32, [2 x i32] }
%struct.input_window.0 = type { i32, i32, i8*, i8*, [2 x i8*], i8*, [2 x i8*], i32, i32, [2 x i32] }
%struct.output_window.1 = type { i32, i32, i8*, i8*, [2 x i8*], i8*, [2 x i8*], i32, i32, [2 x i32] }
%struct.ipd.custom_type.uint2_t.uint2_t = type { i8 }
%struct.ipd.custom_type.uint1_t.uint1_t = type { i8 }

$_Z4donev = comdat any

$_Z7acquirejj = comdat any

$_ZN12me_primitive7acquireEj7uint1_tj = comdat any

$_ZN7uint1_tC2Ei = comdat any

$_Z7releasejj = comdat any

$_ZN12me_primitive7releaseEj7uint1_tj = comdat any

$_ZN12me_primitive5eventE7uint2_t = comdat any

$_ZN7uint2_tC2Ei = comdat any

$_Z10cyclic_addIaEPT_S1_iS1_i = comdat any

@buf1 = dso_local global [384 x %struct.v8int16] zeroinitializer, align 16, !dbg !0
@buf1d = dso_local global [384 x %struct.v8int16] zeroinitializer, align 16, !dbg !56
@buf2 = dso_local global [384 x %struct.v8int16] zeroinitializer, align 16, !dbg !64
@buf2d = dso_local global [384 x %struct.v8int16] zeroinitializer, align 16, !dbg !66
@_ZL11sync_buffer = internal global [8 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !68
@__chess_separator_dummy = external dso_local global i8*, align 4
@__chess_separator_idummy = external dso_local global i32, align 4

; Function Attrs: norecurse nounwind
define dso_local i32 @main() addrspace(1) #0 !dbg !121 {
entry:
  %retval = alloca i32, align 4
  %window_buf1_buf1d = alloca [1 x %struct.window_internal], align 4
  %buf1_ptr = alloca i8*, align 4
  %buf1d_ptr = alloca i8*, align 4
  %window_buf2_buf2d = alloca [1 x %struct.window_internal], align 4
  %buf2_ptr = alloca i8*, align 4
  %buf2d_ptr = alloca i8*, align 4
  %index = alloca i32, align 4
  %proc_25_0_bounds = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4, !noalias !151
  store volatile i32 0, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !155, !tbaa !156, !noalias !151
  store [1 x %struct.window_internal] undef, [1 x %struct.window_internal]* %window_buf1_buf1d, align 4, !dbg !160, !noalias !151
  %0 = bitcast [1 x %struct.window_internal]* %window_buf1_buf1d to i8*, !dbg !160
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 52, i8* %0) #5, !dbg !160, !noalias !151
  call addrspace(1) void @llvm.dbg.declare(metadata [1 x %struct.window_internal]* %window_buf1_buf1d, metadata !125, metadata !DIExpression()), !dbg !161
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0a1s_struct.window_internals.i32([1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, metadata !162), !dbg !160, !noalias !151
  store i8* undef, i8** %buf1_ptr, align 4, !dbg !163, !noalias !151
  %2 = bitcast i8** %buf1_ptr to i8*, !dbg !163
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !163, !noalias !151
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buf1_ptr, metadata !141, metadata !DIExpression()), !dbg !164
  store i8* bitcast ([384 x %struct.v8int16]* @buf1 to i8*), i8** %buf1_ptr, align 4, !dbg !164, !tbaa !165, !noalias !151
  store i8* undef, i8** %buf1d_ptr, align 4, !dbg !167, !noalias !151
  %3 = bitcast i8** %buf1d_ptr to i8*, !dbg !167
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !167, !noalias !151
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buf1d_ptr, metadata !142, metadata !DIExpression()), !dbg !168
  store i8* bitcast ([384 x %struct.v8int16]* @buf1d to i8*), i8** %buf1d_ptr, align 4, !dbg !168, !tbaa !165, !noalias !151
  %arraydecay = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, i32 0, !dbg !169
  call addrspace(1) void @_ZL11window_initP15window_internaliP7v8int16jS2_jii(%struct.window_internal* %arraydecay, i32 1, %struct.v8int16* getelementptr inbounds ([384 x %struct.v8int16], [384 x %struct.v8int16]* @buf1, i32 0, i32 0), i32 16, %struct.v8int16* getelementptr inbounds ([384 x %struct.v8int16], [384 x %struct.v8int16]* @buf1d, i32 0, i32 0), i32 17, i32 384, i32 384) #16, !dbg !170, !noalias !151
  store [1 x %struct.window_internal] undef, [1 x %struct.window_internal]* %window_buf2_buf2d, align 4, !dbg !171, !noalias !151
  %4 = bitcast [1 x %struct.window_internal]* %window_buf2_buf2d to i8*, !dbg !171
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 52, i8* %4) #5, !dbg !171, !noalias !151
  call addrspace(1) void @llvm.dbg.declare(metadata [1 x %struct.window_internal]* %window_buf2_buf2d, metadata !143, metadata !DIExpression()), !dbg !172
  %5 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0a1s_struct.window_internals.i32([1 x %struct.window_internal]* %window_buf2_buf2d, i32 0, metadata !173), !dbg !171, !noalias !151
  store i8* undef, i8** %buf2_ptr, align 4, !dbg !174, !noalias !151
  %6 = bitcast i8** %buf2_ptr to i8*, !dbg !174
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !174, !noalias !151
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buf2_ptr, metadata !144, metadata !DIExpression()), !dbg !175
  store i8* bitcast ([384 x %struct.v8int16]* @buf2 to i8*), i8** %buf2_ptr, align 4, !dbg !175, !tbaa !165, !noalias !151
  store i8* undef, i8** %buf2d_ptr, align 4, !dbg !176, !noalias !151
  %7 = bitcast i8** %buf2d_ptr to i8*, !dbg !176
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !176, !noalias !151
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buf2d_ptr, metadata !145, metadata !DIExpression()), !dbg !177
  store i8* bitcast ([384 x %struct.v8int16]* @buf2d to i8*), i8** %buf2d_ptr, align 4, !dbg !177, !tbaa !165, !noalias !151
  %arraydecay1 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf2_buf2d, i32 0, i32 0, !dbg !178
  call addrspace(1) void @_ZL11window_initP15window_internaliP7v8int16jS2_jii(%struct.window_internal* %arraydecay1, i32 1, %struct.v8int16* getelementptr inbounds ([384 x %struct.v8int16], [384 x %struct.v8int16]* @buf2, i32 0, i32 0), i32 48, %struct.v8int16* getelementptr inbounds ([384 x %struct.v8int16], [384 x %struct.v8int16]* @buf2d, i32 0, i32 0), i32 49, i32 384, i32 384) #16, !dbg !179, !noalias !151
  store i32 undef, i32* %index, align 4, !dbg !180, !noalias !151
  %8 = bitcast i32* %index to i8*, !dbg !180
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !180, !noalias !151
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %index, metadata !146, metadata !DIExpression()), !dbg !181
  store i32 0, i32* %index, align 4, !dbg !181, !tbaa !156, !noalias !151
  br label %while.cond, !dbg !182

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body, !dbg !182

while.body:                                       ; preds = %while.cond
  store i32 undef, i32* %proc_25_0_bounds, align 4, !dbg !183, !noalias !151
  %9 = bitcast i32* %proc_25_0_bounds to i8*, !dbg !183
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !183, !noalias !151
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %proc_25_0_bounds, metadata !149, metadata !DIExpression()), !dbg !184
  %10 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 1), align 4, !dbg !185, !tbaa !156, !noalias !151
  store i32 %10, i32* %proc_25_0_bounds, align 4, !dbg !184, !tbaa !156, !noalias !151
  br label %while.cond2, !dbg !186

while.cond2:                                      ; preds = %if.end, %while.body
  %11 = load i32, i32* %proc_25_0_bounds, align 4, !dbg !187, !tbaa !156, !noalias !151
  %tobool = icmp ne i32 %11, 0, !dbg !187
  br i1 %tobool, label %while.body3, label %while.end, !dbg !186

while.body3:                                      ; preds = %while.cond2
  %arraydecay4 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, i32 0, !dbg !188
  %12 = load i8*, i8** %buf1_ptr, align 4, !dbg !190, !tbaa !165, !noalias !151
  %13 = load i8*, i8** %buf1d_ptr, align 4, !dbg !191, !tbaa !165, !noalias !151
  %14 = load i32, i32* %index, align 4, !dbg !192, !tbaa !156, !noalias !151
  call addrspace(1) void @_ZL14window_acquireP15window_internaljjPaS1_iii(%struct.window_internal* %arraydecay4, i32 16, i32 17, i8* %12, i8* %13, i32 0, i32 %14, i32 1) #16, !dbg !193, !noalias !151
  %arraydecay5 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf2_buf2d, i32 0, i32 0, !dbg !194
  %15 = load i8*, i8** %buf2_ptr, align 4, !dbg !195, !tbaa !165, !noalias !151
  %16 = load i8*, i8** %buf2d_ptr, align 4, !dbg !196, !tbaa !165, !noalias !151
  %17 = load i32, i32* %index, align 4, !dbg !197, !tbaa !156, !noalias !151
  call addrspace(1) void @_ZL14window_acquireP15window_internaljjPaS1_iii(%struct.window_internal* %arraydecay5, i32 48, i32 49, i8* %15, i8* %16, i32 0, i32 %17, i32 0) #16, !dbg !198, !noalias !151
  %arraydecay6 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, i32 0, !dbg !199
  %call = call addrspace(1) %struct.input_window.0* @_ZL22get_input_window_int16P15window_internal(%struct.window_internal* %arraydecay6) #16, !dbg !200, !noalias !151
  %arraydecay7 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf2_buf2d, i32 0, i32 0, !dbg !201
  %call8 = call addrspace(1) %struct.output_window.1* @_ZL23get_output_window_int16P15window_internal(%struct.window_internal* %arraydecay7) #16, !dbg !202, !noalias !151
  call addrspace(1) void @_Z10n2n_trans2P12input_windowIsEP13output_windowIsE(%struct.input_window.0* %call, %struct.output_window.1* %call8) #16, !dbg !203, !noalias !151
  %arraydecay9 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, i32 0, !dbg !204
  %18 = load i8*, i8** %buf1_ptr, align 4, !dbg !205, !tbaa !165, !noalias !151
  %19 = load i8*, i8** %buf1d_ptr, align 4, !dbg !206, !tbaa !165, !noalias !151
  %20 = load i32, i32* %index, align 4, !dbg !207, !tbaa !156, !noalias !151
  call addrspace(1) void @_ZL14window_releaseP15window_internaljjPaS1_iii(%struct.window_internal* %arraydecay9, i32 16, i32 17, i8* %18, i8* %19, i32 0, i32 %20, i32 0) #16, !dbg !208, !noalias !151
  %arraydecay10 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf2_buf2d, i32 0, i32 0, !dbg !209
  %21 = load i8*, i8** %buf2_ptr, align 4, !dbg !210, !tbaa !165, !noalias !151
  %22 = load i8*, i8** %buf2d_ptr, align 4, !dbg !211, !tbaa !165, !noalias !151
  %23 = load i32, i32* %index, align 4, !dbg !212, !tbaa !156, !noalias !151
  call addrspace(1) void @_ZL14window_releaseP15window_internaljjPaS1_iii(%struct.window_internal* %arraydecay10, i32 48, i32 49, i8* %21, i8* %22, i32 0, i32 %23, i32 1) #16, !dbg !213, !noalias !151
  %24 = load i32, i32* %index, align 4, !dbg !214, !tbaa !156, !noalias !151
  %sub = sub nsw i32 1, %24, !dbg !215
  store i32 %sub, i32* %index, align 4, !dbg !216, !tbaa !156, !noalias !151
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !217, !noalias !151
  %25 = load i32, i32* %proc_25_0_bounds, align 4, !dbg !218, !tbaa !156, !noalias !151
  %cmp = icmp sgt i32 %25, 0, !dbg !220
  br i1 %cmp, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %while.body3
  %26 = load i32, i32* %proc_25_0_bounds, align 4, !dbg !222, !tbaa !156, !noalias !151
  %dec = add nsw i32 %26, -1, !dbg !222
  store i32 %dec, i32* %proc_25_0_bounds, align 4, !dbg !222, !tbaa !156, !noalias !151
  br label %if.end, !dbg !222

if.end:                                           ; preds = %if.then, %while.body3
  br label %while.cond2, !dbg !186, !llvm.loop !223

while.end:                                        ; preds = %while.cond2
  call addrspace(1) void @_Z4donev() #17, !dbg !225, !noalias !151
  %27 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !226, !tbaa !156, !noalias !151
  %cmp11 = icmp sgt i32 %27, 0, !dbg !228
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !229

if.then12:                                        ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !230

if.end13:                                         ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !231, !noalias !151
  br label %cleanup, !dbg !231

cleanup:                                          ; preds = %if.end13, %if.then12
  %28 = bitcast i32* %proc_25_0_bounds to i8*, !dbg !231
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !231, !noalias !151
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end14
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !182, !llvm.loop !232

while.end14:                                      ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !233, !noalias !151
  store i32 1, i32* %cleanup.dest.slot, align 4
  %29 = bitcast i32* %index to i8*, !dbg !234
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !234
  %30 = bitcast i8** %buf2d_ptr to i8*, !dbg !234
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !234
  %31 = bitcast i8** %buf2_ptr to i8*, !dbg !234
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !234
  %32 = bitcast [1 x %struct.window_internal]* %window_buf2_buf2d to i8*, !dbg !234
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 52, i8* %32) #5, !dbg !234
  %33 = bitcast i8** %buf1d_ptr to i8*, !dbg !234
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !234
  %34 = bitcast i8** %buf1_ptr to i8*, !dbg !234
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !234
  %35 = bitcast [1 x %struct.window_internal]* %window_buf1_buf1d to i8*, !dbg !234
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 52, i8* %35) #5, !dbg !234
  %36 = load i32, i32* %retval, align 4, !dbg !234
  ret i32 %36, !dbg !234

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) addrspace(1) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) addrspace(1) #2

; Function Attrs: inaccessiblememonly nounwind
declare i8* @llvm.noalias.decl.p0i8.p0a1s_struct.window_internals.i32([1 x %struct.window_internal]*, i32, metadata) addrspace(1) #3

; Function Attrs: inlinehint nounwind
define internal void @_ZL11window_initP15window_internaliP7v8int16jS2_jii(%struct.window_internal* %w, i32 %channels, %struct.v8int16* %buffer_ping, i32 %lockid_ping, %struct.v8int16* %buffer_pong, i32 %lockid_pong, i32 %size, i32 %winsize) addrspace(1) #4 !dbg !235 {
entry:
  %w.addr = alloca %struct.window_internal*, align 4
  %channels.addr = alloca i32, align 4
  %buffer_ping.addr = alloca %struct.v8int16*, align 4
  %lockid_ping.addr = alloca i32, align 4
  %buffer_pong.addr = alloca %struct.v8int16*, align 4
  %lockid_pong.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %winsize.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %sz = alloca i32, align 4
  %winsz = alloca i32, align 4
  store %struct.window_internal* %w, %struct.window_internal** %w.addr, align 4, !tbaa !165
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %w.addr, metadata !242, metadata !DIExpression()), !dbg !253
  store i32 %channels, i32* %channels.addr, align 4, !tbaa !156
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %channels.addr, metadata !243, metadata !DIExpression()), !dbg !253
  store %struct.v8int16* %buffer_ping, %struct.v8int16** %buffer_ping.addr, align 4, !tbaa !165
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16** %buffer_ping.addr, metadata !244, metadata !DIExpression()), !dbg !253
  store i32 %lockid_ping, i32* %lockid_ping.addr, align 4, !tbaa !156
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid_ping.addr, metadata !245, metadata !DIExpression()), !dbg !253
  store %struct.v8int16* %buffer_pong, %struct.v8int16** %buffer_pong.addr, align 4, !tbaa !165
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16** %buffer_pong.addr, metadata !246, metadata !DIExpression()), !dbg !253
  store i32 %lockid_pong, i32* %lockid_pong.addr, align 4, !tbaa !156
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid_pong.addr, metadata !247, metadata !DIExpression()), !dbg !253
  store i32 %size, i32* %size.addr, align 4, !tbaa !156
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %size.addr, metadata !248, metadata !DIExpression()), !dbg !253
  store i32 %winsize, i32* %winsize.addr, align 4, !tbaa !156
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %winsize.addr, metadata !249, metadata !DIExpression()), !dbg !253
  store i32 undef, i32* %s, align 4, !dbg !253
  %0 = bitcast i32* %s to i8*, !dbg !253
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !253
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %s, metadata !250, metadata !DIExpression()), !dbg !253
  store i32 16, i32* %s, align 4, !dbg !253, !tbaa !156
  store i32 undef, i32* %sz, align 4, !dbg !253
  %1 = bitcast i32* %sz to i8*, !dbg !253
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !253
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %sz, metadata !251, metadata !DIExpression()), !dbg !253
  %2 = load i32, i32* %size.addr, align 4, !dbg !253, !tbaa !156
  %3 = load i32, i32* %s, align 4, !dbg !253, !tbaa !156
  %mul = mul nsw i32 %2, %3, !dbg !253
  store i32 %mul, i32* %sz, align 4, !dbg !253, !tbaa !156
  store i32 undef, i32* %winsz, align 4, !dbg !253
  %4 = bitcast i32* %winsz to i8*, !dbg !253
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !253
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %winsz, metadata !252, metadata !DIExpression()), !dbg !253
  %5 = load i32, i32* %winsize.addr, align 4, !dbg !253, !tbaa !156
  %6 = load i32, i32* %s, align 4, !dbg !253, !tbaa !156
  %mul1 = mul nsw i32 %5, %6, !dbg !253
  store i32 %mul1, i32* %winsz, align 4, !dbg !253, !tbaa !156
  %7 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !253, !tbaa !165
  %8 = load i32, i32* %channels.addr, align 4, !dbg !253, !tbaa !156
  %9 = load %struct.v8int16*, %struct.v8int16** %buffer_ping.addr, align 4, !dbg !253, !tbaa !165
  %10 = bitcast %struct.v8int16* %9 to i8*, !dbg !253
  %11 = load i32, i32* %lockid_ping.addr, align 4, !dbg !253, !tbaa !156
  %12 = load %struct.v8int16*, %struct.v8int16** %buffer_pong.addr, align 4, !dbg !253, !tbaa !165
  %13 = bitcast %struct.v8int16* %12 to i8*, !dbg !253
  %14 = load i32, i32* %lockid_pong.addr, align 4, !dbg !253, !tbaa !156
  %15 = load i32, i32* %sz, align 4, !dbg !253, !tbaa !156
  %16 = load i32, i32* %winsz, align 4, !dbg !253, !tbaa !156
  call addrspace(1) void @_ZL11window_initP15window_internaliPajS1_jii(%struct.window_internal* %7, i32 %8, i8* %10, i32 %11, i8* %13, i32 %14, i32 %15, i32 %16) #16, !dbg !253
  %17 = bitcast i32* %winsz to i8*, !dbg !253
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #5, !dbg !253
  %18 = bitcast i32* %sz to i8*, !dbg !253
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #5, !dbg !253
  %19 = bitcast i32* %s to i8*, !dbg !253
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #5, !dbg !253
  ret void, !dbg !253
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL14window_acquireP15window_internaljjPaS1_iii(%struct.window_internal* %w, i32 %ping_lockid, i32 %pong_lockid, i8* chesscopy noalias %ping_buffer, i8* chesscopy noalias %pong_buffer, i32 %margin, i32 %index, i32 %type) addrspace(1) #4 !dbg !254 {
entry:
  %w.addr = alloca %struct.window_internal*, align 4
  %ping_lockid.addr = alloca i32, align 4
  %pong_lockid.addr = alloca i32, align 4
  %ping_buffer.addr = alloca i8*, align 4
  %pong_buffer.addr = alloca i8*, align 4
  %margin.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %lockid = alloca i32, align 4
  store %struct.window_internal* %w, %struct.window_internal** %w.addr, align 4, !tbaa !165, !noalias !267
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %w.addr, metadata !258, metadata !DIExpression()), !dbg !271
  store i32 %ping_lockid, i32* %ping_lockid.addr, align 4, !tbaa !156, !noalias !267
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ping_lockid.addr, metadata !259, metadata !DIExpression()), !dbg !272
  store i32 %pong_lockid, i32* %pong_lockid.addr, align 4, !tbaa !156, !noalias !267
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %pong_lockid.addr, metadata !260, metadata !DIExpression()), !dbg !273
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %ping_buffer.addr, i32 0, metadata !274), !noalias !267
  store i8* %ping_buffer, i8** %ping_buffer.addr, align 4, !tbaa !165, !noalias !267
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %ping_buffer.addr, metadata !261, metadata !DIExpression()), !dbg !275
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %pong_buffer.addr, i32 0, metadata !276), !noalias !267
  store i8* %pong_buffer, i8** %pong_buffer.addr, align 4, !tbaa !165, !noalias !267
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %pong_buffer.addr, metadata !262, metadata !DIExpression()), !dbg !277
  store i32 %margin, i32* %margin.addr, align 4, !tbaa !156, !noalias !267
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %margin.addr, metadata !263, metadata !DIExpression()), !dbg !278
  store i32 %index, i32* %index.addr, align 4, !tbaa !156, !noalias !267
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %index.addr, metadata !264, metadata !DIExpression()), !dbg !279
  store i32 %type, i32* %type.addr, align 4, !tbaa !156, !noalias !267
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %type.addr, metadata !265, metadata !DIExpression()), !dbg !280
  %2 = load i32, i32* %index.addr, align 4, !dbg !281, !tbaa !156, !noalias !267
  %tobool = icmp ne i32 %2, 0, !dbg !281
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !281

cond.true:                                        ; preds = %entry
  %3 = load i8*, i8** %pong_buffer.addr, align 4, !dbg !282, !tbaa !165, !noalias !267
  %4 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %3, i8* %1, i8** %pong_buffer.addr, i32 0, metadata !276), !dbg !282, !tbaa !165, !noalias !267
  br label %cond.end, !dbg !281

cond.false:                                       ; preds = %entry
  %5 = load i8*, i8** %ping_buffer.addr, align 4, !dbg !283, !tbaa !165, !noalias !267
  %6 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %5, i8* %0, i8** %ping_buffer.addr, i32 0, metadata !274), !dbg !283, !tbaa !165, !noalias !267
  br label %cond.end, !dbg !281

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %6, %cond.false ], !dbg !281
  %7 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !284, !tbaa !165, !noalias !267
  %buffer = getelementptr inbounds %struct.window_internal, %struct.window_internal* %7, i32 0, i32 5, !dbg !285
  store i8* %cond, i8** %buffer, align 4, !dbg !286, !tbaa !287, !noalias !267
  store i32 undef, i32* %lockid, align 4, !dbg !288, !noalias !267
  %8 = bitcast i32* %lockid to i8*, !dbg !288
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !288, !noalias !267
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid, metadata !266, metadata !DIExpression()), !dbg !289
  %9 = load i32, i32* %index.addr, align 4, !dbg !290, !tbaa !156, !noalias !267
  %tobool1 = icmp ne i32 %9, 0, !dbg !290
  br i1 %tobool1, label %cond.true2, label %cond.false3, !dbg !290

cond.true2:                                       ; preds = %cond.end
  %10 = load i32, i32* %pong_lockid.addr, align 4, !dbg !291, !tbaa !156, !noalias !267
  br label %cond.end4, !dbg !290

cond.false3:                                      ; preds = %cond.end
  %11 = load i32, i32* %ping_lockid.addr, align 4, !dbg !292, !tbaa !156, !noalias !267
  br label %cond.end4, !dbg !290

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi i32 [ %10, %cond.true2 ], [ %11, %cond.false3 ], !dbg !290
  store i32 %cond5, i32* %lockid, align 4, !dbg !289, !tbaa !156, !noalias !267
  %12 = load i32, i32* %index.addr, align 4, !dbg !293, !tbaa !156, !noalias !267
  %tobool6 = icmp ne i32 %12, 0, !dbg !293
  br i1 %tobool6, label %cond.true7, label %cond.false8, !dbg !293

cond.true7:                                       ; preds = %cond.end4
  %13 = load i8*, i8** %pong_buffer.addr, align 4, !dbg !294, !tbaa !165, !noalias !267
  %14 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %13, i8* %1, i8** %pong_buffer.addr, i32 0, metadata !276), !dbg !294, !tbaa !165, !noalias !267
  br label %cond.end9, !dbg !293

cond.false8:                                      ; preds = %cond.end4
  %15 = load i8*, i8** %ping_buffer.addr, align 4, !dbg !295, !tbaa !165, !noalias !267
  %16 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %15, i8* %0, i8** %ping_buffer.addr, i32 0, metadata !274), !dbg !295, !tbaa !165, !noalias !267
  br label %cond.end9, !dbg !293

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i8* [ %14, %cond.true7 ], [ %16, %cond.false8 ], !dbg !293
  %17 = load i32, i32* %margin.addr, align 4, !dbg !296, !tbaa !156, !noalias !267
  %add.ptr = getelementptr inbounds i8, i8* %cond10, i32 %17, !dbg !297
  %18 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !298, !tbaa !165, !noalias !267
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %18, i32 0, i32 3, !dbg !299
  store i8* %add.ptr, i8** %head, align 4, !dbg !300, !tbaa !287, !noalias !267
  %19 = load i32, i32* %lockid, align 4, !dbg !301, !tbaa !156, !noalias !267
  %20 = load i32, i32* %type.addr, align 4, !dbg !302, !tbaa !156, !noalias !267
  call addrspace(1) void @_Z7acquirejj(i32 %19, i32 %20) #17, !dbg !303, !noalias !267
  %21 = bitcast i32* %lockid to i8*, !dbg !304
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !304
  ret void, !dbg !304
}

; Function Attrs: inlinehint nounwind
define internal %struct.input_window.0* @_ZL22get_input_window_int16P15window_internal(%struct.window_internal* %wind) addrspace(1) #4 !dbg !305 !noalias !311 {
entry:
  %wind.addr = alloca %struct.window_internal*, align 4
  %toReturn = alloca %struct.input_window.0*, align 4
  store %struct.window_internal* %wind, %struct.window_internal** %wind.addr, align 4, !tbaa !165, !noalias !311
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %wind.addr, metadata !309, metadata !DIExpression()), !dbg !314
  store %struct.input_window.0* undef, %struct.input_window.0** %toReturn, align 4, !dbg !314, !noalias !311
  %0 = bitcast %struct.input_window.0** %toReturn to i8*, !dbg !314
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !314, !noalias !311
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %toReturn, metadata !310, metadata !DIExpression()), !dbg !314
  %1 = load %struct.window_internal*, %struct.window_internal** %wind.addr, align 4, !dbg !314, !tbaa !165, !noalias !311
  %2 = bitcast %struct.window_internal* %1 to %struct.input_window.0*, !dbg !314
  store %struct.input_window.0* %2, %struct.input_window.0** %toReturn, align 4, !dbg !314, !tbaa !165, !noalias !311
  %3 = load %struct.window_internal*, %struct.window_internal** %wind.addr, align 4, !dbg !314, !tbaa !165, !noalias !311
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %3, i32 0, i32 3, !dbg !314
  %4 = load i8*, i8** %head, align 4, !dbg !314, !tbaa !287, !noalias !311
  %5 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %4, i8* null, i8** %head, i32 0, metadata !311), !dbg !314, !tbaa !287, !noalias !311
  %6 = load %struct.input_window.0*, %struct.input_window.0** %toReturn, align 4, !dbg !314, !tbaa !165, !noalias !311
  %ptr = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %6, i32 0, i32 2, !dbg !314
  store i8* %5, i8** %ptr, align 4, !dbg !314, !tbaa !315, !noalias !311
  %7 = load %struct.input_window.0*, %struct.input_window.0** %toReturn, align 4, !dbg !314, !tbaa !165, !noalias !311
  %8 = bitcast %struct.input_window.0** %toReturn to i8*, !dbg !314
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !314
  ret %struct.input_window.0* %7, !dbg !314
}

; Function Attrs: inlinehint nounwind
define internal %struct.output_window.1* @_ZL23get_output_window_int16P15window_internal(%struct.window_internal* %wind) addrspace(1) #4 !dbg !317 !noalias !323 {
entry:
  %wind.addr = alloca %struct.window_internal*, align 4
  %toReturn = alloca %struct.output_window.1*, align 4
  store %struct.window_internal* %wind, %struct.window_internal** %wind.addr, align 4, !tbaa !165, !noalias !323
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %wind.addr, metadata !321, metadata !DIExpression()), !dbg !326
  store %struct.output_window.1* undef, %struct.output_window.1** %toReturn, align 4, !dbg !326, !noalias !323
  %0 = bitcast %struct.output_window.1** %toReturn to i8*, !dbg !326
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !326, !noalias !323
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window.1** %toReturn, metadata !322, metadata !DIExpression()), !dbg !326
  %1 = load %struct.window_internal*, %struct.window_internal** %wind.addr, align 4, !dbg !326, !tbaa !165, !noalias !323
  %2 = bitcast %struct.window_internal* %1 to %struct.output_window.1*, !dbg !326
  store %struct.output_window.1* %2, %struct.output_window.1** %toReturn, align 4, !dbg !326, !tbaa !165, !noalias !323
  %3 = load %struct.window_internal*, %struct.window_internal** %wind.addr, align 4, !dbg !326, !tbaa !165, !noalias !323
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %3, i32 0, i32 3, !dbg !326
  %4 = load i8*, i8** %head, align 4, !dbg !326, !tbaa !287, !noalias !323
  %5 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %4, i8* null, i8** %head, i32 0, metadata !323), !dbg !326, !tbaa !287, !noalias !323
  %6 = load %struct.output_window.1*, %struct.output_window.1** %toReturn, align 4, !dbg !326, !tbaa !165, !noalias !323
  %ptr = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %6, i32 0, i32 2, !dbg !326
  store i8* %5, i8** %ptr, align 4, !dbg !326, !tbaa !327, !noalias !323
  %7 = load %struct.output_window.1*, %struct.output_window.1** %toReturn, align 4, !dbg !326, !tbaa !165, !noalias !323
  %8 = bitcast %struct.output_window.1** %toReturn to i8*, !dbg !326
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !326
  ret %struct.output_window.1* %7, !dbg !326
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL14window_releaseP15window_internaljjPaS1_iii(%struct.window_internal* %w, i32 %ping_lockid, i32 %pong_lockid, i8* chesscopy noalias %ping_buffer, i8* chesscopy noalias %pong_buffer, i32 %margin, i32 %index, i32 %type) addrspace(1) #4 !dbg !329 !noalias !342 {
entry:
  %w.addr = alloca %struct.window_internal*, align 4
  %ping_lockid.addr = alloca i32, align 4
  %pong_lockid.addr = alloca i32, align 4
  %ping_buffer.addr = alloca i8*, align 4
  %pong_buffer.addr = alloca i8*, align 4
  %margin.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %h1 = alloca i8*, align 4
  %lockid = alloca i32, align 4
  store %struct.window_internal* %w, %struct.window_internal** %w.addr, align 4, !tbaa !165, !noalias !345
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %w.addr, metadata !331, metadata !DIExpression()), !dbg !348
  store i32 %ping_lockid, i32* %ping_lockid.addr, align 4, !tbaa !156, !noalias !345
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ping_lockid.addr, metadata !332, metadata !DIExpression()), !dbg !349
  store i32 %pong_lockid, i32* %pong_lockid.addr, align 4, !tbaa !156, !noalias !345
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %pong_lockid.addr, metadata !333, metadata !DIExpression()), !dbg !350
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %ping_buffer.addr, i32 0, metadata !351), !noalias !345
  store i8* %ping_buffer, i8** %ping_buffer.addr, align 4, !tbaa !165, !noalias !345
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %ping_buffer.addr, metadata !334, metadata !DIExpression()), !dbg !352
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %pong_buffer.addr, i32 0, metadata !353), !noalias !345
  store i8* %pong_buffer, i8** %pong_buffer.addr, align 4, !tbaa !165, !noalias !345
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %pong_buffer.addr, metadata !335, metadata !DIExpression()), !dbg !354
  store i32 %margin, i32* %margin.addr, align 4, !tbaa !156, !noalias !345
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %margin.addr, metadata !336, metadata !DIExpression()), !dbg !355
  store i32 %index, i32* %index.addr, align 4, !tbaa !156, !noalias !345
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %index.addr, metadata !337, metadata !DIExpression()), !dbg !356
  store i32 %type, i32* %type.addr, align 4, !tbaa !156, !noalias !345
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %type.addr, metadata !338, metadata !DIExpression()), !dbg !357
  store i8* undef, i8** %h1, align 4, !dbg !358, !noalias !359
  %2 = bitcast i8** %h1 to i8*, !dbg !358
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !358, !noalias !359
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %h1, metadata !339, metadata !DIExpression()), !dbg !361
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %h1, i32 0, metadata !362), !dbg !358, !noalias !359
  %4 = load i32, i32* %index.addr, align 4, !dbg !363, !tbaa !156, !noalias !359
  %tobool = icmp ne i32 %4, 0, !dbg !363
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !363

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %pong_buffer.addr, align 4, !dbg !364, !tbaa !165, !noalias !359
  %6 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %5, i8* %1, i8** %pong_buffer.addr, i32 0, metadata !353), !dbg !364, !tbaa !165, !noalias !359
  br label %cond.end, !dbg !363

cond.false:                                       ; preds = %entry
  %7 = load i8*, i8** %ping_buffer.addr, align 4, !dbg !365, !tbaa !165, !noalias !359
  %8 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %7, i8* %0, i8** %ping_buffer.addr, i32 0, metadata !351), !dbg !365, !tbaa !165, !noalias !359
  br label %cond.end, !dbg !363

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ %8, %cond.false ], !dbg !363
  %9 = load i32, i32* %margin.addr, align 4, !dbg !366, !tbaa !156, !noalias !359
  %add.ptr = getelementptr inbounds i8, i8* %cond, i32 %9, !dbg !367
  %10 = call addrspace(1) i8* @llvm.chess.copy.p0i8(i8* %add.ptr), !dbg !361
  store i8* %10, i8** %h1, align 4, !dbg !361, !tbaa !165, !noalias !359
  %11 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !368, !tbaa !165, !noalias !359
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %11, i32 0, i32 3, !dbg !369
  %12 = load i8*, i8** %head, align 4, !dbg !369, !tbaa !287, !noalias !359
  %13 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %12, i8* null, i8** %head, i32 0, metadata !342), !dbg !369, !tbaa !287, !noalias !359
  store i8* %13, i8** %h1, align 4, !dbg !370, !tbaa !165, !noalias !359
  store i32 undef, i32* %lockid, align 4, !dbg !371, !noalias !359
  %14 = bitcast i32* %lockid to i8*, !dbg !371
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !371, !noalias !359
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid, metadata !341, metadata !DIExpression()), !dbg !372
  %15 = load i32, i32* %index.addr, align 4, !dbg !373, !tbaa !156, !noalias !359
  %tobool1 = icmp ne i32 %15, 0, !dbg !373
  br i1 %tobool1, label %cond.true2, label %cond.false3, !dbg !373

cond.true2:                                       ; preds = %cond.end
  %16 = load i32, i32* %pong_lockid.addr, align 4, !dbg !374, !tbaa !156, !noalias !359
  br label %cond.end4, !dbg !373

cond.false3:                                      ; preds = %cond.end
  %17 = load i32, i32* %ping_lockid.addr, align 4, !dbg !375, !tbaa !156, !noalias !359
  br label %cond.end4, !dbg !373

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi i32 [ %16, %cond.true2 ], [ %17, %cond.false3 ], !dbg !373
  store i32 %cond5, i32* %lockid, align 4, !dbg !372, !tbaa !156, !noalias !359
  %18 = load i32, i32* %lockid, align 4, !dbg !376, !tbaa !156, !noalias !359
  %19 = load i32, i32* %type.addr, align 4, !dbg !377, !tbaa !156, !noalias !359
  call addrspace(1) void @_Z7releasejj(i32 %18, i32 %19) #17, !dbg !378, !noalias !359
  %20 = bitcast i32* %lockid to i8*, !dbg !379
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !379, !noalias !345
  %21 = bitcast i8** %h1 to i8*, !dbg !379
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !379, !noalias !345
  ret void, !dbg !380
}

; Function Attrs: nounwind
declare void @llvm.chess_memory_fence() addrspace(1) #5

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_Z4donev() addrspace(1) #6 comdat !dbg !381 {
entry:
  %agg.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !384
  call addrspace(1) void @_ZL25chess_separator_scheduleri(i32 8) #16, !dbg !385
  call addrspace(1) void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* %custom_type.tmp, i32 2) #16, !dbg !386
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %custom_type.tmp, align 4, !dbg !386, !tbaa !387
  store %struct.ipd.custom_type.uint2_t.uint2_t %0, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !dbg !386, !tbaa !387
  %1 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !dbg !389, !tbaa !387
  call addrspace(1) void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %1) #18, !dbg !389
  call addrspace(1) void @_ZL25chess_separator_scheduleri(i32 5) #16, !dbg !390
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) addrspace(1) #1

; Function Attrs: inlinehint nounwind
define internal void @_ZL11window_initP15window_internaliPajS1_jii(%struct.window_internal* %w, i32 %channels, i8* %buffer_ping, i32 %lockid_ping, i8* %buffer_pong, i32 %lockid_pong, i32 %size, i32 %winsize) addrspace(1) #4 !dbg !393 !noalias !407 {
entry:
  %w.addr = alloca %struct.window_internal*, align 4
  %channels.addr = alloca i32, align 4
  %buffer_ping.addr = alloca i8*, align 4
  %lockid_ping.addr = alloca i32, align 4
  %buffer_pong.addr = alloca i8*, align 4
  %lockid_pong.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %winsize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.window_internal* %w, %struct.window_internal** %w.addr, align 4, !tbaa !165, !noalias !407
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %w.addr, metadata !397, metadata !DIExpression()), !dbg !410
  store i32 %channels, i32* %channels.addr, align 4, !tbaa !156, !noalias !407
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %channels.addr, metadata !398, metadata !DIExpression()), !dbg !411
  store i8* %buffer_ping, i8** %buffer_ping.addr, align 4, !tbaa !165, !noalias !407
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buffer_ping.addr, metadata !399, metadata !DIExpression()), !dbg !412
  store i32 %lockid_ping, i32* %lockid_ping.addr, align 4, !tbaa !156, !noalias !407
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid_ping.addr, metadata !400, metadata !DIExpression()), !dbg !413
  store i8* %buffer_pong, i8** %buffer_pong.addr, align 4, !tbaa !165, !noalias !407
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buffer_pong.addr, metadata !401, metadata !DIExpression()), !dbg !414
  store i32 %lockid_pong, i32* %lockid_pong.addr, align 4, !tbaa !156, !noalias !407
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid_pong.addr, metadata !402, metadata !DIExpression()), !dbg !415
  store i32 %size, i32* %size.addr, align 4, !tbaa !156, !noalias !407
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %size.addr, metadata !403, metadata !DIExpression()), !dbg !416
  store i32 %winsize, i32* %winsize.addr, align 4, !tbaa !156, !noalias !407
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %winsize.addr, metadata !404, metadata !DIExpression()), !dbg !417
  store i32 undef, i32* %i, align 4, !dbg !418, !noalias !407
  %0 = bitcast i32* %i to i8*, !dbg !418
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !418, !noalias !407
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !405, metadata !DIExpression()), !dbg !419
  store i32 0, i32* %i, align 4, !dbg !419, !tbaa !156, !noalias !407
  br label %for.cond, !dbg !418

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !420, !tbaa !156, !noalias !407
  %2 = load i32, i32* %channels.addr, align 4, !dbg !422, !tbaa !156, !noalias !407
  %cmp = icmp slt i32 %1, %2, !dbg !423
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !424

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !425
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !425, !noalias !407
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %buffer_ping.addr, align 4, !dbg !426, !tbaa !165, !noalias !407
  %5 = load i32, i32* %size.addr, align 4, !dbg !428, !tbaa !156, !noalias !407
  %6 = load i32, i32* %i, align 4, !dbg !429, !tbaa !156, !noalias !407
  %mul = mul nsw i32 %5, %6, !dbg !430
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 %mul, !dbg !431
  %7 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !432, !tbaa !165, !noalias !407
  %8 = load i32, i32* %i, align 4, !dbg !433, !tbaa !156, !noalias !407
  %arrayidx = getelementptr inbounds %struct.window_internal, %struct.window_internal* %7, i32 %8, !dbg !432
  %buffers = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx, i32 0, i32 6, !dbg !434
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers, i32 0, i32 0, !dbg !432
  store i8* %add.ptr, i8** %arrayidx1, align 4, !dbg !435, !tbaa !287, !noalias !407
  %9 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !436, !tbaa !165, !noalias !407
  %10 = load i32, i32* %i, align 4, !dbg !437, !tbaa !156, !noalias !407
  %arrayidx2 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %9, i32 %10, !dbg !436
  %buffers3 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx2, i32 0, i32 6, !dbg !438
  %arrayidx4 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers3, i32 0, i32 0, !dbg !436
  %11 = load i8*, i8** %arrayidx4, align 4, !dbg !436, !tbaa !287, !noalias !407
  %12 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %11, i8* null, i8** %arrayidx4, i32 0, metadata !407), !dbg !436, !tbaa !287, !noalias !407
  %13 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !439, !tbaa !165, !noalias !407
  %14 = load i32, i32* %i, align 4, !dbg !440, !tbaa !156, !noalias !407
  %arrayidx5 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %13, i32 %14, !dbg !439
  %heads = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx5, i32 0, i32 4, !dbg !441
  %arrayidx6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %heads, i32 0, i32 0, !dbg !439
  store i8* %12, i8** %arrayidx6, align 4, !dbg !442, !tbaa !287, !noalias !407
  %15 = load i32, i32* %lockid_ping.addr, align 4, !dbg !443, !tbaa !156, !noalias !407
  %16 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !444, !tbaa !165, !noalias !407
  %17 = load i32, i32* %i, align 4, !dbg !445, !tbaa !156, !noalias !407
  %arrayidx7 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %16, i32 %17, !dbg !444
  %lockids = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx7, i32 0, i32 9, !dbg !446
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %lockids, i32 0, i32 0, !dbg !444
  store i32 %15, i32* %arrayidx8, align 4, !dbg !447, !tbaa !287, !noalias !407
  %18 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !448, !tbaa !165, !noalias !407
  %19 = load i32, i32* %i, align 4, !dbg !449, !tbaa !156, !noalias !407
  %arrayidx9 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %18, i32 %19, !dbg !448
  %buffers10 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx9, i32 0, i32 6, !dbg !450
  %arrayidx11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers10, i32 0, i32 1, !dbg !448
  store i8* null, i8** %arrayidx11, align 4, !dbg !451, !tbaa !287, !noalias !407
  %20 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !452, !tbaa !165, !noalias !407
  %21 = load i32, i32* %i, align 4, !dbg !453, !tbaa !156, !noalias !407
  %arrayidx12 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %20, i32 %21, !dbg !452
  %heads13 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx12, i32 0, i32 4, !dbg !454
  %arrayidx14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %heads13, i32 0, i32 1, !dbg !452
  store i8* null, i8** %arrayidx14, align 4, !dbg !455, !tbaa !287, !noalias !407
  %22 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !456, !tbaa !165, !noalias !407
  %23 = load i32, i32* %i, align 4, !dbg !457, !tbaa !156, !noalias !407
  %arrayidx15 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %22, i32 %23, !dbg !456
  %lockids16 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx15, i32 0, i32 9, !dbg !458
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %lockids16, i32 0, i32 1, !dbg !456
  store i32 -1, i32* %arrayidx17, align 4, !dbg !459, !tbaa !287, !noalias !407
  %24 = load i8*, i8** %buffer_pong.addr, align 4, !dbg !460, !tbaa !165, !noalias !407
  %25 = load i8*, i8** %buffer_ping.addr, align 4, !dbg !462, !tbaa !165, !noalias !407
  %cmp18 = icmp ne i8* %24, %25, !dbg !463
  br i1 %cmp18, label %if.then, label %if.end, !dbg !464

if.then:                                          ; preds = %for.body
  %26 = load i8*, i8** %buffer_pong.addr, align 4, !dbg !465, !tbaa !165, !noalias !407
  %27 = load i32, i32* %size.addr, align 4, !dbg !467, !tbaa !156, !noalias !407
  %28 = load i32, i32* %i, align 4, !dbg !468, !tbaa !156, !noalias !407
  %mul19 = mul nsw i32 %27, %28, !dbg !469
  %add.ptr20 = getelementptr inbounds i8, i8* %26, i32 %mul19, !dbg !470
  %29 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !471, !tbaa !165, !noalias !407
  %30 = load i32, i32* %i, align 4, !dbg !472, !tbaa !156, !noalias !407
  %arrayidx21 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %29, i32 %30, !dbg !471
  %buffers22 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx21, i32 0, i32 6, !dbg !473
  %arrayidx23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers22, i32 0, i32 1, !dbg !471
  store i8* %add.ptr20, i8** %arrayidx23, align 4, !dbg !474, !tbaa !287, !noalias !407
  %31 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !475, !tbaa !165, !noalias !407
  %32 = load i32, i32* %i, align 4, !dbg !476, !tbaa !156, !noalias !407
  %arrayidx24 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %31, i32 %32, !dbg !475
  %buffers25 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx24, i32 0, i32 6, !dbg !477
  %arrayidx26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers25, i32 0, i32 1, !dbg !475
  %33 = load i8*, i8** %arrayidx26, align 4, !dbg !475, !tbaa !287, !noalias !407
  %34 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %33, i8* null, i8** %arrayidx26, i32 0, metadata !407), !dbg !475, !tbaa !287, !noalias !407
  %35 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !478, !tbaa !165, !noalias !407
  %36 = load i32, i32* %i, align 4, !dbg !479, !tbaa !156, !noalias !407
  %arrayidx27 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %35, i32 %36, !dbg !478
  %heads28 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx27, i32 0, i32 4, !dbg !480
  %arrayidx29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %heads28, i32 0, i32 1, !dbg !478
  store i8* %34, i8** %arrayidx29, align 4, !dbg !481, !tbaa !287, !noalias !407
  %37 = load i32, i32* %lockid_pong.addr, align 4, !dbg !482, !tbaa !156, !noalias !407
  %38 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !483, !tbaa !165, !noalias !407
  %39 = load i32, i32* %i, align 4, !dbg !484, !tbaa !156, !noalias !407
  %arrayidx30 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %38, i32 %39, !dbg !483
  %lockids31 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx30, i32 0, i32 9, !dbg !485
  %arrayidx32 = getelementptr inbounds [2 x i32], [2 x i32]* %lockids31, i32 0, i32 1, !dbg !483
  store i32 %37, i32* %arrayidx32, align 4, !dbg !486, !tbaa !287, !noalias !407
  br label %if.end, !dbg !487

if.end:                                           ; preds = %if.then, %for.body
  %40 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !488, !tbaa !165, !noalias !407
  %41 = load i32, i32* %i, align 4, !dbg !489, !tbaa !156, !noalias !407
  %arrayidx33 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %40, i32 %41, !dbg !488
  %current_bufid = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx33, i32 0, i32 0, !dbg !490
  store i32 0, i32* %current_bufid, align 4, !dbg !491, !tbaa !287, !noalias !407
  %42 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !492, !tbaa !165, !noalias !407
  %43 = load i32, i32* %i, align 4, !dbg !493, !tbaa !156, !noalias !407
  %arrayidx34 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %42, i32 %43, !dbg !492
  %buffers35 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx34, i32 0, i32 6, !dbg !494
  %arrayidx36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers35, i32 0, i32 0, !dbg !492
  %44 = load i8*, i8** %arrayidx36, align 4, !dbg !492, !tbaa !287, !noalias !407
  %45 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %44, i8* null, i8** %arrayidx36, i32 0, metadata !407), !dbg !492, !tbaa !287, !noalias !407
  %46 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !495, !tbaa !165, !noalias !407
  %47 = load i32, i32* %i, align 4, !dbg !496, !tbaa !156, !noalias !407
  %arrayidx37 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %46, i32 %47, !dbg !495
  %buffer = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx37, i32 0, i32 5, !dbg !497
  store i8* %45, i8** %buffer, align 4, !dbg !498, !tbaa !287, !noalias !407
  %48 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !499, !tbaa !165, !noalias !407
  %49 = load i32, i32* %i, align 4, !dbg !500, !tbaa !156, !noalias !407
  %arrayidx38 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %48, i32 %49, !dbg !499
  %heads39 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx38, i32 0, i32 4, !dbg !501
  %arrayidx40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %heads39, i32 0, i32 0, !dbg !499
  %50 = load i8*, i8** %arrayidx40, align 4, !dbg !499, !tbaa !287, !noalias !407
  %51 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %50, i8* null, i8** %arrayidx40, i32 0, metadata !407), !dbg !499, !tbaa !287, !noalias !407
  %52 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !502, !tbaa !165, !noalias !407
  %53 = load i32, i32* %i, align 4, !dbg !503, !tbaa !156, !noalias !407
  %arrayidx41 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %52, i32 %53, !dbg !502
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx41, i32 0, i32 3, !dbg !504
  store i8* %51, i8** %head, align 4, !dbg !505, !tbaa !287, !noalias !407
  %54 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !506, !tbaa !165, !noalias !407
  %55 = load i32, i32* %i, align 4, !dbg !507, !tbaa !156, !noalias !407
  %arrayidx42 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %54, i32 %55, !dbg !506
  %head43 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx42, i32 0, i32 3, !dbg !508
  %56 = load i8*, i8** %head43, align 4, !dbg !508, !tbaa !287, !noalias !407
  %57 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %56, i8* null, i8** %head43, i32 0, metadata !407), !dbg !508, !tbaa !287, !noalias !407
  %58 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !509, !tbaa !165, !noalias !407
  %59 = load i32, i32* %i, align 4, !dbg !510, !tbaa !156, !noalias !407
  %arrayidx44 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %58, i32 %59, !dbg !509
  %ptr = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx44, i32 0, i32 2, !dbg !511
  store i8* %57, i8** %ptr, align 4, !dbg !512, !tbaa !287, !noalias !407
  %60 = load i32, i32* %size.addr, align 4, !dbg !513, !tbaa !156, !noalias !407
  %61 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !514, !tbaa !165, !noalias !407
  %62 = load i32, i32* %i, align 4, !dbg !515, !tbaa !156, !noalias !407
  %arrayidx45 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %61, i32 %62, !dbg !514
  %size46 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx45, i32 0, i32 7, !dbg !516
  store i32 %60, i32* %size46, align 4, !dbg !517, !tbaa !287, !noalias !407
  %63 = load i32, i32* %winsize.addr, align 4, !dbg !518, !tbaa !156, !noalias !407
  %64 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !519, !tbaa !165, !noalias !407
  %65 = load i32, i32* %i, align 4, !dbg !520, !tbaa !156, !noalias !407
  %arrayidx47 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %64, i32 %65, !dbg !519
  %winsize48 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx47, i32 0, i32 8, !dbg !521
  store i32 %63, i32* %winsize48, align 4, !dbg !522, !tbaa !287, !noalias !407
  br label %for.inc, !dbg !523

for.inc:                                          ; preds = %if.end
  %66 = load i32, i32* %i, align 4, !dbg !524, !tbaa !156, !noalias !407
  %inc = add nsw i32 %66, 1, !dbg !524
  store i32 %inc, i32* %i, align 4, !dbg !524, !tbaa !156, !noalias !407
  br label %for.cond, !dbg !425, !llvm.loop !525

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !527
}

; Function Attrs: argmemonly nounwind speculatable
declare i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8*, i8*, i8**, i32, metadata) addrspace(1) #7

; Function Attrs: inaccessiblememonly nounwind
declare i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8**, i32, metadata) addrspace(1) #3

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_Z7acquirejj(i32 %id, i32 %val) addrspace(1) #6 comdat !dbg !528 {
entry:
  %id.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  store i32 %id, i32* %id.addr, align 4, !tbaa !156
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %id.addr, metadata !532, metadata !DIExpression()), !dbg !534
  store i32 %val, i32* %val.addr, align 4, !tbaa !156
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %val.addr, metadata !533, metadata !DIExpression()), !dbg !535
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !536
  call addrspace(1) void @_ZL25chess_separator_schedulerv() #16, !dbg !537
  %0 = load i32, i32* %id.addr, align 4, !dbg !538, !tbaa !156
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, i32 1) #16, !dbg !539
  %1 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !dbg !539, !tbaa !540
  store %struct.ipd.custom_type.uint1_t.uint1_t %1, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !dbg !539, !tbaa !540
  %2 = load i32, i32* %val.addr, align 4, !dbg !542, !tbaa !156
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !dbg !543, !tbaa !540
  call addrspace(1) void @_ZN12me_primitive7acquireEj7uint1_tj(i32 %0, %struct.ipd.custom_type.uint1_t.uint1_t %3, i32 %2) #18, !dbg !543
  call addrspace(1) void @_ZL25chess_separator_schedulerv() #16, !dbg !544
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !545
  ret void, !dbg !546
}

; Function Attrs: alwaysinline nounwind
define internal void @_ZL25chess_separator_schedulerv() addrspace(1) #8 {
entry:
  store volatile i8* inttoptr (i20 1 to i8*), i8** @__chess_separator_dummy, align 4, !tbaa !547
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN12me_primitive7acquireEj7uint1_tj(i32 %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32 %a2) addrspace(1) #9 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 %a0, i32* %a0.addr, align 4, !tbaa !156
  store i32 %a2, i32* %a2.addr, align 4, !tbaa !156
  %0 = load i32, i32* %a0.addr, align 4, !tbaa !156
  %1 = load i32, i32* %a2.addr, align 4, !tbaa !156
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !540
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_acquire___uint_uint1_t___uint(i32 %0, %struct.ipd.custom_type.uint1_t.uint1_t %2, i32 %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* %this, i32 %a) unnamed_addr addrspace(1) #8 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint1_t.uint1_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t* %this, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4, !tbaa !165
  store i32 %a, i32* %a.addr, align 4, !tbaa !156
  %this1 = load %struct.ipd.custom_type.uint1_t.uint1_t*, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint1_t.uint1_t* %this1 to i8*
  %bf.load = load i8, i8* %0, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !156
  %2 = call addrspace(1) %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t undef, i32 %1, i32 1, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)* @__regcall3__chessintr_uint1_t_uint1_t___sint)
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %this1, align 4
  ret void
}

; Function Attrs: inaccessiblememonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_acquire___uint_uint1_t___uint(i32, %struct.ipd.custom_type.uint1_t.uint1_t, i32) addrspace(1) #10

; Function Attrs: nounwind readnone
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint1_t.uint1_t @__regcall3__chessintr_uint1_t_uint1_t___sint(i32) addrspace(1) #11

; Function Attrs: nounwind readnone
declare %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)*) addrspace(1) #12

; Function Attrs: nocse nounwind readnone
declare i8* @llvm.chess.copy.p0i8(i8*) addrspace(1) #13

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_Z7releasejj(i32 %id, i32 %val) addrspace(1) #6 comdat !dbg !550 {
entry:
  %id.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  store i32 %id, i32* %id.addr, align 4, !tbaa !156
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %id.addr, metadata !552, metadata !DIExpression()), !dbg !554
  store i32 %val, i32* %val.addr, align 4, !tbaa !156
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %val.addr, metadata !553, metadata !DIExpression()), !dbg !555
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !556
  call addrspace(1) void @_ZL25chess_separator_schedulerv() #16, !dbg !557
  %0 = load i32, i32* %id.addr, align 4, !dbg !558, !tbaa !156
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, i32 1) #16, !dbg !559
  %1 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !dbg !559, !tbaa !540
  store %struct.ipd.custom_type.uint1_t.uint1_t %1, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !dbg !559, !tbaa !540
  %2 = load i32, i32* %val.addr, align 4, !dbg !560, !tbaa !156
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !dbg !561, !tbaa !540
  call addrspace(1) void @_ZN12me_primitive7releaseEj7uint1_tj(i32 %0, %struct.ipd.custom_type.uint1_t.uint1_t %3, i32 %2) #18, !dbg !561
  call addrspace(1) void @_ZL25chess_separator_schedulerv() #16, !dbg !562
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !563
  ret void, !dbg !564
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN12me_primitive7releaseEj7uint1_tj(i32 %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32 %a2) addrspace(1) #9 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 %a0, i32* %a0.addr, align 4, !tbaa !156
  store i32 %a2, i32* %a2.addr, align 4, !tbaa !156
  %0 = load i32, i32* %a0.addr, align 4, !tbaa !156
  %1 = load i32, i32* %a2.addr, align 4, !tbaa !156
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !540
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_release___uint_uint1_t___uint(i32 %0, %struct.ipd.custom_type.uint1_t.uint1_t %2, i32 %1) #19
  ret void
}

; Function Attrs: inaccessiblememonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_release___uint_uint1_t___uint(i32, %struct.ipd.custom_type.uint1_t.uint1_t, i32) addrspace(1) #10

; Function Attrs: alwaysinline nounwind
define internal void @_ZL25chess_separator_scheduleri(i32 %i) addrspace(1) #8 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !156
  %0 = load i32, i32* %i.addr, align 4, !tbaa !156
  store volatile i32 %0, i32* @__chess_separator_idummy, align 4, !tbaa !565
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce) addrspace(1) #9 comdat {
entry:
  %a0 = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4, !tbaa !387
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %0) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* %this, i32 %a) unnamed_addr addrspace(1) #8 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint2_t.uint2_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t* %this, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4, !tbaa !165
  store i32 %a, i32* %a.addr, align 4, !tbaa !156
  %this1 = load %struct.ipd.custom_type.uint2_t.uint2_t*, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint2_t.uint2_t* %this1 to i8*
  %bf.load = load i8, i8* %0, align 4
  %bf.clear = and i8 %bf.load, -4
  store i8 %bf.clear, i8* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !156
  %2 = call addrspace(1) %struct.ipd.custom_type.uint2_t.uint2_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint2_t.uint2_ts.i32.p1f_s_struct.ipd.custom_type.uint2_t.uint2_tsi32f(%struct.ipd.custom_type.uint2_t.uint2_t undef, i32 %1, i32 2, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint2_t.uint2_t (i32) addrspace(1)* @__regcall3__chessintr_uint2_t_uint2_t___sint)
  store %struct.ipd.custom_type.uint2_t.uint2_t %2, %struct.ipd.custom_type.uint2_t.uint2_t* %this1, align 4
  ret void
}

; Function Attrs: inaccessiblememonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t) addrspace(1) #10

; Function Attrs: nounwind readnone
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint2_t.uint2_t @__regcall3__chessintr_uint2_t_uint2_t___sint(i32) addrspace(1) #11

; Function Attrs: nounwind readnone
declare %struct.ipd.custom_type.uint2_t.uint2_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint2_t.uint2_ts.i32.p1f_s_struct.ipd.custom_type.uint2_t.uint2_tsi32f(%struct.ipd.custom_type.uint2_t.uint2_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint2_t.uint2_t (i32) addrspace(1)*) addrspace(1) #12

; Function Attrs: nounwind
define dso_local void @_Z10n2n_trans2P12input_windowIsEP13output_windowIsE(%struct.input_window.0* %matB, %struct.output_window.1* %matC) addrspace(1) #14 !dbg !567 {
entry:
  %matB.addr = alloca %struct.input_window.0*, align 4
  %matC.addr = alloca %struct.output_window.1*, align 4
  %i = alloca i32, align 4
  %B = alloca i16, align 2
  store %struct.input_window.0* %matB, %struct.input_window.0** %matB.addr, align 4, !tbaa !165
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %matB.addr, metadata !572, metadata !DIExpression()), !dbg !579
  store %struct.output_window.1* %matC, %struct.output_window.1** %matC.addr, align 4, !tbaa !165
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window.1** %matC.addr, metadata !573, metadata !DIExpression()), !dbg !580
  store i32 undef, i32* %i, align 4, !dbg !581
  %0 = bitcast i32* %i to i8*, !dbg !581
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !581
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !574, metadata !DIExpression()), !dbg !582
  store i32 0, i32* %i, align 4, !dbg !582, !tbaa !156
  br label %for.cond, !dbg !581

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !583, !tbaa !156
  %cmp = icmp slt i32 %1, 3072, !dbg !584
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !585

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*, !dbg !586
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !586
  br label %for.end

for.body:                                         ; preds = %for.cond
  store i16 undef, i16* %B, align 2, !dbg !587
  %3 = bitcast i16* %B to i8*, !dbg !587
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 2, i8* %3) #5, !dbg !587
  call addrspace(1) void @llvm.dbg.declare(metadata i16* %B, metadata !576, metadata !DIExpression()), !dbg !588
  %4 = load %struct.input_window.0*, %struct.input_window.0** %matB.addr, align 4, !dbg !589, !tbaa !165
  %call = call signext addrspace(1) i16 @_ZL15window_readincrIL15aie_dm_resource0EEsP12input_windowIsE(%struct.input_window.0* %4) #16, !dbg !590
  store i16 %call, i16* %B, align 2, !dbg !588, !tbaa !591
  %5 = load %struct.output_window.1*, %struct.output_window.1** %matC.addr, align 4, !dbg !593, !tbaa !165
  %6 = load i16, i16* %B, align 2, !dbg !594, !tbaa !591
  call addrspace(1) void @_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs(%struct.output_window.1* %5, i16 signext %6) #16, !dbg !595
  %7 = bitcast i16* %B to i8*, !dbg !596
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 2, i8* %7) #5, !dbg !596
  br label %for.inc, !dbg !597

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !598, !tbaa !156
  %inc = add nsw i32 %8, 1, !dbg !598
  store i32 %inc, i32* %i, align 4, !dbg !598, !tbaa !156
  br label %for.cond, !dbg !586, !llvm.loop !599

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !601
}

; Function Attrs: inlinehint nounwind
define internal signext i16 @_ZL15window_readincrIL15aie_dm_resource0EEsP12input_windowIsE(%struct.input_window.0* %w) addrspace(1) #4 !dbg !602 {
entry:
  %w.addr = alloca %struct.input_window.0*, align 4
  %value = alloca i16, align 2
  store %struct.input_window.0* %w, %struct.input_window.0** %w.addr, align 4, !tbaa !165
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %w.addr, metadata !606, metadata !DIExpression()), !dbg !608
  store i16 undef, i16* %value, align 2, !dbg !608
  %0 = bitcast i16* %value to i8*, !dbg !608
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #5, !dbg !608
  call addrspace(1) void @llvm.dbg.declare(metadata i16* %value, metadata !607, metadata !DIExpression()), !dbg !608
  %1 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !608, !tbaa !165
  call addrspace(1) void @_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs(%struct.input_window.0* %1, i16* nonnull align 2 dereferenceable(2) %value) #16, !dbg !608
  %2 = load i16, i16* %value, align 2, !dbg !608, !tbaa !591
  %3 = bitcast i16* %value to i8*, !dbg !608
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 2, i8* %3) #5, !dbg !608
  ret i16 %2, !dbg !608
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs(%struct.output_window.1* %w, i16 signext %value) addrspace(1) #4 !dbg !111 !noalias !609 {
entry:
  %w.addr = alloca %struct.output_window.1*, align 4
  %value.addr = alloca i16, align 2
  store %struct.output_window.1* %w, %struct.output_window.1** %w.addr, align 4, !tbaa !165, !noalias !609
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window.1** %w.addr, metadata !115, metadata !DIExpression()), !dbg !612
  store i16 %value, i16* %value.addr, align 2, !tbaa !591, !noalias !609
  call addrspace(1) void @llvm.dbg.declare(metadata i16* %value.addr, metadata !116, metadata !DIExpression()), !dbg !612
  %0 = load i16, i16* %value.addr, align 2, !dbg !612, !tbaa !591, !noalias !609
  %1 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !612, !tbaa !165, !noalias !609
  %ptr = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %1, i32 0, i32 2, !dbg !612
  %2 = load i8*, i8** %ptr, align 4, !dbg !612, !tbaa !327, !noalias !609
  %3 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %2, i8* null, i8** %ptr, i32 0, metadata !609), !dbg !612, !tbaa !327, !noalias !609
  %4 = bitcast i8* %3 to i16*, !dbg !612
  store i16 %0, i16* %4, align 2, !dbg !612, !tbaa !591, !noalias !609
  %5 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !612, !tbaa !165, !noalias !609
  call addrspace(1) void @_ZL11window_incrP13output_windowIsEi(%struct.output_window.1* %5, i32 1) #16, !dbg !612, !noalias !609
  ret void, !dbg !612
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL11window_incrP13output_windowIsEi(%struct.output_window.1* %w, i32 %count) addrspace(1) #4 !dbg !613 !noalias !619 {
entry:
  %w.addr = alloca %struct.output_window.1*, align 4
  %count.addr = alloca i32, align 4
  store %struct.output_window.1* %w, %struct.output_window.1** %w.addr, align 4, !tbaa !165, !noalias !619
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window.1** %w.addr, metadata !617, metadata !DIExpression()), !dbg !622
  store i32 %count, i32* %count.addr, align 4, !tbaa !156, !noalias !619
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %count.addr, metadata !618, metadata !DIExpression()), !dbg !622
  %0 = load i32, i32* %count.addr, align 4, !dbg !622, !tbaa !156, !noalias !619
  %mul = mul i32 %0, 2, !dbg !622
  store i32 %mul, i32* %count.addr, align 4, !dbg !622, !tbaa !156, !noalias !619
  %1 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !622, !tbaa !165, !noalias !619
  %ptr = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %1, i32 0, i32 2, !dbg !622
  %2 = load i8*, i8** %ptr, align 4, !dbg !622, !tbaa !327, !noalias !619
  %3 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %2, i8* null, i8** %ptr, i32 0, metadata !619), !dbg !622, !tbaa !327, !noalias !619
  %4 = load i32, i32* %count.addr, align 4, !dbg !622, !tbaa !156, !noalias !619
  %5 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !622, !tbaa !165, !noalias !619
  %buffer = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %5, i32 0, i32 5, !dbg !622
  %6 = load i8*, i8** %buffer, align 4, !dbg !622, !tbaa !623, !noalias !619
  %7 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %6, i8* null, i8** %buffer, i32 0, metadata !619), !dbg !622, !tbaa !623, !noalias !619
  %8 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !622, !tbaa !165, !noalias !619
  %size = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %8, i32 0, i32 7, !dbg !622
  %9 = load i32, i32* %size, align 4, !dbg !622, !tbaa !624, !noalias !619
  %call = call addrspace(1) i8* @_Z10cyclic_addIaEPT_S1_iS1_i(i8* %3, i32 %4, i8* %7, i32 %9) #16, !dbg !622, !noalias !619
  %10 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !622, !tbaa !165, !noalias !619
  %ptr1 = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %10, i32 0, i32 2, !dbg !622
  store i8* %call, i8** %ptr1, align 4, !dbg !622, !tbaa !327, !noalias !619
  ret void, !dbg !622
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local i8* @_Z10cyclic_addIaEPT_S1_iS1_i(i8* %a0, i32 %a1, i8* chesscopy noalias %a2, i32 %a3) addrspace(1) #8 comdat {
entry:
  %a0.addr = alloca i8*, align 4
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca i8*, align 4
  %a3.addr = alloca i32, align 4
  store i8* %a0, i8** %a0.addr, align 4, !tbaa !165, !noalias !625
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !156, !noalias !625
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %a2.addr, i32 0, metadata !625), !noalias !625
  store i8* %a2, i8** %a2.addr, align 4, !tbaa !165, !noalias !625
  store i32 %a3, i32* %a3.addr, align 4, !tbaa !156, !noalias !625
  %1 = load i8*, i8** %a0.addr, align 4, !tbaa !165, !noalias !625
  %2 = load i32, i32* %a1.addr, align 4, !tbaa !156, !noalias !625
  %mul = mul i32 %2, 1
  %3 = load i8*, i8** %a2.addr, align 4, !tbaa !165, !noalias !625
  %4 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %3, i8* %0, i8** %a2.addr, i32 0, metadata !625), !tbaa !165, !noalias !625
  %5 = load i32, i32* %a3.addr, align 4, !tbaa !156, !noalias !625
  %mul1 = mul i32 %5, 1
  %call = call x86_regcallcc addrspace(1) i8* @__regcall3__chessintr___Pvoid_cyclic_add___Pvoid___sint___Pvoid___sint(i8* %1, i32 %mul, i8* %4, i32 %mul1) #20
  ret i8* %call
}

; Function Attrs: nounwind positionalaliasingreturns readnone
declare dso_local x86_regcallcc i8* @__regcall3__chessintr___Pvoid_cyclic_add___Pvoid___sint___Pvoid___sint(i8*, i32, i8*, i32) addrspace(1) #15

; Function Attrs: inlinehint nounwind
define internal void @_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs(%struct.input_window.0* %w, i16* nonnull align 2 dereferenceable(2) %value) addrspace(1) #4 !dbg !90 !noalias !628 {
entry:
  %w.addr = alloca %struct.input_window.0*, align 4
  %value.addr = alloca i16*, align 4
  store %struct.input_window.0* %w, %struct.input_window.0** %w.addr, align 4, !tbaa !165, !noalias !628
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %w.addr, metadata !98, metadata !DIExpression()), !dbg !631
  store i16* %value, i16** %value.addr, align 4, !tbaa !165, !noalias !628
  call addrspace(1) void @llvm.dbg.declare(metadata i16** %value.addr, metadata !99, metadata !DIExpression()), !dbg !631
  %0 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !631, !tbaa !165, !noalias !628
  %ptr = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %0, i32 0, i32 2, !dbg !631
  %1 = load i8*, i8** %ptr, align 4, !dbg !631, !tbaa !315, !noalias !628
  %2 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %1, i8* null, i8** %ptr, i32 0, metadata !628), !dbg !631, !tbaa !315, !noalias !628
  %3 = bitcast i8* %2 to i16*, !dbg !631
  %4 = load i16, i16* %3, align 2, !dbg !631, !tbaa !591, !noalias !628
  %5 = load i16*, i16** %value.addr, align 4, !dbg !631, !tbaa !165, !noalias !628
  store i16 %4, i16* %5, align 2, !dbg !631, !tbaa !591, !noalias !628
  %6 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !631, !tbaa !165, !noalias !628
  call addrspace(1) void @_ZL11window_incrP12input_windowIsEi(%struct.input_window.0* %6, i32 1) #16, !dbg !631, !noalias !628
  ret void, !dbg !631
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL11window_incrP12input_windowIsEi(%struct.input_window.0* %w, i32 %count) addrspace(1) #4 !dbg !632 !noalias !638 {
entry:
  %w.addr = alloca %struct.input_window.0*, align 4
  %count.addr = alloca i32, align 4
  store %struct.input_window.0* %w, %struct.input_window.0** %w.addr, align 4, !tbaa !165, !noalias !638
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %w.addr, metadata !636, metadata !DIExpression()), !dbg !641
  store i32 %count, i32* %count.addr, align 4, !tbaa !156, !noalias !638
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %count.addr, metadata !637, metadata !DIExpression()), !dbg !641
  %0 = load i32, i32* %count.addr, align 4, !dbg !641, !tbaa !156, !noalias !638
  %mul = mul i32 %0, 2, !dbg !641
  store i32 %mul, i32* %count.addr, align 4, !dbg !641, !tbaa !156, !noalias !638
  %1 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !641, !tbaa !165, !noalias !638
  %ptr = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %1, i32 0, i32 2, !dbg !641
  %2 = load i8*, i8** %ptr, align 4, !dbg !641, !tbaa !315, !noalias !638
  %3 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %2, i8* null, i8** %ptr, i32 0, metadata !638), !dbg !641, !tbaa !315, !noalias !638
  %4 = load i32, i32* %count.addr, align 4, !dbg !641, !tbaa !156, !noalias !638
  %5 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !641, !tbaa !165, !noalias !638
  %buffer = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %5, i32 0, i32 5, !dbg !641
  %6 = load i8*, i8** %buffer, align 4, !dbg !641, !tbaa !642, !noalias !638
  %7 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %6, i8* null, i8** %buffer, i32 0, metadata !638), !dbg !641, !tbaa !642, !noalias !638
  %8 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !641, !tbaa !165, !noalias !638
  %size = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %8, i32 0, i32 7, !dbg !641
  %9 = load i32, i32* %size, align 4, !dbg !641, !tbaa !643, !noalias !638
  %call = call addrspace(1) i8* @_Z10cyclic_addIaEPT_S1_iS1_i(i8* %3, i32 %4, i8* %7, i32 %9) #16, !dbg !641, !noalias !638
  %10 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !641, !tbaa !165, !noalias !638
  %ptr1 = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %10, i32 0, i32 2, !dbg !641
  store i8* %call, i8** %ptr1, align 4, !dbg !641, !tbaa !315, !noalias !638
  ret void, !dbg !641
}

attributes #0 = { norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { inaccessiblememonly nounwind }
attributes #4 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { alwaysinline nounwind "chessFP:property"="contains_memory_fence do_generate" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind speculatable }
attributes #8 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { alwaysinline nounwind "chessFP:llvm_local_block_replace_operand_with_variable" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inaccessiblememonly nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone }
attributes #13 = { nocse nounwind readnone }
attributes #14 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind positionalaliasingreturns readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { "no-builtin-memcpy" }
attributes #17 = { "chessFP:property"="contains_memory_fence do_generate" "no-builtin-memcpy" }
attributes #18 = { "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #19 = { inaccessiblememonly nounwind "no-builtin-memcpy" }
attributes #20 = { nounwind positionalaliasingreturns readnone "no-builtin-memcpy" }

!llvm.dbg.cu = !{!2, !75}
!llvm.linker.options = !{}
!llvm.module.flags = !{!117, !118, !119}
!llvm.ident = !{!120, !120}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buf1", scope: !2, file: !58, line: 22, type: !59, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 11.0.0 (sgasip@krachtcs10:ipd/repositories/llvm_ipd 8ae012ed2b4731889ba2efbfb1dacc610b3ce588)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !10, globals: !55, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/Jinming/research/aie_project/n2n/Work/aie/25_0/src/25_0.cc", directory: "/home/Jinming/research/aie_project/n2n/Work/aie")
!4 = !{!5}
!5 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "chessllvmInternal", file: !6, line: 21, baseType: !7, size: 32, elements: !8, identifier: "_ZTS17chessllvmInternal")
!6 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/data/versal_prod/lib/isg/me_chess_llvm.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9}
!9 = !DIEnumerator(name: "chessllvm_reinterpret", value: 0, isUnsigned: true)
!10 = !{!11, !17, !18, !41}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "window_datatype", file: !13, line: 8, baseType: !14)
!13 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/include/adf/window/window_internal.h", directory: "")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !15, line: 23, baseType: !16)
!15 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/data/versal_prod/lib/runtime/include/stdint.h", directory: "")
!16 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "input_window_int16", file: !20, line: 100, baseType: !21)
!20 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/include/adf/window/window.h", directory: "")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_window<short>", file: !20, line: 61, size: 416, flags: DIFlagTypePassByValue, elements: !22, templateParams: !38, identifier: "_ZTS12input_windowIsE")
!22 = !{!23, !24, !25, !27, !28, !32, !33, !34, !35, !36}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "current_bufid", scope: !21, file: !20, line: 63, baseType: !7, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "instanceId", scope: !21, file: !20, line: 64, baseType: !7, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !21, file: !20, line: 65, baseType: !26, size: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !21, file: !20, line: 66, baseType: !26, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !21, file: !20, line: 67, baseType: !29, size: 64, offset: 128)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 2)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !21, file: !20, line: 68, baseType: !26, size: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "buffers", scope: !21, file: !20, line: 69, baseType: !29, size: 64, offset: 224)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !21, file: !20, line: 70, baseType: !7, size: 32, offset: 288)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !21, file: !20, line: 71, baseType: !7, size: 32, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "lockids", scope: !21, file: !20, line: 75, baseType: !37, size: 64, offset: 352)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !30)
!38 = !{!39}
!39 = !DITemplateTypeParameter(name: "T", type: !40)
!40 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_window_int16", file: !20, line: 110, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_window<short>", file: !20, line: 80, size: 416, flags: DIFlagTypePassByValue, elements: !44, templateParams: !38, identifier: "_ZTS13output_windowIsE")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "current_bufid", scope: !43, file: !20, line: 82, baseType: !7, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "instanceId", scope: !43, file: !20, line: 83, baseType: !7, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !43, file: !20, line: 84, baseType: !26, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !43, file: !20, line: 85, baseType: !26, size: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !43, file: !20, line: 86, baseType: !29, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !43, file: !20, line: 87, baseType: !26, size: 32, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "buffers", scope: !43, file: !20, line: 88, baseType: !29, size: 64, offset: 224)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !43, file: !20, line: 89, baseType: !7, size: 32, offset: 288)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !43, file: !20, line: 90, baseType: !7, size: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "lockids", scope: !43, file: !20, line: 94, baseType: !37, size: 64, offset: 352)
!55 = !{!0, !56, !64, !66, !68}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "buf1d", scope: !2, file: !58, line: 23, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "25_0/src/25_0.cc", directory: "/home/Jinming/research/aie_project/n2n/Work/aie")
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 49152, elements: !62)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "v8int16", file: !6, line: 444, baseType: !61)
!61 = !DIBasicType(name: "v8int16", size: 128, encoding: DW_ATE_unsigned)
!62 = !{!63}
!63 = !DISubrange(count: 384)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "buf2", scope: !2, file: !58, line: 24, type: !59, isLocal: false, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "buf2d", scope: !2, file: !58, line: 25, type: !59, isLocal: false, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "sync_buffer", linkageName: "_ZL11sync_buffer", scope: !2, file: !58, line: 13, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 256, elements: !73)
!71 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !{!74}
!74 = !DISubrange(count: 8)
!75 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !76, producer: "clang version 11.0.0 (sgasip@krachtcs10:ipd/repositories/llvm_ipd 8ae012ed2b4731889ba2efbfb1dacc610b3ce588)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !87, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "/home/Jinming/research/aie_project/n2n/aie/n2n_trans2.cc", directory: "/home/Jinming/research/aie_project/n2n/Work/aie/ir")
!77 = !{!78}
!78 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_dm_resource", file: !79, line: 370, baseType: !72, size: 32, flags: DIFlagEnumClass, elements: !80, identifier: "_ZTS15aie_dm_resource")
!79 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/data/versal_prod/lib/me_defines.h", directory: "")
!80 = !{!81, !82, !83, !84, !85, !86}
!81 = !DIEnumerator(name: "none", value: 0)
!82 = !DIEnumerator(name: "a", value: 1)
!83 = !DIEnumerator(name: "b", value: 2)
!84 = !DIEnumerator(name: "c", value: 3)
!85 = !DIEnumerator(name: "d", value: 4)
!86 = !DIEnumerator(name: "stack", value: 5)
!87 = !{!88, !108, !17, !109}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", scope: !90, file: !20, line: 836, baseType: !102)
!90 = distinct !DISubprogram(name: "window_readincr<aie_dm_resource::none>", linkageName: "_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs", scope: !20, file: !20, line: 836, type: !91, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, templateParams: !100, retainedNodes: !97)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !18, !93}
!93 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16", file: !95, line: 14, baseType: !96)
!95 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/include/adf/window/types.h", directory: "")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !15, line: 24, baseType: !40)
!97 = !{!98, !99}
!98 = !DILocalVariable(name: "w", arg: 1, scope: !90, file: !20, line: 836, type: !18)
!99 = !DILocalVariable(name: "value", arg: 2, scope: !90, file: !20, line: 836, type: !93)
!100 = !{!101}
!101 = !DITemplateValueParameter(name: "Resource", type: !78, value: i32 0)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "aie_dm_resource_set_t<int16, (aie_dm_resource)0>", file: !103, line: 264, baseType: !104)
!103 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/data/versal_prod/lib/aie_core.h", directory: "")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !105, file: !103, line: 254, baseType: !40)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aie_dm_resource_set<short, aie_dm_resource::none>", file: !103, line: 252, size: 8, flags: DIFlagTypePassByValue, elements: !106, templateParams: !107, identifier: "_ZTS19aie_dm_resource_setIsL15aie_dm_resource0EE")
!106 = !{}
!107 = !{!39, !101}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", scope: !111, file: !20, line: 836, baseType: !102)
!111 = distinct !DISubprogram(name: "window_writeincr<aie_dm_resource::none>", linkageName: "_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs", scope: !20, file: !20, line: 836, type: !112, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, templateParams: !100, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !41, !94}
!114 = !{!115, !116}
!115 = !DILocalVariable(name: "w", arg: 1, scope: !111, file: !20, line: 836, type: !41)
!116 = !DILocalVariable(name: "value", arg: 2, scope: !111, file: !20, line: 836, type: !94)
!117 = !{i32 7, !"Dwarf Version", i32 4}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 4}
!120 = !{!"clang version 11.0.0 (sgasip@krachtcs10:ipd/repositories/llvm_ipd 8ae012ed2b4731889ba2efbfb1dacc610b3ce588)"}
!121 = distinct !DISubprogram(name: "main", scope: !58, file: !58, line: 32, type: !122, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{!72}
!124 = !{!125, !141, !142, !143, !144, !145, !146, !149}
!125 = !DILocalVariable(name: "window_buf1_buf1d", scope: !121, file: !58, line: 34, type: !126)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 416, elements: !139)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "window_internal", file: !13, line: 18, size: 416, flags: DIFlagTypePassByValue, elements: !128, identifier: "_ZTS15window_internal")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "current_bufid", scope: !127, file: !13, line: 20, baseType: !7, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "instanceId", scope: !127, file: !13, line: 21, baseType: !7, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !127, file: !13, line: 22, baseType: !26, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !127, file: !13, line: 23, baseType: !26, size: 32, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !127, file: !13, line: 24, baseType: !29, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !127, file: !13, line: 25, baseType: !26, size: 32, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "buffers", scope: !127, file: !13, line: 26, baseType: !29, size: 64, offset: 224)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !127, file: !13, line: 27, baseType: !7, size: 32, offset: 288)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !127, file: !13, line: 28, baseType: !7, size: 32, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lockids", scope: !127, file: !13, line: 32, baseType: !37, size: 64, offset: 352)
!139 = !{!140}
!140 = !DISubrange(count: 1)
!141 = !DILocalVariable(name: "buf1_ptr", scope: !121, file: !58, line: 35, type: !11)
!142 = !DILocalVariable(name: "buf1d_ptr", scope: !121, file: !58, line: 36, type: !11)
!143 = !DILocalVariable(name: "window_buf2_buf2d", scope: !121, file: !58, line: 38, type: !126)
!144 = !DILocalVariable(name: "buf2_ptr", scope: !121, file: !58, line: 39, type: !11)
!145 = !DILocalVariable(name: "buf2d_ptr", scope: !121, file: !58, line: 40, type: !11)
!146 = !DILocalVariable(name: "index", scope: !121, file: !58, line: 42, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !95, line: 15, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !15, line: 25, baseType: !72)
!149 = !DILocalVariable(name: "proc_25_0_bounds", scope: !150, file: !58, line: 46, type: !147)
!150 = distinct !DILexicalBlock(scope: !121, file: !58, line: 44, column: 3)
!151 = !{!152, !154}
!152 = distinct !{!152, !153, !"main: window_buf1_buf1d"}
!153 = distinct !{!153, !"main"}
!154 = distinct !{!154, !153, !"main: window_buf2_buf2d"}
!155 = !DILocation(line: 33, column: 18, scope: !121)
!156 = !{!157, !157, i64 0, i64 4}
!157 = !{!158, i64 4, !"int"}
!158 = !{!159, i64 1, !"omnipotent char"}
!159 = !{!"Simple C++ TBAA"}
!160 = !DILocation(line: 34, column: 3, scope: !121)
!161 = !DILocation(line: 34, column: 19, scope: !121)
!162 = !{!152}
!163 = !DILocation(line: 35, column: 3, scope: !121)
!164 = !DILocation(line: 35, column: 21, scope: !121)
!165 = !{!166, !166, i64 0, i64 4}
!166 = !{!158, i64 4, !"any pointer"}
!167 = !DILocation(line: 36, column: 3, scope: !121)
!168 = !DILocation(line: 36, column: 21, scope: !121)
!169 = !DILocation(line: 37, column: 15, scope: !121)
!170 = !DILocation(line: 37, column: 3, scope: !121)
!171 = !DILocation(line: 38, column: 3, scope: !121)
!172 = !DILocation(line: 38, column: 19, scope: !121)
!173 = !{!154}
!174 = !DILocation(line: 39, column: 3, scope: !121)
!175 = !DILocation(line: 39, column: 21, scope: !121)
!176 = !DILocation(line: 40, column: 3, scope: !121)
!177 = !DILocation(line: 40, column: 21, scope: !121)
!178 = !DILocation(line: 41, column: 15, scope: !121)
!179 = !DILocation(line: 41, column: 3, scope: !121)
!180 = !DILocation(line: 42, column: 3, scope: !121)
!181 = !DILocation(line: 42, column: 9, scope: !121)
!182 = !DILocation(line: 43, column: 3, scope: !121)
!183 = !DILocation(line: 46, column: 3, scope: !150)
!184 = !DILocation(line: 46, column: 9, scope: !150)
!185 = !DILocation(line: 46, column: 28, scope: !150)
!186 = !DILocation(line: 48, column: 3, scope: !150)
!187 = !DILocation(line: 48, column: 10, scope: !150)
!188 = !DILocation(line: 52, column: 20, scope: !189)
!189 = distinct !DILexicalBlock(scope: !150, file: !58, line: 49, column: 3)
!190 = !DILocation(line: 52, column: 66, scope: !189)
!191 = !DILocation(line: 52, column: 75, scope: !189)
!192 = !DILocation(line: 52, column: 87, scope: !189)
!193 = !DILocation(line: 52, column: 5, scope: !189)
!194 = !DILocation(line: 53, column: 20, scope: !189)
!195 = !DILocation(line: 53, column: 69, scope: !189)
!196 = !DILocation(line: 53, column: 78, scope: !189)
!197 = !DILocation(line: 53, column: 90, scope: !189)
!198 = !DILocation(line: 53, column: 5, scope: !189)
!199 = !DILocation(line: 54, column: 39, scope: !189)
!200 = !DILocation(line: 54, column: 16, scope: !189)
!201 = !DILocation(line: 54, column: 82, scope: !189)
!202 = !DILocation(line: 54, column: 58, scope: !189)
!203 = !DILocation(line: 54, column: 5, scope: !189)
!204 = !DILocation(line: 58, column: 20, scope: !189)
!205 = !DILocation(line: 58, column: 66, scope: !189)
!206 = !DILocation(line: 58, column: 75, scope: !189)
!207 = !DILocation(line: 58, column: 87, scope: !189)
!208 = !DILocation(line: 58, column: 5, scope: !189)
!209 = !DILocation(line: 59, column: 20, scope: !189)
!210 = !DILocation(line: 59, column: 69, scope: !189)
!211 = !DILocation(line: 59, column: 78, scope: !189)
!212 = !DILocation(line: 59, column: 90, scope: !189)
!213 = !DILocation(line: 59, column: 5, scope: !189)
!214 = !DILocation(line: 60, column: 17, scope: !189)
!215 = !DILocation(line: 60, column: 15, scope: !189)
!216 = !DILocation(line: 60, column: 11, scope: !189)
!217 = !DILocation(line: 62, column: 5, scope: !189)
!218 = !DILocation(line: 64, column: 8, scope: !219)
!219 = distinct !DILexicalBlock(scope: !189, file: !58, line: 64, column: 8)
!220 = !DILocation(line: 64, column: 25, scope: !219)
!221 = !DILocation(line: 64, column: 8, scope: !189)
!222 = !DILocation(line: 65, column: 7, scope: !219)
!223 = distinct !{!223, !186, !224}
!224 = !DILocation(line: 66, column: 3, scope: !150)
!225 = !DILocation(line: 67, column: 3, scope: !150)
!226 = !DILocation(line: 68, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !150, file: !58, line: 68, column: 7)
!228 = !DILocation(line: 68, column: 22, scope: !227)
!229 = !DILocation(line: 68, column: 7, scope: !150)
!230 = !DILocation(line: 68, column: 27, scope: !227)
!231 = !DILocation(line: 69, column: 3, scope: !121)
!232 = distinct !{!232, !182, !231}
!233 = !DILocation(line: 70, column: 3, scope: !121)
!234 = !DILocation(line: 71, column: 1, scope: !121)
!235 = distinct !DISubprogram(name: "window_init", linkageName: "_ZL11window_initP15window_internaliP7v8int16jS2_jii", scope: !20, file: !20, line: 286, type: !236, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !238, !239, !240, !7, !240, !7, !239, !239}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!242 = !DILocalVariable(name: "w", arg: 1, scope: !235, file: !20, line: 286, type: !238)
!243 = !DILocalVariable(name: "channels", arg: 2, scope: !235, file: !20, line: 286, type: !239)
!244 = !DILocalVariable(name: "buffer_ping", arg: 3, scope: !235, file: !20, line: 286, type: !240)
!245 = !DILocalVariable(name: "lockid_ping", arg: 4, scope: !235, file: !20, line: 286, type: !7)
!246 = !DILocalVariable(name: "buffer_pong", arg: 5, scope: !235, file: !20, line: 286, type: !240)
!247 = !DILocalVariable(name: "lockid_pong", arg: 6, scope: !235, file: !20, line: 286, type: !7)
!248 = !DILocalVariable(name: "size", arg: 7, scope: !235, file: !20, line: 286, type: !239)
!249 = !DILocalVariable(name: "winsize", arg: 8, scope: !235, file: !20, line: 286, type: !239)
!250 = !DILocalVariable(name: "s", scope: !235, file: !20, line: 286, type: !72)
!251 = !DILocalVariable(name: "sz", scope: !235, file: !20, line: 286, type: !239)
!252 = !DILocalVariable(name: "winsz", scope: !235, file: !20, line: 286, type: !239)
!253 = !DILocation(line: 286, column: 1, scope: !235)
!254 = distinct !DISubprogram(name: "window_acquire", linkageName: "_ZL14window_acquireP15window_internaljjPaS1_iii", scope: !20, file: !20, line: 1067, type: !255, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !238, !7, !7, !26, !26, !239, !239, !72}
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266}
!258 = !DILocalVariable(name: "w", arg: 1, scope: !254, file: !20, line: 1067, type: !238)
!259 = !DILocalVariable(name: "ping_lockid", arg: 2, scope: !254, file: !20, line: 1068, type: !7)
!260 = !DILocalVariable(name: "pong_lockid", arg: 3, scope: !254, file: !20, line: 1069, type: !7)
!261 = !DILocalVariable(name: "ping_buffer", arg: 4, scope: !254, file: !20, line: 1070, type: !26)
!262 = !DILocalVariable(name: "pong_buffer", arg: 5, scope: !254, file: !20, line: 1071, type: !26)
!263 = !DILocalVariable(name: "margin", arg: 6, scope: !254, file: !20, line: 1072, type: !239)
!264 = !DILocalVariable(name: "index", arg: 7, scope: !254, file: !20, line: 1073, type: !239)
!265 = !DILocalVariable(name: "type", arg: 8, scope: !254, file: !20, line: 1074, type: !72)
!266 = !DILocalVariable(name: "lockid", scope: !254, file: !20, line: 1084, type: !72)
!267 = !{!268, !270}
!268 = distinct !{!268, !269, !"_ZL14window_acquireP15window_internaljjPaS1_iii: ping_buffer"}
!269 = distinct !{!269, !"_ZL14window_acquireP15window_internaljjPaS1_iii"}
!270 = distinct !{!270, !269, !"_ZL14window_acquireP15window_internaljjPaS1_iii: pong_buffer"}
!271 = !DILocation(line: 1067, column: 52, scope: !254)
!272 = !DILocation(line: 1068, column: 48, scope: !254)
!273 = !DILocation(line: 1069, column: 48, scope: !254)
!274 = !{!268}
!275 = !DILocation(line: 1070, column: 62, scope: !254)
!276 = !{!270}
!277 = !DILocation(line: 1071, column: 62, scope: !254)
!278 = !DILocation(line: 1072, column: 45, scope: !254)
!279 = !DILocation(line: 1073, column: 45, scope: !254)
!280 = !DILocation(line: 1074, column: 39, scope: !254)
!281 = !DILocation(line: 1083, column: 17, scope: !254)
!282 = !DILocation(line: 1083, column: 25, scope: !254)
!283 = !DILocation(line: 1083, column: 39, scope: !254)
!284 = !DILocation(line: 1083, column: 5, scope: !254)
!285 = !DILocation(line: 1083, column: 8, scope: !254)
!286 = !DILocation(line: 1083, column: 15, scope: !254)
!287 = !{!158, !158, i64 0, i64 0}
!288 = !DILocation(line: 1084, column: 5, scope: !254)
!289 = !DILocation(line: 1084, column: 9, scope: !254)
!290 = !DILocation(line: 1084, column: 18, scope: !254)
!291 = !DILocation(line: 1084, column: 26, scope: !254)
!292 = !DILocation(line: 1084, column: 40, scope: !254)
!293 = !DILocation(line: 1085, column: 18, scope: !254)
!294 = !DILocation(line: 1085, column: 26, scope: !254)
!295 = !DILocation(line: 1085, column: 41, scope: !254)
!296 = !DILocation(line: 1085, column: 57, scope: !254)
!297 = !DILocation(line: 1085, column: 55, scope: !254)
!298 = !DILocation(line: 1085, column: 5, scope: !254)
!299 = !DILocation(line: 1085, column: 8, scope: !254)
!300 = !DILocation(line: 1085, column: 13, scope: !254)
!301 = !DILocation(line: 1089, column: 13, scope: !254)
!302 = !DILocation(line: 1089, column: 21, scope: !254)
!303 = !DILocation(line: 1089, column: 5, scope: !254)
!304 = !DILocation(line: 1091, column: 1, scope: !254)
!305 = distinct !DISubprogram(name: "get_input_window_int16", linkageName: "_ZL22get_input_window_int16P15window_internal", scope: !20, file: !20, line: 168, type: !306, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!18, !238}
!308 = !{!309, !310}
!309 = !DILocalVariable(name: "wind", arg: 1, scope: !305, file: !20, line: 168, type: !238)
!310 = !DILocalVariable(name: "toReturn", scope: !305, file: !20, line: 168, type: !18)
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZL22get_input_window_int16P15window_internal: unknown scope"}
!313 = distinct !{!313, !"_ZL22get_input_window_int16P15window_internal"}
!314 = !DILocation(line: 168, column: 1, scope: !305)
!315 = !{!316, !166, i64 8, i64 4}
!316 = !{!158, i64 52, !"_ZTS12input_windowIsE", !157, i64 0, i64 4, !157, i64 4, i64 4, !166, i64 8, i64 4, !166, i64 12, i64 4, !166, i64 16, i64 8, !166, i64 24, i64 4, !166, i64 28, i64 8, !157, i64 36, i64 4, !157, i64 40, i64 4, !157, i64 44, i64 8}
!317 = distinct !DISubprogram(name: "get_output_window_int16", linkageName: "_ZL23get_output_window_int16P15window_internal", scope: !20, file: !20, line: 178, type: !318, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!41, !238}
!320 = !{!321, !322}
!321 = !DILocalVariable(name: "wind", arg: 1, scope: !317, file: !20, line: 178, type: !238)
!322 = !DILocalVariable(name: "toReturn", scope: !317, file: !20, line: 178, type: !41)
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZL23get_output_window_int16P15window_internal: unknown scope"}
!325 = distinct !{!325, !"_ZL23get_output_window_int16P15window_internal"}
!326 = !DILocation(line: 178, column: 1, scope: !317)
!327 = !{!328, !166, i64 8, i64 4}
!328 = !{!158, i64 52, !"_ZTS13output_windowIsE", !157, i64 0, i64 4, !157, i64 4, i64 4, !166, i64 8, i64 4, !166, i64 12, i64 4, !166, i64 16, i64 8, !166, i64 24, i64 4, !166, i64 28, i64 8, !157, i64 36, i64 4, !157, i64 40, i64 4, !157, i64 44, i64 8}
!329 = distinct !DISubprogram(name: "window_release", linkageName: "_ZL14window_releaseP15window_internaljjPaS1_iii", scope: !20, file: !20, line: 1093, type: !255, scopeLine: 1100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !341}
!331 = !DILocalVariable(name: "w", arg: 1, scope: !329, file: !20, line: 1093, type: !238)
!332 = !DILocalVariable(name: "ping_lockid", arg: 2, scope: !329, file: !20, line: 1094, type: !7)
!333 = !DILocalVariable(name: "pong_lockid", arg: 3, scope: !329, file: !20, line: 1095, type: !7)
!334 = !DILocalVariable(name: "ping_buffer", arg: 4, scope: !329, file: !20, line: 1096, type: !26)
!335 = !DILocalVariable(name: "pong_buffer", arg: 5, scope: !329, file: !20, line: 1097, type: !26)
!336 = !DILocalVariable(name: "margin", arg: 6, scope: !329, file: !20, line: 1098, type: !239)
!337 = !DILocalVariable(name: "index", arg: 7, scope: !329, file: !20, line: 1099, type: !239)
!338 = !DILocalVariable(name: "type", arg: 8, scope: !329, file: !20, line: 1100, type: !72)
!339 = !DILocalVariable(name: "h1", scope: !340, file: !20, line: 1109, type: !26)
!340 = distinct !DILexicalBlock(scope: !329, file: !20, line: 1108, column: 3)
!341 = !DILocalVariable(name: "lockid", scope: !340, file: !20, line: 1111, type: !72)
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZL14window_releaseP15window_internaljjPaS1_iii: unknown scope"}
!344 = distinct !{!344, !"_ZL14window_releaseP15window_internaljjPaS1_iii"}
!345 = !{!346, !347, !343}
!346 = distinct !{!346, !344, !"_ZL14window_releaseP15window_internaljjPaS1_iii: ping_buffer"}
!347 = distinct !{!347, !344, !"_ZL14window_releaseP15window_internaljjPaS1_iii: pong_buffer"}
!348 = !DILocation(line: 1093, column: 52, scope: !329)
!349 = !DILocation(line: 1094, column: 48, scope: !329)
!350 = !DILocation(line: 1095, column: 48, scope: !329)
!351 = !{!346}
!352 = !DILocation(line: 1096, column: 62, scope: !329)
!353 = !{!347}
!354 = !DILocation(line: 1097, column: 62, scope: !329)
!355 = !DILocation(line: 1098, column: 45, scope: !329)
!356 = !DILocation(line: 1099, column: 45, scope: !329)
!357 = !DILocation(line: 1100, column: 39, scope: !329)
!358 = !DILocation(line: 1109, column: 5, scope: !340)
!359 = !{!360, !346, !347, !343}
!360 = distinct !{!360, !344, !"_ZL14window_releaseP15window_internaljjPaS1_iii: h1"}
!361 = !DILocation(line: 1109, column: 31, scope: !340)
!362 = !{!360}
!363 = !DILocation(line: 1109, column: 37, scope: !340)
!364 = !DILocation(line: 1109, column: 45, scope: !340)
!365 = !DILocation(line: 1109, column: 59, scope: !340)
!366 = !DILocation(line: 1109, column: 74, scope: !340)
!367 = !DILocation(line: 1109, column: 72, scope: !340)
!368 = !DILocation(line: 1110, column: 10, scope: !340)
!369 = !DILocation(line: 1110, column: 13, scope: !340)
!370 = !DILocation(line: 1110, column: 8, scope: !340)
!371 = !DILocation(line: 1111, column: 5, scope: !340)
!372 = !DILocation(line: 1111, column: 9, scope: !340)
!373 = !DILocation(line: 1111, column: 19, scope: !340)
!374 = !DILocation(line: 1111, column: 27, scope: !340)
!375 = !DILocation(line: 1111, column: 41, scope: !340)
!376 = !DILocation(line: 1112, column: 13, scope: !340)
!377 = !DILocation(line: 1112, column: 21, scope: !340)
!378 = !DILocation(line: 1112, column: 5, scope: !340)
!379 = !DILocation(line: 1113, column: 3, scope: !329)
!380 = !DILocation(line: 1114, column: 1, scope: !329)
!381 = distinct !DISubprogram(name: "done", linkageName: "_Z4donev", scope: !6, file: !6, line: 115482, type: !382, scopeLine: 115483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!382 = !DISubroutineType(types: !383)
!383 = !{null}
!384 = !DILocation(line: 115484, column: 6, scope: !381)
!385 = !DILocation(line: 115485, column: 6, scope: !381)
!386 = !DILocation(line: 115486, column: 26, scope: !381)
!387 = !{!388, !388, i64 0, i64 4}
!388 = !{!158, i64 4, !"uint2_t"}
!389 = !DILocation(line: 115486, column: 6, scope: !381)
!390 = !DILocation(line: 115487, column: 6, scope: !381)
!391 = !DILocation(line: 115488, column: 6, scope: !381)
!392 = !DILocation(line: 115489, column: 5, scope: !381)
!393 = distinct !DISubprogram(name: "window_init", linkageName: "_ZL11window_initP15window_internaliPajS1_jii", scope: !13, file: !13, line: 37, type: !394, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !238, !239, !11, !7, !11, !7, !239, !239}
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405}
!397 = !DILocalVariable(name: "w", arg: 1, scope: !393, file: !13, line: 37, type: !238)
!398 = !DILocalVariable(name: "channels", arg: 2, scope: !393, file: !13, line: 38, type: !239)
!399 = !DILocalVariable(name: "buffer_ping", arg: 3, scope: !393, file: !13, line: 39, type: !11)
!400 = !DILocalVariable(name: "lockid_ping", arg: 4, scope: !393, file: !13, line: 40, type: !7)
!401 = !DILocalVariable(name: "buffer_pong", arg: 5, scope: !393, file: !13, line: 41, type: !11)
!402 = !DILocalVariable(name: "lockid_pong", arg: 6, scope: !393, file: !13, line: 42, type: !7)
!403 = !DILocalVariable(name: "size", arg: 7, scope: !393, file: !13, line: 43, type: !239)
!404 = !DILocalVariable(name: "winsize", arg: 8, scope: !393, file: !13, line: 44, type: !239)
!405 = !DILocalVariable(name: "i", scope: !406, file: !13, line: 46, type: !72)
!406 = distinct !DILexicalBlock(scope: !393, file: !13, line: 46, column: 5)
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZL11window_initP15window_internaliPajS1_jii: unknown scope"}
!409 = distinct !{!409, !"_ZL11window_initP15window_internaliPajS1_jii"}
!410 = !DILocation(line: 37, column: 49, scope: !393)
!411 = !DILocation(line: 38, column: 21, scope: !393)
!412 = !DILocation(line: 39, column: 28, scope: !393)
!413 = !DILocation(line: 40, column: 24, scope: !393)
!414 = !DILocation(line: 41, column: 28, scope: !393)
!415 = !DILocation(line: 42, column: 24, scope: !393)
!416 = !DILocation(line: 43, column: 21, scope: !393)
!417 = !DILocation(line: 44, column: 21, scope: !393)
!418 = !DILocation(line: 46, column: 10, scope: !406)
!419 = !DILocation(line: 46, column: 14, scope: !406)
!420 = !DILocation(line: 46, column: 21, scope: !421)
!421 = distinct !DILexicalBlock(scope: !406, file: !13, line: 46, column: 5)
!422 = !DILocation(line: 46, column: 25, scope: !421)
!423 = !DILocation(line: 46, column: 23, scope: !421)
!424 = !DILocation(line: 46, column: 5, scope: !406)
!425 = !DILocation(line: 46, column: 5, scope: !421)
!426 = !DILocation(line: 48, column: 27, scope: !427)
!427 = distinct !DILexicalBlock(scope: !421, file: !13, line: 47, column: 5)
!428 = !DILocation(line: 48, column: 39, scope: !427)
!429 = !DILocation(line: 48, column: 44, scope: !427)
!430 = !DILocation(line: 48, column: 43, scope: !427)
!431 = !DILocation(line: 48, column: 38, scope: !427)
!432 = !DILocation(line: 48, column: 9, scope: !427)
!433 = !DILocation(line: 48, column: 11, scope: !427)
!434 = !DILocation(line: 48, column: 14, scope: !427)
!435 = !DILocation(line: 48, column: 25, scope: !427)
!436 = !DILocation(line: 49, column: 25, scope: !427)
!437 = !DILocation(line: 49, column: 27, scope: !427)
!438 = !DILocation(line: 49, column: 30, scope: !427)
!439 = !DILocation(line: 49, column: 9, scope: !427)
!440 = !DILocation(line: 49, column: 11, scope: !427)
!441 = !DILocation(line: 49, column: 14, scope: !427)
!442 = !DILocation(line: 49, column: 23, scope: !427)
!443 = !DILocation(line: 53, column: 25, scope: !427)
!444 = !DILocation(line: 53, column: 6, scope: !427)
!445 = !DILocation(line: 53, column: 8, scope: !427)
!446 = !DILocation(line: 53, column: 11, scope: !427)
!447 = !DILocation(line: 53, column: 22, scope: !427)
!448 = !DILocation(line: 55, column: 9, scope: !427)
!449 = !DILocation(line: 55, column: 11, scope: !427)
!450 = !DILocation(line: 55, column: 14, scope: !427)
!451 = !DILocation(line: 55, column: 25, scope: !427)
!452 = !DILocation(line: 56, column: 9, scope: !427)
!453 = !DILocation(line: 56, column: 11, scope: !427)
!454 = !DILocation(line: 56, column: 14, scope: !427)
!455 = !DILocation(line: 56, column: 23, scope: !427)
!456 = !DILocation(line: 58, column: 9, scope: !427)
!457 = !DILocation(line: 58, column: 11, scope: !427)
!458 = !DILocation(line: 58, column: 14, scope: !427)
!459 = !DILocation(line: 58, column: 25, scope: !427)
!460 = !DILocation(line: 61, column: 6, scope: !461)
!461 = distinct !DILexicalBlock(scope: !427, file: !13, line: 61, column: 6)
!462 = !DILocation(line: 61, column: 21, scope: !461)
!463 = !DILocation(line: 61, column: 18, scope: !461)
!464 = !DILocation(line: 61, column: 6, scope: !427)
!465 = !DILocation(line: 62, column: 24, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !13, line: 61, column: 34)
!467 = !DILocation(line: 62, column: 36, scope: !466)
!468 = !DILocation(line: 62, column: 41, scope: !466)
!469 = !DILocation(line: 62, column: 40, scope: !466)
!470 = !DILocation(line: 62, column: 35, scope: !466)
!471 = !DILocation(line: 62, column: 6, scope: !466)
!472 = !DILocation(line: 62, column: 8, scope: !466)
!473 = !DILocation(line: 62, column: 11, scope: !466)
!474 = !DILocation(line: 62, column: 22, scope: !466)
!475 = !DILocation(line: 63, column: 22, scope: !466)
!476 = !DILocation(line: 63, column: 24, scope: !466)
!477 = !DILocation(line: 63, column: 27, scope: !466)
!478 = !DILocation(line: 63, column: 6, scope: !466)
!479 = !DILocation(line: 63, column: 8, scope: !466)
!480 = !DILocation(line: 63, column: 11, scope: !466)
!481 = !DILocation(line: 63, column: 20, scope: !466)
!482 = !DILocation(line: 65, column: 25, scope: !466)
!483 = !DILocation(line: 65, column: 7, scope: !466)
!484 = !DILocation(line: 65, column: 9, scope: !466)
!485 = !DILocation(line: 65, column: 12, scope: !466)
!486 = !DILocation(line: 65, column: 23, scope: !466)
!487 = !DILocation(line: 67, column: 6, scope: !466)
!488 = !DILocation(line: 69, column: 2, scope: !427)
!489 = !DILocation(line: 69, column: 4, scope: !427)
!490 = !DILocation(line: 69, column: 7, scope: !427)
!491 = !DILocation(line: 69, column: 21, scope: !427)
!492 = !DILocation(line: 70, column: 23, scope: !427)
!493 = !DILocation(line: 70, column: 25, scope: !427)
!494 = !DILocation(line: 70, column: 28, scope: !427)
!495 = !DILocation(line: 70, column: 9, scope: !427)
!496 = !DILocation(line: 70, column: 11, scope: !427)
!497 = !DILocation(line: 70, column: 14, scope: !427)
!498 = !DILocation(line: 70, column: 21, scope: !427)
!499 = !DILocation(line: 71, column: 23, scope: !427)
!500 = !DILocation(line: 71, column: 25, scope: !427)
!501 = !DILocation(line: 71, column: 28, scope: !427)
!502 = !DILocation(line: 71, column: 9, scope: !427)
!503 = !DILocation(line: 71, column: 11, scope: !427)
!504 = !DILocation(line: 71, column: 14, scope: !427)
!505 = !DILocation(line: 71, column: 21, scope: !427)
!506 = !DILocation(line: 72, column: 23, scope: !427)
!507 = !DILocation(line: 72, column: 25, scope: !427)
!508 = !DILocation(line: 72, column: 28, scope: !427)
!509 = !DILocation(line: 72, column: 9, scope: !427)
!510 = !DILocation(line: 72, column: 11, scope: !427)
!511 = !DILocation(line: 72, column: 14, scope: !427)
!512 = !DILocation(line: 72, column: 21, scope: !427)
!513 = !DILocation(line: 73, column: 23, scope: !427)
!514 = !DILocation(line: 73, column: 9, scope: !427)
!515 = !DILocation(line: 73, column: 11, scope: !427)
!516 = !DILocation(line: 73, column: 14, scope: !427)
!517 = !DILocation(line: 73, column: 21, scope: !427)
!518 = !DILocation(line: 74, column: 16, scope: !427)
!519 = !DILocation(line: 74, column: 2, scope: !427)
!520 = !DILocation(line: 74, column: 4, scope: !427)
!521 = !DILocation(line: 74, column: 7, scope: !427)
!522 = !DILocation(line: 74, column: 14, scope: !427)
!523 = !DILocation(line: 75, column: 5, scope: !427)
!524 = !DILocation(line: 46, column: 35, scope: !421)
!525 = distinct !{!525, !424, !526}
!526 = !DILocation(line: 75, column: 5, scope: !406)
!527 = !DILocation(line: 76, column: 1, scope: !393)
!528 = distinct !DISubprogram(name: "acquire", linkageName: "_Z7acquirejj", scope: !6, file: !6, line: 115417, type: !529, scopeLine: 115418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !531)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !7, !7}
!531 = !{!532, !533}
!532 = !DILocalVariable(name: "id", arg: 1, scope: !528, file: !6, line: 115417, type: !7)
!533 = !DILocalVariable(name: "val", arg: 2, scope: !528, file: !6, line: 115417, type: !7)
!534 = !DILocation(line: 115417, column: 65, scope: !528)
!535 = !DILocation(line: 115417, column: 78, scope: !528)
!536 = !DILocation(line: 115419, column: 6, scope: !528)
!537 = !DILocation(line: 115420, column: 6, scope: !528)
!538 = !DILocation(line: 115421, column: 28, scope: !528)
!539 = !DILocation(line: 115421, column: 31, scope: !528)
!540 = !{!541, !541, i64 0, i64 4}
!541 = !{!158, i64 4, !"uint1_t"}
!542 = !DILocation(line: 115421, column: 33, scope: !528)
!543 = !DILocation(line: 115421, column: 6, scope: !528)
!544 = !DILocation(line: 115422, column: 6, scope: !528)
!545 = !DILocation(line: 115423, column: 6, scope: !528)
!546 = !DILocation(line: 115424, column: 5, scope: !528)
!547 = !{!548, !548, i64 0, i64 4}
!548 = !{!549, i64 4, !"__chess_separator_universe:any pointer"}
!549 = !{!159, i64 1, !"__chess_separator_universe:omnipotent char"}
!550 = distinct !DISubprogram(name: "release", linkageName: "_Z7releasejj", scope: !6, file: !6, line: 115426, type: !529, scopeLine: 115427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !551)
!551 = !{!552, !553}
!552 = !DILocalVariable(name: "id", arg: 1, scope: !550, file: !6, line: 115426, type: !7)
!553 = !DILocalVariable(name: "val", arg: 2, scope: !550, file: !6, line: 115426, type: !7)
!554 = !DILocation(line: 115426, column: 65, scope: !550)
!555 = !DILocation(line: 115426, column: 78, scope: !550)
!556 = !DILocation(line: 115428, column: 6, scope: !550)
!557 = !DILocation(line: 115429, column: 6, scope: !550)
!558 = !DILocation(line: 115430, column: 28, scope: !550)
!559 = !DILocation(line: 115430, column: 31, scope: !550)
!560 = !DILocation(line: 115430, column: 33, scope: !550)
!561 = !DILocation(line: 115430, column: 6, scope: !550)
!562 = !DILocation(line: 115431, column: 6, scope: !550)
!563 = !DILocation(line: 115432, column: 6, scope: !550)
!564 = !DILocation(line: 115433, column: 5, scope: !550)
!565 = !{!566, !566, i64 0, i64 4}
!566 = !{!549, i64 4, !"__chess_separator_universe:int"}
!567 = distinct !DISubprogram(name: "n2n_trans2", linkageName: "_Z10n2n_trans2P12input_windowIsEP13output_windowIsE", scope: !568, file: !568, line: 5, type: !569, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !571)
!568 = !DIFile(filename: "aie/n2n_trans2.cc", directory: "/home/Jinming/research/aie_project/n2n")
!569 = !DISubroutineType(types: !570)
!570 = !{null, !18, !41}
!571 = !{!572, !573, !574, !576}
!572 = !DILocalVariable(name: "matB", arg: 1, scope: !567, file: !568, line: 5, type: !18)
!573 = !DILocalVariable(name: "matC", arg: 2, scope: !567, file: !568, line: 6, type: !41)
!574 = !DILocalVariable(name: "i", scope: !575, file: !568, line: 8, type: !72)
!575 = distinct !DILexicalBlock(scope: !567, file: !568, line: 8, column: 3)
!576 = !DILocalVariable(name: "B", scope: !577, file: !568, line: 9, type: !94)
!577 = distinct !DILexicalBlock(scope: !578, file: !568, line: 8, column: 26)
!578 = distinct !DILexicalBlock(scope: !575, file: !568, line: 8, column: 3)
!579 = !DILocation(line: 5, column: 37, scope: !567)
!580 = !DILocation(line: 6, column: 23, scope: !567)
!581 = !DILocation(line: 8, column: 8, scope: !575)
!582 = !DILocation(line: 8, column: 12, scope: !575)
!583 = !DILocation(line: 8, column: 16, scope: !578)
!584 = !DILocation(line: 8, column: 17, scope: !578)
!585 = !DILocation(line: 8, column: 3, scope: !575)
!586 = !DILocation(line: 8, column: 3, scope: !578)
!587 = !DILocation(line: 9, column: 4, scope: !577)
!588 = !DILocation(line: 9, column: 10, scope: !577)
!589 = !DILocation(line: 9, column: 28, scope: !577)
!590 = !DILocation(line: 9, column: 12, scope: !577)
!591 = !{!592, !592, i64 0, i64 2}
!592 = !{!158, i64 2, !"short"}
!593 = !DILocation(line: 10, column: 22, scope: !577)
!594 = !DILocation(line: 10, column: 27, scope: !577)
!595 = !DILocation(line: 10, column: 5, scope: !577)
!596 = !DILocation(line: 11, column: 3, scope: !578)
!597 = !DILocation(line: 11, column: 3, scope: !577)
!598 = !DILocation(line: 8, column: 23, scope: !578)
!599 = distinct !{!599, !585, !600}
!600 = !DILocation(line: 11, column: 3, scope: !575)
!601 = !DILocation(line: 13, column: 1, scope: !567)
!602 = distinct !DISubprogram(name: "window_readincr<aie_dm_resource::none>", linkageName: "_ZL15window_readincrIL15aie_dm_resource0EEsP12input_windowIsE", scope: !20, file: !20, line: 836, type: !603, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, templateParams: !100, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!94, !18}
!605 = !{!606, !607}
!606 = !DILocalVariable(name: "w", arg: 1, scope: !602, file: !20, line: 836, type: !18)
!607 = !DILocalVariable(name: "value", scope: !602, file: !20, line: 836, type: !94)
!608 = !DILocation(line: 836, column: 3, scope: !602)
!609 = !{!610}
!610 = distinct !{!610, !611, !"_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs: unknown scope"}
!611 = distinct !{!611, !"_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs"}
!612 = !DILocation(line: 836, column: 3, scope: !111)
!613 = distinct !DISubprogram(name: "window_incr", linkageName: "_ZL11window_incrP13output_windowIsEi", scope: !20, file: !20, line: 492, type: !614, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !41, !72}
!616 = !{!617, !618}
!617 = !DILocalVariable(name: "w", arg: 1, scope: !613, file: !20, line: 492, type: !41)
!618 = !DILocalVariable(name: "count", arg: 2, scope: !613, file: !20, line: 492, type: !72)
!619 = !{!620}
!620 = distinct !{!620, !621, !"_ZL11window_incrP13output_windowIsEi: unknown scope"}
!621 = distinct !{!621, !"_ZL11window_incrP13output_windowIsEi"}
!622 = !DILocation(line: 492, column: 3, scope: !613)
!623 = !{!328, !166, i64 24, i64 4}
!624 = !{!328, !157, i64 36, i64 4}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_Z10cyclic_addIaEPT_S1_iS1_i: a2"}
!627 = distinct !{!627, !"_Z10cyclic_addIaEPT_S1_iS1_i"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs: unknown scope"}
!630 = distinct !{!630, !"_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs"}
!631 = !DILocation(line: 836, column: 3, scope: !90)
!632 = distinct !DISubprogram(name: "window_incr", linkageName: "_ZL11window_incrP12input_windowIsEi", scope: !20, file: !20, line: 482, type: !633, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !18, !72}
!635 = !{!636, !637}
!636 = !DILocalVariable(name: "w", arg: 1, scope: !632, file: !20, line: 482, type: !18)
!637 = !DILocalVariable(name: "count", arg: 2, scope: !632, file: !20, line: 482, type: !72)
!638 = !{!639}
!639 = distinct !{!639, !640, !"_ZL11window_incrP12input_windowIsEi: unknown scope"}
!640 = distinct !{!640, !"_ZL11window_incrP12input_windowIsEi"}
!641 = !DILocation(line: 482, column: 3, scope: !632)
!642 = !{!316, !166, i64 24, i64 4}
!643 = !{!316, !157, i64 36, i64 4}
