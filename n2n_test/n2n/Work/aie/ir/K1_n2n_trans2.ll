; ModuleID = '/home/Jinming/research/aie_project/n2n/aie/n2n_trans2.cc'
source_filename = "/home/Jinming/research/aie_project/n2n/aie/n2n_trans2.cc"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:256:256-a0:8:8-S256-n32:64-v128:32:32-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:1:32:32:32:32-p10:1:32:32:32:32-p11:1:32:32:32:32-p12:1:32:32:32:32-p13:1:32:32:32:32-p14:1:32:32:32:32-p15:1:32:32:32:32-p16:1:32:32:32:32-p17:1:32:32:32:32-p18:1:32:32:32:32-p19:1:32:32:32:32-p20:1:32:32:32:32-p21:1:32:32:32:32-p22:1:32:32:32:32-p23:1:32:32:32:32-p24:1:32:32:32:32"
target triple = "pdarch-unknown-unknown-elf"

%struct.input_window = type { i32, i32, i8*, i8*, [2 x i8*], i8*, [2 x i8*], i32, i32, [2 x i32] }
%struct.output_window = type { i32, i32, i8*, i8*, [2 x i8*], i8*, [2 x i8*], i32, i32, [2 x i32] }

$_Z10cyclic_addIaEPT_S1_iS1_i = comdat any

; Function Attrs: nounwind
define dso_local void @_Z10n2n_trans2P12input_windowIsEP13output_windowIsE(%struct.input_window* %matB, %struct.output_window* %matC) addrspace(1) #0 !dbg !92 {
entry:
  %matB.addr = alloca %struct.input_window*, align 4
  %matC.addr = alloca %struct.output_window*, align 4
  %i = alloca i32, align 4
  %B = alloca i16, align 2
  store %struct.input_window* %matB, %struct.input_window** %matB.addr, align 4, !tbaa !104
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window** %matB.addr, metadata !97, metadata !DIExpression()), !dbg !108
  store %struct.output_window* %matC, %struct.output_window** %matC.addr, align 4, !tbaa !104
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window** %matC.addr, metadata !98, metadata !DIExpression()), !dbg !109
  store i32 undef, i32* %i, align 4, !dbg !110
  %0 = bitcast i32* %i to i8*, !dbg !110
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #8, !dbg !110
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !99, metadata !DIExpression()), !dbg !111
  store i32 0, i32* %i, align 4, !dbg !111, !tbaa !112
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !114, !tbaa !112
  %cmp = icmp slt i32 %1, 3072, !dbg !115
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !116

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*, !dbg !117
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #8, !dbg !117
  br label %for.end

for.body:                                         ; preds = %for.cond
  store i16 undef, i16* %B, align 2, !dbg !118
  %3 = bitcast i16* %B to i8*, !dbg !118
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 2, i8* %3) #8, !dbg !118
  call addrspace(1) void @llvm.dbg.declare(metadata i16* %B, metadata !101, metadata !DIExpression()), !dbg !119
  %4 = load %struct.input_window*, %struct.input_window** %matB.addr, align 4, !dbg !120, !tbaa !104
  %call = call signext addrspace(1) i16 @_ZL15window_readincrIL15aie_dm_resource0EEsP12input_windowIsE(%struct.input_window* %4) #9, !dbg !121
  store i16 %call, i16* %B, align 2, !dbg !119, !tbaa !122
  %5 = load %struct.output_window*, %struct.output_window** %matC.addr, align 4, !dbg !124, !tbaa !104
  %6 = load i16, i16* %B, align 2, !dbg !125, !tbaa !122
  call addrspace(1) void @_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs(%struct.output_window* %5, i16 signext %6) #9, !dbg !126
  %7 = bitcast i16* %B to i8*, !dbg !127
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 2, i8* %7) #8, !dbg !127
  br label %for.inc, !dbg !128

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !129, !tbaa !112
  %inc = add nsw i32 %8, 1, !dbg !129
  store i32 %inc, i32* %i, align 4, !dbg !129, !tbaa !112
  br label %for.cond, !dbg !117, !llvm.loop !130

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !132
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) addrspace(1) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) addrspace(1) #2

