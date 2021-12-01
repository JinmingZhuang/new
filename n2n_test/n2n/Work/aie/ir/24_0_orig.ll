; ModuleID = '/home/Jinming/research/aie_project/n2n/Work/aie/24_0/src/24_0.cc'
source_filename = "/home/Jinming/research/aie_project/n2n/Work/aie/24_0/src/24_0.cc"
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

@buf0 = dso_local global [384 x %struct.v8int16] zeroinitializer, align 16, !dbg !0
@buf0d = dso_local global [384 x %struct.v8int16] zeroinitializer, align 16, !dbg !56
@buf1 = dso_local global [384 x %struct.v8int16] zeroinitializer, align 16, !dbg !64
@buf1d = dso_local global [384 x %struct.v8int16] zeroinitializer, align 16, !dbg !66
@_ZL11sync_buffer = internal global [8 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4, !dbg !68
@__chess_separator_dummy = external dso_local global i8*, align 4
@__chess_separator_idummy = external dso_local global i32, align 4

; Function Attrs: norecurse nounwind
define dso_local i32 @main() addrspace(1) #0 !dbg !149 {
entry:
  %retval = alloca i32, align 4
  %window_buf0_buf0d = alloca [1 x %struct.window_internal], align 4
  %buf0_ptr = alloca i8*, align 4
  %buf0d_ptr = alloca i8*, align 4
  %window_buf1_buf1d = alloca [1 x %struct.window_internal], align 4
  %buf1_ptr = alloca i8*, align 4
  %buf1d_ptr = alloca i8*, align 4
  %index = alloca i32, align 4
  %proc_24_0_bounds = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4, !noalias !179
  store volatile i32 0, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !183, !tbaa !184, !noalias !179
  store [1 x %struct.window_internal] undef, [1 x %struct.window_internal]* %window_buf0_buf0d, align 4, !dbg !188, !noalias !179
  %0 = bitcast [1 x %struct.window_internal]* %window_buf0_buf0d to i8*, !dbg !188
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 52, i8* %0) #5, !dbg !188, !noalias !179
  call addrspace(1) void @llvm.dbg.declare(metadata [1 x %struct.window_internal]* %window_buf0_buf0d, metadata !153, metadata !DIExpression()), !dbg !189
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0a1s_struct.window_internals.i32([1 x %struct.window_internal]* %window_buf0_buf0d, i32 0, metadata !190), !dbg !188, !noalias !179
  store i8* undef, i8** %buf0_ptr, align 4, !dbg !191, !noalias !179
  %2 = bitcast i8** %buf0_ptr to i8*, !dbg !191
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !191, !noalias !179
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buf0_ptr, metadata !169, metadata !DIExpression()), !dbg !192
  store i8* bitcast ([384 x %struct.v8int16]* @buf0 to i8*), i8** %buf0_ptr, align 4, !dbg !192, !tbaa !193, !noalias !179
  store i8* undef, i8** %buf0d_ptr, align 4, !dbg !195, !noalias !179
  %3 = bitcast i8** %buf0d_ptr to i8*, !dbg !195
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !195, !noalias !179
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buf0d_ptr, metadata !170, metadata !DIExpression()), !dbg !196
  store i8* bitcast ([384 x %struct.v8int16]* @buf0d to i8*), i8** %buf0d_ptr, align 4, !dbg !196, !tbaa !193, !noalias !179
  %arraydecay = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf0_buf0d, i32 0, i32 0, !dbg !197
  call addrspace(1) void @_ZL11window_initP15window_internaliP7v8int16jS2_jii(%struct.window_internal* %arraydecay, i32 1, %struct.v8int16* getelementptr inbounds ([384 x %struct.v8int16], [384 x %struct.v8int16]* @buf0, i32 0, i32 0), i32 32, %struct.v8int16* getelementptr inbounds ([384 x %struct.v8int16], [384 x %struct.v8int16]* @buf0d, i32 0, i32 0), i32 33, i32 384, i32 384) #16, !dbg !198, !noalias !179
  store [1 x %struct.window_internal] undef, [1 x %struct.window_internal]* %window_buf1_buf1d, align 4, !dbg !199, !noalias !179
  %4 = bitcast [1 x %struct.window_internal]* %window_buf1_buf1d to i8*, !dbg !199
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 52, i8* %4) #5, !dbg !199, !noalias !179
  call addrspace(1) void @llvm.dbg.declare(metadata [1 x %struct.window_internal]* %window_buf1_buf1d, metadata !171, metadata !DIExpression()), !dbg !200
  %5 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0a1s_struct.window_internals.i32([1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, metadata !201), !dbg !199, !noalias !179
  store i8* undef, i8** %buf1_ptr, align 4, !dbg !202, !noalias !179
  %6 = bitcast i8** %buf1_ptr to i8*, !dbg !202
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !202, !noalias !179
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buf1_ptr, metadata !172, metadata !DIExpression()), !dbg !203
  store i8* bitcast ([384 x %struct.v8int16]* @buf1 to i8*), i8** %buf1_ptr, align 4, !dbg !203, !tbaa !193, !noalias !179
  store i8* undef, i8** %buf1d_ptr, align 4, !dbg !204, !noalias !179
  %7 = bitcast i8** %buf1d_ptr to i8*, !dbg !204
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !204, !noalias !179
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buf1d_ptr, metadata !173, metadata !DIExpression()), !dbg !205
  store i8* bitcast ([384 x %struct.v8int16]* @buf1d to i8*), i8** %buf1d_ptr, align 4, !dbg !205, !tbaa !193, !noalias !179
  %arraydecay1 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, i32 0, !dbg !206
  call addrspace(1) void @_ZL11window_initP15window_internaliP7v8int16jS2_jii(%struct.window_internal* %arraydecay1, i32 1, %struct.v8int16* getelementptr inbounds ([384 x %struct.v8int16], [384 x %struct.v8int16]* @buf1, i32 0, i32 0), i32 48, %struct.v8int16* getelementptr inbounds ([384 x %struct.v8int16], [384 x %struct.v8int16]* @buf1d, i32 0, i32 0), i32 49, i32 384, i32 384) #16, !dbg !207, !noalias !179
  store i32 undef, i32* %index, align 4, !dbg !208, !noalias !179
  %8 = bitcast i32* %index to i8*, !dbg !208
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !208, !noalias !179
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %index, metadata !174, metadata !DIExpression()), !dbg !209
  store i32 0, i32* %index, align 4, !dbg !209, !tbaa !184, !noalias !179
  br label %while.cond, !dbg !210

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body, !dbg !210

while.body:                                       ; preds = %while.cond
  store i32 undef, i32* %proc_24_0_bounds, align 4, !dbg !211, !noalias !179
  %9 = bitcast i32* %proc_24_0_bounds to i8*, !dbg !211
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !211, !noalias !179
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %proc_24_0_bounds, metadata !177, metadata !DIExpression()), !dbg !212
  %10 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 1), align 4, !dbg !213, !tbaa !184, !noalias !179
  store i32 %10, i32* %proc_24_0_bounds, align 4, !dbg !212, !tbaa !184, !noalias !179
  br label %while.cond2, !dbg !214

while.cond2:                                      ; preds = %if.end, %while.body
  %11 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !215, !tbaa !184, !noalias !179
  %tobool = icmp ne i32 %11, 0, !dbg !215
  br i1 %tobool, label %while.body3, label %while.end, !dbg !214

while.body3:                                      ; preds = %while.cond2
  %arraydecay4 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf0_buf0d, i32 0, i32 0, !dbg !216
  %12 = load i8*, i8** %buf0_ptr, align 4, !dbg !218, !tbaa !193, !noalias !179
  %13 = load i8*, i8** %buf0d_ptr, align 4, !dbg !219, !tbaa !193, !noalias !179
  %14 = load i32, i32* %index, align 4, !dbg !220, !tbaa !184, !noalias !179
  call addrspace(1) void @_ZL14window_acquireP15window_internaljjPaS1_iii(%struct.window_internal* %arraydecay4, i32 32, i32 33, i8* %12, i8* %13, i32 0, i32 %14, i32 1) #16, !dbg !221, !noalias !179
  %arraydecay5 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, i32 0, !dbg !222
  %15 = load i8*, i8** %buf1_ptr, align 4, !dbg !223, !tbaa !193, !noalias !179
  %16 = load i8*, i8** %buf1d_ptr, align 4, !dbg !224, !tbaa !193, !noalias !179
  %17 = load i32, i32* %index, align 4, !dbg !225, !tbaa !184, !noalias !179
  call addrspace(1) void @_ZL14window_acquireP15window_internaljjPaS1_iii(%struct.window_internal* %arraydecay5, i32 48, i32 49, i8* %15, i8* %16, i32 0, i32 %17, i32 0) #16, !dbg !226, !noalias !179
  %arraydecay6 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf0_buf0d, i32 0, i32 0, !dbg !227
  %call = call addrspace(1) %struct.input_window.0* @_ZL22get_input_window_int16P15window_internal(%struct.window_internal* %arraydecay6) #16, !dbg !228, !noalias !179
  %arraydecay7 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, i32 0, !dbg !229
  %call8 = call addrspace(1) %struct.output_window.1* @_ZL23get_output_window_int16P15window_internal(%struct.window_internal* %arraydecay7) #16, !dbg !230, !noalias !179
  call addrspace(1) void @_Z10n2n_trans1P12input_windowIsEP13output_windowIsE(%struct.input_window.0* %call, %struct.output_window.1* %call8) #16, !dbg !231, !noalias !179
  %arraydecay9 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf0_buf0d, i32 0, i32 0, !dbg !232
  %18 = load i8*, i8** %buf0_ptr, align 4, !dbg !233, !tbaa !193, !noalias !179
  %19 = load i8*, i8** %buf0d_ptr, align 4, !dbg !234, !tbaa !193, !noalias !179
  %20 = load i32, i32* %index, align 4, !dbg !235, !tbaa !184, !noalias !179
  call addrspace(1) void @_ZL14window_releaseP15window_internaljjPaS1_iii(%struct.window_internal* %arraydecay9, i32 32, i32 33, i8* %18, i8* %19, i32 0, i32 %20, i32 0) #16, !dbg !236, !noalias !179
  %arraydecay10 = getelementptr inbounds [1 x %struct.window_internal], [1 x %struct.window_internal]* %window_buf1_buf1d, i32 0, i32 0, !dbg !237
  %21 = load i8*, i8** %buf1_ptr, align 4, !dbg !238, !tbaa !193, !noalias !179
  %22 = load i8*, i8** %buf1d_ptr, align 4, !dbg !239, !tbaa !193, !noalias !179
  %23 = load i32, i32* %index, align 4, !dbg !240, !tbaa !184, !noalias !179
  call addrspace(1) void @_ZL14window_releaseP15window_internaljjPaS1_iii(%struct.window_internal* %arraydecay10, i32 48, i32 49, i8* %21, i8* %22, i32 0, i32 %23, i32 1) #16, !dbg !241, !noalias !179
  %24 = load i32, i32* %index, align 4, !dbg !242, !tbaa !184, !noalias !179
  %sub = sub nsw i32 1, %24, !dbg !243
  store i32 %sub, i32* %index, align 4, !dbg !244, !tbaa !184, !noalias !179
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !245, !noalias !179
  %25 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !246, !tbaa !184, !noalias !179
  %cmp = icmp sgt i32 %25, 0, !dbg !248
  br i1 %cmp, label %if.then, label %if.end, !dbg !249

if.then:                                          ; preds = %while.body3
  %26 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !250, !tbaa !184, !noalias !179
  %dec = add nsw i32 %26, -1, !dbg !250
  store i32 %dec, i32* %proc_24_0_bounds, align 4, !dbg !250, !tbaa !184, !noalias !179
  br label %if.end, !dbg !250

if.end:                                           ; preds = %if.then, %while.body3
  br label %while.cond2, !dbg !214, !llvm.loop !251

while.end:                                        ; preds = %while.cond2
  call addrspace(1) void @_Z4donev() #17, !dbg !253, !noalias !179
  %27 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !254, !tbaa !184, !noalias !179
  %cmp11 = icmp sgt i32 %27, 0, !dbg !256
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !257

if.then12:                                        ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !258

if.end13:                                         ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !259, !noalias !179
  br label %cleanup, !dbg !259

cleanup:                                          ; preds = %if.end13, %if.then12
  %28 = bitcast i32* %proc_24_0_bounds to i8*, !dbg !259
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !259, !noalias !179
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end14
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !210, !llvm.loop !260

