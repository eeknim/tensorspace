
Ī,¤,
:
Add
x"T
y"T
z"T"
Ttype:
2	
ī
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ģ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ō
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ī
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint’’’’’’’’’"	
Ttype"
TItype0	:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.12v1.10.0-12-g4dcfddc5d1Ó¶
z
MyInputPlaceholder*
dtype0*/
_output_shapes
:’’’’’’’’’  *$
shape:’’’’’’’’’  
F
yPlaceholder*
shape:*
dtype0*
_output_shapes
:
U
one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
O
one_hot/depthConst*
value	B :
*
dtype0*
_output_shapes
: 

one_hotOneHotyone_hot/depthone_hot/on_valueone_hot/off_value*
T0*
TI0*
axis’’’’’’’’’*
_output_shapes
:
o
truncated_normal/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
Z
truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
\
truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢĢ=
¢
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*

seed *
T0*
dtype0*
seed2 *&
_output_shapes
:

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*&
_output_shapes
:*
T0
u
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0*&
_output_shapes
:

Variable
VariableV2*
shape:*
shared_name *
dtype0*
	container *&
_output_shapes
:
¬
Variable/AssignAssignVariabletruncated_normal*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0
q
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*&
_output_shapes
:
_
zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
P
zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
h
zerosFillzeros/shape_as_tensorzeros/Const*
T0*

index_type0*
_output_shapes
:
v

Variable_1
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 

Variable_1/AssignAssign
Variable_1zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_1
k
Variable_1/readIdentity
Variable_1*
_output_shapes
:*
T0*
_class
loc:@Variable_1
Ń
Conv2DConv2DMyInputVariable/read*
paddingVALID*/
_output_shapes
:’’’’’’’’’*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
]
addAddConv2DVariable_1/read*
T0*/
_output_shapes
:’’’’’’’’’
Q

MyConv2D_1Reluadd*
T0*/
_output_shapes
:’’’’’’’’’
“
MyMaxPooling2D_1MaxPool
MyConv2D_1*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:’’’’’’’’’
q
truncated_normal_1/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
\
truncated_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_1/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢĢ=
¦
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
dtype0*
seed2 *&
_output_shapes
:*