; Function Attrs: inlinehint nounwind
define internal signext i16 @_ZL15window_readincrIL15aie_dm_resource0EEsP12input_windowIsE(%struct.input_window* %w) addrspace(1) #3 !dbg !133 {
entry:
  %w.addr = alloca %struct.input_window*, align 4
  %value = alloca i16, align 2
  store %struct.input_window* %w, %struct.input_window** %w.addr, align 4, !tbaa !104
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window** %w.addr, metadata !137, metadata !DIExpression()), !dbg !139
  store i16 undef, i16* %value, align 2, !dbg !139
  %0 = bitcast i16* %value to i8*, !dbg !139
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 2, i8* %0) #8, !dbg !139
  call addrspace(1) void @llvm.dbg.declare(metadata i16* %value, metadata !138, metadata !DIExpression()), !dbg !139
  %1 = load %struct.input_window*, %struct.input_window** %w.addr, align 4, !dbg !139, !tbaa !104
  call addrspace(1) void @_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs(%struct.input_window* %1, i16* nonnull align 2 dereferenceable(2) %value) #9, !dbg !139
  %2 = load i16, i16* %value, align 2, !dbg !139, !tbaa !122
  %3 = bitcast i16* %value to i8*, !dbg !139
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 2, i8* %3) #8, !dbg !139
  ret i16 %2, !dbg !139
}

; Function Attrs: inlinehint nounwind
define internal void @_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs(%struct.output_window* %w, i16 signext %value) addrspace(1) #3 !dbg !68 !noalias !140 {
entry:
  %w.addr = alloca %struct.output_window*, align 4
  %value.addr = alloca i16, align 2
  store %struct.output_window* %w, %struct.output_window** %w.addr, align 4, !tbaa !104, !noalias !140
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window** %w.addr, metadata !86, metadata !DIExpression()), !dbg !143
  store i16 %value, i16* %value.addr, align 2, !tbaa !122, !noalias !140
  call addrspace(1) void @llvm.dbg.declare(metadata i16* %value.addr, metadata !87, metadata !DIExpression()), !dbg !143
  %0 = load i16, i16* %value.addr, align 2, !dbg !143, !tbaa !122, !noalias !140
  %1 = load %struct.output_window*, %struct.output_window** %w.addr, align 4, !dbg !143, !tbaa !104, !noalias !140
  %ptr = getelementptr inbounds %struct.output_window, %struct.output_window* %1, i32 0, i32 2, !dbg !143
  %2 = load i8*, i8** %ptr, align 4, !dbg !143, !tbaa !144, !noalias !140
  %3 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %2, i8* null, i8** %ptr, i32 0, metadata !140), !dbg !143, !tbaa !144, !noalias !140
  %4 = bitcast i8* %3 to i16*, !dbg !143
  store i16 %0, i16* %4, align 2, !dbg !143, !tbaa !122, !noalias !140
  %5 = load %struct.output_window*, %struct.output_window** %w.addr, align 4, !dbg !143, !tbaa !104, !noalias !140
  call addrspace(1) void @_ZL11window_incrP13output_windowIsEi(%struct.output_window* %5, i32 1) #9, !dbg !143, !noalias !140
  ret void, !dbg !143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) addrspace(1) #2

; Function Attrs: inlinehint nounwind
define internal void @_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs(%struct.input_window* %w, i16* nonnull align 2 dereferenceable(2) %value) addrspace(1) #3 !dbg !17 !noalias !146 {
entry:
  %w.addr = alloca %struct.input_window*, align 4
  %value.addr = alloca i16*, align 4
  store %struct.input_window* %w, %struct.input_window** %w.addr, align 4, !tbaa !104, !noalias !146
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window** %w.addr, metadata !54, metadata !DIExpression()), !dbg !149
  store i16* %value, i16** %value.addr, align 4, !tbaa !104, !noalias !146
  call addrspace(1) void @llvm.dbg.declare(metadata i16** %value.addr, metadata !55, metadata !DIExpression()), !dbg !149
  %0 = load %struct.input_window*, %struct.input_window** %w.addr, align 4, !dbg !149, !tbaa !104, !noalias !146
  %ptr = getelementptr inbounds %struct.input_window, %struct.input_window* %0, i32 0, i32 2, !dbg !149
  %1 = load i8*, i8** %ptr, align 4, !dbg !149, !tbaa !150, !noalias !146
  %2 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %1, i8* null, i8** %ptr, i32 0, metadata !146), !dbg !149, !tbaa !150, !noalias !146
  %3 = bitcast i8* %2 to i16*, !dbg !149
  %4 = load i16, i16* %3, align 2, !dbg !149, !tbaa !122, !noalias !146
  %5 = load i16*, i16** %value.addr, align 4, !dbg !149, !tbaa !104, !noalias !146
  store i16 %4, i16* %5, align 2, !dbg !149, !tbaa !122, !noalias !146
  %6 = load %struct.input_window*, %struct.input_window** %w.addr, align 4, !dbg !149, !tbaa !104, !noalias !146
  call addrspace(1) void @_ZL11window_incrP12input_windowIsEi(%struct.input_window* %6, i32 1) #9, !dbg !149, !noalias !146
  ret void, !dbg !149
}