while.end14:                                      ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !261, !noalias !179
  store i32 1, i32* %cleanup.dest.slot, align 4
  %29 = bitcast i32* %index to i8*, !dbg !262
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !262
  %30 = bitcast i8** %buf1d_ptr to i8*, !dbg !262
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !262
  %31 = bitcast i8** %buf1_ptr to i8*, !dbg !262
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !262
  %32 = bitcast [1 x %struct.window_internal]* %window_buf1_buf1d to i8*, !dbg !262
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 52, i8* %32) #5, !dbg !262
  %33 = bitcast i8** %buf0d_ptr to i8*, !dbg !262
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !262
  %34 = bitcast i8** %buf0_ptr to i8*, !dbg !262
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !262
  %35 = bitcast [1 x %struct.window_internal]* %window_buf0_buf0d to i8*, !dbg !262
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 52, i8* %35) #5, !dbg !262
  %36 = load i32, i32* %retval, align 4, !dbg !262
  ret i32 %36, !dbg !262

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
define internal void @_ZL11window_initP15window_internaliP7v8int16jS2_jii(%struct.window_internal* %w, i32 %channels, %struct.v8int16* %buffer_ping, i32 %lockid_ping, %struct.v8int16* %buffer_pong, i32 %lockid_pong, i32 %size, i32 %winsize) addrspace(1) #4 !dbg !263 {
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
  store %struct.window_internal* %w, %struct.window_internal** %w.addr, align 4, !tbaa !193
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %w.addr, metadata !270, metadata !DIExpression()), !dbg !281
  store i32 %channels, i32* %channels.addr, align 4, !tbaa !184
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %channels.addr, metadata !271, metadata !DIExpression()), !dbg !281
  store %struct.v8int16* %buffer_ping, %struct.v8int16** %buffer_ping.addr, align 4, !tbaa !193
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16** %buffer_ping.addr, metadata !272, metadata !DIExpression()), !dbg !281
  store i32 %lockid_ping, i32* %lockid_ping.addr, align 4, !tbaa !184
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid_ping.addr, metadata !273, metadata !DIExpression()), !dbg !281
  store %struct.v8int16* %buffer_pong, %struct.v8int16** %buffer_pong.addr, align 4, !tbaa !193
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16** %buffer_pong.addr, metadata !274, metadata !DIExpression()), !dbg !281
  store i32 %lockid_pong, i32* %lockid_pong.addr, align 4, !tbaa !184
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid_pong.addr, metadata !275, metadata !DIExpression()), !dbg !281
  store i32 %size, i32* %size.addr, align 4, !tbaa !184
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %size.addr, metadata !276, metadata !DIExpression()), !dbg !281
  store i32 %winsize, i32* %winsize.addr, align 4, !tbaa !184
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %winsize.addr, metadata !277, metadata !DIExpression()), !dbg !281
  store i32 undef, i32* %s, align 4, !dbg !281
  %0 = bitcast i32* %s to i8*, !dbg !281
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !281
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %s, metadata !278, metadata !DIExpression()), !dbg !281
  store i32 16, i32* %s, align 4, !dbg !281, !tbaa !184
  store i32 undef, i32* %sz, align 4, !dbg !281
  %1 = bitcast i32* %sz to i8*, !dbg !281
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !281
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %sz, metadata !279, metadata !DIExpression()), !dbg !281
  %2 = load i32, i32* %size.addr, align 4, !dbg !281, !tbaa !184
  %3 = load i32, i32* %s, align 4, !dbg !281, !tbaa !184
  %mul = mul nsw i32 %2, %3, !dbg !281
  store i32 %mul, i32* %sz, align 4, !dbg !281, !tbaa !184
  store i32 undef, i32* %winsz, align 4, !dbg !281
  %4 = bitcast i32* %winsz to i8*, !dbg !281
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !281
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %winsz, metadata !280, metadata !DIExpression()), !dbg !281
  %5 = load i32, i32* %winsize.addr, align 4, !dbg !281, !tbaa !184
  %6 = load i32, i32* %s, align 4, !dbg !281, !tbaa !184
  %mul1 = mul nsw i32 %5, %6, !dbg !281
  store i32 %mul1, i32* %winsz, align 4, !dbg !281, !tbaa !184
  %7 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !281, !tbaa !193
  %8 = load i32, i32* %channels.addr, align 4, !dbg !281, !tbaa !184
  %9 = load %struct.v8int16*, %struct.v8int16** %buffer_ping.addr, align 4, !dbg !281, !tbaa !193
  %10 = bitcast %struct.v8int16* %9 to i8*, !dbg !281
  %11 = load i32, i32* %lockid_ping.addr, align 4, !dbg !281, !tbaa !184
  %12 = load %struct.v8int16*, %struct.v8int16** %buffer_pong.addr, align 4, !dbg !281, !tbaa !193
  %13 = bitcast %struct.v8int16* %12 to i8*, !dbg !281
  %14 = load i32, i32* %lockid_pong.addr, align 4, !dbg !281, !tbaa !184
  %15 = load i32, i32* %sz, align 4, !dbg !281, !tbaa !184
  %16 = load i32, i32* %winsz, align 4, !dbg !281, !tbaa !184
  call addrspace(1) void @_ZL11window_initP15window_internaliPajS1_jii(%struct.window_internal* %7, i32 %8, i8* %10, i32 %11, i8* %13, i32 %14, i32 %15, i32 %16) #16, !dbg !281
  %17 = bitcast i32* %winsz to i8*, !dbg !281
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #5, !dbg !281
  %18 = bitcast i32* %sz to i8*, !dbg !281
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #5, !dbg !281
  %19 = bitcast i32* %s to i8*, !dbg !281
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #5, !dbg !281
  ret void, !dbg !281
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL14window_acquireP15window_internaljjPaS1_iii(%struct.window_internal* %w, i32 %ping_lockid, i32 %pong_lockid, i8* chesscopy noalias %ping_buffer, i8* chesscopy noalias %pong_buffer, i32 %margin, i32 %index, i32 %type) addrspace(1) #4 !dbg !282 {
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
  store %struct.window_internal* %w, %struct.window_internal** %w.addr, align 4, !tbaa !193, !noalias !295
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %w.addr, metadata !286, metadata !DIExpression()), !dbg !299
  store i32 %ping_lockid, i32* %ping_lockid.addr, align 4, !tbaa !184, !noalias !295
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ping_lockid.addr, metadata !287, metadata !DIExpression()), !dbg !300
  store i32 %pong_lockid, i32* %pong_lockid.addr, align 4, !tbaa !184, !noalias !295
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %pong_lockid.addr, metadata !288, metadata !DIExpression()), !dbg !301
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %ping_buffer.addr, i32 0, metadata !302), !noalias !295
  store i8* %ping_buffer, i8** %ping_buffer.addr, align 4, !tbaa !193, !noalias !295
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %ping_buffer.addr, metadata !289, metadata !DIExpression()), !dbg !303
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %pong_buffer.addr, i32 0, metadata !304), !noalias !295
  store i8* %pong_buffer, i8** %pong_buffer.addr, align 4, !tbaa !193, !noalias !295
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %pong_buffer.addr, metadata !290, metadata !DIExpression()), !dbg !305
  store i32 %margin, i32* %margin.addr, align 4, !tbaa !184, !noalias !295
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %margin.addr, metadata !291, metadata !DIExpression()), !dbg !306
  store i32 %index, i32* %index.addr, align 4, !tbaa !184, !noalias !295
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %index.addr, metadata !292, metadata !DIExpression()), !dbg !307
  store i32 %type, i32* %type.addr, align 4, !tbaa !184, !noalias !295
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %type.addr, metadata !293, metadata !DIExpression()), !dbg !308
  %2 = load i32, i32* %index.addr, align 4, !dbg !309, !tbaa !184, !noalias !295
  %tobool = icmp ne i32 %2, 0, !dbg !309
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !309

cond.true:                                        ; preds = %entry
  %3 = load i8*, i8** %pong_buffer.addr, align 4, !dbg !310, !tbaa !193, !noalias !295
  %4 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %3, i8* %1, i8** %pong_buffer.addr, i32 0, metadata !304), !dbg !310, !tbaa !193, !noalias !295
  br label %cond.end, !dbg !309

cond.false:                                       ; preds = %entry
  %5 = load i8*, i8** %ping_buffer.addr, align 4, !dbg !311, !tbaa !193, !noalias !295
  %6 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %5, i8* %0, i8** %ping_buffer.addr, i32 0, metadata !302), !dbg !311, !tbaa !193, !noalias !295
  br label %cond.end, !dbg !309

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %6, %cond.false ], !dbg !309
  %7 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !312, !tbaa !193, !noalias !295
  %buffer = getelementptr inbounds %struct.window_internal, %struct.window_internal* %7, i32 0, i32 5, !dbg !313
  store i8* %cond, i8** %buffer, align 4, !dbg !314, !tbaa !315, !noalias !295
  store i32 undef, i32* %lockid, align 4, !dbg !316, !noalias !295
  %8 = bitcast i32* %lockid to i8*, !dbg !316
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !316, !noalias !295
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid, metadata !294, metadata !DIExpression()), !dbg !317
  %9 = load i32, i32* %index.addr, align 4, !dbg !318, !tbaa !184, !noalias !295
  %tobool1 = icmp ne i32 %9, 0, !dbg !318
  br i1 %tobool1, label %cond.true2, label %cond.false3, !dbg !318

cond.true2:                                       ; preds = %cond.end
  %10 = load i32, i32* %pong_lockid.addr, align 4, !dbg !319, !tbaa !184, !noalias !295
  br label %cond.end4, !dbg !318

cond.false3:                                      ; preds = %cond.end
  %11 = load i32, i32* %ping_lockid.addr, align 4, !dbg !320, !tbaa !184, !noalias !295
  br label %cond.end4, !dbg !318

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi i32 [ %10, %cond.true2 ], [ %11, %cond.false3 ], !dbg !318
  store i32 %cond5, i32* %lockid, align 4, !dbg !317, !tbaa !184, !noalias !295
  %12 = load i32, i32* %index.addr, align 4, !dbg !321, !tbaa !184, !noalias !295
  %tobool6 = icmp ne i32 %12, 0, !dbg !321
  br i1 %tobool6, label %cond.true7, label %cond.false8, !dbg !321

cond.true7:                                       ; preds = %cond.end4
  %13 = load i8*, i8** %pong_buffer.addr, align 4, !dbg !322, !tbaa !193, !noalias !295
  %14 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %13, i8* %1, i8** %pong_buffer.addr, i32 0, metadata !304), !dbg !322, !tbaa !193, !noalias !295
  br label %cond.end9, !dbg !321

cond.false8:                                      ; preds = %cond.end4
  %15 = load i8*, i8** %ping_buffer.addr, align 4, !dbg !323, !tbaa !193, !noalias !295
  %16 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %15, i8* %0, i8** %ping_buffer.addr, i32 0, metadata !302), !dbg !323, !tbaa !193, !noalias !295
  br label %cond.end9, !dbg !321

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i8* [ %14, %cond.true7 ], [ %16, %cond.false8 ], !dbg !321
  %17 = load i32, i32* %margin.addr, align 4, !dbg !324, !tbaa !184, !noalias !295
  %add.ptr = getelementptr inbounds i8, i8* %cond10, i32 %17, !dbg !325
  %18 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !326, !tbaa !193, !noalias !295
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %18, i32 0, i32 3, !dbg !327
  store i8* %add.ptr, i8** %head, align 4, !dbg !328, !tbaa !315, !noalias !295
  %19 = load i32, i32* %lockid, align 4, !dbg !329, !tbaa !184, !noalias !295
  %20 = load i32, i32* %type.addr, align 4, !dbg !330, !tbaa !184, !noalias !295
  call addrspace(1) void @_Z7acquirejj(i32 %19, i32 %20) #17, !dbg !331, !noalias !295
  %21 = bitcast i32* %lockid to i8*, !dbg !332
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !332
  ret void, !dbg !332
}

; Function Attrs: inlinehint nounwind
define internal %struct.input_window.0* @_ZL22get_input_window_int16P15window_internal(%struct.window_internal* %wind) addrspace(1) #4 !dbg !333 !noalias !339 {
entry:
  %wind.addr = alloca %struct.window_internal*, align 4
  %toReturn = alloca %struct.input_window.0*, align 4
  store %struct.window_internal* %wind, %struct.window_internal** %wind.addr, align 4, !tbaa !193, !noalias !339
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %wind.addr, metadata !337, metadata !DIExpression()), !dbg !342
  store %struct.input_window.0* undef, %struct.input_window.0** %toReturn, align 4, !dbg !342, !noalias !339
  %0 = bitcast %struct.input_window.0** %toReturn to i8*, !dbg !342
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !342, !noalias !339
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %toReturn, metadata !338, metadata !DIExpression()), !dbg !342
  %1 = load %struct.window_internal*, %struct.window_internal** %wind.addr, align 4, !dbg !342, !tbaa !193, !noalias !339
  %2 = bitcast %struct.window_internal* %1 to %struct.input_window.0*, !dbg !342
  store %struct.input_window.0* %2, %struct.input_window.0** %toReturn, align 4, !dbg !342, !tbaa !193, !noalias !339
  %3 = load %struct.window_internal*, %struct.window_internal** %wind.addr, align 4, !dbg !342, !tbaa !193, !noalias !339
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %3, i32 0, i32 3, !dbg !342
  %4 = load i8*, i8** %head, align 4, !dbg !342, !tbaa !315, !noalias !339
  %5 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %4, i8* null, i8** %head, i32 0, metadata !339), !dbg !342, !tbaa !315, !noalias !339
  %6 = load %struct.input_window.0*, %struct.input_window.0** %toReturn, align 4, !dbg !342, !tbaa !193, !noalias !339
  %ptr = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %6, i32 0, i32 2, !dbg !342
  store i8* %5, i8** %ptr, align 4, !dbg !342, !tbaa !343, !noalias !339
  %7 = load %struct.input_window.0*, %struct.input_window.0** %toReturn, align 4, !dbg !342, !tbaa !193, !noalias !339
  %8 = bitcast %struct.input_window.0** %toReturn to i8*, !dbg !342
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !342
  ret %struct.input_window.0* %7, !dbg !342
}

