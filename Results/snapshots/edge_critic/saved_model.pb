èØ
è

^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68å¿

feedforward_mlp_torso/linear/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name feedforward_mlp_torso/linear/b

2feedforward_mlp_torso/linear/b/Read/ReadVariableOpReadVariableOpfeedforward_mlp_torso/linear/b*
_output_shapes	
:*
dtype0

feedforward_mlp_torso/linear/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:
÷*/
shared_name feedforward_mlp_torso/linear/w

2feedforward_mlp_torso/linear/w/Read/ReadVariableOpReadVariableOpfeedforward_mlp_torso/linear/w* 
_output_shapes
:
÷*
dtype0
§
'feedforward_mlp_torso/layer_norm/offsetVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'feedforward_mlp_torso/layer_norm/offset
 
;feedforward_mlp_torso/layer_norm/offset/Read/ReadVariableOpReadVariableOp'feedforward_mlp_torso/layer_norm/offset*
_output_shapes	
:*
dtype0
¥
&feedforward_mlp_torso/layer_norm/scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&feedforward_mlp_torso/layer_norm/scale

:feedforward_mlp_torso/layer_norm/scale/Read/ReadVariableOpReadVariableOp&feedforward_mlp_torso/layer_norm/scale*
_output_shapes	
:*
dtype0
¡
$feedforward_mlp_torso/mlp/linear_0/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$feedforward_mlp_torso/mlp/linear_0/b

8feedforward_mlp_torso/mlp/linear_0/b/Read/ReadVariableOpReadVariableOp$feedforward_mlp_torso/mlp/linear_0/b*
_output_shapes	
:*
dtype0
¦
$feedforward_mlp_torso/mlp/linear_0/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$feedforward_mlp_torso/mlp/linear_0/w

8feedforward_mlp_torso/mlp/linear_0/w/Read/ReadVariableOpReadVariableOp$feedforward_mlp_torso/mlp/linear_0/w* 
_output_shapes
:
*
dtype0
¡
$feedforward_mlp_torso/mlp/linear_1/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$feedforward_mlp_torso/mlp/linear_1/b

8feedforward_mlp_torso/mlp/linear_1/b/Read/ReadVariableOpReadVariableOp$feedforward_mlp_torso/mlp/linear_1/b*
_output_shapes	
:*
dtype0
¦
$feedforward_mlp_torso/mlp/linear_1/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$feedforward_mlp_torso/mlp/linear_1/w

8feedforward_mlp_torso/mlp/linear_1/w/Read/ReadVariableOpReadVariableOp$feedforward_mlp_torso/mlp/linear_1/w* 
_output_shapes
:
*
dtype0

DiscreteValuedHead/linear/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:3*,
shared_nameDiscreteValuedHead/linear/b

/DiscreteValuedHead/linear/b/Read/ReadVariableOpReadVariableOpDiscreteValuedHead/linear/b*
_output_shapes
:3*
dtype0

DiscreteValuedHead/linear/wVarHandleOp*
_output_shapes
: *
dtype0*
shape:	3*,
shared_nameDiscreteValuedHead/linear/w

/DiscreteValuedHead/linear/w/Read/ReadVariableOpReadVariableOpDiscreteValuedHead/linear/w*
_output_shapes
:	3*
dtype0