; Function Attrs: argmemonly nounwind speculatable
declare i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8*, i8*, i8**, i32, metadata) addrspace(1) #4

; Function Attrs: inlinehint nounwind
define internal void @_ZL11window_incrP12input_windowIsEi(%struct.input_window* %w, i32 %count) addrspace(1) #3 !dbg !152 !noalias !158 {
entry:
  %w.addr = alloca %struct.input_window*, align 4
  %count.addr = alloca i32, align 4
  store %struct.input_window* %w, %struct.input_window** %w.addr, align 4, !tbaa !104, !noalias !158
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_window** %w.addr, metadata !156, metadata !DIExpression()), !dbg !161
  store i32 %count, i32* %count.addr, align 4, !tbaa !112, !noalias !158
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %count.addr, metadata !157, metadata !DIExpression()), !dbg !161
  %0 = load i32, i32* %count.addr, align 4, !dbg !161, !tbaa !112, !noalias !158
  %mul = mul i32 %0, 2, !dbg !161
  store i32 %mul, i32* %count.addr, align 4, !dbg !161, !tbaa !112, !noalias !158
  %1 = load %struct.input_window*, %struct.input_window** %w.addr, align 4, !dbg !161, !tbaa !104, !noalias !158
  %ptr = getelementptr inbounds %struct.input_window, %struct.input_window* %1, i32 0, i32 2, !dbg !161
  %2 = load i8*, i8** %ptr, align 4, !dbg !161, !tbaa !150, !noalias !158
  %3 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %2, i8* null, i8** %ptr, i32 0, metadata !158), !dbg !161, !tbaa !150, !noalias !158
  %4 = load i32, i32* %count.addr, align 4, !dbg !161, !tbaa !112, !noalias !158
  %5 = load %struct.input_window*, %struct.input_window** %w.addr, align 4, !dbg !161, !tbaa !104, !noalias !158
  %buffer = getelementptr inbounds %struct.input_window, %struct.input_window* %5, i32 0, i32 5, !dbg !161
  %6 = load i8*, i8** %buffer, align 4, !dbg !161, !tbaa !162, !noalias !158
  %7 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %6, i8* null, i8** %buffer, i32 0, metadata !158), !dbg !161, !tbaa !162, !noalias !158
  %8 = load %struct.input_window*, %struct.input_window** %w.addr, align 4, !dbg !161, !tbaa !104, !noalias !158
  %size = getelementptr inbounds %struct.input_window, %struct.input_window* %8, i32 0, i32 7, !dbg !161
  %9 = load i32, i32* %size, align 4, !dbg !161, !tbaa !163, !noalias !158
  %call = call addrspace(1) i8* @_Z10cyclic_addIaEPT_S1_iS1_i(i8* %3, i32 %4, i8* %7, i32 %9) #9, !dbg !161, !noalias !158
  %10 = load %struct.input_window*, %struct.input_window** %w.addr, align 4, !dbg !161, !tbaa !104, !noalias !158
  %ptr1 = getelementptr inbounds %struct.input_window, %struct.input_window* %10, i32 0, i32 2, !dbg !161
  store i8* %call, i8** %ptr1, align 4, !dbg !161, !tbaa !150, !noalias !158
  ret void, !dbg !161
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local i8* @_Z10cyclic_addIaEPT_S1_iS1_i(i8* %a0, i32 %a1, i8* chesscopy noalias %a2, i32 %a3) addrspace(1) #5 comdat {
entry:
  %a0.addr = alloca i8*, align 4
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca i8*, align 4
  %a3.addr = alloca i32, align 4
  store i8* %a0, i8** %a0.addr, align 4, !tbaa !104, !noalias !164
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !112, !noalias !164
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8** %a2.addr, i32 0, metadata !164), !noalias !164
  store i8* %a2, i8** %a2.addr, align 4, !tbaa !104, !noalias !164
  store i32 %a3, i32* %a3.addr, align 4, !tbaa !112, !noalias !164
  %1 = load i8*, i8** %a0.addr, align 4, !tbaa !104, !noalias !164
  %2 = load i32, i32* %a1.addr, align 4, !tbaa !112, !noalias !164
  %mul = mul i32 %2, 1
  %3 = load i8*, i8** %a2.addr, align 4, !tbaa !104, !noalias !164
  %4 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %3, i8* %0, i8** %a2.addr, i32 0, metadata !164), !tbaa !104, !noalias !164
  %5 = load i32, i32* %a3.addr, align 4, !tbaa !112, !noalias !164
  %mul1 = mul i32 %5, 1
  %call = call x86_regcallcc addrspace(1) i8* @__regcall3__chessintr___Pvoid_cyclic_add___Pvoid___sint___Pvoid___sint(i8* %1, i32 %mul, i8* %4, i32 %mul1) #10
  ret i8* %call
}