; Function Attrs: inlinehint nounwind
define internal %struct.output_window.1* @_ZL23get_output_window_int16P15window_internal(%struct.window_internal* %wind) addrspace(1) #4 !dbg !345 !noalias !351 {
entry:
  %wind.addr = alloca %struct.window_internal*, align 4
  %toReturn = alloca %struct.output_window.1*, align 4
  store %struct.window_internal* %wind, %struct.window_internal** %wind.addr, align 4, !tbaa !193, !noalias !351
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %wind.addr, metadata !349, metadata !DIExpression()), !dbg !354
  store %struct.output_window.1* undef, %struct.output_window.1** %toReturn, align 4, !dbg !354, !noalias !351
  %0 = bitcast %struct.output_window.1** %toReturn to i8*, !dbg !354
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !354, !noalias !351
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window.1** %toReturn, metadata !350, metadata !DIExpression()), !dbg !354
  %1 = load %struct.window_internal*, %struct.window_internal** %wind.addr, align 4, !dbg !354, !tbaa !193, !noalias !351
  %2 = bitcast %struct.window_internal* %1 to %struct.output_window.1*, !dbg !354
  store %struct.output_window.1* %2, %struct.output_window.1** %toReturn, align 4, !dbg !354, !tbaa !193, !noalias !351
  %3 = load %struct.window_internal*, %struct.window_internal** %wind.addr, align 4, !dbg !354, !tbaa !193, !noalias !351
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %3, i32 0, i32 3, !dbg !354
  %4 = load i8*, i8** %head, align 4, !dbg !354, !tbaa !315, !noalias !351
  %5 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %4, i8* null, i8** %head, i32 0, metadata !351), !dbg !354, !tbaa !315, !noalias !351
  %6 = load %struct.output_window.1*, %struct.output_window.1** %toReturn, align 4, !dbg !354, !tbaa !193, !noalias !351
  %ptr = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %6, i32 0, i32 2, !dbg !354
  store i8* %5, i8** %ptr, align 4, !dbg !354, !tbaa !355, !noalias !351
  %7 = load %struct.output_window.1*, %struct.output_window.1** %toReturn, align 4, !dbg !354, !tbaa !193, !noalias !351
  %8 = bitcast %struct.output_window.1** %toReturn to i8*, !dbg !354
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !354
  ret %struct.output_window.1* %7, !dbg !354
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL14window_releaseP15window_internaljjPaS1_iii(%struct.window_internal* %w, i32 %ping_lockid, i32 %pong_lockid, i8* chesscopy noalias %ping_buffer, i8* chesscopy noalias %pong_buffer, i32 %margin, i32 %index, i32 %type) addrspace(1) #4 !dbg !357 !noalias !370 {
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
  store %struct.window_internal* %w, %struct.window_internal** %w.addr, align 4, !tbaa !193, !noalias !373
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %w.addr, metadata !359, metadata !DIExpression()), !dbg !376
  store i32 %ping_lockid, i32* %ping_lockid.addr, align 4, !tbaa !184, !noalias !373
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ping_lockid.addr, metadata !360, metadata !DIExpression()), !dbg !377
  store i32 %pong_lockid, i32* %pong_lockid.addr, align 4, !tbaa !184, !noalias !373
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %pong_lockid.addr, metadata !361, metadata !DIExpression()), !dbg !378
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %ping_buffer.addr, i32 0, metadata !379), !noalias !373
  store i8* %ping_buffer, i8** %ping_buffer.addr, align 4, !tbaa !193, !noalias !373
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %ping_buffer.addr, metadata !362, metadata !DIExpression()), !dbg !380
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %pong_buffer.addr, i32 0, metadata !381), !noalias !373
  store i8* %pong_buffer, i8** %pong_buffer.addr, align 4, !tbaa !193, !noalias !373
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %pong_buffer.addr, metadata !363, metadata !DIExpression()), !dbg !382
  store i32 %margin, i32* %margin.addr, align 4, !tbaa !184, !noalias !373
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %margin.addr, metadata !364, metadata !DIExpression()), !dbg !383
  store i32 %index, i32* %index.addr, align 4, !tbaa !184, !noalias !373
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %index.addr, metadata !365, metadata !DIExpression()), !dbg !384
  store i32 %type, i32* %type.addr, align 4, !tbaa !184, !noalias !373
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %type.addr, metadata !366, metadata !DIExpression()), !dbg !385
  store i8* undef, i8** %h1, align 4, !dbg !386, !noalias !387
  %2 = bitcast i8** %h1 to i8*, !dbg !386
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !386, !noalias !387
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %h1, metadata !367, metadata !DIExpression()), !dbg !389
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %h1, i32 0, metadata !390), !dbg !386, !noalias !387
  %4 = load i32, i32* %index.addr, align 4, !dbg !391, !tbaa !184, !noalias !387
  %tobool = icmp ne i32 %4, 0, !dbg !391
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !391

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %pong_buffer.addr, align 4, !dbg !392, !tbaa !193, !noalias !387
  %6 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %5, i8* %1, i8** %pong_buffer.addr, i32 0, metadata !381), !dbg !392, !tbaa !193, !noalias !387
  br label %cond.end, !dbg !391

cond.false:                                       ; preds = %entry
  %7 = load i8*, i8** %ping_buffer.addr, align 4, !dbg !393, !tbaa !193, !noalias !387
  %8 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %7, i8* %0, i8** %ping_buffer.addr, i32 0, metadata !379), !dbg !393, !tbaa !193, !noalias !387
  br label %cond.end, !dbg !391

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ %8, %cond.false ], !dbg !391
  %9 = load i32, i32* %margin.addr, align 4, !dbg !394, !tbaa !184, !noalias !387
  %add.ptr = getelementptr inbounds i8, i8* %cond, i32 %9, !dbg !395
  %10 = call addrspace(1) i8* @llvm.chess.copy.p0i8(i8* %add.ptr), !dbg !389
  store i8* %10, i8** %h1, align 4, !dbg !389, !tbaa !193, !noalias !387
  %11 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !396, !tbaa !193, !noalias !387
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %11, i32 0, i32 3, !dbg !397
  %12 = load i8*, i8** %head, align 4, !dbg !397, !tbaa !315, !noalias !387
  %13 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %12, i8* null, i8** %head, i32 0, metadata !370), !dbg !397, !tbaa !315, !noalias !387
  store i8* %13, i8** %h1, align 4, !dbg !398, !tbaa !193, !noalias !387
  store i32 undef, i32* %lockid, align 4, !dbg !399, !noalias !387
  %14 = bitcast i32* %lockid to i8*, !dbg !399
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !399, !noalias !387
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid, metadata !369, metadata !DIExpression()), !dbg !400
  %15 = load i32, i32* %index.addr, align 4, !dbg !401, !tbaa !184, !noalias !387
  %tobool1 = icmp ne i32 %15, 0, !dbg !401
  br i1 %tobool1, label %cond.true2, label %cond.false3, !dbg !401

cond.true2:                                       ; preds = %cond.end
  %16 = load i32, i32* %pong_lockid.addr, align 4, !dbg !402, !tbaa !184, !noalias !387
  br label %cond.end4, !dbg !401

cond.false3:                                      ; preds = %cond.end
  %17 = load i32, i32* %ping_lockid.addr, align 4, !dbg !403, !tbaa !184, !noalias !387
  br label %cond.end4, !dbg !401

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi i32 [ %16, %cond.true2 ], [ %17, %cond.false3 ], !dbg !401
  store i32 %cond5, i32* %lockid, align 4, !dbg !400, !tbaa !184, !noalias !387
  %18 = load i32, i32* %lockid, align 4, !dbg !404, !tbaa !184, !noalias !387
  %19 = load i32, i32* %type.addr, align 4, !dbg !405, !tbaa !184, !noalias !387
  call addrspace(1) void @_Z7releasejj(i32 %18, i32 %19) #17, !dbg !406, !noalias !387
  %20 = bitcast i32* %lockid to i8*, !dbg !407
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !407, !noalias !373
  %21 = bitcast i8** %h1 to i8*, !dbg !407
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !407, !noalias !373
  ret void, !dbg !408
}

; Function Attrs: nounwind
declare void @llvm.chess_memory_fence() addrspace(1) #5

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_Z4donev() addrspace(1) #6 comdat !dbg !409 {
entry:
  %agg.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !412
  call addrspace(1) void @_ZL25chess_separator_scheduleri(i32 8) #16, !dbg !413
  call addrspace(1) void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* %custom_type.tmp, i32 2) #16, !dbg !414
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %custom_type.tmp, align 4, !dbg !414, !tbaa !415
  store %struct.ipd.custom_type.uint2_t.uint2_t %0, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !dbg !414, !tbaa !415
  %1 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !dbg !417, !tbaa !415
  call addrspace(1) void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %1) #18, !dbg !417
  call addrspace(1) void @_ZL25chess_separator_scheduleri(i32 5) #16, !dbg !418
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) addrspace(1) #1

; Function Attrs: inlinehint nounwind
define internal void @_ZL11window_initP15window_internaliPajS1_jii(%struct.window_internal* %w, i32 %channels, i8* %buffer_ping, i32 %lockid_ping, i8* %buffer_pong, i32 %lockid_pong, i32 %size, i32 %winsize) addrspace(1) #4 !dbg !421 !noalias !435 {
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
  store %struct.window_internal* %w, %struct.window_internal** %w.addr, align 4, !tbaa !193, !noalias !435
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.window_internal** %w.addr, metadata !425, metadata !DIExpression()), !dbg !438
  store i32 %channels, i32* %channels.addr, align 4, !tbaa !184, !noalias !435
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %channels.addr, metadata !426, metadata !DIExpression()), !dbg !439
  store i8* %buffer_ping, i8** %buffer_ping.addr, align 4, !tbaa !193, !noalias !435
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buffer_ping.addr, metadata !427, metadata !DIExpression()), !dbg !440
  store i32 %lockid_ping, i32* %lockid_ping.addr, align 4, !tbaa !184, !noalias !435
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid_ping.addr, metadata !428, metadata !DIExpression()), !dbg !441
  store i8* %buffer_pong, i8** %buffer_pong.addr, align 4, !tbaa !193, !noalias !435
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %buffer_pong.addr, metadata !429, metadata !DIExpression()), !dbg !442
  store i32 %lockid_pong, i32* %lockid_pong.addr, align 4, !tbaa !184, !noalias !435
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %lockid_pong.addr, metadata !430, metadata !DIExpression()), !dbg !443
  store i32 %size, i32* %size.addr, align 4, !tbaa !184, !noalias !435
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %size.addr, metadata !431, metadata !DIExpression()), !dbg !444
  store i32 %winsize, i32* %winsize.addr, align 4, !tbaa !184, !noalias !435
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %winsize.addr, metadata !432, metadata !DIExpression()), !dbg !445
  store i32 undef, i32* %i, align 4, !dbg !446, !noalias !435
  %0 = bitcast i32* %i to i8*, !dbg !446
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !446, !noalias !435
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !433, metadata !DIExpression()), !dbg !447
  store i32 0, i32* %i, align 4, !dbg !447, !tbaa !184, !noalias !435
  br label %for.cond, !dbg !446

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !448, !tbaa !184, !noalias !435
  %2 = load i32, i32* %channels.addr, align 4, !dbg !450, !tbaa !184, !noalias !435
  %cmp = icmp slt i32 %1, %2, !dbg !451
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !452

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !453
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !453, !noalias !435
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %buffer_ping.addr, align 4, !dbg !454, !tbaa !193, !noalias !435
  %5 = load i32, i32* %size.addr, align 4, !dbg !456, !tbaa !184, !noalias !435
  %6 = load i32, i32* %i, align 4, !dbg !457, !tbaa !184, !noalias !435
  %mul = mul nsw i32 %5, %6, !dbg !458
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 %mul, !dbg !459
  %7 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !460, !tbaa !193, !noalias !435
  %8 = load i32, i32* %i, align 4, !dbg !461, !tbaa !184, !noalias !435
  %arrayidx = getelementptr inbounds %struct.window_internal, %struct.window_internal* %7, i32 %8, !dbg !460
  %buffers = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx, i32 0, i32 6, !dbg !462
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers, i32 0, i32 0, !dbg !460
  store i8* %add.ptr, i8** %arrayidx1, align 4, !dbg !463, !tbaa !315, !noalias !435
  %9 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !464, !tbaa !193, !noalias !435
  %10 = load i32, i32* %i, align 4, !dbg !465, !tbaa !184, !noalias !435
  %arrayidx2 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %9, i32 %10, !dbg !464
  %buffers3 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx2, i32 0, i32 6, !dbg !466
  %arrayidx4 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers3, i32 0, i32 0, !dbg !464
  %11 = load i8*, i8** %arrayidx4, align 4, !dbg !464, !tbaa !315, !noalias !435
  %12 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %11, i8* null, i8** %arrayidx4, i32 0, metadata !435), !dbg !464, !tbaa !315, !noalias !435
  %13 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !467, !tbaa !193, !noalias !435
  %14 = load i32, i32* %i, align 4, !dbg !468, !tbaa !184, !noalias !435
  %arrayidx5 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %13, i32 %14, !dbg !467
  %heads = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx5, i32 0, i32 4, !dbg !469
  %arrayidx6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %heads, i32 0, i32 0, !dbg !467
  store i8* %12, i8** %arrayidx6, align 4, !dbg !470, !tbaa !315, !noalias !435
  %15 = load i32, i32* %lockid_ping.addr, align 4, !dbg !471, !tbaa !184, !noalias !435
  %16 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !472, !tbaa !193, !noalias !435
  %17 = load i32, i32* %i, align 4, !dbg !473, !tbaa !184, !noalias !435
  %arrayidx7 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %16, i32 %17, !dbg !472
  %lockids = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx7, i32 0, i32 9, !dbg !474
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %lockids, i32 0, i32 0, !dbg !472
  store i32 %15, i32* %arrayidx8, align 4, !dbg !475, !tbaa !315, !noalias !435
  %18 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !476, !tbaa !193, !noalias !435
  %19 = load i32, i32* %i, align 4, !dbg !477, !tbaa !184, !noalias !435
  %arrayidx9 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %18, i32 %19, !dbg !476
  %buffers10 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx9, i32 0, i32 6, !dbg !478
  %arrayidx11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers10, i32 0, i32 1, !dbg !476
  store i8* null, i8** %arrayidx11, align 4, !dbg !479, !tbaa !315, !noalias !435
  %20 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !480, !tbaa !193, !noalias !435
  %21 = load i32, i32* %i, align 4, !dbg !481, !tbaa !184, !noalias !435
  %arrayidx12 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %20, i32 %21, !dbg !480
  %heads13 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx12, i32 0, i32 4, !dbg !482
  %arrayidx14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %heads13, i32 0, i32 1, !dbg !480
  store i8* null, i8** %arrayidx14, align 4, !dbg !483, !tbaa !315, !noalias !435
  %22 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !484, !tbaa !193, !noalias !435
  %23 = load i32, i32* %i, align 4, !dbg !485, !tbaa !184, !noalias !435
  %arrayidx15 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %22, i32 %23, !dbg !484
  %lockids16 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx15, i32 0, i32 9, !dbg !486
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %lockids16, i32 0, i32 1, !dbg !484
  store i32 -1, i32* %arrayidx17, align 4, !dbg !487, !tbaa !315, !noalias !435
  %24 = load i8*, i8** %buffer_pong.addr, align 4, !dbg !488, !tbaa !193, !noalias !435
  %25 = load i8*, i8** %buffer_ping.addr, align 4, !dbg !490, !tbaa !193, !noalias !435
  %cmp18 = icmp ne i8* %24, %25, !dbg !491
  br i1 %cmp18, label %if.then, label %if.end, !dbg !492