ConstConst*
_output_shapes
:3*
dtype0*ä
valueÚB×3"Ì  Ã  Ã  
Ã  Ã  üÂ  ðÂ  äÂ  ØÂ  ÌÂ  ÀÂ  ´Â  ¨Â  Â  Â  Â  pÂ  XÂ  @Â  (Â  Â  ðÁ  ÀÁ  Á  @Á  ÀÀ      À@  @A  A  ÀA  ðA  B  (B  @B  XB  pB  B  B  B  ¨B  ´B  ÀB  ÌB  ØB  äB  ðB  üB  C  
C  C  C

NoOpNoOp
Ç

Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*

valueö	Bó	 Bì	
Y

_variables
_trainable_variables
__call__
_module

signatures*
J
0
1
2
	3

4
5
6
7
8
9*
J
0
1
2
	3

4
5
6
7
8
9*
* 
* 
* 
_Y
VARIABLE_VALUEfeedforward_mlp_torso/linear/b'_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEfeedforward_mlp_torso/linear/w'_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE'feedforward_mlp_torso/layer_norm/offset'_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&feedforward_mlp_torso/layer_norm/scale'_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$feedforward_mlp_torso/mlp/linear_0/b'_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$feedforward_mlp_torso/mlp/linear_0/w'_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$feedforward_mlp_torso/mlp/linear_1/b'_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$feedforward_mlp_torso/mlp/linear_1/w'_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEDiscreteValuedHead/linear/b'_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEDiscreteValuedHead/linear/w'_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Õ
StatefulPartitionedCallStatefulPartitionedCallsaver_filename2feedforward_mlp_torso/linear/b/Read/ReadVariableOp2feedforward_mlp_torso/linear/w/Read/ReadVariableOp;feedforward_mlp_torso/layer_norm/offset/Read/ReadVariableOp:feedforward_mlp_torso/layer_norm/scale/Read/ReadVariableOp8feedforward_mlp_torso/mlp/linear_0/b/Read/ReadVariableOp8feedforward_mlp_torso/mlp/linear_0/w/Read/ReadVariableOp8feedforward_mlp_torso/mlp/linear_1/b/Read/ReadVariableOp8feedforward_mlp_torso/mlp/linear_1/w/Read/ReadVariableOp/DiscreteValuedHead/linear/b/Read/ReadVariableOp/DiscreteValuedHead/linear/w/Read/ReadVariableOpConst_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *(
f#R!
__inference__traced_save_125015

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamefeedforward_mlp_torso/linear/bfeedforward_mlp_torso/linear/w'feedforward_mlp_torso/layer_norm/offset&feedforward_mlp_torso/layer_norm/scale$feedforward_mlp_torso/mlp/linear_0/b$feedforward_mlp_torso/mlp/linear_0/w$feedforward_mlp_torso/mlp/linear_1/b$feedforward_mlp_torso/mlp/linear_1/wDiscreteValuedHead/linear/bDiscreteValuedHead/linear/w*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8 *+
f&R$
"__inference__traced_restore_125075ã
¦

__inference___call___115008

args_0

args_1
unknown:
÷
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	3
	unknown_8:3
	unknown_9
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallargs_0args_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0,1J 8 **
f%R#
!__inference_wrapped_module_114979k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ·:ÿÿÿÿÿÿÿÿÿÀ: : : : : : : : : : :322
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
 
_user_specified_nameargs_0:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameargs_1: 

_output_shapes
:3
¡"

__inference__traced_save_125015
file_prefix=
9savev2_feedforward_mlp_torso_linear_b_read_readvariableop=
9savev2_feedforward_mlp_torso_linear_w_read_readvariableopF
Bsavev2_feedforward_mlp_torso_layer_norm_offset_read_readvariableopE
Asavev2_feedforward_mlp_torso_layer_norm_scale_read_readvariableopC
?savev2_feedforward_mlp_torso_mlp_linear_0_b_read_readvariableopC
?savev2_feedforward_mlp_torso_mlp_linear_0_w_read_readvariableopC
?savev2_feedforward_mlp_torso_mlp_linear_1_b_read_readvariableopC
?savev2_feedforward_mlp_torso_mlp_linear_1_w_read_readvariableop:
6savev2_discretevaluedhead_linear_b_read_readvariableop:
6savev2_discretevaluedhead_linear_w_read_readvariableop
savev2_const_1

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¤
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Í
valueÃBÀB'_variables/0/.ATTRIBUTES/VARIABLE_VALUEB'_variables/1/.ATTRIBUTES/VARIABLE_VALUEB'_variables/2/.ATTRIBUTES/VARIABLE_VALUEB'_variables/3/.ATTRIBUTES/VARIABLE_VALUEB'_variables/4/.ATTRIBUTES/VARIABLE_VALUEB'_variables/5/.ATTRIBUTES/VARIABLE_VALUEB'_variables/6/.ATTRIBUTES/VARIABLE_VALUEB'_variables/7/.ATTRIBUTES/VARIABLE_VALUEB'_variables/8/.ATTRIBUTES/VARIABLE_VALUEB'_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B ­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:09savev2_feedforward_mlp_torso_linear_b_read_readvariableop9savev2_feedforward_mlp_torso_linear_w_read_readvariableopBsavev2_feedforward_mlp_torso_layer_norm_offset_read_readvariableopAsavev2_feedforward_mlp_torso_layer_norm_scale_read_readvariableop?savev2_feedforward_mlp_torso_mlp_linear_0_b_read_readvariableop?savev2_feedforward_mlp_torso_mlp_linear_0_w_read_readvariableop?savev2_feedforward_mlp_torso_mlp_linear_1_b_read_readvariableop?savev2_feedforward_mlp_torso_mlp_linear_1_w_read_readvariableop6savev2_discretevaluedhead_linear_b_read_readvariableop6savev2_discretevaluedhead_linear_w_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*o
_input_shapes^
\: ::
÷::::
::
:3:	3: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
::&"
 
_output_shapes
:
÷:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
: 	

_output_shapes
:3:%
!

_output_shapes
:	3:

_output_shapes
: 
²
¿
!__inference_wrapped_module_115150

args_0

args_1O
;feedforward_mlp_torso_linear_matmul_readvariableop_resource:
÷G
8feedforward_mlp_torso_linear_add_readvariableop_resource:	U
Ffeedforward_mlp_torso_layer_norm_batchnorm_mul_readvariableop_resource:	Q
Bfeedforward_mlp_torso_layer_norm_batchnorm_readvariableop_resource:	U
Afeedforward_mlp_torso_mlp_linear_0_matmul_readvariableop_resource:
M
>feedforward_mlp_torso_mlp_linear_0_add_readvariableop_resource:	U
Afeedforward_mlp_torso_mlp_linear_1_matmul_readvariableop_resource:
M
>feedforward_mlp_torso_mlp_linear_1_add_readvariableop_resource:	K
8discretevaluedhead_linear_matmul_readvariableop_resource:	3C
5discretevaluedhead_linear_add_readvariableop_resource:3%
!discretevaluedhead_shape_1_115117
identity¢,DiscreteValuedHead/linear/Add/ReadVariableOp¢/DiscreteValuedHead/linear/MatMul/ReadVariableOp¢9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp¢=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp¢/feedforward_mlp_torso/linear/Add/ReadVariableOp¢2feedforward_mlp_torso/linear/MatMul/ReadVariableOp¢5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp¢8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp¢5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp¢8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOpV
 critic_multiplexer/flatten/ShapeShapeargs_0*
T0*
_output_shapes
:x
.critic_multiplexer/flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0critic_multiplexer/flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0critic_multiplexer/flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ö
(critic_multiplexer/flatten/strided_sliceStridedSlice)critic_multiplexer/flatten/Shape:output:07critic_multiplexer/flatten/strided_slice/stack:output:09critic_multiplexer/flatten/strided_slice/stack_1:output:09critic_multiplexer/flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
*critic_multiplexer/flatten/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:·h
&critic_multiplexer/flatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
!critic_multiplexer/flatten/concatConcatV21critic_multiplexer/flatten/strided_slice:output:03critic_multiplexer/flatten/concat/values_1:output:0/critic_multiplexer/flatten/concat/axis:output:0*
N*
T0*
_output_shapes
:
"critic_multiplexer/flatten/ReshapeReshapeargs_0*critic_multiplexer/flatten/concat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·X
"critic_multiplexer/flatten/Shape_1Shapeargs_1*
T0*
_output_shapes
:z
0critic_multiplexer/flatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2critic_multiplexer/flatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2critic_multiplexer/flatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
*critic_multiplexer/flatten/strided_slice_1StridedSlice+critic_multiplexer/flatten/Shape_1:output:09critic_multiplexer/flatten/strided_slice_1/stack:output:0;critic_multiplexer/flatten/strided_slice_1/stack_1:output:0;critic_multiplexer/flatten/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskw
,critic_multiplexer/flatten/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:Àj
(critic_multiplexer/flatten/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
#critic_multiplexer/flatten/concat_1ConcatV23critic_multiplexer/flatten/strided_slice_1:output:05critic_multiplexer/flatten/concat_1/values_1:output:01critic_multiplexer/flatten/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
$critic_multiplexer/flatten/Reshape_1Reshapeargs_1,critic_multiplexer/flatten/concat_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
critic_multiplexer/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿæ
critic_multiplexer/concatConcatV2+critic_multiplexer/flatten/Reshape:output:0-critic_multiplexer/flatten/Reshape_1:output:0'critic_multiplexer/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷u
#feedforward_mlp_torso/flatten/ShapeShape"critic_multiplexer/concat:output:0*
T0*
_output_shapes
:{
1feedforward_mlp_torso/flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3feedforward_mlp_torso/flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3feedforward_mlp_torso/flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
+feedforward_mlp_torso/flatten/strided_sliceStridedSlice,feedforward_mlp_torso/flatten/Shape:output:0:feedforward_mlp_torso/flatten/strided_slice/stack:output:0<feedforward_mlp_torso/flatten/strided_slice/stack_1:output:0<feedforward_mlp_torso/flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskx
-feedforward_mlp_torso/flatten/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:÷k
)feedforward_mlp_torso/flatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$feedforward_mlp_torso/flatten/concatConcatV24feedforward_mlp_torso/flatten/strided_slice:output:06feedforward_mlp_torso/flatten/concat/values_1:output:02feedforward_mlp_torso/flatten/concat/axis:output:0*
N*
T0*
_output_shapes
:¶
%feedforward_mlp_torso/flatten/ReshapeReshape"critic_multiplexer/concat:output:0-feedforward_mlp_torso/flatten/concat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷r
'feedforward_mlp_torso/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
#feedforward_mlp_torso/concat/concatIdentity.feedforward_mlp_torso/flatten/Reshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷°
2feedforward_mlp_torso/linear/MatMul/ReadVariableOpReadVariableOp;feedforward_mlp_torso_linear_matmul_readvariableop_resource* 
_output_shapes
:
÷*
dtype0Ê
#feedforward_mlp_torso/linear/MatMulMatMul,feedforward_mlp_torso/concat/concat:output:0:feedforward_mlp_torso/linear/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/feedforward_mlp_torso/linear/Add/ReadVariableOpReadVariableOp8feedforward_mlp_torso_linear_add_readvariableop_resource*
_output_shapes	
:*
dtype0Ä
 feedforward_mlp_torso/linear/AddAddV2-feedforward_mlp_torso/linear/MatMul:product:07feedforward_mlp_torso/linear/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?feedforward_mlp_torso/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:è
-feedforward_mlp_torso/layer_norm/moments/meanMean$feedforward_mlp_torso/linear/Add:z:0Hfeedforward_mlp_torso/layer_norm/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¯
5feedforward_mlp_torso/layer_norm/moments/StopGradientStopGradient6feedforward_mlp_torso/layer_norm/moments/mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
:feedforward_mlp_torso/layer_norm/moments/SquaredDifferenceSquaredDifference$feedforward_mlp_torso/linear/Add:z:0>feedforward_mlp_torso/layer_norm/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cfeedforward_mlp_torso/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1feedforward_mlp_torso/layer_norm/moments/varianceMean>feedforward_mlp_torso/layer_norm/moments/SquaredDifference:z:0Lfeedforward_mlp_torso/layer_norm/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(y
0feedforward_mlp_torso/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ñhãµøä>à
.feedforward_mlp_torso/layer_norm/batchnorm/addAddV2:feedforward_mlp_torso/layer_norm/moments/variance:output:09feedforward_mlp_torso/layer_norm/batchnorm/add/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0feedforward_mlp_torso/layer_norm/batchnorm/RsqrtRsqrt2feedforward_mlp_torso/layer_norm/batchnorm/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpFfeedforward_mlp_torso_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0å
.feedforward_mlp_torso/layer_norm/batchnorm/mulMul4feedforward_mlp_torso/layer_norm/batchnorm/Rsqrt:y:0Efeedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
0feedforward_mlp_torso/layer_norm/batchnorm/mul_1Mul$feedforward_mlp_torso/linear/Add:z:02feedforward_mlp_torso/layer_norm/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
0feedforward_mlp_torso/layer_norm/batchnorm/mul_2Mul6feedforward_mlp_torso/layer_norm/moments/mean:output:02feedforward_mlp_torso/layer_norm/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOpReadVariableOpBfeedforward_mlp_torso_layer_norm_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0á
.feedforward_mlp_torso/layer_norm/batchnorm/subSubAfeedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp:value:04feedforward_mlp_torso/layer_norm/batchnorm/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
0feedforward_mlp_torso/layer_norm/batchnorm/add_1AddV24feedforward_mlp_torso/layer_norm/batchnorm/mul_1:z:02feedforward_mlp_torso/layer_norm/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%feedforward_mlp_torso/sequential/TanhTanh4feedforward_mlp_torso/layer_norm/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOpReadVariableOpAfeedforward_mlp_torso_mlp_linear_0_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ó
)feedforward_mlp_torso/mlp/linear_0/MatMulMatMul)feedforward_mlp_torso/sequential/Tanh:y:0@feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOpReadVariableOp>feedforward_mlp_torso_mlp_linear_0_add_readvariableop_resource*
_output_shapes	
:*
dtype0Ö
&feedforward_mlp_torso/mlp/linear_0/AddAddV23feedforward_mlp_torso/mlp/linear_0/MatMul:product:0=feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
feedforward_mlp_torso/mlp/EluElu*feedforward_mlp_torso/mlp/linear_0/Add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOpReadVariableOpAfeedforward_mlp_torso_mlp_linear_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Õ
)feedforward_mlp_torso/mlp/linear_1/MatMulMatMul+feedforward_mlp_torso/mlp/Elu:activations:0@feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOpReadVariableOp>feedforward_mlp_torso_mlp_linear_1_add_readvariableop_resource*
_output_shapes	
:*
dtype0Ö
&feedforward_mlp_torso/mlp/linear_1/AddAddV23feedforward_mlp_torso/mlp/linear_1/MatMul:product:0=feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
feedforward_mlp_torso/mlp/Elu_1Elu*feedforward_mlp_torso/mlp/linear_1/Add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
/DiscreteValuedHead/linear/MatMul/ReadVariableOpReadVariableOp8discretevaluedhead_linear_matmul_readvariableop_resource*
_output_shapes
:	3*
dtype0Ä
 DiscreteValuedHead/linear/MatMulMatMul-feedforward_mlp_torso/mlp/Elu_1:activations:07DiscreteValuedHead/linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
,DiscreteValuedHead/linear/Add/ReadVariableOpReadVariableOp5discretevaluedhead_linear_add_readvariableop_resource*
_output_shapes
:3*
dtype0º
DiscreteValuedHead/linear/AddAddV2*DiscreteValuedHead/linear/MatMul:product:04DiscreteValuedHead/linear/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3i
DiscreteValuedHead/ShapeShape!DiscreteValuedHead/linear/Add:z:0*
T0*
_output_shapes
:p
&DiscreteValuedHead/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(DiscreteValuedHead/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(DiscreteValuedHead/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:®
 DiscreteValuedHead/strided_sliceStridedSlice!DiscreteValuedHead/Shape:output:0/DiscreteValuedHead/strided_slice/stack:output:01DiscreteValuedHead/strided_slice/stack_1:output:01DiscreteValuedHead/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskd
DiscreteValuedHead/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:3`
DiscreteValuedHead/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
DiscreteValuedHead/concatConcatV2)DiscreteValuedHead/strided_slice:output:0#DiscreteValuedHead/Shape_1:output:0'DiscreteValuedHead/concat/axis:output:0*
N*
T0*
_output_shapes
:
DiscreteValuedHead/ReshapeReshape!DiscreteValuedHead/linear/Add:z:0"DiscreteValuedHead/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3v
DiscreteValuedHead/CastCast!discretevaluedhead_shape_1_115117*

DstT0*

SrcT0*
_output_shapes
:3p
&DiscreteValuedHead/assert_shapes/ShapeConst*
_output_shapes
:*
dtype0*
valueB:3{
(DiscreteValuedHead/assert_shapes/Shape_1Shape#DiscreteValuedHead/Reshape:output:0*
T0*
_output_shapes
:~
4DiscreteValuedHead/assert_shapes/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6DiscreteValuedHead/assert_shapes/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6DiscreteValuedHead/assert_shapes/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ø
.DiscreteValuedHead/assert_shapes/strided_sliceStridedSlice1DiscreteValuedHead/assert_shapes/Shape_1:output:0=DiscreteValuedHead/assert_shapes/strided_slice/stack:output:0?DiscreteValuedHead/assert_shapes/strided_slice/stack_1:output:0?DiscreteValuedHead/assert_shapes/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4DiscreteValuedHead/assert_shapes/assert_rank_in/rankConst*
_output_shapes
: *
dtype0*
value	B : x
6DiscreteValuedHead/assert_shapes/assert_rank_in/rank_1Const*
_output_shapes
: *
dtype0*
value	B :
5DiscreteValuedHead/assert_shapes/assert_rank_in/ShapeConst*
_output_shapes
:*
dtype0*
valueB:3|
^DiscreteValuedHead/assert_shapes/assert_rank_in/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 ~
`DiscreteValuedHead/assert_shapes/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp*
_output_shapes
 m
ODiscreteValuedHead/assert_shapes/assert_rank_in/static_checks_determined_all_okNoOp*
_output_shapes
 
DiscreteValuedHead/group_depsNoOpP^DiscreteValuedHead/assert_shapes/assert_rank_in/static_checks_determined_all_ok*
_output_shapes
 É
gstochastic_mean_head/DiscreteValuedDistribution/mean/DiscreteValuedDistribution/probs_parameter/SoftmaxSoftmax#DiscreteValuedHead/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
8stochastic_mean_head/DiscreteValuedDistribution/mean/mulMulqstochastic_mean_head/DiscreteValuedDistribution/mean/DiscreteValuedDistribution/probs_parameter/Softmax:softmax:0DiscreteValuedHead/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
Jstochastic_mean_head/DiscreteValuedDistribution/mean/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
8stochastic_mean_head/DiscreteValuedDistribution/mean/SumSum<stochastic_mean_head/DiscreteValuedDistribution/mean/mul:z:0Sstochastic_mean_head/DiscreteValuedDistribution/mean/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentityAstochastic_mean_head/DiscreteValuedDistribution/mean/Sum:output:0^NoOp*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
NoOpNoOp-^DiscreteValuedHead/linear/Add/ReadVariableOp0^DiscreteValuedHead/linear/MatMul/ReadVariableOp:^feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp>^feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp0^feedforward_mlp_torso/linear/Add/ReadVariableOp3^feedforward_mlp_torso/linear/MatMul/ReadVariableOp6^feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp9^feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp6^feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp9^feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ·:ÿÿÿÿÿÿÿÿÿÀ: : : : : : : : : : :32\
,DiscreteValuedHead/linear/Add/ReadVariableOp,DiscreteValuedHead/linear/Add/ReadVariableOp2b
/DiscreteValuedHead/linear/MatMul/ReadVariableOp/DiscreteValuedHead/linear/MatMul/ReadVariableOp2v
9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp2~
=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp2b
/feedforward_mlp_torso/linear/Add/ReadVariableOp/feedforward_mlp_torso/linear/Add/ReadVariableOp2h
2feedforward_mlp_torso/linear/MatMul/ReadVariableOp2feedforward_mlp_torso/linear/MatMul/ReadVariableOp2n
5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp2t
8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp2n
5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp2t
8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
 
_user_specified_nameargs_0:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameargs_1: 

_output_shapes
:3
§-
à
"__inference__traced_restore_125075
file_prefix>
/assignvariableop_feedforward_mlp_torso_linear_b:	E
1assignvariableop_1_feedforward_mlp_torso_linear_w:
÷I
:assignvariableop_2_feedforward_mlp_torso_layer_norm_offset:	H
9assignvariableop_3_feedforward_mlp_torso_layer_norm_scale:	F
7assignvariableop_4_feedforward_mlp_torso_mlp_linear_0_b:	K
7assignvariableop_5_feedforward_mlp_torso_mlp_linear_0_w:
F
7assignvariableop_6_feedforward_mlp_torso_mlp_linear_1_b:	K
7assignvariableop_7_feedforward_mlp_torso_mlp_linear_1_w:
<
.assignvariableop_8_discretevaluedhead_linear_b:3A
.assignvariableop_9_discretevaluedhead_linear_w:	3
identity_11¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9§
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Í
valueÃBÀB'_variables/0/.ATTRIBUTES/VARIABLE_VALUEB'_variables/1/.ATTRIBUTES/VARIABLE_VALUEB'_variables/2/.ATTRIBUTES/VARIABLE_VALUEB'_variables/3/.ATTRIBUTES/VARIABLE_VALUEB'_variables/4/.ATTRIBUTES/VARIABLE_VALUEB'_variables/5/.ATTRIBUTES/VARIABLE_VALUEB'_variables/6/.ATTRIBUTES/VARIABLE_VALUEB'_variables/7/.ATTRIBUTES/VARIABLE_VALUEB'_variables/8/.ATTRIBUTES/VARIABLE_VALUEB'_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B Õ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp/assignvariableop_feedforward_mlp_torso_linear_bIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_1AssignVariableOp1assignvariableop_1_feedforward_mlp_torso_linear_wIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_2AssignVariableOp:assignvariableop_2_feedforward_mlp_torso_layer_norm_offsetIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_3AssignVariableOp9assignvariableop_3_feedforward_mlp_torso_layer_norm_scaleIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_4AssignVariableOp7assignvariableop_4_feedforward_mlp_torso_mlp_linear_0_bIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_5AssignVariableOp7assignvariableop_5_feedforward_mlp_torso_mlp_linear_0_wIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_6AssignVariableOp7assignvariableop_6_feedforward_mlp_torso_mlp_linear_1_bIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_7AssignVariableOp7assignvariableop_7_feedforward_mlp_torso_mlp_linear_1_wIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp.assignvariableop_8_discretevaluedhead_linear_bIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_discretevaluedhead_linear_wIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 «
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
²
¿
!__inference_wrapped_module_114979

args_0

args_1O
;feedforward_mlp_torso_linear_matmul_readvariableop_resource:
÷G
8feedforward_mlp_torso_linear_add_readvariableop_resource:	U
Ffeedforward_mlp_torso_layer_norm_batchnorm_mul_readvariableop_resource:	Q
Bfeedforward_mlp_torso_layer_norm_batchnorm_readvariableop_resource:	U
Afeedforward_mlp_torso_mlp_linear_0_matmul_readvariableop_resource:
M
>feedforward_mlp_torso_mlp_linear_0_add_readvariableop_resource:	U
Afeedforward_mlp_torso_mlp_linear_1_matmul_readvariableop_resource:
M
>feedforward_mlp_torso_mlp_linear_1_add_readvariableop_resource:	K
8discretevaluedhead_linear_matmul_readvariableop_resource:	3C
5discretevaluedhead_linear_add_readvariableop_resource:3%
!discretevaluedhead_shape_1_114950
identity¢,DiscreteValuedHead/linear/Add/ReadVariableOp¢/DiscreteValuedHead/linear/MatMul/ReadVariableOp¢9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp¢=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp¢/feedforward_mlp_torso/linear/Add/ReadVariableOp¢2feedforward_mlp_torso/linear/MatMul/ReadVariableOp¢5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp¢8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp¢5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp¢8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOpV
 critic_multiplexer/flatten/ShapeShapeargs_0*
T0*
_output_shapes
:x
.critic_multiplexer/flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0critic_multiplexer/flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0critic_multiplexer/flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ö
(critic_multiplexer/flatten/strided_sliceStridedSlice)critic_multiplexer/flatten/Shape:output:07critic_multiplexer/flatten/strided_slice/stack:output:09critic_multiplexer/flatten/strided_slice/stack_1:output:09critic_multiplexer/flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_masku
*critic_multiplexer/flatten/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:·h
&critic_multiplexer/flatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
!critic_multiplexer/flatten/concatConcatV21critic_multiplexer/flatten/strided_slice:output:03critic_multiplexer/flatten/concat/values_1:output:0/critic_multiplexer/flatten/concat/axis:output:0*
N*
T0*
_output_shapes
:
"critic_multiplexer/flatten/ReshapeReshapeargs_0*critic_multiplexer/flatten/concat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·X
"critic_multiplexer/flatten/Shape_1Shapeargs_1*
T0*
_output_shapes
:z
0critic_multiplexer/flatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2critic_multiplexer/flatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2critic_multiplexer/flatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
*critic_multiplexer/flatten/strided_slice_1StridedSlice+critic_multiplexer/flatten/Shape_1:output:09critic_multiplexer/flatten/strided_slice_1/stack:output:0;critic_multiplexer/flatten/strided_slice_1/stack_1:output:0;critic_multiplexer/flatten/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskw
,critic_multiplexer/flatten/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB:Àj
(critic_multiplexer/flatten/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
#critic_multiplexer/flatten/concat_1ConcatV23critic_multiplexer/flatten/strided_slice_1:output:05critic_multiplexer/flatten/concat_1/values_1:output:01critic_multiplexer/flatten/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
$critic_multiplexer/flatten/Reshape_1Reshapeargs_1,critic_multiplexer/flatten/concat_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
critic_multiplexer/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿæ
critic_multiplexer/concatConcatV2+critic_multiplexer/flatten/Reshape:output:0-critic_multiplexer/flatten/Reshape_1:output:0'critic_multiplexer/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷u
#feedforward_mlp_torso/flatten/ShapeShape"critic_multiplexer/concat:output:0*
T0*
_output_shapes
:{
1feedforward_mlp_torso/flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3feedforward_mlp_torso/flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3feedforward_mlp_torso/flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
+feedforward_mlp_torso/flatten/strided_sliceStridedSlice,feedforward_mlp_torso/flatten/Shape:output:0:feedforward_mlp_torso/flatten/strided_slice/stack:output:0<feedforward_mlp_torso/flatten/strided_slice/stack_1:output:0<feedforward_mlp_torso/flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskx
-feedforward_mlp_torso/flatten/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:÷k
)feedforward_mlp_torso/flatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$feedforward_mlp_torso/flatten/concatConcatV24feedforward_mlp_torso/flatten/strided_slice:output:06feedforward_mlp_torso/flatten/concat/values_1:output:02feedforward_mlp_torso/flatten/concat/axis:output:0*
N*
T0*
_output_shapes
:¶
%feedforward_mlp_torso/flatten/ReshapeReshape"critic_multiplexer/concat:output:0-feedforward_mlp_torso/flatten/concat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷r
'feedforward_mlp_torso/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
#feedforward_mlp_torso/concat/concatIdentity.feedforward_mlp_torso/flatten/Reshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷°
2feedforward_mlp_torso/linear/MatMul/ReadVariableOpReadVariableOp;feedforward_mlp_torso_linear_matmul_readvariableop_resource* 
_output_shapes
:
÷*
dtype0Ê
#feedforward_mlp_torso/linear/MatMulMatMul,feedforward_mlp_torso/concat/concat:output:0:feedforward_mlp_torso/linear/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/feedforward_mlp_torso/linear/Add/ReadVariableOpReadVariableOp8feedforward_mlp_torso_linear_add_readvariableop_resource*
_output_shapes	
:*
dtype0Ä
 feedforward_mlp_torso/linear/AddAddV2-feedforward_mlp_torso/linear/MatMul:product:07feedforward_mlp_torso/linear/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?feedforward_mlp_torso/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:è
-feedforward_mlp_torso/layer_norm/moments/meanMean$feedforward_mlp_torso/linear/Add:z:0Hfeedforward_mlp_torso/layer_norm/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¯
5feedforward_mlp_torso/layer_norm/moments/StopGradientStopGradient6feedforward_mlp_torso/layer_norm/moments/mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
:feedforward_mlp_torso/layer_norm/moments/SquaredDifferenceSquaredDifference$feedforward_mlp_torso/linear/Add:z:0>feedforward_mlp_torso/layer_norm/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cfeedforward_mlp_torso/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1feedforward_mlp_torso/layer_norm/moments/varianceMean>feedforward_mlp_torso/layer_norm/moments/SquaredDifference:z:0Lfeedforward_mlp_torso/layer_norm/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(y
0feedforward_mlp_torso/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB 2ñhãµøä>à
.feedforward_mlp_torso/layer_norm/batchnorm/addAddV2:feedforward_mlp_torso/layer_norm/moments/variance:output:09feedforward_mlp_torso/layer_norm/batchnorm/add/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0feedforward_mlp_torso/layer_norm/batchnorm/RsqrtRsqrt2feedforward_mlp_torso/layer_norm/batchnorm/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpFfeedforward_mlp_torso_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0å
.feedforward_mlp_torso/layer_norm/batchnorm/mulMul4feedforward_mlp_torso/layer_norm/batchnorm/Rsqrt:y:0Efeedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
0feedforward_mlp_torso/layer_norm/batchnorm/mul_1Mul$feedforward_mlp_torso/linear/Add:z:02feedforward_mlp_torso/layer_norm/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
0feedforward_mlp_torso/layer_norm/batchnorm/mul_2Mul6feedforward_mlp_torso/layer_norm/moments/mean:output:02feedforward_mlp_torso/layer_norm/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOpReadVariableOpBfeedforward_mlp_torso_layer_norm_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0á
.feedforward_mlp_torso/layer_norm/batchnorm/subSubAfeedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp:value:04feedforward_mlp_torso/layer_norm/batchnorm/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
0feedforward_mlp_torso/layer_norm/batchnorm/add_1AddV24feedforward_mlp_torso/layer_norm/batchnorm/mul_1:z:02feedforward_mlp_torso/layer_norm/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%feedforward_mlp_torso/sequential/TanhTanh4feedforward_mlp_torso/layer_norm/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOpReadVariableOpAfeedforward_mlp_torso_mlp_linear_0_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ó
)feedforward_mlp_torso/mlp/linear_0/MatMulMatMul)feedforward_mlp_torso/sequential/Tanh:y:0@feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOpReadVariableOp>feedforward_mlp_torso_mlp_linear_0_add_readvariableop_resource*
_output_shapes	
:*
dtype0Ö
&feedforward_mlp_torso/mlp/linear_0/AddAddV23feedforward_mlp_torso/mlp/linear_0/MatMul:product:0=feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
feedforward_mlp_torso/mlp/EluElu*feedforward_mlp_torso/mlp/linear_0/Add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOpReadVariableOpAfeedforward_mlp_torso_mlp_linear_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Õ
)feedforward_mlp_torso/mlp/linear_1/MatMulMatMul+feedforward_mlp_torso/mlp/Elu:activations:0@feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOpReadVariableOp>feedforward_mlp_torso_mlp_linear_1_add_readvariableop_resource*
_output_shapes	
:*
dtype0Ö
&feedforward_mlp_torso/mlp/linear_1/AddAddV23feedforward_mlp_torso/mlp/linear_1/MatMul:product:0=feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
feedforward_mlp_torso/mlp/Elu_1Elu*feedforward_mlp_torso/mlp/linear_1/Add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
/DiscreteValuedHead/linear/MatMul/ReadVariableOpReadVariableOp8discretevaluedhead_linear_matmul_readvariableop_resource*
_output_shapes
:	3*
dtype0Ä
 DiscreteValuedHead/linear/MatMulMatMul-feedforward_mlp_torso/mlp/Elu_1:activations:07DiscreteValuedHead/linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
,DiscreteValuedHead/linear/Add/ReadVariableOpReadVariableOp5discretevaluedhead_linear_add_readvariableop_resource*
_output_shapes
:3*
dtype0º
DiscreteValuedHead/linear/AddAddV2*DiscreteValuedHead/linear/MatMul:product:04DiscreteValuedHead/linear/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3i
DiscreteValuedHead/ShapeShape!DiscreteValuedHead/linear/Add:z:0*
T0*
_output_shapes
:p
&DiscreteValuedHead/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(DiscreteValuedHead/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(DiscreteValuedHead/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:®
 DiscreteValuedHead/strided_sliceStridedSlice!DiscreteValuedHead/Shape:output:0/DiscreteValuedHead/strided_slice/stack:output:01DiscreteValuedHead/strided_slice/stack_1:output:01DiscreteValuedHead/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskd
DiscreteValuedHead/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:3`
DiscreteValuedHead/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
DiscreteValuedHead/concatConcatV2)DiscreteValuedHead/strided_slice:output:0#DiscreteValuedHead/Shape_1:output:0'DiscreteValuedHead/concat/axis:output:0*
N*
T0*
_output_shapes
:
DiscreteValuedHead/ReshapeReshape!DiscreteValuedHead/linear/Add:z:0"DiscreteValuedHead/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3v
DiscreteValuedHead/CastCast!discretevaluedhead_shape_1_114950*

DstT0*

SrcT0*
_output_shapes
:3p
&DiscreteValuedHead/assert_shapes/ShapeConst*
_output_shapes
:*
dtype0*
valueB:3{
(DiscreteValuedHead/assert_shapes/Shape_1Shape#DiscreteValuedHead/Reshape:output:0*
T0*
_output_shapes
:~
4DiscreteValuedHead/assert_shapes/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6DiscreteValuedHead/assert_shapes/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6DiscreteValuedHead/assert_shapes/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ø
.DiscreteValuedHead/assert_shapes/strided_sliceStridedSlice1DiscreteValuedHead/assert_shapes/Shape_1:output:0=DiscreteValuedHead/assert_shapes/strided_slice/stack:output:0?DiscreteValuedHead/assert_shapes/strided_slice/stack_1:output:0?DiscreteValuedHead/assert_shapes/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4DiscreteValuedHead/assert_shapes/assert_rank_in/rankConst*
_output_shapes
: *
dtype0*
value	B : x
6DiscreteValuedHead/assert_shapes/assert_rank_in/rank_1Const*
_output_shapes
: *
dtype0*
value	B :
5DiscreteValuedHead/assert_shapes/assert_rank_in/ShapeConst*
_output_shapes
:*
dtype0*
valueB:3|
^DiscreteValuedHead/assert_shapes/assert_rank_in/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 ~
`DiscreteValuedHead/assert_shapes/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp*
_output_shapes
 m
ODiscreteValuedHead/assert_shapes/assert_rank_in/static_checks_determined_all_okNoOp*
_output_shapes
 
DiscreteValuedHead/group_depsNoOpP^DiscreteValuedHead/assert_shapes/assert_rank_in/static_checks_determined_all_ok*
_output_shapes
 É
gstochastic_mean_head/DiscreteValuedDistribution/mean/DiscreteValuedDistribution/probs_parameter/SoftmaxSoftmax#DiscreteValuedHead/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
8stochastic_mean_head/DiscreteValuedDistribution/mean/mulMulqstochastic_mean_head/DiscreteValuedDistribution/mean/DiscreteValuedDistribution/probs_parameter/Softmax:softmax:0DiscreteValuedHead/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
Jstochastic_mean_head/DiscreteValuedDistribution/mean/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
8stochastic_mean_head/DiscreteValuedDistribution/mean/SumSum<stochastic_mean_head/DiscreteValuedDistribution/mean/mul:z:0Sstochastic_mean_head/DiscreteValuedDistribution/mean/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentityAstochastic_mean_head/DiscreteValuedDistribution/mean/Sum:output:0^NoOp*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
NoOpNoOp-^DiscreteValuedHead/linear/Add/ReadVariableOp0^DiscreteValuedHead/linear/MatMul/ReadVariableOp:^feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp>^feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp0^feedforward_mlp_torso/linear/Add/ReadVariableOp3^feedforward_mlp_torso/linear/MatMul/ReadVariableOp6^feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp9^feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp6^feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp9^feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ·:ÿÿÿÿÿÿÿÿÿÀ: : : : : : : : : : :32\
,DiscreteValuedHead/linear/Add/ReadVariableOp,DiscreteValuedHead/linear/Add/ReadVariableOp2b
/DiscreteValuedHead/linear/MatMul/ReadVariableOp/DiscreteValuedHead/linear/MatMul/ReadVariableOp2v
9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp9feedforward_mlp_torso/layer_norm/batchnorm/ReadVariableOp2~
=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp=feedforward_mlp_torso/layer_norm/batchnorm/mul/ReadVariableOp2b
/feedforward_mlp_torso/linear/Add/ReadVariableOp/feedforward_mlp_torso/linear/Add/ReadVariableOp2h
2feedforward_mlp_torso/linear/MatMul/ReadVariableOp2feedforward_mlp_torso/linear/MatMul/ReadVariableOp2n
5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp5feedforward_mlp_torso/mlp/linear_0/Add/ReadVariableOp2t
8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp8feedforward_mlp_torso/mlp/linear_0/MatMul/ReadVariableOp2n
5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp5feedforward_mlp_torso/mlp/linear_1/Add/ReadVariableOp2t
8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp8feedforward_mlp_torso/mlp/linear_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
 
_user_specified_nameargs_0:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameargs_1: 

_output_shapes
:3"ÛJ
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:µ
l

_variables
_trainable_variables
__call__
_module

signatures"
acme_snapshot
g
0
1
2
	3

4
5
6
7
8
9"
trackable_tuple_wrapper
g
0
1
2
	3

4
5
6
7
8
9"
trackable_tuple_wrapper
Å2Â
__inference___call___115008¢
²
FullArgSpec
args
jself
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Á2¾
!__inference_wrapped_module_115150
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
signature_map
-:+2feedforward_mlp_torso/linear/b
2:0
÷2feedforward_mlp_torso/linear/w
6:42'feedforward_mlp_torso/layer_norm/offset
5:32&feedforward_mlp_torso/layer_norm/scale
3:12$feedforward_mlp_torso/mlp/linear_0/b
8:6
2$feedforward_mlp_torso/mlp/linear_0/w
3:12$feedforward_mlp_torso/mlp/linear_1/b
8:6
2$feedforward_mlp_torso/mlp/linear_1/w
):'32DiscreteValuedHead/linear/b
.:,	32DiscreteValuedHead/linear/w
	J
Const
__inference___call___115008x	
S¢P
I¢F
!
args_0ÿÿÿÿÿÿÿÿÿ·
!
args_1ÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ
!__inference_wrapped_module_115150x	
S¢P
I¢F
!
args_0ÿÿÿÿÿÿÿÿÿ·
!
args_1ÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