; Function Attrs: inaccessiblememonly nounwind
declare i8* @llvm.noalias.decl.p0i8.p0p0i8.i32(i8**, i32, metadata) addrspace(1) #6

; Function Attrs: nounwind positionalaliasingreturns readnone
declare dso_local x86_regcallcc i8* @__regcall3__chessintr___Pvoid_cyclic_add___Pvoid___sint___Pvoid___sint(i8*, i32, i8*, i32) addrspace(1) #7

; Function Attrs: inlinehint nounwind
define internal void @_ZL11window_incrP13output_windowIsEi(%struct.output_window* %w, i32 %count) addrspace(1) #3 !dbg !167 !noalias !173 {
entry:
  %w.addr = alloca %struct.output_window*, align 4
  %count.addr = alloca i32, align 4
  store %struct.output_window* %w, %struct.output_window** %w.addr, align 4, !tbaa !104, !noalias !173
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_window** %w.addr, metadata !171, metadata !DIExpression()), !dbg !176
  store i32 %count, i32* %count.addr, align 4, !tbaa !112, !noalias !173
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %count.addr, metadata !172, metadata !DIExpression()), !dbg !176
  %0 = load i32, i32* %count.addr, align 4, !dbg !176, !tbaa !112, !noalias !173
  %mul = mul i32 %0, 2, !dbg !176
  store i32 %mul, i32* %count.addr, align 4, !dbg !176, !tbaa !112, !noalias !173
  %1 = load %struct.output_window*, %struct.output_window** %w.addr, align 4, !dbg !176, !tbaa !104, !noalias !173
  %ptr = getelementptr inbounds %struct.output_window, %struct.output_window* %1, i32 0, i32 2, !dbg !176
  %2 = load i8*, i8** %ptr, align 4, !dbg !176, !tbaa !144, !noalias !173
  %3 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %2, i8* null, i8** %ptr, i32 0, metadata !173), !dbg !176, !tbaa !144, !noalias !173
  %4 = load i32, i32* %count.addr, align 4, !dbg !176, !tbaa !112, !noalias !173
  %5 = load %struct.output_window*, %struct.output_window** %w.addr, align 4, !dbg !176, !tbaa !104, !noalias !173
  %buffer = getelementptr inbounds %struct.output_window, %struct.output_window* %5, i32 0, i32 5, !dbg !176
  %6 = load i8*, i8** %buffer, align 4, !dbg !176, !tbaa !177, !noalias !173
  %7 = call addrspace(1) i8* @llvm.noalias.p0i8.p0i8.p0p0i8.i32(i8* %6, i8* null, i8** %buffer, i32 0, metadata !173), !dbg !176, !tbaa !177, !noalias !173
  %8 = load %struct.output_window*, %struct.output_window** %w.addr, align 4, !dbg !176, !tbaa !104, !noalias !173
  %size = getelementptr inbounds %struct.output_window, %struct.output_window* %8, i32 0, i32 7, !dbg !176
  %9 = load i32, i32* %size, align 4, !dbg !176, !tbaa !178, !noalias !173
  %call = call addrspace(1) i8* @_Z10cyclic_addIaEPT_S1_iS1_i(i8* %3, i32 %4, i8* %7, i32 %9) #9, !dbg !176, !noalias !173
  %10 = load %struct.output_window*, %struct.output_window** %w.addr, align 4, !dbg !176, !tbaa !104, !noalias !173
  %ptr1 = getelementptr inbounds %struct.output_window, %struct.output_window* %10, i32 0, i32 2, !dbg !176
  store i8* %call, i8** %ptr1, align 4, !dbg !176, !tbaa !144, !noalias !173
  ret void, !dbg !176
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind speculatable }
attributes #5 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inaccessiblememonly nounwind }
attributes #7 = { nounwind positionalaliasingreturns readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtin-memcpy" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { "no-builtin-memcpy" }
attributes #10 = { nounwind positionalaliasingreturns readnone "no-builtin-memcpy" }