if.then:                                          ; preds = %for.body
  %26 = load i8*, i8** %buffer_pong.addr, align 4, !dbg !493, !tbaa !193, !noalias !435
  %27 = load i32, i32* %size.addr, align 4, !dbg !495, !tbaa !184, !noalias !435
  %28 = load i32, i32* %i, align 4, !dbg !496, !tbaa !184, !noalias !435
  %mul19 = mul nsw i32 %27, %28, !dbg !497
  %add.ptr20 = getelementptr inbounds i8, i8* %26, i32 %mul19, !dbg !498
  %29 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !499, !tbaa !193, !noalias !435
  %30 = load i32, i32* %i, align 4, !dbg !500, !tbaa !184, !noalias !435
  %arrayidx21 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %29, i32 %30, !dbg !499
  %buffers22 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx21, i32 0, i32 6, !dbg !501
  %arrayidx23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers22, i32 0, i32 1, !dbg !499
  store i8* %add.ptr20, i8** %arrayidx23, align 4, !dbg !502, !tbaa !315, !noalias !435
  %31 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !503, !tbaa !193, !noalias !435
  %32 = load i32, i32* %i, align 4, !dbg !504, !tbaa !184, !noalias !435
  %arrayidx24 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %31, i32 %32, !dbg !503
  %buffers25 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx24, i32 0, i32 6, !dbg !505
  %arrayidx26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers25, i32 0, i32 1, !dbg !503
  %33 = load i8*, i8** %arrayidx26, align 4, !dbg !503, !tbaa !315, !noalias !435
  %34 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %33, i8* null, i8** %arrayidx26, i32 0, metadata !435), !dbg !503, !tbaa !315, !noalias !435
  %35 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !506, !tbaa !193, !noalias !435
  %36 = load i32, i32* %i, align 4, !dbg !507, !tbaa !184, !noalias !435
  %arrayidx27 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %35, i32 %36, !dbg !506
  %heads28 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx27, i32 0, i32 4, !dbg !508
  %arrayidx29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %heads28, i32 0, i32 1, !dbg !506
  store i8* %34, i8** %arrayidx29, align 4, !dbg !509, !tbaa !315, !noalias !435
  %37 = load i32, i32* %lockid_pong.addr, align 4, !dbg !510, !tbaa !184, !noalias !435
  %38 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !511, !tbaa !193, !noalias !435
  %39 = load i32, i32* %i, align 4, !dbg !512, !tbaa !184, !noalias !435
  %arrayidx30 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %38, i32 %39, !dbg !511
  %lockids31 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx30, i32 0, i32 9, !dbg !513
  %arrayidx32 = getelementptr inbounds [2 x i32], [2 x i32]* %lockids31, i32 0, i32 1, !dbg !511
  store i32 %37, i32* %arrayidx32, align 4, !dbg !514, !tbaa !315, !noalias !435
  br label %if.end, !dbg !515

if.end:                                           ; preds = %if.then, %for.body
  %40 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !516, !tbaa !193, !noalias !435
  %41 = load i32, i32* %i, align 4, !dbg !517, !tbaa !184, !noalias !435
  %arrayidx33 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %40, i32 %41, !dbg !516
  %current_bufid = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx33, i32 0, i32 0, !dbg !518
  store i32 0, i32* %current_bufid, align 4, !dbg !519, !tbaa !315, !noalias !435
  %42 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !520, !tbaa !193, !noalias !435
  %43 = load i32, i32* %i, align 4, !dbg !521, !tbaa !184, !noalias !435
  %arrayidx34 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %42, i32 %43, !dbg !520
  %buffers35 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx34, i32 0, i32 6, !dbg !522
  %arrayidx36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %buffers35, i32 0, i32 0, !dbg !520
  %44 = load i8*, i8** %arrayidx36, align 4, !dbg !520, !tbaa !315, !noalias !435
  %45 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %44, i8* null, i8** %arrayidx36, i32 0, metadata !435), !dbg !520, !tbaa !315, !noalias !435
  %46 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !523, !tbaa !193, !noalias !435
  %47 = load i32, i32* %i, align 4, !dbg !524, !tbaa !184, !noalias !435
  %arrayidx37 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %46, i32 %47, !dbg !523
  %buffer = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx37, i32 0, i32 5, !dbg !525
  store i8* %45, i8** %buffer, align 4, !dbg !526, !tbaa !315, !noalias !435
  %48 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !527, !tbaa !193, !noalias !435
  %49 = load i32, i32* %i, align 4, !dbg !528, !tbaa !184, !noalias !435
  %arrayidx38 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %48, i32 %49, !dbg !527
  %heads39 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx38, i32 0, i32 4, !dbg !529
  %arrayidx40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %heads39, i32 0, i32 0, !dbg !527
  %50 = load i8*, i8** %arrayidx40, align 4, !dbg !527, !tbaa !315, !noalias !435
  %51 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %50, i8* null, i8** %arrayidx40, i32 0, metadata !435), !dbg !527, !tbaa !315, !noalias !435
  %52 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !530, !tbaa !193, !noalias !435
  %53 = load i32, i32* %i, align 4, !dbg !531, !tbaa !184, !noalias !435
  %arrayidx41 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %52, i32 %53, !dbg !530
  %head = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx41, i32 0, i32 3, !dbg !532
  store i8* %51, i8** %head, align 4, !dbg !533, !tbaa !315, !noalias !435
  %54 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !534, !tbaa !193, !noalias !435
  %55 = load i32, i32* %i, align 4, !dbg !535, !tbaa !184, !noalias !435
  %arrayidx42 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %54, i32 %55, !dbg !534
  %head43 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx42, i32 0, i32 3, !dbg !536
  %56 = load i8*, i8** %head43, align 4, !dbg !536, !tbaa !315, !noalias !435
  %57 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %56, i8* null, i8** %head43, i32 0, metadata !435), !dbg !536, !tbaa !315, !noalias !435
  %58 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !537, !tbaa !193, !noalias !435
  %59 = load i32, i32* %i, align 4, !dbg !538, !tbaa !184, !noalias !435
  %arrayidx44 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %58, i32 %59, !dbg !537
  %ptr = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx44, i32 0, i32 2, !dbg !539
  store i8* %57, i8** %ptr, align 4, !dbg !540, !tbaa !315, !noalias !435
  %60 = load i32, i32* %size.addr, align 4, !dbg !541, !tbaa !184, !noalias !435
  %61 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !542, !tbaa !193, !noalias !435
  %62 = load i32, i32* %i, align 4, !dbg !543, !tbaa !184, !noalias !435
  %arrayidx45 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %61, i32 %62, !dbg !542
  %size46 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx45, i32 0, i32 7, !dbg !544
  store i32 %60, i32* %size46, align 4, !dbg !545, !tbaa !315, !noalias !435
  %63 = load i32, i32* %winsize.addr, align 4, !dbg !546, !tbaa !184, !noalias !435
  %64 = load %struct.window_internal*, %struct.window_internal** %w.addr, align 4, !dbg !547, !tbaa !193, !noalias !435
  %65 = load i32, i32* %i, align 4, !dbg !548, !tbaa !184, !noalias !435
  %arrayidx47 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %64, i32 %65, !dbg !547
  %winsize48 = getelementptr inbounds %struct.window_internal, %struct.window_internal* %arrayidx47, i32 0, i32 8, !dbg !549
  store i32 %63, i32* %winsize48, align 4, !dbg !550, !tbaa !315, !noalias !435
  br label %for.inc, !dbg !551

for.inc:                                          ; preds = %if.end
  %66 = load i32, i32* %i, align 4, !dbg !552, !tbaa !184, !noalias !435
  %inc = add nsw i32 %66, 1, !dbg !552
  store i32 %inc, i32* %i, align 4, !dbg !552, !tbaa !184, !noalias !435
  br label %for.cond, !dbg !453, !llvm.loop !553

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !555
}

; Function Attrs: argmemonly nounwind speculatable
declare i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8*, i8*, i8**, i32, metadata) addrspace(1) #7

; Function Attrs: inaccessiblememonly nounwind
declare i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8**, i32, metadata) addrspace(1) #3

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_Z7acquirejj(i32 %id, i32 %val) addrspace(1) #6 comdat !dbg !556 {
entry:
  %id.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  store i32 %id, i32* %id.addr, align 4, !tbaa !184
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %id.addr, metadata !560, metadata !DIExpression()), !dbg !562
  store i32 %val, i32* %val.addr, align 4, !tbaa !184
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %val.addr, metadata !561, metadata !DIExpression()), !dbg !563
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !564
  call addrspace(1) void @_ZL25chess_separator_schedulerv() #16, !dbg !565
  %0 = load i32, i32* %id.addr, align 4, !dbg !566, !tbaa !184
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, i32 1) #16, !dbg !567
  %1 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !dbg !567, !tbaa !568
  store %struct.ipd.custom_type.uint1_t.uint1_t %1, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !dbg !567, !tbaa !568
  %2 = load i32, i32* %val.addr, align 4, !dbg !570, !tbaa !184
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !dbg !571, !tbaa !568
  call addrspace(1) void @_ZN12me_primitive7acquireEj7uint1_tj(i32 %0, %struct.ipd.custom_type.uint1_t.uint1_t %3, i32 %2) #18, !dbg !571
  call addrspace(1) void @_ZL25chess_separator_schedulerv() #16, !dbg !572
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !573
  ret void, !dbg !574
}

; Function Attrs: alwaysinline nounwind
define internal void @_ZL25chess_separator_schedulerv() addrspace(1) #8 {
entry:
  store volatile i8* inttoptr (i20 1 to i8*), i8** @__chess_separator_dummy, align 4, !tbaa !575
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN12me_primitive7acquireEj7uint1_tj(i32 %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32 %a2) addrspace(1) #9 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 %a0, i32* %a0.addr, align 4, !tbaa !184
  store i32 %a2, i32* %a2.addr, align 4, !tbaa !184
  %0 = load i32, i32* %a0.addr, align 4, !tbaa !184
  %1 = load i32, i32* %a2.addr, align 4, !tbaa !184
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !568
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_acquire___uint_uint1_t___uint(i32 %0, %struct.ipd.custom_type.uint1_t.uint1_t %2, i32 %1) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* %this, i32 %a) unnamed_addr addrspace(1) #8 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint1_t.uint1_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t* %this, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4, !tbaa !193
  store i32 %a, i32* %a.addr, align 4, !tbaa !184
  %this1 = load %struct.ipd.custom_type.uint1_t.uint1_t*, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint1_t.uint1_t* %this1 to i8*
  %bf.load = load i8, i8* %0, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !184
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
define linkonce_odr dso_local void @_Z7releasejj(i32 %id, i32 %val) addrspace(1) #6 comdat !dbg !578 {
entry:
  %id.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  store i32 %id, i32* %id.addr, align 4, !tbaa !184
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %id.addr, metadata !580, metadata !DIExpression()), !dbg !582
  store i32 %val, i32* %val.addr, align 4, !tbaa !184
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %val.addr, metadata !581, metadata !DIExpression()), !dbg !583
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !584
  call addrspace(1) void @_ZL25chess_separator_schedulerv() #16, !dbg !585
  %0 = load i32, i32* %id.addr, align 4, !dbg !586, !tbaa !184
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, i32 1) #16, !dbg !587
  %1 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !dbg !587, !tbaa !568
  store %struct.ipd.custom_type.uint1_t.uint1_t %1, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !dbg !587, !tbaa !568
  %2 = load i32, i32* %val.addr, align 4, !dbg !588, !tbaa !184
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !dbg !589, !tbaa !568
  call addrspace(1) void @_ZN12me_primitive7releaseEj7uint1_tj(i32 %0, %struct.ipd.custom_type.uint1_t.uint1_t %3, i32 %2) #18, !dbg !589
  call addrspace(1) void @_ZL25chess_separator_schedulerv() #16, !dbg !590
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN12me_primitive7releaseEj7uint1_tj(i32 %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32 %a2) addrspace(1) #9 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 %a0, i32* %a0.addr, align 4, !tbaa !184
  store i32 %a2, i32* %a2.addr, align 4, !tbaa !184
  %0 = load i32, i32* %a0.addr, align 4, !tbaa !184
  %1 = load i32, i32* %a2.addr, align 4, !tbaa !184
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !568
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_release___uint_uint1_t___uint(i32 %0, %struct.ipd.custom_type.uint1_t.uint1_t %2, i32 %1) #19
  ret void
}

; Function Attrs: inaccessiblememonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_release___uint_uint1_t___uint(i32, %struct.ipd.custom_type.uint1_t.uint1_t, i32) addrspace(1) #10

; Function Attrs: alwaysinline nounwind
define internal void @_ZL25chess_separator_scheduleri(i32 %i) addrspace(1) #8 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !184
  %0 = load i32, i32* %i.addr, align 4, !tbaa !184
  store volatile i32 %0, i32* @__chess_separator_idummy, align 4, !tbaa !593
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce) addrspace(1) #9 comdat {
entry:
  %a0 = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4, !tbaa !415
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %0) #19
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* %this, i32 %a) unnamed_addr addrspace(1) #8 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint2_t.uint2_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t* %this, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4, !tbaa !193
  store i32 %a, i32* %a.addr, align 4, !tbaa !184
  %this1 = load %struct.ipd.custom_type.uint2_t.uint2_t*, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint2_t.uint2_t* %this1 to i8*
  %bf.load = load i8, i8* %0, align 4
  %bf.clear = and i8 %bf.load, -4
  store i8 %bf.clear, i8* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !184
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
define dso_local void @_Z10n2n_trans1P12input_windowIsEP13output_windowIsE(%struct.input_window.0* %matA, %struct.output_window.1* %matB) addrspace(1) #14 !dbg !595 {
entry:
  %matA.addr = alloca %struct.input_window.0*, align 4
  %matB.addr = alloca %struct.output_window.1*, align 4
  %i = alloca i32, align 4
  %A = alloca i16, align 2
  store %struct.input_window.0* %matA, %struct.input_window.0** %matA.addr, align 4, !tbaa !193
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %matA.addr, metadata !600, metadata !DIExpression()), !dbg !607
  store %struct.output_window.1* %matB, %struct.output_window.1** %matB.addr, align 4, !tbaa !193
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window.1** %matB.addr, metadata !601, metadata !DIExpression()), !dbg !608
  store i32 undef, i32* %i, align 4, !dbg !609
  %0 = bitcast i32* %i to i8*, !dbg !609
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !609
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !602, metadata !DIExpression()), !dbg !610
  store i32 0, i32* %i, align 4, !dbg !610, !tbaa !184
  br label %for.cond, !dbg !609

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !611, !tbaa !184
  %cmp = icmp slt i32 %1, 3072, !dbg !612
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !613

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*, !dbg !614
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !614
  br label %for.end