seed *
T0

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0*&
_output_shapes
:
{
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0*&
_output_shapes
:


Variable_2
VariableV2*
shape:*
shared_name *
dtype0*
	container *&
_output_shapes
:
“
Variable_2/AssignAssign
Variable_2truncated_normal_1*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_2
w
Variable_2/readIdentity
Variable_2*&
_output_shapes
:*
T0*
_class
loc:@Variable_2
a
zeros_1/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
R
zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
zeros_1Fillzeros_1/shape_as_tensorzeros_1/Const*
T0*

index_type0*
_output_shapes
:
v

Variable_3
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:

Variable_3/AssignAssign
Variable_3zeros_1*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:
k
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3*
_output_shapes
:
Ž
Conv2D_1Conv2DMyMaxPooling2D_1Variable_2/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:’’’’’’’’’

*
	dilations

a
add_1AddConv2D_1Variable_3/read*
T0*/
_output_shapes
:’’’’’’’’’


S

MyConv2D_2Reluadd_1*/
_output_shapes
:’’’’’’’’’

*
T0
“
MyMaxPooling2D_2MaxPool
MyConv2D_2*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:’’’’’’’’’*
T0
e
Flatten/flatten/ShapeShapeMyMaxPooling2D_2*
T0*
out_type0*
_output_shapes
:
m
#Flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
j
Flatten/flatten/Reshape/shape/1Const*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0

Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N

Flatten/flatten/ReshapeReshapeMyMaxPooling2D_2Flatten/flatten/Reshape/shape*(
_output_shapes
:’’’’’’’’’*
T0*
Tshape0
i
truncated_normal_2/shapeConst*
valueB"  x   *
dtype0*
_output_shapes
:
\
truncated_normal_2/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_2/stddevConst*
_output_shapes
: *
valueB
 *ĶĢĢ=*
dtype0

"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
dtype0*
seed2 *
_output_shapes
:	x*

seed *
T0

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
_output_shapes
:	x*
T0
t
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
_output_shapes
:	x*
T0


Variable_4
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:	x*
shape:	x
­
Variable_4/AssignAssign
Variable_4truncated_normal_2*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	x
p
Variable_4/readIdentity
Variable_4*
_class
loc:@Variable_4*
_output_shapes
:	x*
T0
a
zeros_2/shape_as_tensorConst*
valueB:x*
dtype0*
_output_shapes
:
R
zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
zeros_2Fillzeros_2/shape_as_tensorzeros_2/Const*
T0*

index_type0*
_output_shapes
:x
v

Variable_5
VariableV2*
dtype0*
	container *
_output_shapes
:x*
shape:x*
shared_name 

Variable_5/AssignAssign
Variable_5zeros_2*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
k
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5*
_output_shapes
:x

MatMulMatMulFlatten/flatten/ReshapeVariable_4/read*
transpose_a( *'
_output_shapes
:’’’’’’’’’x*
transpose_b( *
T0
W
add_2AddMatMulVariable_5/read*
T0*'
_output_shapes
:’’’’’’’’’x
J
	MyDense_1Reluadd_2*'
_output_shapes
:’’’’’’’’’x*
T0
i
truncated_normal_3/shapeConst*
valueB"x   T   *
dtype0*
_output_shapes
:
\
truncated_normal_3/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
^
truncated_normal_3/stddevConst*
valueB
 *ĶĢĢ=*
dtype0*
_output_shapes
: 

"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
T0*
dtype0*
seed2 *
_output_shapes

:xT*

seed 

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
_output_shapes

:xT*
T0
s
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
_output_shapes

:xT*
T0
~

Variable_6
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes

:xT*
shape
:xT
¬
Variable_6/AssignAssign
Variable_6truncated_normal_3*
_output_shapes

:xT*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(
o
Variable_6/readIdentity
Variable_6*
T0*
_class
loc:@Variable_6*
_output_shapes

:xT
a
zeros_3/shape_as_tensorConst*
valueB:T*
dtype0*
_output_shapes
:
R
zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
zeros_3Fillzeros_3/shape_as_tensorzeros_3/Const*

index_type0*
_output_shapes
:T*
T0
v

Variable_7
VariableV2*
	container *
_output_shapes
:T*
shape:T*
shared_name *
dtype0

Variable_7/AssignAssign
Variable_7zeros_3*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:T
k
Variable_7/readIdentity
Variable_7*
_class
loc:@Variable_7*
_output_shapes
:T*
T0

MatMul_1MatMul	MyDense_1Variable_6/read*
transpose_a( *'
_output_shapes
:’’’’’’’’’T*
transpose_b( *
T0
Y
add_3AddMatMul_1Variable_7/read*
T0*'
_output_shapes
:’’’’’’’’’T
J
	MyDense_2Reluadd_3*'
_output_shapes
:’’’’’’’’’T*
T0
i
truncated_normal_4/shapeConst*
valueB"T   
   *
dtype0*
_output_shapes
:
\
truncated_normal_4/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_4/stddevConst*
_output_shapes
: *
valueB
 *ĶĢĢ=*
dtype0

"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*
dtype0*
seed2 *
_output_shapes

:T
*

seed *
T0

truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
T0*
_output_shapes

:T

s
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*
_output_shapes

:T
*
T0
~

Variable_8
VariableV2*
	container *
_output_shapes

:T
*
shape
:T
*
shared_name *
dtype0
¬
Variable_8/AssignAssign
Variable_8truncated_normal_4*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:T

o
Variable_8/readIdentity
Variable_8*
_output_shapes

:T
*
T0*
_class
loc:@Variable_8
a
zeros_4/shape_as_tensorConst*
_output_shapes
:*
valueB:
*
dtype0
R
zeros_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
n
zeros_4Fillzeros_4/shape_as_tensorzeros_4/Const*

index_type0*
_output_shapes
:
*
T0
v

Variable_9
VariableV2*
	container *
_output_shapes
:
*
shape:
*
shared_name *
dtype0

Variable_9/AssignAssign
Variable_9zeros_4*
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
k
Variable_9/readIdentity
Variable_9*
_class
loc:@Variable_9*
_output_shapes
:
*
T0

MatMul_2MatMul	MyDense_2Variable_8/read*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
*
transpose_b( 
Y
add_4AddMatMul_2Variable_9/read*'
_output_shapes
:’’’’’’’’’
*
T0
h
&softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0*
_output_shapes
: 
l
'softmax_cross_entropy_with_logits/ShapeShapeadd_4*
out_type0*
_output_shapes
:*
T0
j
(softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
n
)softmax_cross_entropy_with_logits/Shape_1Shapeadd_4*
T0*
out_type0*
_output_shapes
:
i
'softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
 
%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 

-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N*
_output_shapes
:
v
,softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ź
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
_output_shapes
:*
T0*
Index0

1softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
o
-softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ł
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
®
)softmax_cross_entropy_with_logits/ReshapeReshapeadd_4(softmax_cross_entropy_with_logits/concat*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0
Z
(softmax_cross_entropy_with_logits/Rank_2Rankone_hot*
_output_shapes
: *
T0
y
)softmax_cross_entropy_with_logits/Shape_2Shapeone_hot*#
_output_shapes
:’’’’’’’’’*
T0*
out_type0
k
)softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
value	B :*
dtype0
¤
'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 

/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*
T0*

axis *
N*
_output_shapes
:
x
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
š
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
_output_shapes
:*
T0*
Index0

3softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
q
/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
“
+softmax_cross_entropy_with_logits/Reshape_1Reshapeone_hot*softmax_cross_entropy_with_logits/concat_1*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0*
Tshape0
ä
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*?
_output_shapes-
+:’’’’’’’’’:’’’’’’’’’’’’’’’’’’*
T0
k
)softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
value	B :*
dtype0
¢
'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 
y
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:

.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N*
_output_shapes
:
ī
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
T0*
Index0*
_output_shapes
:
Ą
+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
MeanMean+softmax_cross_entropy_with_logits/Reshape_2Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0

gradients/Mean_grad/ShapeShape+softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:’’’’’’’’’

gradients/Mean_grad/Shape_1Shape+softmax_cross_entropy_with_logits/Reshape_2*
_output_shapes
:*
T0*
out_type0
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:’’’’’’’’’
”
@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
_output_shapes
:*
T0*
out_type0
č
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truediv@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’

gradients/zeros_like	ZerosLike#softmax_cross_entropy_with_logits:1*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0

?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:’’’’’’’’’
Ų
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Æ
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
³
4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0

=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*'
_output_shapes
:’’’’’’’’’*

Tdim0*
T0
ķ
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
¹
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
Ó
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*G
_class=
;9loc:@gradients/softmax_cross_entropy_with_logits_grad/mul*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0
Ł
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0

>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapeadd_4*
T0*
out_type0*
_output_shapes
:

@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

b
gradients/add_4_grad/ShapeShapeMatMul_2*
T0*
out_type0*
_output_shapes
:
f
gradients/add_4_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
ŗ
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
Ķ
gradients/add_4_grad/SumSum@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*gradients/add_4_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Ń
gradients/add_4_grad/Sum_1Sum@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape,gradients/add_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
ā
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*'
_output_shapes
:’’’’’’’’’
*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape
Ū
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1*
_output_shapes
:

Ą
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyVariable_8/read*
transpose_a( *'
_output_shapes
:’’’’’’’’’T*
transpose_b(*
T0
³
 gradients/MatMul_2_grad/MatMul_1MatMul	MyDense_2-gradients/add_4_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:T
*
transpose_b( *
T0
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
ģ
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul*'
_output_shapes
:’’’’’’’’’T
é
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1*
_output_shapes

:T
*
T0

!gradients/MyDense_2_grad/ReluGradReluGrad0gradients/MatMul_2_grad/tuple/control_dependency	MyDense_2*'
_output_shapes
:’’’’’’’’’T*
T0
b
gradients/add_3_grad/ShapeShapeMatMul_1*
out_type0*
_output_shapes
:*
T0
f
gradients/add_3_grad/Shape_1Const*
valueB:T*
dtype0*
_output_shapes
:
ŗ
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
®
gradients/add_3_grad/SumSum!gradients/MyDense_2_grad/ReluGrad*gradients/add_3_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*'
_output_shapes
:’’’’’’’’’T*
T0*
Tshape0
²
gradients/add_3_grad/Sum_1Sum!gradients/MyDense_2_grad/ReluGrad,gradients/add_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:T
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
ā
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape*'
_output_shapes
:’’’’’’’’’T
Ū
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1*
_output_shapes
:T
Ą
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyVariable_6/read*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’x*
transpose_b(
³
 gradients/MatMul_1_grad/MatMul_1MatMul	MyDense_1-gradients/add_3_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:xT*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
ģ
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*'
_output_shapes
:’’’’’’’’’x*
T0
é
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes

:xT

!gradients/MyDense_1_grad/ReluGradReluGrad0gradients/MatMul_1_grad/tuple/control_dependency	MyDense_1*'
_output_shapes
:’’’’’’’’’x*
T0
`
gradients/add_2_grad/ShapeShapeMatMul*
out_type0*
_output_shapes
:*
T0
f
gradients/add_2_grad/Shape_1Const*
_output_shapes
:*
valueB:x*
dtype0
ŗ
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
®
gradients/add_2_grad/SumSum!gradients/MyDense_1_grad/ReluGrad*gradients/add_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*'
_output_shapes
:’’’’’’’’’x*
T0*
Tshape0
²
gradients/add_2_grad/Sum_1Sum!gradients/MyDense_1_grad/ReluGrad,gradients/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
_output_shapes
:x*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
ā
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape*'
_output_shapes
:’’’’’’’’’x
Ū
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
_output_shapes
:x*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
æ
gradients/MatMul_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyVariable_4/read*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b(*
T0
Ą
gradients/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape-gradients/add_2_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	x*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
å
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:’’’’’’’’’
ā
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes
:	x*
T0
|
,gradients/Flatten/flatten/Reshape_grad/ShapeShapeMyMaxPooling2D_2*
_output_shapes
:*
T0*
out_type0
ß
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:’’’’’’’’’

+gradients/MyMaxPooling2D_2_grad/MaxPoolGradMaxPoolGrad
MyConv2D_2MyMaxPooling2D_2.gradients/Flatten/flatten/Reshape_grad/Reshape*/
_output_shapes
:’’’’’’’’’

*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
”
"gradients/MyConv2D_2_grad/ReluGradReluGrad+gradients/MyMaxPooling2D_2_grad/MaxPoolGrad
MyConv2D_2*/
_output_shapes
:’’’’’’’’’

*
T0
b
gradients/add_1_grad/ShapeShapeConv2D_1*
T0*
out_type0*
_output_shapes
:
f
gradients/add_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ŗ
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Æ
gradients/add_1_grad/SumSum"gradients/MyConv2D_2_grad/ReluGrad*gradients/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
„
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*/
_output_shapes
:’’’’’’’’’

*
T0*
Tshape0
³
gradients/add_1_grad/Sum_1Sum"gradients/MyConv2D_2_grad/ReluGrad,gradients/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
ź
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape*/
_output_shapes
:’’’’’’’’’


Ū
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:

gradients/Conv2D_1_grad/ShapeNShapeNMyMaxPooling2D_1Variable_2/read* 
_output_shapes
::*
T0*
out_type0*
N
Ė
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_2/read-gradients/add_1_grad/tuple/control_dependency*
paddingVALID*/
_output_shapes
:’’’’’’’’’*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ē
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterMyMaxPooling2D_1 gradients/Conv2D_1_grad/ShapeN:1-gradients/add_1_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:

(gradients/Conv2D_1_grad/tuple/group_depsNoOp-^gradients/Conv2D_1_grad/Conv2DBackpropFilter,^gradients/Conv2D_1_grad/Conv2DBackpropInput

0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput*/
_output_shapes
:’’’’’’’’’*
T0

2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*&
_output_shapes
:*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter

+gradients/MyMaxPooling2D_1_grad/MaxPoolGradMaxPoolGrad
MyConv2D_1MyMaxPooling2D_10gradients/Conv2D_1_grad/tuple/control_dependency*/
_output_shapes
:’’’’’’’’’*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
”
"gradients/MyConv2D_1_grad/ReluGradReluGrad+gradients/MyMaxPooling2D_1_grad/MaxPoolGrad
MyConv2D_1*
T0*/
_output_shapes
:’’’’’’’’’
^
gradients/add_grad/ShapeShapeConv2D*
out_type0*
_output_shapes
:*
T0
d
gradients/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
“
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
«
gradients/add_grad/SumSum"gradients/MyConv2D_1_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:’’’’’’’’’
Æ
gradients/add_grad/Sum_1Sum"gradients/MyConv2D_1_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
ā
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*/
_output_shapes
:’’’’’’’’’
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
_output_shapes
:*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1

gradients/Conv2D_grad/ShapeNShapeNMyInputVariable/read* 
_output_shapes
::*
T0*
out_type0*
N
Ć
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/read+gradients/add_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:’’’’’’’’’  *
	dilations
*
T0
ø
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterMyInputgradients/Conv2D_grad/ShapeN:1+gradients/add_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:

&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput

.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:’’’’’’’’’  *
T0

0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
{
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
_class
loc:@Variable*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
«
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
g
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*
_class
loc:@Variable
{
beta2_power/initial_valueConst*
valueB
 *w¾?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container 
«
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
g
beta2_power/readIdentitybeta2_power*
_output_shapes
: *
T0*
_class
loc:@Variable
”
Variable/Adam/Initializer/zerosConst*&
_output_shapes
:*%
valueB*    *
_class
loc:@Variable*
dtype0
®
Variable/Adam
VariableV2*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name *
_class
loc:@Variable
Å
Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
:
{
Variable/Adam/readIdentityVariable/Adam*&
_output_shapes
:*
T0*
_class
loc:@Variable
£
!Variable/Adam_1/Initializer/zerosConst*%
valueB*    *
_class
loc:@Variable*
dtype0*&
_output_shapes
:
°
Variable/Adam_1
VariableV2*
shape:*
dtype0*&
_output_shapes
:*
shared_name *
_class
loc:@Variable*
	container 
Ė
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
:

Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_class
loc:@Variable*&
_output_shapes
:

!Variable_1/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_1*
dtype0*
_output_shapes
:

Variable_1/Adam
VariableV2*
_class
loc:@Variable_1*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
Į
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
u
Variable_1/Adam/readIdentityVariable_1/Adam*
_output_shapes
:*
T0*
_class
loc:@Variable_1

#Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_1*
dtype0*
_output_shapes
:

Variable_1/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_1*
	container *
shape:*
dtype0*
_output_shapes
:
Ē
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
y
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_class
loc:@Variable_1*
_output_shapes
:
©
1Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*%
valueB"            *
_class
loc:@Variable_2*
dtype0

'Variable_2/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_2*
dtype0*
_output_shapes
: 
ē
!Variable_2/Adam/Initializer/zerosFill1Variable_2/Adam/Initializer/zeros/shape_as_tensor'Variable_2/Adam/Initializer/zeros/Const*

index_type0*
_class
loc:@Variable_2*&
_output_shapes
:*
T0
²
Variable_2/Adam
VariableV2*&
_output_shapes
:*
shared_name *
_class
loc:@Variable_2*
	container *
shape:*
dtype0
Ķ
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*&
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(

Variable_2/Adam/readIdentityVariable_2/Adam*
_class
loc:@Variable_2*&
_output_shapes
:*
T0
«
3Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"            *
_class
loc:@Variable_2*
dtype0*
_output_shapes
:

)Variable_2/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable_2*
dtype0
ķ
#Variable_2/Adam_1/Initializer/zerosFill3Variable_2/Adam_1/Initializer/zeros/shape_as_tensor)Variable_2/Adam_1/Initializer/zeros/Const*&
_output_shapes
:*
T0*

index_type0*
_class
loc:@Variable_2
“
Variable_2/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_2*
	container *
shape:*
dtype0*&
_output_shapes
:
Ó
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0

Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0*
_class
loc:@Variable_2*&
_output_shapes
:

!Variable_3/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_3*
dtype0*
_output_shapes
:

Variable_3/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@Variable_3*
	container 
Į
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:
u
Variable_3/Adam/readIdentityVariable_3/Adam*
T0*
_class
loc:@Variable_3*
_output_shapes
:

#Variable_3/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_3*
dtype0*
_output_shapes
:

Variable_3/Adam_1
VariableV2*
_output_shapes
:*
shared_name *
_class
loc:@Variable_3*
	container *
shape:*
dtype0
Ē
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:
y
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
_output_shapes
:*
T0*
_class
loc:@Variable_3
”
1Variable_4/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"  x   *
_class
loc:@Variable_4*
dtype0*
_output_shapes
:

'Variable_4/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable_4
ą
!Variable_4/Adam/Initializer/zerosFill1Variable_4/Adam/Initializer/zeros/shape_as_tensor'Variable_4/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_4*
_output_shapes
:	x
¤
Variable_4/Adam
VariableV2*
	container *
shape:	x*
dtype0*
_output_shapes
:	x*
shared_name *
_class
loc:@Variable_4
Ę
Variable_4/Adam/AssignAssignVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	x*
use_locking(
z
Variable_4/Adam/readIdentityVariable_4/Adam*
_class
loc:@Variable_4*
_output_shapes
:	x*
T0
£
3Variable_4/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"  x   *
_class
loc:@Variable_4*
dtype0*
_output_shapes
:

)Variable_4/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_4*
dtype0*
_output_shapes
: 
ę
#Variable_4/Adam_1/Initializer/zerosFill3Variable_4/Adam_1/Initializer/zeros/shape_as_tensor)Variable_4/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_4*
_output_shapes
:	x
¦
Variable_4/Adam_1
VariableV2*
shape:	x*
dtype0*
_output_shapes
:	x*
shared_name *
_class
loc:@Variable_4*
	container 
Ģ
Variable_4/Adam_1/AssignAssignVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	x
~
Variable_4/Adam_1/readIdentityVariable_4/Adam_1*
T0*
_class
loc:@Variable_4*
_output_shapes
:	x

!Variable_5/Adam/Initializer/zerosConst*
valueBx*    *
_class
loc:@Variable_5*
dtype0*
_output_shapes
:x

Variable_5/Adam
VariableV2*
shared_name *
_class
loc:@Variable_5*
	container *
shape:x*
dtype0*
_output_shapes
:x
Į
Variable_5/Adam/AssignAssignVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
u
Variable_5/Adam/readIdentityVariable_5/Adam*
_class
loc:@Variable_5*
_output_shapes
:x*
T0

#Variable_5/Adam_1/Initializer/zerosConst*
valueBx*    *
_class
loc:@Variable_5*
dtype0*
_output_shapes
:x

Variable_5/Adam_1
VariableV2*
dtype0*
_output_shapes
:x*
shared_name *
_class
loc:@Variable_5*
	container *
shape:x
Ē
Variable_5/Adam_1/AssignAssignVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
y
Variable_5/Adam_1/readIdentityVariable_5/Adam_1*
T0*
_class
loc:@Variable_5*
_output_shapes
:x
”
1Variable_6/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"x   T   *
_class
loc:@Variable_6*
dtype0*
_output_shapes
:

'Variable_6/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable_6*
dtype0
ß
!Variable_6/Adam/Initializer/zerosFill1Variable_6/Adam/Initializer/zeros/shape_as_tensor'Variable_6/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_6*
_output_shapes

:xT
¢
Variable_6/Adam
VariableV2*
_output_shapes

:xT*
shared_name *
_class
loc:@Variable_6*
	container *
shape
:xT*
dtype0
Å
Variable_6/Adam/AssignAssignVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:xT*
use_locking(*
T0
y
Variable_6/Adam/readIdentityVariable_6/Adam*
T0*
_class
loc:@Variable_6*
_output_shapes

:xT
£
3Variable_6/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"x   T   *
_class
loc:@Variable_6*
dtype0*
_output_shapes
:

)Variable_6/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_6*
dtype0*
_output_shapes
: 
å
#Variable_6/Adam_1/Initializer/zerosFill3Variable_6/Adam_1/Initializer/zeros/shape_as_tensor)Variable_6/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_6*
_output_shapes

:xT
¤
Variable_6/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_6*
	container *
shape
:xT*
dtype0*
_output_shapes

:xT
Ė
Variable_6/Adam_1/AssignAssignVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:xT*
use_locking(*
T0
}
Variable_6/Adam_1/readIdentityVariable_6/Adam_1*
_output_shapes

:xT*
T0*
_class
loc:@Variable_6

!Variable_7/Adam/Initializer/zerosConst*
valueBT*    *
_class
loc:@Variable_7*
dtype0*
_output_shapes
:T

Variable_7/Adam
VariableV2*
shape:T*
dtype0*
_output_shapes
:T*
shared_name *
_class
loc:@Variable_7*
	container 
Į
Variable_7/Adam/AssignAssignVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:T
u
Variable_7/Adam/readIdentityVariable_7/Adam*
T0*
_class
loc:@Variable_7*
_output_shapes
:T

#Variable_7/Adam_1/Initializer/zerosConst*
valueBT*    *
_class
loc:@Variable_7*
dtype0*
_output_shapes
:T

Variable_7/Adam_1
VariableV2*
dtype0*
_output_shapes
:T*
shared_name *
_class
loc:@Variable_7*
	container *
shape:T
Ē
Variable_7/Adam_1/AssignAssignVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
_output_shapes
:T*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(
y
Variable_7/Adam_1/readIdentityVariable_7/Adam_1*
T0*
_class
loc:@Variable_7*
_output_shapes
:T

!Variable_8/Adam/Initializer/zerosConst*
valueBT
*    *
_class
loc:@Variable_8*
dtype0*
_output_shapes

:T

¢
Variable_8/Adam
VariableV2*
_class
loc:@Variable_8*
	container *
shape
:T
*
dtype0*
_output_shapes

:T
*
shared_name 
Å
Variable_8/Adam/AssignAssignVariable_8/Adam!Variable_8/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:T

y
Variable_8/Adam/readIdentityVariable_8/Adam*
_class
loc:@Variable_8*
_output_shapes

:T
*
T0

#Variable_8/Adam_1/Initializer/zerosConst*
valueBT
*    *
_class
loc:@Variable_8*
dtype0*
_output_shapes

:T

¤
Variable_8/Adam_1
VariableV2*
dtype0*
_output_shapes

:T
*
shared_name *
_class
loc:@Variable_8*
	container *
shape
:T

Ė
Variable_8/Adam_1/AssignAssignVariable_8/Adam_1#Variable_8/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:T
*
use_locking(*
T0*
_class
loc:@Variable_8
}
Variable_8/Adam_1/readIdentityVariable_8/Adam_1*
_output_shapes

:T
*
T0*
_class
loc:@Variable_8

!Variable_9/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:
*
valueB
*    *
_class
loc:@Variable_9

Variable_9/Adam
VariableV2*
_class
loc:@Variable_9*
	container *
shape:
*
dtype0*
_output_shapes
:
*
shared_name 
Į
Variable_9/Adam/AssignAssignVariable_9/Adam!Variable_9/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@Variable_9
u
Variable_9/Adam/readIdentityVariable_9/Adam*
_output_shapes
:
*
T0*
_class
loc:@Variable_9

#Variable_9/Adam_1/Initializer/zerosConst*
valueB
*    *
_class
loc:@Variable_9*
dtype0*
_output_shapes
:


Variable_9/Adam_1
VariableV2*
_class
loc:@Variable_9*
	container *
shape:
*
dtype0*
_output_shapes
:
*
shared_name 
Ē
Variable_9/Adam_1/AssignAssignVariable_9/Adam_1#Variable_9/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes
:
*
use_locking(
y
Variable_9/Adam_1/readIdentityVariable_9/Adam_1*
T0*
_class
loc:@Variable_9*
_output_shapes
:

W
Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w¾?
Q
Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
Ś
Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *&
_output_shapes
:*
use_locking( *
T0*
_class
loc:@Variable
Õ
 Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_1*
use_nesterov( *
_output_shapes
:
ę
 Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( *&
_output_shapes
:
×
 Adam/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_1_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*
_class
loc:@Variable_3
Ż
 Adam/update_Variable_4/ApplyAdam	ApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:	x*
use_locking( *
T0*
_class
loc:@Variable_4
×
 Adam/update_Variable_5/ApplyAdam	ApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_5*
use_nesterov( *
_output_shapes
:x
Ž
 Adam/update_Variable_6/ApplyAdam	ApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_6*
use_nesterov( *
_output_shapes

:xT*
use_locking( 
×
 Adam/update_Variable_7/ApplyAdam	ApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_3_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_7*
use_nesterov( *
_output_shapes
:T*
use_locking( 
Ž
 Adam/update_Variable_8/ApplyAdam	ApplyAdam
Variable_8Variable_8/AdamVariable_8/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_8*
use_nesterov( *
_output_shapes

:T

×
 Adam/update_Variable_9/ApplyAdam	ApplyAdam
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_4_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_9*
use_nesterov( *
_output_shapes
:

Ē
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@Variable

Adam/AssignAssignbeta1_powerAdam/mul*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
É

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking( 

AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
v
ArgMaxArgMaxadd_4ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0
T
ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
q
ArgMax_1ArgMaxone_hotArgMax_1/dimension*
output_type0	*
_output_shapes
:*

Tidx0*
T0
C
EqualEqualArgMaxArgMax_1*
T0	*
_output_shapes
:
E
CastCastEqual*

DstT0*
_output_shapes
:*

SrcT0

3
RankRankCast*
T0*
_output_shapes
: 
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:’’’’’’’’’*

Tidx0
Y
Mean_1MeanCastrange*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
M
	MySoftMaxSoftmaxadd_4*
T0*'
_output_shapes
:’’’’’’’’’


initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^Variable_4/Adam/Assign^Variable_4/Adam_1/Assign^Variable_4/Assign^Variable_5/Adam/Assign^Variable_5/Adam_1/Assign^Variable_5/Assign^Variable_6/Adam/Assign^Variable_6/Adam_1/Assign^Variable_6/Assign^Variable_7/Adam/Assign^Variable_7/Adam_1/Assign^Variable_7/Assign^Variable_8/Adam/Assign^Variable_8/Adam_1/Assign^Variable_8/Assign^Variable_9/Adam/Assign^Variable_9/Adam_1/Assign^Variable_9/Assign^beta1_power/Assign^beta2_power/Assign
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_df1e396676564e5daa7e9667ab774ef2/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ö
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
: *
value’Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power
£
save/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power*.
dtypes$
"2 

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
_output_shapes
:*
T0*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
Ł
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
: *
value’Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power
¦
save/RestoreV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
®
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 
¦
save/AssignAssignVariablesave/RestoreV2*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable
Æ
save/Assign_1AssignVariable/Adamsave/RestoreV2:1*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable
±
save/Assign_2AssignVariable/Adam_1save/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
:
¢
save/Assign_3Assign
Variable_1save/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
§
save/Assign_4AssignVariable_1/Adamsave/RestoreV2:4*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
©
save/Assign_5AssignVariable_1/Adam_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
®
save/Assign_6Assign
Variable_2save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
:
³
save/Assign_7AssignVariable_2/Adamsave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
:
µ
save/Assign_8AssignVariable_2/Adam_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
:
¢
save/Assign_9Assign
Variable_3save/RestoreV2:9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_3
©
save/Assign_10AssignVariable_3/Adamsave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:
«
save/Assign_11AssignVariable_3/Adam_1save/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_3
©
save/Assign_12Assign
Variable_4save/RestoreV2:12*
validate_shape(*
_output_shapes
:	x*
use_locking(*
T0*
_class
loc:@Variable_4
®
save/Assign_13AssignVariable_4/Adamsave/RestoreV2:13*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	x*
use_locking(*
T0
°
save/Assign_14AssignVariable_4/Adam_1save/RestoreV2:14*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	x
¤
save/Assign_15Assign
Variable_5save/RestoreV2:15*
_output_shapes
:x*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(
©
save/Assign_16AssignVariable_5/Adamsave/RestoreV2:16*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
«
save/Assign_17AssignVariable_5/Adam_1save/RestoreV2:17*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x*
use_locking(
Ø
save/Assign_18Assign
Variable_6save/RestoreV2:18*
_output_shapes

:xT*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(
­
save/Assign_19AssignVariable_6/Adamsave/RestoreV2:19*
validate_shape(*
_output_shapes

:xT*
use_locking(*
T0*
_class
loc:@Variable_6
Æ
save/Assign_20AssignVariable_6/Adam_1save/RestoreV2:20*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:xT*
use_locking(
¤
save/Assign_21Assign
Variable_7save/RestoreV2:21*
validate_shape(*
_output_shapes
:T*
use_locking(*
T0*
_class
loc:@Variable_7
©
save/Assign_22AssignVariable_7/Adamsave/RestoreV2:22*
validate_shape(*
_output_shapes
:T*
use_locking(*
T0*
_class
loc:@Variable_7
«
save/Assign_23AssignVariable_7/Adam_1save/RestoreV2:23*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:T
Ø
save/Assign_24Assign
Variable_8save/RestoreV2:24*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:T
*
use_locking(
­
save/Assign_25AssignVariable_8/Adamsave/RestoreV2:25*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:T
*
use_locking(
Æ
save/Assign_26AssignVariable_8/Adam_1save/RestoreV2:26*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:T

¤
save/Assign_27Assign
Variable_9save/RestoreV2:27*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@Variable_9
©
save/Assign_28AssignVariable_9/Adamsave/RestoreV2:28*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@Variable_9
«
save/Assign_29AssignVariable_9/Adam_1save/RestoreV2:29*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes
:


save/Assign_30Assignbeta1_powersave/RestoreV2:30*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_31Assignbeta2_powersave/RestoreV2:31*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
®
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"ę
trainable_variablesĪĖ
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02zeros:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	zeros_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
A
Variable_5:0Variable_5/AssignVariable_5/read:02	zeros_2:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:08
A
Variable_7:0Variable_7/AssignVariable_7/read:02	zeros_3:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_4:08
A
Variable_9:0Variable_9/AssignVariable_9/read:02	zeros_4:08"
train_op

Adam"
	variables’
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02zeros:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	zeros_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
A
Variable_5:0Variable_5/AssignVariable_5/read:02	zeros_2:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:08
A
Variable_7:0Variable_7/AssignVariable_7/read:02	zeros_3:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_4:08
A
Variable_9:0Variable_9/AssignVariable_9/read:02	zeros_4:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
`
Variable/Adam:0Variable/Adam/AssignVariable/Adam/read:02!Variable/Adam/Initializer/zeros:0
h
Variable/Adam_1:0Variable/Adam_1/AssignVariable/Adam_1/read:02#Variable/Adam_1/Initializer/zeros:0
h
Variable_1/Adam:0Variable_1/Adam/AssignVariable_1/Adam/read:02#Variable_1/Adam/Initializer/zeros:0
p
Variable_1/Adam_1:0Variable_1/Adam_1/AssignVariable_1/Adam_1/read:02%Variable_1/Adam_1/Initializer/zeros:0
h
Variable_2/Adam:0Variable_2/Adam/AssignVariable_2/Adam/read:02#Variable_2/Adam/Initializer/zeros:0
p
Variable_2/Adam_1:0Variable_2/Adam_1/AssignVariable_2/Adam_1/read:02%Variable_2/Adam_1/Initializer/zeros:0
h
Variable_3/Adam:0Variable_3/Adam/AssignVariable_3/Adam/read:02#Variable_3/Adam/Initializer/zeros:0
p
Variable_3/Adam_1:0Variable_3/Adam_1/AssignVariable_3/Adam_1/read:02%Variable_3/Adam_1/Initializer/zeros:0
h
Variable_4/Adam:0Variable_4/Adam/AssignVariable_4/Adam/read:02#Variable_4/Adam/Initializer/zeros:0
p
Variable_4/Adam_1:0Variable_4/Adam_1/AssignVariable_4/Adam_1/read:02%Variable_4/Adam_1/Initializer/zeros:0
h
Variable_5/Adam:0Variable_5/Adam/AssignVariable_5/Adam/read:02#Variable_5/Adam/Initializer/zeros:0
p
Variable_5/Adam_1:0Variable_5/Adam_1/AssignVariable_5/Adam_1/read:02%Variable_5/Adam_1/Initializer/zeros:0
h
Variable_6/Adam:0Variable_6/Adam/AssignVariable_6/Adam/read:02#Variable_6/Adam/Initializer/zeros:0
p
Variable_6/Adam_1:0Variable_6/Adam_1/AssignVariable_6/Adam_1/read:02%Variable_6/Adam_1/Initializer/zeros:0
h
Variable_7/Adam:0Variable_7/Adam/AssignVariable_7/Adam/read:02#Variable_7/Adam/Initializer/zeros:0
p
Variable_7/Adam_1:0Variable_7/Adam_1/AssignVariable_7/Adam_1/read:02%Variable_7/Adam_1/Initializer/zeros:0
h
Variable_8/Adam:0Variable_8/Adam/AssignVariable_8/Adam/read:02#Variable_8/Adam/Initializer/zeros:0
p
Variable_8/Adam_1:0Variable_8/Adam_1/AssignVariable_8/Adam_1/read:02%Variable_8/Adam_1/Initializer/zeros:0
h
Variable_9/Adam:0Variable_9/Adam/AssignVariable_9/Adam/read:02#Variable_9/Adam/Initializer/zeros:0
p
Variable_9/Adam_1:0Variable_9/Adam_1/AssignVariable_9/Adam_1/read:02%Variable_9/Adam_1/Initializer/zeros:0*
serving_default}
1
input(
	MyInput:0’’’’’’’’’  ,
output"
MySoftMax:0’’’’’’’’’
tensorflow/serving/predict