!llvm.dbg.cu = !{!0}
!llvm.linker.options = !{}
!llvm.module.flags = !{!88, !89, !90}
!llvm.ident = !{!91}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 11.0.0 (sgasip@krachtcs10:ipd/repositories/llvm_ipd 8ae012ed2b4731889ba2efbfb1dacc610b3ce588)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/Jinming/research/aie_project/n2n/aie/n2n_trans2.cc", directory: "/home/Jinming/research/aie_project/n2n/Work/aie/ir")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_dm_resource", file: !4, line: 370, baseType: !5, size: 32, flags: DIFlagEnumClass, elements: !6, identifier: "_ZTS15aie_dm_resource")
!4 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/data/versal_prod/lib/me_defines.h", directory: "")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "none", value: 0)
!8 = !DIEnumerator(name: "a", value: 1)
!9 = !DIEnumerator(name: "b", value: 2)
!10 = !DIEnumerator(name: "c", value: 3)
!11 = !DIEnumerator(name: "d", value: 4)
!12 = !DIEnumerator(name: "stack", value: 5)
!13 = !{!14, !64, !65, !66}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", scope: !17, file: !16, line: 836, baseType: !58)
!16 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/include/adf/window/window.h", directory: "")
!17 = distinct !DISubprogram(name: "window_readincr<aie_dm_resource::none>", linkageName: "_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs", scope: !16, file: !16, line: 836, type: !18, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !56, retainedNodes: !53)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !49}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "input_window_int16", file: !16, line: 100, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_window<short>", file: !16, line: 61, size: 416, flags: DIFlagTypePassByValue, elements: !23, templateParams: !46, identifier: "_ZTS12input_windowIsE")
!23 = !{!24, !26, !27, !35, !36, !40, !41, !42, !43, !44}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "current_bufid", scope: !22, file: !16, line: 63, baseType: !25, size: 32)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "instanceId", scope: !22, file: !16, line: 64, baseType: !25, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !22, file: !16, line: 65, baseType: !28, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "window_datatype", file: !31, line: 8, baseType: !32)
!31 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/include/adf/window/window_internal.h", directory: "")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !33, line: 23, baseType: !34)
!33 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/data/versal_prod/lib/runtime/include/stdint.h", directory: "")
!34 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !22, file: !16, line: 66, baseType: !28, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !22, file: !16, line: 67, baseType: !37, size: 64, offset: 128)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 2)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !22, file: !16, line: 68, baseType: !28, size: 32, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "buffers", scope: !22, file: !16, line: 69, baseType: !37, size: 64, offset: 224)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !22, file: !16, line: 70, baseType: !25, size: 32, offset: 288)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !22, file: !16, line: 71, baseType: !25, size: 32, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "lockids", scope: !22, file: !16, line: 75, baseType: !45, size: 64, offset: 352)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !38)
!46 = !{!47}
!47 = !DITemplateTypeParameter(name: "T", type: !48)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16", file: !51, line: 14, baseType: !52)
!51 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/include/adf/window/types.h", directory: "")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !33, line: 24, baseType: !48)
!53 = !{!54, !55}
!54 = !DILocalVariable(name: "w", arg: 1, scope: !17, file: !16, line: 836, type: !20)
!55 = !DILocalVariable(name: "value", arg: 2, scope: !17, file: !16, line: 836, type: !49)
!56 = !{!57}
!57 = !DITemplateValueParameter(name: "Resource", type: !3, value: i32 0)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "aie_dm_resource_set_t<int16, (aie_dm_resource)0>", file: !59, line: 264, baseType: !60)
!59 = !DIFile(filename: "/opt/tools/xilinx/Vitis/2021.1/aietools/data/versal_prod/lib/aie_core.h", directory: "")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !61, file: !59, line: 254, baseType: !48)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aie_dm_resource_set<short, aie_dm_resource::none>", file: !59, line: 252, size: 8, flags: DIFlagTypePassByValue, elements: !62, templateParams: !63, identifier: "_ZTS19aie_dm_resource_setIsL15aie_dm_resource0EE")
!62 = !{}
!63 = !{!47, !57}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", scope: !68, file: !16, line: 836, baseType: !58)
!68 = distinct !DISubprogram(name: "window_writeincr<aie_dm_resource::none>", linkageName: "_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs", scope: !16, file: !16, line: 836, type: !69, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !56, retainedNodes: !85)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !50}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_window_int16", file: !16, line: 110, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_window<short>", file: !16, line: 80, size: 416, flags: DIFlagTypePassByValue, elements: !74, templateParams: !46, identifier: "_ZTS13output_windowIsE")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "current_bufid", scope: !73, file: !16, line: 82, baseType: !25, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "instanceId", scope: !73, file: !16, line: 83, baseType: !25, size: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !73, file: !16, line: 84, baseType: !28, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !73, file: !16, line: 85, baseType: !28, size: 32, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !73, file: !16, line: 86, baseType: !37, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !73, file: !16, line: 87, baseType: !28, size: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "buffers", scope: !73, file: !16, line: 88, baseType: !37, size: 64, offset: 224)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !73, file: !16, line: 89, baseType: !25, size: 32, offset: 288)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !73, file: !16, line: 90, baseType: !25, size: 32, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "lockids", scope: !73, file: !16, line: 94, baseType: !45, size: 64, offset: 352)
!85 = !{!86, !87}
!86 = !DILocalVariable(name: "w", arg: 1, scope: !68, file: !16, line: 836, type: !71)
!87 = !DILocalVariable(name: "value", arg: 2, scope: !68, file: !16, line: 836, type: !50)
!88 = !{i32 7, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{i32 1, !"wchar_size", i32 4}
!91 = !{!"clang version 11.0.0 (sgasip@krachtcs10:ipd/repositories/llvm_ipd 8ae012ed2b4731889ba2efbfb1dacc610b3ce588)"}
!92 = distinct !DISubprogram(name: "n2n_trans2", linkageName: "_Z10n2n_trans2P12input_windowIsEP13output_windowIsE", scope: !93, file: !93, line: 5, type: !94, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!93 = !DIFile(filename: "aie/n2n_trans2.cc", directory: "/home/Jinming/research/aie_project/n2n")
!94 = !DISubroutineType(types: !95)
!95 = !{null, !20, !71}
!96 = !{!97, !98, !99, !101}
!97 = !DILocalVariable(name: "matB", arg: 1, scope: !92, file: !93, line: 5, type: !20)
!98 = !DILocalVariable(name: "matC", arg: 2, scope: !92, file: !93, line: 6, type: !71)
!99 = !DILocalVariable(name: "i", scope: !100, file: !93, line: 8, type: !5)
!100 = distinct !DILexicalBlock(scope: !92, file: !93, line: 8, column: 3)
!101 = !DILocalVariable(name: "B", scope: !102, file: !93, line: 9, type: !50)
!102 = distinct !DILexicalBlock(scope: !103, file: !93, line: 8, column: 26)
!103 = distinct !DILexicalBlock(scope: !100, file: !93, line: 8, column: 3)
!104 = !{!105, !105, i64 0, i64 4}
!105 = !{!106, i64 4, !"any pointer"}
!106 = !{!107, i64 1, !"omnipotent char"}
!107 = !{!"Simple C++ TBAA"}
!108 = !DILocation(line: 5, column: 37, scope: !92)
!109 = !DILocation(line: 6, column: 23, scope: !92)
!110 = !DILocation(line: 8, column: 8, scope: !100)
!111 = !DILocation(line: 8, column: 12, scope: !100)
!112 = !{!113, !113, i64 0, i64 4}
!113 = !{!106, i64 4, !"int"}
!114 = !DILocation(line: 8, column: 16, scope: !103)
!115 = !DILocation(line: 8, column: 17, scope: !103)
!116 = !DILocation(line: 8, column: 3, scope: !100)
!117 = !DILocation(line: 8, column: 3, scope: !103)
!118 = !DILocation(line: 9, column: 4, scope: !102)
!119 = !DILocation(line: 9, column: 10, scope: !102)
!120 = !DILocation(line: 9, column: 28, scope: !102)
!121 = !DILocation(line: 9, column: 12, scope: !102)
!122 = !{!123, !123, i64 0, i64 2}
!123 = !{!106, i64 2, !"short"}
!124 = !DILocation(line: 10, column: 22, scope: !102)
!125 = !DILocation(line: 10, column: 27, scope: !102)
!126 = !DILocation(line: 10, column: 5, scope: !102)
!127 = !DILocation(line: 11, column: 3, scope: !103)
!128 = !DILocation(line: 11, column: 3, scope: !102)
!129 = !DILocation(line: 8, column: 23, scope: !103)
!130 = distinct !{!130, !116, !131}
!131 = !DILocation(line: 11, column: 3, scope: !100)
!132 = !DILocation(line: 13, column: 1, scope: !92)
!133 = distinct !DISubprogram(name: "window_readincr<aie_dm_resource::none>", linkageName: "_ZL15window_readincrIL15aie_dm_resource0EEsP12input_windowIsE", scope: !16, file: !16, line: 836, type: !134, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !56, retainedNodes: !136)
!134 = !DISubroutineType(types: !135)
!135 = !{!50, !20}
!136 = !{!137, !138}
!137 = !DILocalVariable(name: "w", arg: 1, scope: !133, file: !16, line: 836, type: !20)
!138 = !DILocalVariable(name: "value", scope: !133, file: !16, line: 836, type: !50)
!139 = !DILocation(line: 836, column: 3, scope: !133)
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs: unknown scope"}
!142 = distinct !{!142, !"_ZL16window_writeincrIL15aie_dm_resource0EEvP13output_windowIsEs"}
!143 = !DILocation(line: 836, column: 3, scope: !68)
!144 = !{!145, !105, i64 8, i64 4}
!145 = !{!106, i64 52, !"_ZTS13output_windowIsE", !113, i64 0, i64 4, !113, i64 4, i64 4, !105, i64 8, i64 4, !105, i64 12, i64 4, !105, i64 16, i64 8, !105, i64 24, i64 4, !105, i64 28, i64 8, !113, i64 36, i64 4, !113, i64 40, i64 4, !113, i64 44, i64 8}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs: unknown scope"}
!148 = distinct !{!148, !"_ZL15window_readincrIL15aie_dm_resource0EEvP12input_windowIsERs"}
!149 = !DILocation(line: 836, column: 3, scope: !17)
!150 = !{!151, !105, i64 8, i64 4}
!151 = !{!106, i64 52, !"_ZTS12input_windowIsE", !113, i64 0, i64 4, !113, i64 4, i64 4, !105, i64 8, i64 4, !105, i64 12, i64 4, !105, i64 16, i64 8, !105, i64 24, i64 4, !105, i64 28, i64 8, !113, i64 36, i64 4, !113, i64 40, i64 4, !113, i64 44, i64 8}
!152 = distinct !DISubprogram(name: "window_incr", linkageName: "_ZL11window_incrP12input_windowIsEi", scope: !16, file: !16, line: 482, type: !153, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !20, !5}
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "w", arg: 1, scope: !152, file: !16, line: 482, type: !20)
!157 = !DILocalVariable(name: "count", arg: 2, scope: !152, file: !16, line: 482, type: !5)
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZL11window_incrP12input_windowIsEi: unknown scope"}
!160 = distinct !{!160, !"_ZL11window_incrP12input_windowIsEi"}
!161 = !DILocation(line: 482, column: 3, scope: !152)
!162 = !{!151, !105, i64 24, i64 4}
!163 = !{!151, !113, i64 36, i64 4}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_Z10cyclic_addIaEPT_S1_iS1_i: a2"}
!166 = distinct !{!166, !"_Z10cyclic_addIaEPT_S1_iS1_i"}
!167 = distinct !DISubprogram(name: "window_incr", linkageName: "_ZL11window_incrP13output_windowIsEi", scope: !16, file: !16, line: 492, type: !168, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !71, !5}
!170 = !{!171, !172}
!171 = !DILocalVariable(name: "w", arg: 1, scope: !167, file: !16, line: 492, type: !71)
!172 = !DILocalVariable(name: "count", arg: 2, scope: !167, file: !16, line: 492, type: !5)
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZL11window_incrP13output_windowIsEi: unknown scope"}
!175 = distinct !{!175, !"_ZL11window_incrP13output_windowIsEi"}
!176 = !DILocation(line: 492, column: 3, scope: !167)
!177 = !{!145, !105, i64 24, i64 4}
!178 = !{!145, !113, i64 36, i64 4}