for.body:                                         ; preds = %for.cond
  store i16 undef, i16* %A, align 2, !dbg !615
  %3 = bitcast i16* %A to i8*, !dbg !615
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 2, i8* %3) #5, !dbg !615
  call addrspace(1) void @llvm.dbg.declare(metadata i16* %A, metadata !604, metadata !DIExpression()), !dbg !616
  %4 = load %struct.input_window.0*, %struct.input_window.0** %matA.addr, align 4, !dbg !617, !tbaa !193
  %call = call signext addrspace(1) i16 @_ZL15window_readincrIL15aie_dm_resource0EEsP12input_windowIsE(%struct.input_window.0* %4) #16, !dbg !618
  store i16 %call, i16* %A, align 2, !dbg !616, !tbaa !619
  %5 = load %struct.output_window.1*, %struct.output_window.1** %matB.addr, align 4, !dbg !621, !tbaa !193
  %6 = load i16, i16* %A, align 2, !dbg !622, !tbaa !619
  call addrspace(1) void @_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs(%struct.output_window.1* %5, i16 signext %6) #16, !dbg !623
  %7 = bitcast i16* %A to i8*, !dbg !624
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 2, i8* %7) #5, !dbg !624
  br label %for.inc, !dbg !625

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !626, !tbaa !184
  %inc = add nsw i32 %8, 1, !dbg !626
  store i32 %inc, i32* %i, align 4, !dbg !626, !tbaa !184
  br label %for.cond, !dbg !614, !llvm.loop !627

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !629
}

; Function Attrs: inlinehint nounwind
define internal signext i16 @_ZL15window_readincrIL15aie_dm_resource0EEsP12input_windowIsE(%struct.input_window.0* %w) addrspace(1) #4 !dbg !630 {
entry:
  %w.addr = alloca %struct.input_window.0*, align 4
  %value = alloca i16, align 2
  store %struct.input_window.0* %w, %struct.input_window.0** %w.addr, align 4, !tbaa !193
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %w.addr, metadata !634, metadata !DIExpression()), !dbg !636
  store i16 undef, i16* %value, align 2, !dbg !636
  %0 = bitcast i16* %value to i8*, !dbg !636
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #5, !dbg !636
  call addrspace(1) void @llvm.dbg.declare(metadata i16* %value, metadata !635, metadata !DIExpression()), !dbg !636
  %1 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !636, !tbaa !193
  call addrspace(1) void @_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs(%struct.input_window.0* %1, i16* nonnull align 2 dereferenceable(2) %value) #16, !dbg !636
  %2 = load i16, i16* %value, align 2, !dbg !636, !tbaa !619
  %3 = bitcast i16* %value to i8*, !dbg !636
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 2, i8* %3) #5, !dbg !636
  ret i16 %2, !dbg !636
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs(%struct.output_window.1* %w, i16 signext %value) addrspace(1) #4 !dbg !125 !noalias !637 {
entry:
  %w.addr = alloca %struct.output_window.1*, align 4
  %value.addr = alloca i16, align 2
  store %struct.output_window.1* %w, %struct.output_window.1** %w.addr, align 4, !tbaa !193, !noalias !637
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window.1** %w.addr, metadata !143, metadata !DIExpression()), !dbg !640
  store i16 %value, i16* %value.addr, align 2, !tbaa !619, !noalias !637
  call addrspace(1) void @llvm.dbg.declare(metadata i16* %value.addr, metadata !144, metadata !DIExpression()), !dbg !640
  %0 = load i16, i16* %value.addr, align 2, !dbg !640, !tbaa !619, !noalias !637
  %1 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !640, !tbaa !193, !noalias !637
  %ptr = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %1, i32 0, i32 2, !dbg !640
  %2 = load i8*, i8** %ptr, align 4, !dbg !640, !tbaa !355, !noalias !637
  %3 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %2, i8* null, i8** %ptr, i32 0, metadata !637), !dbg !640, !tbaa !355, !noalias !637
  %4 = bitcast i8* %3 to i16*, !dbg !640
  store i16 %0, i16* %4, align 2, !dbg !640, !tbaa !619, !noalias !637
  %5 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !640, !tbaa !193, !noalias !637
  call addrspace(1) void @_ZL11window_incrP13output_windowIsEi(%struct.output_window.1* %5, i32 1) #16, !dbg !640, !noalias !637
  ret void, !dbg !640
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL11window_incrP13output_windowIsEi(%struct.output_window.1* %w, i32 %count) addrspace(1) #4 !dbg !641 !noalias !647 {
entry:
  %w.addr = alloca %struct.output_window.1*, align 4
  %count.addr = alloca i32, align 4
  store %struct.output_window.1* %w, %struct.output_window.1** %w.addr, align 4, !tbaa !193, !noalias !647
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window.1** %w.addr, metadata !645, metadata !DIExpression()), !dbg !650
  store i32 %count, i32* %count.addr, align 4, !tbaa !184, !noalias !647
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %count.addr, metadata !646, metadata !DIExpression()), !dbg !650
  %0 = load i32, i32* %count.addr, align 4, !dbg !650, !tbaa !184, !noalias !647
  %mul = mul i32 %0, 2, !dbg !650
  store i32 %mul, i32* %count.addr, align 4, !dbg !650, !tbaa !184, !noalias !647
  %1 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !650, !tbaa !193, !noalias !647
  %ptr = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %1, i32 0, i32 2, !dbg !650
  %2 = load i8*, i8** %ptr, align 4, !dbg !650, !tbaa !355, !noalias !647
  %3 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %2, i8* null, i8** %ptr, i32 0, metadata !647), !dbg !650, !tbaa !355, !noalias !647
  %4 = load i32, i32* %count.addr, align 4, !dbg !650, !tbaa !184, !noalias !647
  %5 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !650, !tbaa !193, !noalias !647
  %buffer = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %5, i32 0, i32 5, !dbg !650
  %6 = load i8*, i8** %buffer, align 4, !dbg !650, !tbaa !651, !noalias !647
  %7 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %6, i8* null, i8** %buffer, i32 0, metadata !647), !dbg !650, !tbaa !651, !noalias !647
  %8 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !650, !tbaa !193, !noalias !647
  %size = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %8, i32 0, i32 7, !dbg !650
  %9 = load i32, i32* %size, align 4, !dbg !650, !tbaa !652, !noalias !647
  %call = call addrspace(1) i8* @_Z10cyclic_addIaEPT_S1_iS1_i(i8* %3, i32 %4, i8* %7, i32 %9) #16, !dbg !650, !noalias !647
  %10 = load %struct.output_window.1*, %struct.output_window.1** %w.addr, align 4, !dbg !650, !tbaa !193, !noalias !647
  %ptr1 = getelementptr inbounds %struct.output_window.1, %struct.output_window.1* %10, i32 0, i32 2, !dbg !650
  store i8* %call, i8** %ptr1, align 4, !dbg !650, !tbaa !355, !noalias !647
  ret void, !dbg !650
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local i8* @_Z10cyclic_addIaEPT_S1_iS1_i(i8* %a0, i32 %a1, i8* chesscopy noalias %a2, i32 %a3) addrspace(1) #8 comdat {
entry:
  %a0.addr = alloca i8*, align 4
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca i8*, align 4
  %a3.addr = alloca i32, align 4
  store i8* %a0, i8** %a0.addr, align 4, !tbaa !193, !noalias !653
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !184, !noalias !653
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %a2.addr, i32 0, metadata !653), !noalias !653
  store i8* %a2, i8** %a2.addr, align 4, !tbaa !193, !noalias !653
  store i32 %a3, i32* %a3.addr, align 4, !tbaa !184, !noalias !653
  %1 = load i8*, i8** %a0.addr, align 4, !tbaa !193, !noalias !653
  %2 = load i32, i32* %a1.addr, align 4, !tbaa !184, !noalias !653
  %mul = mul i32 %2, 1
  %3 = load i8*, i8** %a2.addr, align 4, !tbaa !193, !noalias !653
  %4 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %3, i8* %0, i8** %a2.addr, i32 0, metadata !653), !tbaa !193, !noalias !653
  %5 = load i32, i32* %a3.addr, align 4, !tbaa !184, !noalias !653
  %mul1 = mul i32 %5, 1
  %call = call x86_regcallcc addrspace(1) i8* @__regcall3__chessintr___Pvoid_cyclic_add___Pvoid___sint___Pvoid___sint(i8* %1, i32 %mul, i8* %4, i32 %mul1) #20
  ret i8* %call
}

; Function Attrs: nounwind positionalaliasingreturns readnone
declare dso_local x86_regcallcc i8* @__regcall3__chessintr___Pvoid_cyclic_add___Pvoid___sint___Pvoid___sint(i8*, i32, i8*, i32) addrspace(1) #15

; Function Attrs: inlinehint nounwind
define internal void @_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs(%struct.input_window.0* %w, i16* nonnull align 2 dereferenceable(2) %value) addrspace(1) #4 !dbg !90 !noalias !656 {
entry:
  %w.addr = alloca %struct.input_window.0*, align 4
  %value.addr = alloca i16*, align 4
  store %struct.input_window.0* %w, %struct.input_window.0** %w.addr, align 4, !tbaa !193, !noalias !656
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %w.addr, metadata !112, metadata !DIExpression()), !dbg !659
  store i16* %value, i16** %value.addr, align 4, !tbaa !193, !noalias !656
  call addrspace(1) void @llvm.dbg.declare(metadata i16** %value.addr, metadata !113, metadata !DIExpression()), !dbg !659
  %0 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !659, !tbaa !193, !noalias !656
  %ptr = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %0, i32 0, i32 2, !dbg !659
  %1 = load i8*, i8** %ptr, align 4, !dbg !659, !tbaa !343, !noalias !656
  %2 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %1, i8* null, i8** %ptr, i32 0, metadata !656), !dbg !659, !tbaa !343, !noalias !656
  %3 = bitcast i8* %2 to i16*, !dbg !659
  %4 = load i16, i16* %3, align 2, !dbg !659, !tbaa !619, !noalias !656
  %5 = load i16*, i16** %value.addr, align 4, !dbg !659, !tbaa !193, !noalias !656
  store i16 %4, i16* %5, align 2, !dbg !659, !tbaa !619, !noalias !656
  %6 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !659, !tbaa !193, !noalias !656
  call addrspace(1) void @_ZL11window_incrP12input_windowIsEi(%struct.input_window.0* %6, i32 1) #16, !dbg !659, !noalias !656
  ret void, !dbg !659
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL11window_incrP12input_windowIsEi(%struct.input_window.0* %w, i32 %count) addrspace(1) #4 !dbg !660 !noalias !666 {
entry:
  %w.addr = alloca %struct.input_window.0*, align 4
  %count.addr = alloca i32, align 4
  store %struct.input_window.0* %w, %struct.input_window.0** %w.addr, align 4, !tbaa !193, !noalias !666
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window.0** %w.addr, metadata !664, metadata !DIExpression()), !dbg !669
  store i32 %count, i32* %count.addr, align 4, !tbaa !184, !noalias !666
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %count.addr, metadata !665, metadata !DIExpression()), !dbg !669
  %0 = load i32, i32* %count.addr, align 4, !dbg !669, !tbaa !184, !noalias !666
  %mul = mul i32 %0, 2, !dbg !669
  store i32 %mul, i32* %count.addr, align 4, !dbg !669, !tbaa !184, !noalias !666
  %1 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !669, !tbaa !193, !noalias !666
  %ptr = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %1, i32 0, i32 2, !dbg !669
  %2 = load i8*, i8** %ptr, align 4, !dbg !669, !tbaa !343, !noalias !666
  %3 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %2, i8* null, i8** %ptr, i32 0, metadata !666), !dbg !669, !tbaa !343, !noalias !666
  %4 = load i32, i32* %count.addr, align 4, !dbg !669, !tbaa !184, !noalias !666
  %5 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !669, !tbaa !193, !noalias !666
  %buffer = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %5, i32 0, i32 5, !dbg !669
  %6 = load i8*, i8** %buffer, align 4, !dbg !669, !tbaa !670, !noalias !666
  %7 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %6, i8* null, i8** %buffer, i32 0, metadata !666), !dbg !669, !tbaa !670, !noalias !666
  %8 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !669, !tbaa !193, !noalias !666
  %size = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %8, i32 0, i32 7, !dbg !669
  %9 = load i32, i32* %size, align 4, !dbg !669, !tbaa !671, !noalias !666
  %call = call addrspace(1) i8* @_Z10cyclic_addIaEPT_S1_iS1_i(i8* %3, i32 %4, i8* %7, i32 %9) #16, !dbg !669, !noalias !666
  %10 = load %struct.input_window.0*, %struct.input_window.0** %w.addr, align 4, !dbg !669, !tbaa !193, !noalias !666
  %ptr1 = getelementptr inbounds %struct.input_window.0, %struct.input_window.0* %10, i32 0, i32 2, !dbg !669
  store i8* %call, i8** %ptr1, align 4, !dbg !669, !tbaa !343, !noalias !666
  ret void, !dbg !669
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
!llvm.module.flags = !{!145, !146, !147}
!llvm.ident = !{!148, !148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buf0", scope: !2, file: !58, line: 22, type: !59, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 11.0.0 (sgasip@krachtcs10:ipd/repositories/llvm_ipd 8ae012ed2b4731889ba2efbfb1dacc610b3ce588)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !10, globals: !55, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/Jinming/research/aie_project/n2n/Work/aie/24_0/src/24_0.cc", directory: "/home/Jinming/research/aie_project/n2n/Work/aie")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chessllvmInternal", file: !6, line: 21, baseType: !7, size: 32, elements: !8, identifier: "_ZTS17chessllvmInternal")
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
!57 = distinct !DIGlobalVariable(name: "buf0d", scope: !2, file: !58, line: 23, type: !59, isLocal: false, isDefinition: true)
!58 = !DIFile(filename: "24_0/src/24_0.cc", directory: "/home/Jinming/research/aie_project/n2n/Work/aie")
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 49152, elements: !62)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "v8int16", file: !6, line: 444, baseType: !61)
!61 = !DIBasicType(name: "v8int16", size: 128, encoding: DW_ATE_unsigned)
!62 = !{!63}
!63 = !DISubrange(count: 384)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "buf1", scope: !2, file: !58, line: 24, type: !59, isLocal: false, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "buf1d", scope: !2, file: !58, line: 25, type: !59, isLocal: false, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "sync_buffer", linkageName: "_ZL11sync_buffer", scope: !2, file: !58, line: 13, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 256, elements: !73)
!71 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !{!74}
!74 = !DISubrange(count: 8)
!75 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !76, producer: "clang version 11.0.0 (sgasip@krachtcs10:ipd/repositories/llvm_ipd 8ae012ed2b4731889ba2efbfb1dacc610b3ce588)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !87, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "/home/Jinming/research/aie_project/n2n/aie/n2n_trans1.cc", directory: "/home/Jinming/research/aie_project/n2n/Work/aie/ir")
!77 = !{!78}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_dm_resource", file: !79, line: 370, baseType: !72, size: 32, flags: DIFlagEnumClass, elements: !80, identifier: "_ZTS15aie_dm_resource")
!79 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/data/versal_prod/lib/me_defines.h", directory: "")
!80 = !{!81, !82, !83, !84, !85, !86}
!81 = !DIEnumerator(name: "none", value: 0)
!82 = !DIEnumerator(name: "a", value: 1)
!83 = !DIEnumerator(name: "b", value: 2)
!84 = !DIEnumerator(name: "c", value: 3)
!85 = !DIEnumerator(name: "d", value: 4)
!86 = !DIEnumerator(name: "stack", value: 5)
!87 = !{!88, !122, !17, !123}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", scope: !90, file: !20, line: 836, baseType: !116)
!90 = distinct !DISubprogram(name: "window_readincr<aie_dm_resource::none>", linkageName: "_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs", scope: !20, file: !20, line: 836, type: !91, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, templateParams: !114, retainedNodes: !111)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93, !107}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "input_window_int16", file: !20, line: 100, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_window<short>", file: !20, line: 61, size: 416, flags: DIFlagTypePassByValue, elements: !96, templateParams: !38, identifier: "_ZTS12input_windowIsE")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "current_bufid", scope: !95, file: !20, line: 63, baseType: !7, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "instanceId", scope: !95, file: !20, line: 64, baseType: !7, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !95, file: !20, line: 65, baseType: !26, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !95, file: !20, line: 66, baseType: !26, size: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !95, file: !20, line: 67, baseType: !29, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !95, file: !20, line: 68, baseType: !26, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "buffers", scope: !95, file: !20, line: 69, baseType: !29, size: 64, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !95, file: !20, line: 70, baseType: !7, size: 32, offset: 288)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !95, file: !20, line: 71, baseType: !7, size: 32, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "lockids", scope: !95, file: !20, line: 75, baseType: !37, size: 64, offset: 352)
!107 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16", file: !109, line: 14, baseType: !110)
!109 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/include/adf/window/types.h", directory: "")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !15, line: 24, baseType: !40)
!111 = !{!112, !113}
!112 = !DILocalVariable(name: "w", arg: 1, scope: !90, file: !20, line: 836, type: !93)
!113 = !DILocalVariable(name: "value", arg: 2, scope: !90, file: !20, line: 836, type: !107)
!114 = !{!115}
!115 = !DITemplateValueParameter(name: "Resource", type: !78, value: i32 0)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "aie_dm_resource_set_t<int16, (aie_dm_resource)0>", file: !117, line: 264, baseType: !118)
!117 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/data/versal_prod/lib/aie_core.h", directory: "")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !119, file: !117, line: 254, baseType: !40)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aie_dm_resource_set<short, aie_dm_resource::none>", file: !117, line: 252, size: 8, flags: DIFlagTypePassByValue, elements: !120, templateParams: !121, identifier: "_ZTS19aie_dm_resource_setIsL15aie_dm_resource0EE")
!120 = !{}
!121 = !{!39, !115}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", scope: !125, file: !20, line: 836, baseType: !116)
!125 = distinct !DISubprogram(name: "window_writeincr<aie_dm_resource::none>", linkageName: "_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs", scope: !20, file: !20, line: 836, type: !126, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, templateParams: !114, retainedNodes: !142)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !128, !108}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_window_int16", file: !20, line: 110, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_window<short>", file: !20, line: 80, size: 416, flags: DIFlagTypePassByValue, elements: !131, templateParams: !38, identifier: "_ZTS13output_windowIsE")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "current_bufid", scope: !130, file: !20, line: 82, baseType: !7, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "instanceId", scope: !130, file: !20, line: 83, baseType: !7, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !130, file: !20, line: 84, baseType: !26, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !130, file: !20, line: 85, baseType: !26, size: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !130, file: !20, line: 86, baseType: !29, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !130, file: !20, line: 87, baseType: !26, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "buffers", scope: !130, file: !20, line: 88, baseType: !29, size: 64, offset: 224)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !130, file: !20, line: 89, baseType: !7, size: 32, offset: 288)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !130, file: !20, line: 90, baseType: !7, size: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lockids", scope: !130, file: !20, line: 94, baseType: !37, size: 64, offset: 352)
!142 = !{!143, !144}
!143 = !DILocalVariable(name: "w", arg: 1, scope: !125, file: !20, line: 836, type: !128)
!144 = !DILocalVariable(name: "value", arg: 2, scope: !125, file: !20, line: 836, type: !108)
!145 = !{i32 7, !"Dwarf Version", i32 4}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{i32 1, !"wchar_size", i32 4}
!148 = !{!"clang version 11.0.0 (sgasip@krachtcs10:ipd/repositories/llvm_ipd 8ae012ed2b4731889ba2efbfb1dacc610b3ce588)"}
!149 = distinct !DISubprogram(name: "main", scope: !58, file: !58, line: 32, type: !150, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{!72}
!152 = !{!153, !169, !170, !171, !172, !173, !174, !177}
!153 = !DILocalVariable(name: "window_buf0_buf0d", scope: !149, file: !58, line: 34, type: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 416, elements: !167)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "window_internal", file: !13, line: 18, size: 416, flags: DIFlagTypePassByValue, elements: !156, identifier: "_ZTS15window_internal")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "current_bufid", scope: !155, file: !13, line: 20, baseType: !7, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "instanceId", scope: !155, file: !13, line: 21, baseType: !7, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !155, file: !13, line: 22, baseType: !26, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !155, file: !13, line: 23, baseType: !26, size: 32, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !155, file: !13, line: 24, baseType: !29, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !155, file: !13, line: 25, baseType: !26, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "buffers", scope: !155, file: !13, line: 26, baseType: !29, size: 64, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !13, line: 27, baseType: !7, size: 32, offset: 288)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !155, file: !13, line: 28, baseType: !7, size: 32, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "lockids", scope: !155, file: !13, line: 32, baseType: !37, size: 64, offset: 352)
!167 = !{!168}
!168 = !DISubrange(count: 1)
!169 = !DILocalVariable(name: "buf0_ptr", scope: !149, file: !58, line: 35, type: !11)
!170 = !DILocalVariable(name: "buf0d_ptr", scope: !149, file: !58, line: 36, type: !11)
!171 = !DILocalVariable(name: "window_buf1_buf1d", scope: !149, file: !58, line: 38, type: !154)
!172 = !DILocalVariable(name: "buf1_ptr", scope: !149, file: !58, line: 39, type: !11)
!173 = !DILocalVariable(name: "buf1d_ptr", scope: !149, file: !58, line: 40, type: !11)
!174 = !DILocalVariable(name: "index", scope: !149, file: !58, line: 42, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !109, line: 15, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !15, line: 25, baseType: !72)
!177 = !DILocalVariable(name: "proc_24_0_bounds", scope: !178, file: !58, line: 46, type: !175)
!178 = distinct !DILexicalBlock(scope: !149, file: !58, line: 44, column: 3)
!179 = !{!180, !182}
!180 = distinct !{!180, !181, !"main: window_buf0_buf0d"}
!181 = distinct !{!181, !"main"}
!182 = distinct !{!182, !181, !"main: window_buf1_buf1d"}
!183 = !DILocation(line: 33, column: 18, scope: !149)
!184 = !{!185, !185, i64 0, i64 4}
!185 = !{!186, i64 4, !"int"}
!186 = !{!187, i64 1, !"omnipotent char"}
!187 = !{!"Simple C++ TBAA"}
!188 = !DILocation(line: 34, column: 3, scope: !149)
!189 = !DILocation(line: 34, column: 19, scope: !149)
!190 = !{!180}
!191 = !DILocation(line: 35, column: 3, scope: !149)
!192 = !DILocation(line: 35, column: 21, scope: !149)
!193 = !{!194, !194, i64 0, i64 4}
!194 = !{!186, i64 4, !"any pointer"}
!195 = !DILocation(line: 36, column: 3, scope: !149)
!196 = !DILocation(line: 36, column: 21, scope: !149)
!197 = !DILocation(line: 37, column: 15, scope: !149)
!198 = !DILocation(line: 37, column: 3, scope: !149)
!199 = !DILocation(line: 38, column: 3, scope: !149)
!200 = !DILocation(line: 38, column: 19, scope: !149)
!201 = !{!182}
!202 = !DILocation(line: 39, column: 3, scope: !149)
!203 = !DILocation(line: 39, column: 21, scope: !149)
!204 = !DILocation(line: 40, column: 3, scope: !149)
!205 = !DILocation(line: 40, column: 21, scope: !149)
!206 = !DILocation(line: 41, column: 15, scope: !149)
!207 = !DILocation(line: 41, column: 3, scope: !149)
!208 = !DILocation(line: 42, column: 3, scope: !149)
!209 = !DILocation(line: 42, column: 9, scope: !149)
!210 = !DILocation(line: 43, column: 3, scope: !149)
!211 = !DILocation(line: 46, column: 3, scope: !178)
!212 = !DILocation(line: 46, column: 9, scope: !178)
!213 = !DILocation(line: 46, column: 28, scope: !178)
!214 = !DILocation(line: 48, column: 3, scope: !178)
!215 = !DILocation(line: 48, column: 10, scope: !178)
!216 = !DILocation(line: 52, column: 20, scope: !217)
!217 = distinct !DILexicalBlock(scope: !178, file: !58, line: 49, column: 3)
!218 = !DILocation(line: 52, column: 66, scope: !217)
!219 = !DILocation(line: 52, column: 75, scope: !217)
!220 = !DILocation(line: 52, column: 87, scope: !217)
!221 = !DILocation(line: 52, column: 5, scope: !217)
!222 = !DILocation(line: 53, column: 20, scope: !217)
!223 = !DILocation(line: 53, column: 66, scope: !217)
!224 = !DILocation(line: 53, column: 75, scope: !217)
!225 = !DILocation(line: 53, column: 87, scope: !217)
!226 = !DILocation(line: 53, column: 5, scope: !217)
!227 = !DILocation(line: 54, column: 39, scope: !217)
!228 = !DILocation(line: 54, column: 16, scope: !217)
!229 = !DILocation(line: 54, column: 82, scope: !217)
!230 = !DILocation(line: 54, column: 58, scope: !217)
!231 = !DILocation(line: 54, column: 5, scope: !217)
!232 = !DILocation(line: 58, column: 20, scope: !217)
!233 = !DILocation(line: 58, column: 66, scope: !217)
!234 = !DILocation(line: 58, column: 75, scope: !217)
!235 = !DILocation(line: 58, column: 87, scope: !217)
!236 = !DILocation(line: 58, column: 5, scope: !217)
!237 = !DILocation(line: 59, column: 20, scope: !217)
!238 = !DILocation(line: 59, column: 66, scope: !217)
!239 = !DILocation(line: 59, column: 75, scope: !217)
!240 = !DILocation(line: 59, column: 87, scope: !217)
!241 = !DILocation(line: 59, column: 5, scope: !217)
!242 = !DILocation(line: 60, column: 17, scope: !217)
!243 = !DILocation(line: 60, column: 15, scope: !217)
!244 = !DILocation(line: 60, column: 11, scope: !217)
!245 = !DILocation(line: 62, column: 5, scope: !217)
!246 = !DILocation(line: 64, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !217, file: !58, line: 64, column: 8)
!248 = !DILocation(line: 64, column: 25, scope: !247)
!249 = !DILocation(line: 64, column: 8, scope: !217)
!250 = !DILocation(line: 65, column: 7, scope: !247)
!251 = distinct !{!251, !214, !252}
!252 = !DILocation(line: 66, column: 3, scope: !178)
!253 = !DILocation(line: 67, column: 3, scope: !178)
!254 = !DILocation(line: 68, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !178, file: !58, line: 68, column: 7)
!256 = !DILocation(line: 68, column: 22, scope: !255)
!257 = !DILocation(line: 68, column: 7, scope: !178)
!258 = !DILocation(line: 68, column: 27, scope: !255)
!259 = !DILocation(line: 69, column: 3, scope: !149)
!260 = distinct !{!260, !210, !259}
!261 = !DILocation(line: 70, column: 3, scope: !149)
!262 = !DILocation(line: 71, column: 1, scope: !149)
!263 = distinct !DISubprogram(name: "window_init", linkageName: "_ZL11window_initP15window_internaliP7v8int16jS2_jii", scope: !20, file: !20, line: 286, type: !264, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266, !267, !268, !7, !268, !7, !267, !267}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!270 = !DILocalVariable(name: "w", arg: 1, scope: !263, file: !20, line: 286, type: !266)
!271 = !DILocalVariable(name: "channels", arg: 2, scope: !263, file: !20, line: 286, type: !267)
!272 = !DILocalVariable(name: "buffer_ping", arg: 3, scope: !263, file: !20, line: 286, type: !268)
!273 = !DILocalVariable(name: "lockid_ping", arg: 4, scope: !263, file: !20, line: 286, type: !7)
!274 = !DILocalVariable(name: "buffer_pong", arg: 5, scope: !263, file: !20, line: 286, type: !268)
!275 = !DILocalVariable(name: "lockid_pong", arg: 6, scope: !263, file: !20, line: 286, type: !7)
!276 = !DILocalVariable(name: "size", arg: 7, scope: !263, file: !20, line: 286, type: !267)
!277 = !DILocalVariable(name: "winsize", arg: 8, scope: !263, file: !20, line: 286, type: !267)
!278 = !DILocalVariable(name: "s", scope: !263, file: !20, line: 286, type: !72)
!279 = !DILocalVariable(name: "sz", scope: !263, file: !20, line: 286, type: !267)
!280 = !DILocalVariable(name: "winsz", scope: !263, file: !20, line: 286, type: !267)
!281 = !DILocation(line: 286, column: 1, scope: !263)
!282 = distinct !DISubprogram(name: "window_acquire", linkageName: "_ZL14window_acquireP15window_internaljjPaS1_iii", scope: !20, file: !20, line: 1067, type: !283, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !266, !7, !7, !26, !26, !267, !267, !72}
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294}
!286 = !DILocalVariable(name: "w", arg: 1, scope: !282, file: !20, line: 1067, type: !266)
!287 = !DILocalVariable(name: "ping_lockid", arg: 2, scope: !282, file: !20, line: 1068, type: !7)
!288 = !DILocalVariable(name: "pong_lockid", arg: 3, scope: !282, file: !20, line: 1069, type: !7)
!289 = !DILocalVariable(name: "ping_buffer", arg: 4, scope: !282, file: !20, line: 1070, type: !26)
!290 = !DILocalVariable(name: "pong_buffer", arg: 5, scope: !282, file: !20, line: 1071, type: !26)
!291 = !DILocalVariable(name: "margin", arg: 6, scope: !282, file: !20, line: 1072, type: !267)
!292 = !DILocalVariable(name: "index", arg: 7, scope: !282, file: !20, line: 1073, type: !267)
!293 = !DILocalVariable(name: "type", arg: 8, scope: !282, file: !20, line: 1074, type: !72)
!294 = !DILocalVariable(name: "lockid", scope: !282, file: !20, line: 1084, type: !72)
!295 = !{!296, !298}
!296 = distinct !{!296, !297, !"_ZL14window_acquireP15window_internaljjPaS1_iii: ping_buffer"}
!297 = distinct !{!297, !"_ZL14window_acquireP15window_internaljjPaS1_iii"}
!298 = distinct !{!298, !297, !"_ZL14window_acquireP15window_internaljjPaS1_iii: pong_buffer"}
!299 = !DILocation(line: 1067, column: 52, scope: !282)
!300 = !DILocation(line: 1068, column: 48, scope: !282)
!301 = !DILocation(line: 1069, column: 48, scope: !282)
!302 = !{!296}
!303 = !DILocation(line: 1070, column: 62, scope: !282)
!304 = !{!298}
!305 = !DILocation(line: 1071, column: 62, scope: !282)
!306 = !DILocation(line: 1072, column: 45, scope: !282)
!307 = !DILocation(line: 1073, column: 45, scope: !282)
!308 = !DILocation(line: 1074, column: 39, scope: !282)
!309 = !DILocation(line: 1083, column: 17, scope: !282)
!310 = !DILocation(line: 1083, column: 25, scope: !282)
!311 = !DILocation(line: 1083, column: 39, scope: !282)
!312 = !DILocation(line: 1083, column: 5, scope: !282)
!313 = !DILocation(line: 1083, column: 8, scope: !282)
!314 = !DILocation(line: 1083, column: 15, scope: !282)
!315 = !{!186, !186, i64 0, i64 0}
!316 = !DILocation(line: 1084, column: 5, scope: !282)
!317 = !DILocation(line: 1084, column: 9, scope: !282)
!318 = !DILocation(line: 1084, column: 18, scope: !282)
!319 = !DILocation(line: 1084, column: 26, scope: !282)
!320 = !DILocation(line: 1084, column: 40, scope: !282)
!321 = !DILocation(line: 1085, column: 18, scope: !282)
!322 = !DILocation(line: 1085, column: 26, scope: !282)
!323 = !DILocation(line: 1085, column: 41, scope: !282)
!324 = !DILocation(line: 1085, column: 57, scope: !282)
!325 = !DILocation(line: 1085, column: 55, scope: !282)
!326 = !DILocation(line: 1085, column: 5, scope: !282)
!327 = !DILocation(line: 1085, column: 8, scope: !282)
!328 = !DILocation(line: 1085, column: 13, scope: !282)
!329 = !DILocation(line: 1089, column: 13, scope: !282)
!330 = !DILocation(line: 1089, column: 21, scope: !282)
!331 = !DILocation(line: 1089, column: 5, scope: !282)
!332 = !DILocation(line: 1091, column: 1, scope: !282)
!333 = distinct !DISubprogram(name: "get_input_window_int16", linkageName: "_ZL22get_input_window_int16P15window_internal", scope: !20, file: !20, line: 168, type: !334, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!18, !266}
!336 = !{!337, !338}
!337 = !DILocalVariable(name: "wind", arg: 1, scope: !333, file: !20, line: 168, type: !266)
!338 = !DILocalVariable(name: "toReturn", scope: !333, file: !20, line: 168, type: !18)
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZL22get_input_window_int16P15window_internal: unknown scope"}
!341 = distinct !{!341, !"_ZL22get_input_window_int16P15window_internal"}
!342 = !DILocation(line: 168, column: 1, scope: !333)
!343 = !{!344, !194, i64 8, i64 4}
!344 = !{!186, i64 52, !"_ZTS12input_windowIsE", !185, i64 0, i64 4, !185, i64 4, i64 4, !194, i64 8, i64 4, !194, i64 12, i64 4, !194, i64 16, i64 8, !194, i64 24, i64 4, !194, i64 28, i64 8, !185, i64 36, i64 4, !185, i64 40, i64 4, !185, i64 44, i64 8}
!345 = distinct !DISubprogram(name: "get_output_window_int16", linkageName: "_ZL23get_output_window_int16P15window_internal", scope: !20, file: !20, line: 178, type: !346, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!41, !266}
!348 = !{!349, !350}
!349 = !DILocalVariable(name: "wind", arg: 1, scope: !345, file: !20, line: 178, type: !266)
!350 = !DILocalVariable(name: "toReturn", scope: !345, file: !20, line: 178, type: !41)
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZL23get_output_window_int16P15window_internal: unknown scope"}
!353 = distinct !{!353, !"_ZL23get_output_window_int16P15window_internal"}
!354 = !DILocation(line: 178, column: 1, scope: !345)
!355 = !{!356, !194, i64 8, i64 4}
!356 = !{!186, i64 52, !"_ZTS13output_windowIsE", !185, i64 0, i64 4, !185, i64 4, i64 4, !194, i64 8, i64 4, !194, i64 12, i64 4, !194, i64 16, i64 8, !194, i64 24, i64 4, !194, i64 28, i64 8, !185, i64 36, i64 4, !185, i64 40, i64 4, !185, i64 44, i64 8}
!357 = distinct !DISubprogram(name: "window_release", linkageName: "_ZL14window_releaseP15window_internaljjPaS1_iii", scope: !20, file: !20, line: 1093, type: !283, scopeLine: 1100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367, !369}
!359 = !DILocalVariable(name: "w", arg: 1, scope: !357, file: !20, line: 1093, type: !266)
!360 = !DILocalVariable(name: "ping_lockid", arg: 2, scope: !357, file: !20, line: 1094, type: !7)
!361 = !DILocalVariable(name: "pong_lockid", arg: 3, scope: !357, file: !20, line: 1095, type: !7)
!362 = !DILocalVariable(name: "ping_buffer", arg: 4, scope: !357, file: !20, line: 1096, type: !26)
!363 = !DILocalVariable(name: "pong_buffer", arg: 5, scope: !357, file: !20, line: 1097, type: !26)
!364 = !DILocalVariable(name: "margin", arg: 6, scope: !357, file: !20, line: 1098, type: !267)
!365 = !DILocalVariable(name: "index", arg: 7, scope: !357, file: !20, line: 1099, type: !267)
!366 = !DILocalVariable(name: "type", arg: 8, scope: !357, file: !20, line: 1100, type: !72)
!367 = !DILocalVariable(name: "h1", scope: !368, file: !20, line: 1109, type: !26)
!368 = distinct !DILexicalBlock(scope: !357, file: !20, line: 1108, column: 3)
!369 = !DILocalVariable(name: "lockid", scope: !368, file: !20, line: 1111, type: !72)
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZL14window_releaseP15window_internaljjPaS1_iii: unknown scope"}
!372 = distinct !{!372, !"_ZL14window_releaseP15window_internaljjPaS1_iii"}
!373 = !{!374, !375, !371}
!374 = distinct !{!374, !372, !"_ZL14window_releaseP15window_internaljjPaS1_iii: ping_buffer"}
!375 = distinct !{!375, !372, !"_ZL14window_releaseP15window_internaljjPaS1_iii: pong_buffer"}
!376 = !DILocation(line: 1093, column: 52, scope: !357)
!377 = !DILocation(line: 1094, column: 48, scope: !357)
!378 = !DILocation(line: 1095, column: 48, scope: !357)
!379 = !{!374}
!380 = !DILocation(line: 1096, column: 62, scope: !357)
!381 = !{!375}
!382 = !DILocation(line: 1097, column: 62, scope: !357)
!383 = !DILocation(line: 1098, column: 45, scope: !357)
!384 = !DILocation(line: 1099, column: 45, scope: !357)
!385 = !DILocation(line: 1100, column: 39, scope: !357)
!386 = !DILocation(line: 1109, column: 5, scope: !368)
!387 = !{!388, !374, !375, !371}
!388 = distinct !{!388, !372, !"_ZL14window_releaseP15window_internaljjPaS1_iii: h1"}
!389 = !DILocation(line: 1109, column: 31, scope: !368)
!390 = !{!388}
!391 = !DILocation(line: 1109, column: 37, scope: !368)
!392 = !DILocation(line: 1109, column: 45, scope: !368)
!393 = !DILocation(line: 1109, column: 59, scope: !368)
!394 = !DILocation(line: 1109, column: 74, scope: !368)
!395 = !DILocation(line: 1109, column: 72, scope: !368)
!396 = !DILocation(line: 1110, column: 10, scope: !368)
!397 = !DILocation(line: 1110, column: 13, scope: !368)
!398 = !DILocation(line: 1110, column: 8, scope: !368)
!399 = !DILocation(line: 1111, column: 5, scope: !368)
!400 = !DILocation(line: 1111, column: 9, scope: !368)
!401 = !DILocation(line: 1111, column: 19, scope: !368)
!402 = !DILocation(line: 1111, column: 27, scope: !368)
!403 = !DILocation(line: 1111, column: 41, scope: !368)
!404 = !DILocation(line: 1112, column: 13, scope: !368)
!405 = !DILocation(line: 1112, column: 21, scope: !368)
!406 = !DILocation(line: 1112, column: 5, scope: !368)
!407 = !DILocation(line: 1113, column: 3, scope: !357)
!408 = !DILocation(line: 1114, column: 1, scope: !357)
!409 = distinct !DISubprogram(name: "done", linkageName: "_Z4donev", scope: !6, file: !6, line: 115482, type: !410, scopeLine: 115483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!410 = !DISubroutineType(types: !411)
!411 = !{null}
!412 = !DILocation(line: 115484, column: 6, scope: !409)
!413 = !DILocation(line: 115485, column: 6, scope: !409)
!414 = !DILocation(line: 115486, column: 26, scope: !409)
!415 = !{!416, !416, i64 0, i64 4}
!416 = !{!186, i64 4, !"uint2_t"}
!417 = !DILocation(line: 115486, column: 6, scope: !409)
!418 = !DILocation(line: 115487, column: 6, scope: !409)
!419 = !DILocation(line: 115488, column: 6, scope: !409)
!420 = !DILocation(line: 115489, column: 5, scope: !409)
!421 = distinct !DISubprogram(name: "window_init", linkageName: "_ZL11window_initP15window_internaliPajS1_jii", scope: !13, file: !13, line: 37, type: !422, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !266, !267, !11, !7, !11, !7, !267, !267}
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433}
!425 = !DILocalVariable(name: "w", arg: 1, scope: !421, file: !13, line: 37, type: !266)
!426 = !DILocalVariable(name: "channels", arg: 2, scope: !421, file: !13, line: 38, type: !267)
!427 = !DILocalVariable(name: "buffer_ping", arg: 3, scope: !421, file: !13, line: 39, type: !11)
!428 = !DILocalVariable(name: "lockid_ping", arg: 4, scope: !421, file: !13, line: 40, type: !7)
!429 = !DILocalVariable(name: "buffer_pong", arg: 5, scope: !421, file: !13, line: 41, type: !11)
!430 = !DILocalVariable(name: "lockid_pong", arg: 6, scope: !421, file: !13, line: 42, type: !7)
!431 = !DILocalVariable(name: "size", arg: 7, scope: !421, file: !13, line: 43, type: !267)
!432 = !DILocalVariable(name: "winsize", arg: 8, scope: !421, file: !13, line: 44, type: !267)
!433 = !DILocalVariable(name: "i", scope: !434, file: !13, line: 46, type: !72)
!434 = distinct !DILexicalBlock(scope: !421, file: !13, line: 46, column: 5)
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZL11window_initP15window_internaliPajS1_jii: unknown scope"}
!437 = distinct !{!437, !"_ZL11window_initP15window_internaliPajS1_jii"}
!438 = !DILocation(line: 37, column: 49, scope: !421)
!439 = !DILocation(line: 38, column: 21, scope: !421)
!440 = !DILocation(line: 39, column: 28, scope: !421)
!441 = !DILocation(line: 40, column: 24, scope: !421)
!442 = !DILocation(line: 41, column: 28, scope: !421)
!443 = !DILocation(line: 42, column: 24, scope: !421)
!444 = !DILocation(line: 43, column: 21, scope: !421)
!445 = !DILocation(line: 44, column: 21, scope: !421)
!446 = !DILocation(line: 46, column: 10, scope: !434)
!447 = !DILocation(line: 46, column: 14, scope: !434)
!448 = !DILocation(line: 46, column: 21, scope: !449)
!449 = distinct !DILexicalBlock(scope: !434, file: !13, line: 46, column: 5)
!450 = !DILocation(line: 46, column: 25, scope: !449)
!451 = !DILocation(line: 46, column: 23, scope: !449)
!452 = !DILocation(line: 46, column: 5, scope: !434)
!453 = !DILocation(line: 46, column: 5, scope: !449)
!454 = !DILocation(line: 48, column: 27, scope: !455)
!455 = distinct !DILexicalBlock(scope: !449, file: !13, line: 47, column: 5)
!456 = !DILocation(line: 48, column: 39, scope: !455)
!457 = !DILocation(line: 48, column: 44, scope: !455)
!458 = !DILocation(line: 48, column: 43, scope: !455)
!459 = !DILocation(line: 48, column: 38, scope: !455)
!460 = !DILocation(line: 48, column: 9, scope: !455)
!461 = !DILocation(line: 48, column: 11, scope: !455)
!462 = !DILocation(line: 48, column: 14, scope: !455)
!463 = !DILocation(line: 48, column: 25, scope: !455)
!464 = !DILocation(line: 49, column: 25, scope: !455)
!465 = !DILocation(line: 49, column: 27, scope: !455)
!466 = !DILocation(line: 49, column: 30, scope: !455)
!467 = !DILocation(line: 49, column: 9, scope: !455)
!468 = !DILocation(line: 49, column: 11, scope: !455)
!469 = !DILocation(line: 49, column: 14, scope: !455)
!470 = !DILocation(line: 49, column: 23, scope: !455)
!471 = !DILocation(line: 53, column: 25, scope: !455)
!472 = !DILocation(line: 53, column: 6, scope: !455)
!473 = !DILocation(line: 53, column: 8, scope: !455)
!474 = !DILocation(line: 53, column: 11, scope: !455)
!475 = !DILocation(line: 53, column: 22, scope: !455)
!476 = !DILocation(line: 55, column: 9, scope: !455)
!477 = !DILocation(line: 55, column: 11, scope: !455)
!478 = !DILocation(line: 55, column: 14, scope: !455)
!479 = !DILocation(line: 55, column: 25, scope: !455)
!480 = !DILocation(line: 56, column: 9, scope: !455)
!481 = !DILocation(line: 56, column: 11, scope: !455)
!482 = !DILocation(line: 56, column: 14, scope: !455)
!483 = !DILocation(line: 56, column: 23, scope: !455)
!484 = !DILocation(line: 58, column: 9, scope: !455)
!485 = !DILocation(line: 58, column: 11, scope: !455)
!486 = !DILocation(line: 58, column: 14, scope: !455)
!487 = !DILocation(line: 58, column: 25, scope: !455)
!488 = !DILocation(line: 61, column: 6, scope: !489)
!489 = distinct !DILexicalBlock(scope: !455, file: !13, line: 61, column: 6)
!490 = !DILocation(line: 61, column: 21, scope: !489)
!491 = !DILocation(line: 61, column: 18, scope: !489)
!492 = !DILocation(line: 61, column: 6, scope: !455)
!493 = !DILocation(line: 62, column: 24, scope: !494)
!494 = distinct !DILexicalBlock(scope: !489, file: !13, line: 61, column: 34)
!495 = !DILocation(line: 62, column: 36, scope: !494)
!496 = !DILocation(line: 62, column: 41, scope: !494)
!497 = !DILocation(line: 62, column: 40, scope: !494)
!498 = !DILocation(line: 62, column: 35, scope: !494)
!499 = !DILocation(line: 62, column: 6, scope: !494)
!500 = !DILocation(line: 62, column: 8, scope: !494)
!501 = !DILocation(line: 62, column: 11, scope: !494)
!502 = !DILocation(line: 62, column: 22, scope: !494)
!503 = !DILocation(line: 63, column: 22, scope: !494)
!504 = !DILocation(line: 63, column: 24, scope: !494)
!505 = !DILocation(line: 63, column: 27, scope: !494)
!506 = !DILocation(line: 63, column: 6, scope: !494)
!507 = !DILocation(line: 63, column: 8, scope: !494)
!508 = !DILocation(line: 63, column: 11, scope: !494)
!509 = !DILocation(line: 63, column: 20, scope: !494)
!510 = !DILocation(line: 65, column: 25, scope: !494)
!511 = !DILocation(line: 65, column: 7, scope: !494)
!512 = !DILocation(line: 65, column: 9, scope: !494)
!513 = !DILocation(line: 65, column: 12, scope: !494)
!514 = !DILocation(line: 65, column: 23, scope: !494)
!515 = !DILocation(line: 67, column: 6, scope: !494)
!516 = !DILocation(line: 69, column: 2, scope: !455)
!517 = !DILocation(line: 69, column: 4, scope: !455)
!518 = !DILocation(line: 69, column: 7, scope: !455)
!519 = !DILocation(line: 69, column: 21, scope: !455)
!520 = !DILocation(line: 70, column: 23, scope: !455)
!521 = !DILocation(line: 70, column: 25, scope: !455)
!522 = !DILocation(line: 70, column: 28, scope: !455)
!523 = !DILocation(line: 70, column: 9, scope: !455)
!524 = !DILocation(line: 70, column: 11, scope: !455)
!525 = !DILocation(line: 70, column: 14, scope: !455)
!526 = !DILocation(line: 70, column: 21, scope: !455)
!527 = !DILocation(line: 71, column: 23, scope: !455)
!528 = !DILocation(line: 71, column: 25, scope: !455)
!529 = !DILocation(line: 71, column: 28, scope: !455)
!530 = !DILocation(line: 71, column: 9, scope: !455)
!531 = !DILocation(line: 71, column: 11, scope: !455)
!532 = !DILocation(line: 71, column: 14, scope: !455)
!533 = !DILocation(line: 71, column: 21, scope: !455)
!534 = !DILocation(line: 72, column: 23, scope: !455)
!535 = !DILocation(line: 72, column: 25, scope: !455)
!536 = !DILocation(line: 72, column: 28, scope: !455)
!537 = !DILocation(line: 72, column: 9, scope: !455)
!538 = !DILocation(line: 72, column: 11, scope: !455)
!539 = !DILocation(line: 72, column: 14, scope: !455)
!540 = !DILocation(line: 72, column: 21, scope: !455)
!541 = !DILocation(line: 73, column: 23, scope: !455)
!542 = !DILocation(line: 73, column: 9, scope: !455)
!543 = !DILocation(line: 73, column: 11, scope: !455)
!544 = !DILocation(line: 73, column: 14, scope: !455)
!545 = !DILocation(line: 73, column: 21, scope: !455)
!546 = !DILocation(line: 74, column: 16, scope: !455)
!547 = !DILocation(line: 74, column: 2, scope: !455)
!548 = !DILocation(line: 74, column: 4, scope: !455)
!549 = !DILocation(line: 74, column: 7, scope: !455)
!550 = !DILocation(line: 74, column: 14, scope: !455)
!551 = !DILocation(line: 75, column: 5, scope: !455)
!552 = !DILocation(line: 46, column: 35, scope: !449)
!553 = distinct !{!553, !452, !554}
!554 = !DILocation(line: 75, column: 5, scope: !434)
!555 = !DILocation(line: 76, column: 1, scope: !421)
!556 = distinct !DISubprogram(name: "acquire", linkageName: "_Z7acquirejj", scope: !6, file: !6, line: 115417, type: !557, scopeLine: 115418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !7, !7}
!559 = !{!560, !561}
!560 = !DILocalVariable(name: "id", arg: 1, scope: !556, file: !6, line: 115417, type: !7)
!561 = !DILocalVariable(name: "val", arg: 2, scope: !556, file: !6, line: 115417, type: !7)
!562 = !DILocation(line: 115417, column: 65, scope: !556)
!563 = !DILocation(line: 115417, column: 78, scope: !556)
!564 = !DILocation(line: 115419, column: 6, scope: !556)
!565 = !DILocation(line: 115420, column: 6, scope: !556)
!566 = !DILocation(line: 115421, column: 28, scope: !556)
!567 = !DILocation(line: 115421, column: 31, scope: !556)
!568 = !{!569, !569, i64 0, i64 4}
!569 = !{!186, i64 4, !"uint1_t"}
!570 = !DILocation(line: 115421, column: 33, scope: !556)
!571 = !DILocation(line: 115421, column: 6, scope: !556)
!572 = !DILocation(line: 115422, column: 6, scope: !556)
!573 = !DILocation(line: 115423, column: 6, scope: !556)
!574 = !DILocation(line: 115424, column: 5, scope: !556)
!575 = !{!576, !576, i64 0, i64 4}
!576 = !{!577, i64 4, !"__chess_separator_universe:any pointer"}
!577 = !{!187, i64 1, !"__chess_separator_universe:omnipotent char"}
!578 = distinct !DISubprogram(name: "release", linkageName: "_Z7releasejj", scope: !6, file: !6, line: 115426, type: !557, scopeLine: 115427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!579 = !{!580, !581}
!580 = !DILocalVariable(name: "id", arg: 1, scope: !578, file: !6, line: 115426, type: !7)
!581 = !DILocalVariable(name: "val", arg: 2, scope: !578, file: !6, line: 115426, type: !7)
!582 = !DILocation(line: 115426, column: 65, scope: !578)
!583 = !DILocation(line: 115426, column: 78, scope: !578)
!584 = !DILocation(line: 115428, column: 6, scope: !578)
!585 = !DILocation(line: 115429, column: 6, scope: !578)
!586 = !DILocation(line: 115430, column: 28, scope: !578)
!587 = !DILocation(line: 115430, column: 31, scope: !578)
!588 = !DILocation(line: 115430, column: 33, scope: !578)
!589 = !DILocation(line: 115430, column: 6, scope: !578)
!590 = !DILocation(line: 115431, column: 6, scope: !578)
!591 = !DILocation(line: 115432, column: 6, scope: !578)
!592 = !DILocation(line: 115433, column: 5, scope: !578)
!593 = !{!594, !594, i64 0, i64 4}
!594 = !{!577, i64 4, !"__chess_separator_universe:int"}
!595 = distinct !DISubprogram(name: "n2n_trans1", linkageName: "_Z10n2n_trans1P12input_windowIsEP13output_windowIsE", scope: !596, file: !596, line: 5, type: !597, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !599)
!596 = !DIFile(filename: "aie/n2n_trans1.cc", directory: "/home/Jinming/research/aie_project/n2n")
!597 = !DISubroutineType(types: !598)
!598 = !{null, !93, !128}
!599 = !{!600, !601, !602, !604}
!600 = !DILocalVariable(name: "matA", arg: 1, scope: !595, file: !596, line: 5, type: !93)
!601 = !DILocalVariable(name: "matB", arg: 2, scope: !595, file: !596, line: 6, type: !128)
!602 = !DILocalVariable(name: "i", scope: !603, file: !596, line: 8, type: !72)
!603 = distinct !DILexicalBlock(scope: !595, file: !596, line: 8, column: 3)
!604 = !DILocalVariable(name: "A", scope: !605, file: !596, line: 9, type: !108)
!605 = distinct !DILexicalBlock(scope: !606, file: !596, line: 8, column: 26)
!606 = distinct !DILexicalBlock(scope: !603, file: !596, line: 8, column: 3)
!607 = !DILocation(line: 5, column: 37, scope: !595)
!608 = !DILocation(line: 6, column: 23, scope: !595)
!609 = !DILocation(line: 8, column: 8, scope: !603)
!610 = !DILocation(line: 8, column: 12, scope: !603)
!611 = !DILocation(line: 8, column: 16, scope: !606)
!612 = !DILocation(line: 8, column: 17, scope: !606)
!613 = !DILocation(line: 8, column: 3, scope: !603)
!614 = !DILocation(line: 8, column: 3, scope: !606)
!615 = !DILocation(line: 9, column: 4, scope: !605)
!616 = !DILocation(line: 9, column: 10, scope: !605)
!617 = !DILocation(line: 9, column: 28, scope: !605)
!618 = !DILocation(line: 9, column: 12, scope: !605)
!619 = !{!620, !620, i64 0, i64 2}
!620 = !{!186, i64 2, !"short"}
!621 = !DILocation(line: 10, column: 22, scope: !605)
!622 = !DILocation(line: 10, column: 27, scope: !605)
!623 = !DILocation(line: 10, column: 5, scope: !605)
!624 = !DILocation(line: 11, column: 3, scope: !606)
!625 = !DILocation(line: 11, column: 3, scope: !605)
!626 = !DILocation(line: 8, column: 23, scope: !606)
!627 = distinct !{!627, !613, !628}
!628 = !DILocation(line: 11, column: 3, scope: !603)
!629 = !DILocation(line: 12, column: 1, scope: !595)
!630 = distinct !DISubprogram(name: "window_readincr<aie_dm_resource::none>", linkageName: "_ZL15window_readincrIL15aie_dm_resource0EEsP12input_windowIsE", scope: !20, file: !20, line: 836, type: !631, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, templateParams: !114, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{!108, !93}
!633 = !{!634, !635}
!634 = !DILocalVariable(name: "w", arg: 1, scope: !630, file: !20, line: 836, type: !93)
!635 = !DILocalVariable(name: "value", scope: !630, file: !20, line: 836, type: !108)
!636 = !DILocation(line: 836, column: 3, scope: !630)
!637 = !{!638}
!638 = distinct !{!638, !639, !"_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs: unknown scope"}
!639 = distinct !{!639, !"_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs"}
!640 = !DILocation(line: 836, column: 3, scope: !125)
!641 = distinct !DISubprogram(name: "window_incr", linkageName: "_ZL11window_incrP13output_windowIsEi", scope: !20, file: !20, line: 492, type: !642, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !128, !72}
!644 = !{!645, !646}
!645 = !DILocalVariable(name: "w", arg: 1, scope: !641, file: !20, line: 492, type: !128)
!646 = !DILocalVariable(name: "count", arg: 2, scope: !641, file: !20, line: 492, type: !72)
!647 = !{!648}
!648 = distinct !{!648, !649, !"_ZL11window_incrP13output_windowIsEi: unknown scope"}
!649 = distinct !{!649, !"_ZL11window_incrP13output_windowIsEi"}
!650 = !DILocation(line: 492, column: 3, scope: !641)
!651 = !{!356, !194, i64 24, i64 4}
!652 = !{!356, !185, i64 36, i64 4}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_Z10cyclic_addIaEPT_S1_iS1_i: a2"}
!655 = distinct !{!655, !"_Z10cyclic_addIaEPT_S1_iS1_i"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs: unknown scope"}
!658 = distinct !{!658, !"_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs"}
!659 = !DILocation(line: 836, column: 3, scope: !90)
!660 = distinct !DISubprogram(name: "window_incr", linkageName: "_ZL11window_incrP12input_windowIsEi", scope: !20, file: !20, line: 482, type: !661, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !93, !72}
!663 = !{!664, !665}
!664 = !DILocalVariable(name: "w", arg: 1, scope: !660, file: !20, line: 482, type: !93)
!665 = !DILocalVariable(name: "count", arg: 2, scope: !660, file: !20, line: 482, type: !72)
!666 = !{!667}
!667 = distinct !{!667, !668, !"_ZL11window_incrP12input_windowIsEi: unknown scope"}
!668 = distinct !{!668, !"_ZL11window_incrP12input_windowIsEi"}
!669 = !DILocation(line: 482, column: 3, scope: !660)
!670 = !{!344, !194, i64 24, i64 4}
!671 = !{!344, !185, i64 36, i64 4}
