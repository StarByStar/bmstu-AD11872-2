°2
É­
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.9.12unknown8/

"Adam/lstm_204/lstm_cell_204/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_204/lstm_cell_204/bias/v

6Adam/lstm_204/lstm_cell_204/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_204/lstm_cell_204/bias/v*
_output_shapes
:@*
dtype0
¸
.Adam/lstm_204/lstm_cell_204/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_204/lstm_cell_204/recurrent_kernel/v
±
BAdam/lstm_204/lstm_cell_204/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_204/lstm_cell_204/recurrent_kernel/v*
_output_shapes

:@*
dtype0
¥
$Adam/lstm_204/lstm_cell_204/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*5
shared_name&$Adam/lstm_204/lstm_cell_204/kernel/v

8Adam/lstm_204/lstm_cell_204/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_204/lstm_cell_204/kernel/v*
_output_shapes
:	@*
dtype0

"Adam/lstm_203/lstm_cell_203/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_203/lstm_cell_203/bias/v

6Adam/lstm_203/lstm_cell_203/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_203/lstm_cell_203/bias/v*
_output_shapes	
:*
dtype0
º
.Adam/lstm_203/lstm_cell_203/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.Adam/lstm_203/lstm_cell_203/recurrent_kernel/v
³
BAdam/lstm_203/lstm_cell_203/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_203/lstm_cell_203/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
¦
$Adam/lstm_203/lstm_cell_203/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/lstm_203/lstm_cell_203/kernel/v

8Adam/lstm_203/lstm_cell_203/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_203/lstm_cell_203/kernel/v* 
_output_shapes
:
*
dtype0

"Adam/lstm_202/lstm_cell_202/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_202/lstm_cell_202/bias/v

6Adam/lstm_202/lstm_cell_202/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_202/lstm_cell_202/bias/v*
_output_shapes	
:*
dtype0
º
.Adam/lstm_202/lstm_cell_202/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.Adam/lstm_202/lstm_cell_202/recurrent_kernel/v
³
BAdam/lstm_202/lstm_cell_202/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_202/lstm_cell_202/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
¥
$Adam/lstm_202/lstm_cell_202/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_202/lstm_cell_202/kernel/v

8Adam/lstm_202/lstm_cell_202/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_202/lstm_cell_202/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_194/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_194/bias/v
{
)Adam/dense_194/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_194/bias/v*
_output_shapes
:*
dtype0

Adam/dense_194/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_194/kernel/v

+Adam/dense_194/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_194/kernel/v*
_output_shapes

:*
dtype0

"Adam/lstm_204/lstm_cell_204/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/lstm_204/lstm_cell_204/bias/m

6Adam/lstm_204/lstm_cell_204/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_204/lstm_cell_204/bias/m*
_output_shapes
:@*
dtype0
¸
.Adam/lstm_204/lstm_cell_204/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/lstm_204/lstm_cell_204/recurrent_kernel/m
±
BAdam/lstm_204/lstm_cell_204/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_204/lstm_cell_204/recurrent_kernel/m*
_output_shapes

:@*
dtype0
¥
$Adam/lstm_204/lstm_cell_204/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*5
shared_name&$Adam/lstm_204/lstm_cell_204/kernel/m

8Adam/lstm_204/lstm_cell_204/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_204/lstm_cell_204/kernel/m*
_output_shapes
:	@*
dtype0

"Adam/lstm_203/lstm_cell_203/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_203/lstm_cell_203/bias/m

6Adam/lstm_203/lstm_cell_203/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_203/lstm_cell_203/bias/m*
_output_shapes	
:*
dtype0
º
.Adam/lstm_203/lstm_cell_203/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.Adam/lstm_203/lstm_cell_203/recurrent_kernel/m
³
BAdam/lstm_203/lstm_cell_203/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_203/lstm_cell_203/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
¦
$Adam/lstm_203/lstm_cell_203/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/lstm_203/lstm_cell_203/kernel/m

8Adam/lstm_203/lstm_cell_203/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_203/lstm_cell_203/kernel/m* 
_output_shapes
:
*
dtype0

"Adam/lstm_202/lstm_cell_202/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/lstm_202/lstm_cell_202/bias/m

6Adam/lstm_202/lstm_cell_202/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_202/lstm_cell_202/bias/m*
_output_shapes	
:*
dtype0
º
.Adam/lstm_202/lstm_cell_202/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*?
shared_name0.Adam/lstm_202/lstm_cell_202/recurrent_kernel/m
³
BAdam/lstm_202/lstm_cell_202/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_202/lstm_cell_202/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
¥
$Adam/lstm_202/lstm_cell_202/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$Adam/lstm_202/lstm_cell_202/kernel/m

8Adam/lstm_202/lstm_cell_202/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_202/lstm_cell_202/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_194/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_194/bias/m
{
)Adam/dense_194/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_194/bias/m*
_output_shapes
:*
dtype0

Adam/dense_194/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_194/kernel/m

+Adam/dense_194/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_194/kernel/m*
_output_shapes

:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

lstm_204/lstm_cell_204/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelstm_204/lstm_cell_204/bias

/lstm_204/lstm_cell_204/bias/Read/ReadVariableOpReadVariableOplstm_204/lstm_cell_204/bias*
_output_shapes
:@*
dtype0
ª
'lstm_204/lstm_cell_204/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'lstm_204/lstm_cell_204/recurrent_kernel
£
;lstm_204/lstm_cell_204/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_204/lstm_cell_204/recurrent_kernel*
_output_shapes

:@*
dtype0

lstm_204/lstm_cell_204/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*.
shared_namelstm_204/lstm_cell_204/kernel

1lstm_204/lstm_cell_204/kernel/Read/ReadVariableOpReadVariableOplstm_204/lstm_cell_204/kernel*
_output_shapes
:	@*
dtype0

lstm_203/lstm_cell_203/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_203/lstm_cell_203/bias

/lstm_203/lstm_cell_203/bias/Read/ReadVariableOpReadVariableOplstm_203/lstm_cell_203/bias*
_output_shapes	
:*
dtype0
¬
'lstm_203/lstm_cell_203/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*8
shared_name)'lstm_203/lstm_cell_203/recurrent_kernel
¥
;lstm_203/lstm_cell_203/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_203/lstm_cell_203/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm_203/lstm_cell_203/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_namelstm_203/lstm_cell_203/kernel

1lstm_203/lstm_cell_203/kernel/Read/ReadVariableOpReadVariableOplstm_203/lstm_cell_203/kernel* 
_output_shapes
:
*
dtype0

lstm_202/lstm_cell_202/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelstm_202/lstm_cell_202/bias

/lstm_202/lstm_cell_202/bias/Read/ReadVariableOpReadVariableOplstm_202/lstm_cell_202/bias*
_output_shapes	
:*
dtype0
¬
'lstm_202/lstm_cell_202/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*8
shared_name)'lstm_202/lstm_cell_202/recurrent_kernel
¥
;lstm_202/lstm_cell_202/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_202/lstm_cell_202/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm_202/lstm_cell_202/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_namelstm_202/lstm_cell_202/kernel

1lstm_202/lstm_cell_202/kernel/Read/ReadVariableOpReadVariableOplstm_202/lstm_cell_202/kernel*
_output_shapes
:	*
dtype0
t
dense_194/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_194/bias
m
"dense_194/bias/Read/ReadVariableOpReadVariableOpdense_194/bias*
_output_shapes
:*
dtype0
|
dense_194/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_194/kernel
u
$dense_194/kernel/Read/ReadVariableOpReadVariableOpdense_194/kernel*
_output_shapes

:*
dtype0

NoOpNoOp
ù^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*´^
valueª^B§^ B ^

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
Á
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator
'cell
(
state_spec*
¥
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/_random_generator* 
Á
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6_random_generator
7cell
8
state_spec*
¦
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias*
R
A0
B1
C2
D3
E4
F5
G6
H7
I8
?9
@10*
R
A0
B1
C2
D3
E4
F5
G6
H7
I8
?9
@10*
* 
°
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_3* 
6
Strace_0
Ttrace_1
Utrace_2
Vtrace_3* 
* 
 
Witer

Xbeta_1

Ybeta_2
	Zdecay
[learning_rate?mØ@mÙAmÚBmÛCmÜDmÝEmÞFmßGmàHmáImâ?vã@väAvåBvæCvçDvèEvéFvêGvëHvìIví*

\serving_default* 

A0
B1
C2*

A0
B1
C2*
* 


]states
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ctrace_0
dtrace_1
etrace_2
ftrace_3* 
6
gtrace_0
htrace_1
itrace_2
jtrace_3* 
* 
ã
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
q_random_generator
r
state_size

Akernel
Brecurrent_kernel
Cbias*
* 
* 
* 
* 

snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

xtrace_0
ytrace_1* 

ztrace_0
{trace_1* 
* 

D0
E1
F2*

D0
E1
F2*
* 
¡

|states
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

state_size

Dkernel
Erecurrent_kernel
Fbias*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 

G0
H1
I2*

G0
H1
I2*
* 
¥
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*
:
¡trace_0
¢trace_1
£trace_2
¤trace_3* 
:
¥trace_0
¦trace_1
§trace_2
¨trace_3* 
* 
ë
©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses
¯_random_generator
°
state_size

Gkernel
Hrecurrent_kernel
Ibias*
* 

?0
@1*

?0
@1*
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

¶trace_0* 

·trace_0* 
`Z
VARIABLE_VALUEdense_194/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_194/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElstm_202/lstm_cell_202/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'lstm_202/lstm_cell_202/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_202/lstm_cell_202/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElstm_203/lstm_cell_203/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'lstm_203/lstm_cell_203/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_203/lstm_cell_203/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElstm_204/lstm_cell_204/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'lstm_204/lstm_cell_204/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_204/lstm_cell_204/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

¸0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

A0
B1
C2*

A0
B1
C2*
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

¾trace_0
¿trace_1* 

Àtrace_0
Átrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

'0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

D0
E1
F2*

D0
E1
F2*
* 

Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Çtrace_0
Ètrace_1* 

Étrace_0
Êtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

70*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

G0
H1
I2*

G0
H1
I2*
* 

Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses*

Ðtrace_0
Ñtrace_1* 

Òtrace_0
Ótrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Ô	variables
Õ	keras_api

Ötotal

×count*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ö0
×1*

Ô	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_194/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_194/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/lstm_202/lstm_cell_202/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/lstm_202/lstm_cell_202/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_202/lstm_cell_202/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/lstm_203/lstm_cell_203/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/lstm_203/lstm_cell_203/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_203/lstm_cell_203/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/lstm_204/lstm_cell_204/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/lstm_204/lstm_cell_204/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_204/lstm_cell_204/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_194/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_194/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/lstm_202/lstm_cell_202/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/lstm_202/lstm_cell_202/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_202/lstm_cell_202/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/lstm_203/lstm_cell_203/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/lstm_203/lstm_cell_203/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_203/lstm_cell_203/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/lstm_204/lstm_cell_204/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE.Adam/lstm_204/lstm_cell_204/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_204/lstm_cell_204/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_202_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
¢
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_202_inputlstm_202/lstm_cell_202/kernel'lstm_202/lstm_cell_202/recurrent_kernellstm_202/lstm_cell_202/biaslstm_203/lstm_cell_203/kernel'lstm_203/lstm_cell_203/recurrent_kernellstm_203/lstm_cell_203/biaslstm_204/lstm_cell_204/kernel'lstm_204/lstm_cell_204/recurrent_kernellstm_204/lstm_cell_204/biasdense_194/kerneldense_194/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_24140498
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Å
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_194/kernel/Read/ReadVariableOp"dense_194/bias/Read/ReadVariableOp1lstm_202/lstm_cell_202/kernel/Read/ReadVariableOp;lstm_202/lstm_cell_202/recurrent_kernel/Read/ReadVariableOp/lstm_202/lstm_cell_202/bias/Read/ReadVariableOp1lstm_203/lstm_cell_203/kernel/Read/ReadVariableOp;lstm_203/lstm_cell_203/recurrent_kernel/Read/ReadVariableOp/lstm_203/lstm_cell_203/bias/Read/ReadVariableOp1lstm_204/lstm_cell_204/kernel/Read/ReadVariableOp;lstm_204/lstm_cell_204/recurrent_kernel/Read/ReadVariableOp/lstm_204/lstm_cell_204/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_194/kernel/m/Read/ReadVariableOp)Adam/dense_194/bias/m/Read/ReadVariableOp8Adam/lstm_202/lstm_cell_202/kernel/m/Read/ReadVariableOpBAdam/lstm_202/lstm_cell_202/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_202/lstm_cell_202/bias/m/Read/ReadVariableOp8Adam/lstm_203/lstm_cell_203/kernel/m/Read/ReadVariableOpBAdam/lstm_203/lstm_cell_203/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_203/lstm_cell_203/bias/m/Read/ReadVariableOp8Adam/lstm_204/lstm_cell_204/kernel/m/Read/ReadVariableOpBAdam/lstm_204/lstm_cell_204/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_204/lstm_cell_204/bias/m/Read/ReadVariableOp+Adam/dense_194/kernel/v/Read/ReadVariableOp)Adam/dense_194/bias/v/Read/ReadVariableOp8Adam/lstm_202/lstm_cell_202/kernel/v/Read/ReadVariableOpBAdam/lstm_202/lstm_cell_202/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_202/lstm_cell_202/bias/v/Read/ReadVariableOp8Adam/lstm_203/lstm_cell_203/kernel/v/Read/ReadVariableOpBAdam/lstm_203/lstm_cell_203/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_203/lstm_cell_203/bias/v/Read/ReadVariableOp8Adam/lstm_204/lstm_cell_204/kernel/v/Read/ReadVariableOpBAdam/lstm_204/lstm_cell_204/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_204/lstm_cell_204/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_save_24143794
 
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_194/kerneldense_194/biaslstm_202/lstm_cell_202/kernel'lstm_202/lstm_cell_202/recurrent_kernellstm_202/lstm_cell_202/biaslstm_203/lstm_cell_203/kernel'lstm_203/lstm_cell_203/recurrent_kernellstm_203/lstm_cell_203/biaslstm_204/lstm_cell_204/kernel'lstm_204/lstm_cell_204/recurrent_kernellstm_204/lstm_cell_204/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_194/kernel/mAdam/dense_194/bias/m$Adam/lstm_202/lstm_cell_202/kernel/m.Adam/lstm_202/lstm_cell_202/recurrent_kernel/m"Adam/lstm_202/lstm_cell_202/bias/m$Adam/lstm_203/lstm_cell_203/kernel/m.Adam/lstm_203/lstm_cell_203/recurrent_kernel/m"Adam/lstm_203/lstm_cell_203/bias/m$Adam/lstm_204/lstm_cell_204/kernel/m.Adam/lstm_204/lstm_cell_204/recurrent_kernel/m"Adam/lstm_204/lstm_cell_204/bias/mAdam/dense_194/kernel/vAdam/dense_194/bias/v$Adam/lstm_202/lstm_cell_202/kernel/v.Adam/lstm_202/lstm_cell_202/recurrent_kernel/v"Adam/lstm_202/lstm_cell_202/bias/v$Adam/lstm_203/lstm_cell_203/kernel/v.Adam/lstm_203/lstm_cell_203/recurrent_kernel/v"Adam/lstm_203/lstm_cell_203/bias/v$Adam/lstm_204/lstm_cell_204/kernel/v.Adam/lstm_204/lstm_cell_204/recurrent_kernel/v"Adam/lstm_204/lstm_cell_204/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference__traced_restore_24143924é¬-
K
¥
F__inference_lstm_202_layer_call_and_return_conditional_losses_24140277

inputs?
,lstm_cell_202_matmul_readvariableop_resource:	B
.lstm_cell_202_matmul_1_readvariableop_resource:
<
-lstm_cell_202_biasadd_readvariableop_resource:	
identity¢$lstm_cell_202/BiasAdd/ReadVariableOp¢#lstm_cell_202/MatMul/ReadVariableOp¢%lstm_cell_202/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_202/MatMul/ReadVariableOpReadVariableOp,lstm_cell_202_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_202/MatMulMatMulstrided_slice_2:output:0+lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_202_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_202/MatMul_1MatMulzeros:output:0-lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/addAddV2lstm_cell_202/MatMul:product:0 lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_202_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_202/BiasAddBiasAddlstm_cell_202/add:z:0,lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_202/splitSplit&lstm_cell_202/split/split_dim:output:0lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_202/SigmoidSigmoidlstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_1Sigmoidlstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_202/mulMullstm_cell_202/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_202/ReluRelulstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_1Mullstm_cell_202/Sigmoid:y:0 lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/add_1AddV2lstm_cell_202/mul:z:0lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_2Sigmoidlstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_202/Relu_1Relulstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_2Mullstm_cell_202/Sigmoid_2:y:0"lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_202_matmul_readvariableop_resource.lstm_cell_202_matmul_1_readvariableop_resource-lstm_cell_202_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24140193*
condR
while_cond_24140192*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_202/BiasAdd/ReadVariableOp$^lstm_cell_202/MatMul/ReadVariableOp&^lstm_cell_202/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_202/BiasAdd/ReadVariableOp$lstm_cell_202/BiasAdd/ReadVariableOp2J
#lstm_cell_202/MatMul/ReadVariableOp#lstm_cell_202/MatMul/ReadVariableOp2N
%lstm_cell_202/MatMul_1/ReadVariableOp%lstm_cell_202/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü

©
1__inference_sequential_116_layer_call_fn_24140399
lstm_202_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCalllstm_202_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140347o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_202_input
¹$
ô
while_body_24139139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_lstm_cell_204_24139163_0:	@0
while_lstm_cell_204_24139165_0:@,
while_lstm_cell_204_24139167_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_lstm_cell_204_24139163:	@.
while_lstm_cell_204_24139165:@*
while_lstm_cell_204_24139167:@¢+while/lstm_cell_204/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0À
+while/lstm_cell_204/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_204_24139163_0while_lstm_cell_204_24139165_0while_lstm_cell_204_24139167_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24139079r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:04while/lstm_cell_204/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_204/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity4while/lstm_cell_204/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz

while/NoOpNoOp,^while/lstm_cell_204/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0">
while_lstm_cell_204_24139163while_lstm_cell_204_24139163_0">
while_lstm_cell_204_24139165while_lstm_cell_204_24139165_0">
while_lstm_cell_204_24139167while_lstm_cell_204_24139167_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2Z
+while/lstm_cell_204/StatefulPartitionedCall+while/lstm_cell_204/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

¸
+__inference_lstm_204_layer_call_fn_24142736
inputs_0
unknown:	@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139209o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¿
Í
while_cond_24143107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24143107___redundant_placeholder06
2while_while_cond_24143107___redundant_placeholder16
2while_while_cond_24143107___redundant_placeholder26
2while_while_cond_24143107___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
L
¤
F__inference_lstm_204_layer_call_and_return_conditional_losses_24142903
inputs_0?
,lstm_cell_204_matmul_readvariableop_resource:	@@
.lstm_cell_204_matmul_1_readvariableop_resource:@;
-lstm_cell_204_biasadd_readvariableop_resource:@
identity¢$lstm_cell_204/BiasAdd/ReadVariableOp¢#lstm_cell_204/MatMul/ReadVariableOp¢%lstm_cell_204/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24142818*
condR
while_cond_24142817*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
U
ã
+sequential_116_lstm_203_while_body_24137932L
Hsequential_116_lstm_203_while_sequential_116_lstm_203_while_loop_counterR
Nsequential_116_lstm_203_while_sequential_116_lstm_203_while_maximum_iterations-
)sequential_116_lstm_203_while_placeholder/
+sequential_116_lstm_203_while_placeholder_1/
+sequential_116_lstm_203_while_placeholder_2/
+sequential_116_lstm_203_while_placeholder_3K
Gsequential_116_lstm_203_while_sequential_116_lstm_203_strided_slice_1_0
sequential_116_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_203_tensorarrayunstack_tensorlistfromtensor_0`
Lsequential_116_lstm_203_while_lstm_cell_203_matmul_readvariableop_resource_0:
b
Nsequential_116_lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource_0:
\
Msequential_116_lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource_0:	*
&sequential_116_lstm_203_while_identity,
(sequential_116_lstm_203_while_identity_1,
(sequential_116_lstm_203_while_identity_2,
(sequential_116_lstm_203_while_identity_3,
(sequential_116_lstm_203_while_identity_4,
(sequential_116_lstm_203_while_identity_5I
Esequential_116_lstm_203_while_sequential_116_lstm_203_strided_slice_1
sequential_116_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_203_tensorarrayunstack_tensorlistfromtensor^
Jsequential_116_lstm_203_while_lstm_cell_203_matmul_readvariableop_resource:
`
Lsequential_116_lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource:
Z
Ksequential_116_lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource:	¢Bsequential_116/lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp¢Asequential_116/lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp¢Csequential_116/lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp 
Osequential_116/lstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
Asequential_116/lstm_203/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_116_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_203_tensorarrayunstack_tensorlistfromtensor_0)sequential_116_lstm_203_while_placeholderXsequential_116/lstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ð
Asequential_116/lstm_203/while/lstm_cell_203/MatMul/ReadVariableOpReadVariableOpLsequential_116_lstm_203_while_lstm_cell_203_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
2sequential_116/lstm_203/while/lstm_cell_203/MatMulMatMulHsequential_116/lstm_203/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_116/lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
Csequential_116/lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOpNsequential_116_lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ë
4sequential_116/lstm_203/while/lstm_cell_203/MatMul_1MatMul+sequential_116_lstm_203_while_placeholder_2Ksequential_116/lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
/sequential_116/lstm_203/while/lstm_cell_203/addAddV2<sequential_116/lstm_203/while/lstm_cell_203/MatMul:product:0>sequential_116/lstm_203/while/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
Bsequential_116/lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOpMsequential_116_lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ò
3sequential_116/lstm_203/while/lstm_cell_203/BiasAddBiasAdd3sequential_116/lstm_203/while/lstm_cell_203/add:z:0Jsequential_116/lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
;sequential_116/lstm_203/while/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¾
1sequential_116/lstm_203/while/lstm_cell_203/splitSplitDsequential_116/lstm_203/while/lstm_cell_203/split/split_dim:output:0<sequential_116/lstm_203/while/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split­
3sequential_116/lstm_203/while/lstm_cell_203/SigmoidSigmoid:sequential_116/lstm_203/while/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
5sequential_116/lstm_203/while/lstm_cell_203/Sigmoid_1Sigmoid:sequential_116/lstm_203/while/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
/sequential_116/lstm_203/while/lstm_cell_203/mulMul9sequential_116/lstm_203/while/lstm_cell_203/Sigmoid_1:y:0+sequential_116_lstm_203_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
5sequential_116/lstm_203/while/lstm_cell_203/Sigmoid_2Sigmoid:sequential_116/lstm_203/while/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿß
1sequential_116/lstm_203/while/lstm_cell_203/mul_1Mul7sequential_116/lstm_203/while/lstm_cell_203/Sigmoid:y:09sequential_116/lstm_203/while/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
1sequential_116/lstm_203/while/lstm_cell_203/add_1AddV23sequential_116/lstm_203/while/lstm_cell_203/mul:z:05sequential_116/lstm_203/while/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
5sequential_116/lstm_203/while/lstm_cell_203/Sigmoid_3Sigmoid:sequential_116/lstm_203/while/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
5sequential_116/lstm_203/while/lstm_cell_203/Sigmoid_4Sigmoid5sequential_116/lstm_203/while/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
1sequential_116/lstm_203/while/lstm_cell_203/mul_2Mul9sequential_116/lstm_203/while/lstm_cell_203/Sigmoid_3:y:09sequential_116/lstm_203/while/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
Bsequential_116/lstm_203/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_116_lstm_203_while_placeholder_1)sequential_116_lstm_203_while_placeholder5sequential_116/lstm_203/while/lstm_cell_203/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_116/lstm_203/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_116/lstm_203/while/addAddV2)sequential_116_lstm_203_while_placeholder,sequential_116/lstm_203/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_116/lstm_203/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_116/lstm_203/while/add_1AddV2Hsequential_116_lstm_203_while_sequential_116_lstm_203_while_loop_counter.sequential_116/lstm_203/while/add_1/y:output:0*
T0*
_output_shapes
: ¡
&sequential_116/lstm_203/while/IdentityIdentity'sequential_116/lstm_203/while/add_1:z:0#^sequential_116/lstm_203/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_116/lstm_203/while/Identity_1IdentityNsequential_116_lstm_203_while_sequential_116_lstm_203_while_maximum_iterations#^sequential_116/lstm_203/while/NoOp*
T0*
_output_shapes
: ¡
(sequential_116/lstm_203/while/Identity_2Identity%sequential_116/lstm_203/while/add:z:0#^sequential_116/lstm_203/while/NoOp*
T0*
_output_shapes
: Î
(sequential_116/lstm_203/while/Identity_3IdentityRsequential_116/lstm_203/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_116/lstm_203/while/NoOp*
T0*
_output_shapes
: Ã
(sequential_116/lstm_203/while/Identity_4Identity5sequential_116/lstm_203/while/lstm_cell_203/mul_2:z:0#^sequential_116/lstm_203/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
(sequential_116/lstm_203/while/Identity_5Identity5sequential_116/lstm_203/while/lstm_cell_203/add_1:z:0#^sequential_116/lstm_203/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
"sequential_116/lstm_203/while/NoOpNoOpC^sequential_116/lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOpB^sequential_116/lstm_203/while/lstm_cell_203/MatMul/ReadVariableOpD^sequential_116/lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_116_lstm_203_while_identity/sequential_116/lstm_203/while/Identity:output:0"]
(sequential_116_lstm_203_while_identity_11sequential_116/lstm_203/while/Identity_1:output:0"]
(sequential_116_lstm_203_while_identity_21sequential_116/lstm_203/while/Identity_2:output:0"]
(sequential_116_lstm_203_while_identity_31sequential_116/lstm_203/while/Identity_3:output:0"]
(sequential_116_lstm_203_while_identity_41sequential_116/lstm_203/while/Identity_4:output:0"]
(sequential_116_lstm_203_while_identity_51sequential_116/lstm_203/while/Identity_5:output:0"
Ksequential_116_lstm_203_while_lstm_cell_203_biasadd_readvariableop_resourceMsequential_116_lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource_0"
Lsequential_116_lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resourceNsequential_116_lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource_0"
Jsequential_116_lstm_203_while_lstm_cell_203_matmul_readvariableop_resourceLsequential_116_lstm_203_while_lstm_cell_203_matmul_readvariableop_resource_0"
Esequential_116_lstm_203_while_sequential_116_lstm_203_strided_slice_1Gsequential_116_lstm_203_while_sequential_116_lstm_203_strided_slice_1_0"
sequential_116_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_203_tensorarrayunstack_tensorlistfromtensorsequential_116_lstm_203_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_203_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
Bsequential_116/lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOpBsequential_116/lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp2
Asequential_116/lstm_203/while/lstm_cell_203/MatMul/ReadVariableOpAsequential_116/lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp2
Csequential_116/lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOpCsequential_116/lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
À


lstm_203_while_cond_24140750.
*lstm_203_while_lstm_203_while_loop_counter4
0lstm_203_while_lstm_203_while_maximum_iterations
lstm_203_while_placeholder 
lstm_203_while_placeholder_1 
lstm_203_while_placeholder_2 
lstm_203_while_placeholder_30
,lstm_203_while_less_lstm_203_strided_slice_1H
Dlstm_203_while_lstm_203_while_cond_24140750___redundant_placeholder0H
Dlstm_203_while_lstm_203_while_cond_24140750___redundant_placeholder1H
Dlstm_203_while_lstm_203_while_cond_24140750___redundant_placeholder2H
Dlstm_203_while_lstm_203_while_cond_24140750___redundant_placeholder3
lstm_203_while_identity

lstm_203/while/LessLesslstm_203_while_placeholder,lstm_203_while_less_lstm_203_strided_slice_1*
T0*
_output_shapes
: ]
lstm_203/while/IdentityIdentitylstm_203/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_203_while_identity lstm_203/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¿
Í
while_cond_24142817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24142817___redundant_placeholder06
2while_while_cond_24142817___redundant_placeholder16
2while_while_cond_24142817___redundant_placeholder26
2while_while_cond_24142817___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ü

©
1__inference_sequential_116_layer_call_fn_24139733
lstm_202_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCalllstm_202_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_116_layer_call_and_return_conditional_losses_24139708o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_202_input
©9

F__inference_lstm_204_layer_call_and_return_conditional_losses_24139209

inputs)
lstm_cell_204_24139125:	@(
lstm_cell_204_24139127:@$
lstm_cell_204_24139129:@
identity¢%lstm_cell_204/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
%lstm_cell_204/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_204_24139125lstm_cell_204_24139127lstm_cell_204_24139129*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24139079n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_204_24139125lstm_cell_204_24139127lstm_cell_204_24139129*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24139139*
condR
while_cond_24139138*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
NoOpNoOp&^lstm_cell_204/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_204/StatefulPartitionedCall%lstm_cell_204/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è8
Ý
while_body_24140193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_202_matmul_readvariableop_resource_0:	J
6while_lstm_cell_202_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_202_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_202_matmul_readvariableop_resource:	H
4while_lstm_cell_202_matmul_1_readvariableop_resource:
B
3while_lstm_cell_202_biasadd_readvariableop_resource:	¢*while/lstm_cell_202/BiasAdd/ReadVariableOp¢)while/lstm_cell_202/MatMul/ReadVariableOp¢+while/lstm_cell_202/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_202_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_202/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_202_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_202/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_202/addAddV2$while/lstm_cell_202/MatMul:product:0&while/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_202_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_202/BiasAddBiasAddwhile/lstm_cell_202/add:z:02while/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_202/splitSplit,while/lstm_cell_202/split/split_dim:output:0$while/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_202/SigmoidSigmoid"while/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_1Sigmoid"while/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mulMul!while/lstm_cell_202/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/lstm_cell_202/ReluRelu"while/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mul_1Mulwhile/lstm_cell_202/Sigmoid:y:0&while/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/add_1AddV2while/lstm_cell_202/mul:z:0while/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_2Sigmoid"while/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_202/Relu_1Reluwhile/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_202/mul_2Mul!while/lstm_cell_202/Sigmoid_2:y:0(while/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_202/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_202/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_202/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_202/BiasAdd/ReadVariableOp*^while/lstm_cell_202/MatMul/ReadVariableOp,^while/lstm_cell_202/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_202_biasadd_readvariableop_resource5while_lstm_cell_202_biasadd_readvariableop_resource_0"n
4while_lstm_cell_202_matmul_1_readvariableop_resource6while_lstm_cell_202_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_202_matmul_readvariableop_resource4while_lstm_cell_202_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_202/BiasAdd/ReadVariableOp*while/lstm_cell_202/BiasAdd/ReadVariableOp2V
)while/lstm_cell_202/MatMul/ReadVariableOp)while/lstm_cell_202/MatMul/ReadVariableOp2Z
+while/lstm_cell_202/MatMul_1/ReadVariableOp+while/lstm_cell_202/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ü
ú
0__inference_lstm_cell_202_layer_call_fn_24143374

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24138231p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
çK
¢
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143193

inputs?
,lstm_cell_204_matmul_readvariableop_resource:	@@
.lstm_cell_204_matmul_1_readvariableop_resource:@;
-lstm_cell_204_biasadd_readvariableop_resource:@
identity¢$lstm_cell_204/BiasAdd/ReadVariableOp¢#lstm_cell_204/MatMul/ReadVariableOp¢%lstm_cell_204/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24143108*
condR
while_cond_24143107*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
Í
while_cond_24140004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24140004___redundant_placeholder06
2while_while_cond_24140004___redundant_placeholder16
2while_while_cond_24140004___redundant_placeholder26
2while_while_cond_24140004___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
è8
Ý
while_body_24141531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_202_matmul_readvariableop_resource_0:	J
6while_lstm_cell_202_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_202_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_202_matmul_readvariableop_resource:	H
4while_lstm_cell_202_matmul_1_readvariableop_resource:
B
3while_lstm_cell_202_biasadd_readvariableop_resource:	¢*while/lstm_cell_202/BiasAdd/ReadVariableOp¢)while/lstm_cell_202/MatMul/ReadVariableOp¢+while/lstm_cell_202/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_202_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_202/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_202_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_202/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_202/addAddV2$while/lstm_cell_202/MatMul:product:0&while/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_202_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_202/BiasAddBiasAddwhile/lstm_cell_202/add:z:02while/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_202/splitSplit,while/lstm_cell_202/split/split_dim:output:0$while/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_202/SigmoidSigmoid"while/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_1Sigmoid"while/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mulMul!while/lstm_cell_202/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/lstm_cell_202/ReluRelu"while/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mul_1Mulwhile/lstm_cell_202/Sigmoid:y:0&while/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/add_1AddV2while/lstm_cell_202/mul:z:0while/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_2Sigmoid"while/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_202/Relu_1Reluwhile/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_202/mul_2Mul!while/lstm_cell_202/Sigmoid_2:y:0(while/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_202/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_202/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_202/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_202/BiasAdd/ReadVariableOp*^while/lstm_cell_202/MatMul/ReadVariableOp,^while/lstm_cell_202/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_202_biasadd_readvariableop_resource5while_lstm_cell_202_biasadd_readvariableop_resource_0"n
4while_lstm_cell_202_matmul_1_readvariableop_resource6while_lstm_cell_202_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_202_matmul_readvariableop_resource4while_lstm_cell_202_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_202/BiasAdd/ReadVariableOp*while/lstm_cell_202/BiasAdd/ReadVariableOp2V
)while/lstm_cell_202/MatMul/ReadVariableOp)while/lstm_cell_202/MatMul/ReadVariableOp2Z
+while/lstm_cell_202/MatMul_1/ReadVariableOp+while/lstm_cell_202/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ï
f
H__inference_dropout_76_layer_call_and_return_conditional_losses_24142702

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î

K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24138377

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
çK
¢
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139683

inputs?
,lstm_cell_204_matmul_readvariableop_resource:	@@
.lstm_cell_204_matmul_1_readvariableop_resource:@;
-lstm_cell_204_biasadd_readvariableop_resource:@
identity¢$lstm_cell_204/BiasAdd/ReadVariableOp¢#lstm_cell_204/MatMul/ReadVariableOp¢%lstm_cell_204/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24139598*
condR
while_cond_24139597*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å9
×
while_body_24142963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	@H
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_204_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	@F
4while_lstm_cell_204_matmul_1_readvariableop_resource:@A
3while_lstm_cell_204_biasadd_readvariableop_resource:@¢*while/lstm_cell_204/BiasAdd/ReadVariableOp¢)while/lstm_cell_204/MatMul/ReadVariableOp¢+while/lstm_cell_204/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0»
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¢
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0©
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : î
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¿
Í
while_cond_24139597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24139597___redundant_placeholder06
2while_while_cond_24139597___redundant_placeholder16
2while_while_cond_24139597___redundant_placeholder26
2while_while_cond_24139597___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
²
»
+__inference_lstm_202_layer_call_fn_24141439
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_202_layer_call_and_return_conditional_losses_24138314}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¼


lstm_204_while_cond_24140891.
*lstm_204_while_lstm_204_while_loop_counter4
0lstm_204_while_lstm_204_while_maximum_iterations
lstm_204_while_placeholder 
lstm_204_while_placeholder_1 
lstm_204_while_placeholder_2 
lstm_204_while_placeholder_30
,lstm_204_while_less_lstm_204_strided_slice_1H
Dlstm_204_while_lstm_204_while_cond_24140891___redundant_placeholder0H
Dlstm_204_while_lstm_204_while_cond_24140891___redundant_placeholder1H
Dlstm_204_while_lstm_204_while_cond_24140891___redundant_placeholder2H
Dlstm_204_while_lstm_204_while_cond_24140891___redundant_placeholder3
lstm_204_while_identity

lstm_204/while/LessLesslstm_204_while_placeholder,lstm_204_while_less_lstm_204_strided_slice_1*
T0*
_output_shapes
: ]
lstm_204/while/IdentityIdentitylstm_204/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_204_while_identity lstm_204/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
çK
¢
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143338

inputs?
,lstm_cell_204_matmul_readvariableop_resource:	@@
.lstm_cell_204_matmul_1_readvariableop_resource:@;
-lstm_cell_204_biasadd_readvariableop_resource:@
identity¢$lstm_cell_204/BiasAdd/ReadVariableOp¢#lstm_cell_204/MatMul/ReadVariableOp¢%lstm_cell_204/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24143253*
condR
while_cond_24143252*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
K
¦
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142544

inputs@
,lstm_cell_203_matmul_readvariableop_resource:
B
.lstm_cell_203_matmul_1_readvariableop_resource:
<
-lstm_cell_203_biasadd_readvariableop_resource:	
identity¢$lstm_cell_203/BiasAdd/ReadVariableOp¢#lstm_cell_203/MatMul/ReadVariableOp¢%lstm_cell_203/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_203/MatMul/ReadVariableOpReadVariableOp,lstm_cell_203_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMulMatMulstrided_slice_2:output:0+lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_203_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMul_1MatMulzeros:output:0-lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/addAddV2lstm_cell_203/MatMul:product:0 lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_203_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_203/BiasAddBiasAddlstm_cell_203/add:z:0,lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_203/splitSplit&lstm_cell_203/split/split_dim:output:0lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_203/SigmoidSigmoidlstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_1Sigmoidlstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_203/mulMullstm_cell_203/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_2Sigmoidlstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_1Mullstm_cell_203/Sigmoid:y:0lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/add_1AddV2lstm_cell_203/mul:z:0lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_3Sigmoidlstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
lstm_cell_203/Sigmoid_4Sigmoidlstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_2Mullstm_cell_203/Sigmoid_3:y:0lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_203_matmul_readvariableop_resource.lstm_cell_203_matmul_1_readvariableop_resource-lstm_cell_203_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24142460*
condR
while_cond_24142459*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_203/BiasAdd/ReadVariableOp$^lstm_cell_203/MatMul/ReadVariableOp&^lstm_cell_203/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_203/BiasAdd/ReadVariableOp$lstm_cell_203/BiasAdd/ReadVariableOp2J
#lstm_cell_203/MatMul/ReadVariableOp#lstm_cell_203/MatMul/ReadVariableOp2N
%lstm_cell_203/MatMul_1/ReadVariableOp%lstm_cell_203/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ8

F__inference_lstm_203_layer_call_and_return_conditional_losses_24138855

inputs*
lstm_cell_203_24138773:
*
lstm_cell_203_24138775:
%
lstm_cell_203_24138777:	
identity¢%lstm_cell_203/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
%lstm_cell_203/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_203_24138773lstm_cell_203_24138775lstm_cell_203_24138777*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24138727n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : È
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_203_24138773lstm_cell_203_24138775lstm_cell_203_24138777*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24138786*
condR
while_cond_24138785*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
NoOpNoOp&^lstm_cell_203/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_203/StatefulPartitionedCall%lstm_cell_203/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
Í
while_cond_24139282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24139282___redundant_placeholder06
2while_while_cond_24139282___redundant_placeholder16
2while_while_cond_24139282___redundant_placeholder26
2while_while_cond_24139282___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ï
f
H__inference_dropout_76_layer_call_and_return_conditional_losses_24139537

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
­
+sequential_116_lstm_204_while_cond_24138072L
Hsequential_116_lstm_204_while_sequential_116_lstm_204_while_loop_counterR
Nsequential_116_lstm_204_while_sequential_116_lstm_204_while_maximum_iterations-
)sequential_116_lstm_204_while_placeholder/
+sequential_116_lstm_204_while_placeholder_1/
+sequential_116_lstm_204_while_placeholder_2/
+sequential_116_lstm_204_while_placeholder_3N
Jsequential_116_lstm_204_while_less_sequential_116_lstm_204_strided_slice_1f
bsequential_116_lstm_204_while_sequential_116_lstm_204_while_cond_24138072___redundant_placeholder0f
bsequential_116_lstm_204_while_sequential_116_lstm_204_while_cond_24138072___redundant_placeholder1f
bsequential_116_lstm_204_while_sequential_116_lstm_204_while_cond_24138072___redundant_placeholder2f
bsequential_116_lstm_204_while_sequential_116_lstm_204_while_cond_24138072___redundant_placeholder3*
&sequential_116_lstm_204_while_identity
Â
"sequential_116/lstm_204/while/LessLess)sequential_116_lstm_204_while_placeholderJsequential_116_lstm_204_while_less_sequential_116_lstm_204_strided_slice_1*
T0*
_output_shapes
: {
&sequential_116/lstm_204/while/IdentityIdentity&sequential_116/lstm_204/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_116_lstm_204_while_identity/sequential_116/lstm_204/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ï
f
H__inference_dropout_75_layer_call_and_return_conditional_losses_24142059

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
©
$__inference__traced_restore_24143924
file_prefix3
!assignvariableop_dense_194_kernel:/
!assignvariableop_1_dense_194_bias:C
0assignvariableop_2_lstm_202_lstm_cell_202_kernel:	N
:assignvariableop_3_lstm_202_lstm_cell_202_recurrent_kernel:
=
.assignvariableop_4_lstm_202_lstm_cell_202_bias:	D
0assignvariableop_5_lstm_203_lstm_cell_203_kernel:
N
:assignvariableop_6_lstm_203_lstm_cell_203_recurrent_kernel:
=
.assignvariableop_7_lstm_203_lstm_cell_203_bias:	C
0assignvariableop_8_lstm_204_lstm_cell_204_kernel:	@L
:assignvariableop_9_lstm_204_lstm_cell_204_recurrent_kernel:@=
/assignvariableop_10_lstm_204_lstm_cell_204_bias:@'
assignvariableop_11_adam_iter:	 )
assignvariableop_12_adam_beta_1: )
assignvariableop_13_adam_beta_2: (
assignvariableop_14_adam_decay: 0
&assignvariableop_15_adam_learning_rate: #
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_194_kernel_m:7
)assignvariableop_19_adam_dense_194_bias_m:K
8assignvariableop_20_adam_lstm_202_lstm_cell_202_kernel_m:	V
Bassignvariableop_21_adam_lstm_202_lstm_cell_202_recurrent_kernel_m:
E
6assignvariableop_22_adam_lstm_202_lstm_cell_202_bias_m:	L
8assignvariableop_23_adam_lstm_203_lstm_cell_203_kernel_m:
V
Bassignvariableop_24_adam_lstm_203_lstm_cell_203_recurrent_kernel_m:
E
6assignvariableop_25_adam_lstm_203_lstm_cell_203_bias_m:	K
8assignvariableop_26_adam_lstm_204_lstm_cell_204_kernel_m:	@T
Bassignvariableop_27_adam_lstm_204_lstm_cell_204_recurrent_kernel_m:@D
6assignvariableop_28_adam_lstm_204_lstm_cell_204_bias_m:@=
+assignvariableop_29_adam_dense_194_kernel_v:7
)assignvariableop_30_adam_dense_194_bias_v:K
8assignvariableop_31_adam_lstm_202_lstm_cell_202_kernel_v:	V
Bassignvariableop_32_adam_lstm_202_lstm_cell_202_recurrent_kernel_v:
E
6assignvariableop_33_adam_lstm_202_lstm_cell_202_bias_v:	L
8assignvariableop_34_adam_lstm_203_lstm_cell_203_kernel_v:
V
Bassignvariableop_35_adam_lstm_203_lstm_cell_203_recurrent_kernel_v:
E
6assignvariableop_36_adam_lstm_203_lstm_cell_203_bias_v:	K
8assignvariableop_37_adam_lstm_204_lstm_cell_204_kernel_v:	@T
Bassignvariableop_38_adam_lstm_204_lstm_cell_204_recurrent_kernel_v:@D
6assignvariableop_39_adam_lstm_204_lstm_cell_204_bias_v:@
identity_41¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9È
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÂ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B î
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*º
_output_shapes§
¤:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_194_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_194_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp0assignvariableop_2_lstm_202_lstm_cell_202_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_3AssignVariableOp:assignvariableop_3_lstm_202_lstm_cell_202_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp.assignvariableop_4_lstm_202_lstm_cell_202_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp0assignvariableop_5_lstm_203_lstm_cell_203_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_6AssignVariableOp:assignvariableop_6_lstm_203_lstm_cell_203_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_203_lstm_cell_203_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp0assignvariableop_8_lstm_204_lstm_cell_204_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_9AssignVariableOp:assignvariableop_9_lstm_204_lstm_cell_204_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_204_lstm_cell_204_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_decayIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adam_learning_rateIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_194_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_194_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_202_lstm_cell_202_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_202_lstm_cell_202_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_202_lstm_cell_202_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_203_lstm_cell_203_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_203_lstm_cell_203_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_203_lstm_cell_203_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_204_lstm_cell_204_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_204_lstm_cell_204_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_204_lstm_cell_204_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_194_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_194_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_202_lstm_cell_202_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_202_lstm_cell_202_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_202_lstm_cell_202_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_203_lstm_cell_203_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_203_lstm_cell_203_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_203_lstm_cell_203_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_204_lstm_cell_204_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_204_lstm_cell_204_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_204_lstm_cell_204_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¿
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: ¬
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
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
K
¦
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142687

inputs@
,lstm_cell_203_matmul_readvariableop_resource:
B
.lstm_cell_203_matmul_1_readvariableop_resource:
<
-lstm_cell_203_biasadd_readvariableop_resource:	
identity¢$lstm_cell_203/BiasAdd/ReadVariableOp¢#lstm_cell_203/MatMul/ReadVariableOp¢%lstm_cell_203/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_203/MatMul/ReadVariableOpReadVariableOp,lstm_cell_203_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMulMatMulstrided_slice_2:output:0+lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_203_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMul_1MatMulzeros:output:0-lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/addAddV2lstm_cell_203/MatMul:product:0 lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_203_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_203/BiasAddBiasAddlstm_cell_203/add:z:0,lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_203/splitSplit&lstm_cell_203/split/split_dim:output:0lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_203/SigmoidSigmoidlstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_1Sigmoidlstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_203/mulMullstm_cell_203/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_2Sigmoidlstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_1Mullstm_cell_203/Sigmoid:y:0lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/add_1AddV2lstm_cell_203/mul:z:0lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_3Sigmoidlstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
lstm_cell_203/Sigmoid_4Sigmoidlstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_2Mullstm_cell_203/Sigmoid_3:y:0lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_203_matmul_readvariableop_resource.lstm_cell_203_matmul_1_readvariableop_resource-lstm_cell_203_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24142603*
condR
while_cond_24142602*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_203/BiasAdd/ReadVariableOp$^lstm_cell_203/MatMul/ReadVariableOp&^lstm_cell_203/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_203/BiasAdd/ReadVariableOp$lstm_cell_203/BiasAdd/ReadVariableOp2J
#lstm_cell_203/MatMul/ReadVariableOp#lstm_cell_203/MatMul/ReadVariableOp2N
%lstm_cell_203/MatMul_1/ReadVariableOp%lstm_cell_203/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼


lstm_204_while_cond_24141336.
*lstm_204_while_lstm_204_while_loop_counter4
0lstm_204_while_lstm_204_while_maximum_iterations
lstm_204_while_placeholder 
lstm_204_while_placeholder_1 
lstm_204_while_placeholder_2 
lstm_204_while_placeholder_30
,lstm_204_while_less_lstm_204_strided_slice_1H
Dlstm_204_while_lstm_204_while_cond_24141336___redundant_placeholder0H
Dlstm_204_while_lstm_204_while_cond_24141336___redundant_placeholder1H
Dlstm_204_while_lstm_204_while_cond_24141336___redundant_placeholder2H
Dlstm_204_while_lstm_204_while_cond_24141336___redundant_placeholder3
lstm_204_while_identity

lstm_204/while/LessLesslstm_204_while_placeholder,lstm_204_while_less_lstm_204_strided_slice_1*
T0*
_output_shapes
: ]
lstm_204/while/IdentityIdentitylstm_204/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_204_while_identity lstm_204/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ü

K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24143553

inputs
states_0
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ê	
ø
G__inference_dense_194_layer_call_and_return_conditional_losses_24139701

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À


lstm_202_while_cond_24140610.
*lstm_202_while_lstm_202_while_loop_counter4
0lstm_202_while_lstm_202_while_maximum_iterations
lstm_202_while_placeholder 
lstm_202_while_placeholder_1 
lstm_202_while_placeholder_2 
lstm_202_while_placeholder_30
,lstm_202_while_less_lstm_202_strided_slice_1H
Dlstm_202_while_lstm_202_while_cond_24140610___redundant_placeholder0H
Dlstm_202_while_lstm_202_while_cond_24140610___redundant_placeholder1H
Dlstm_202_while_lstm_202_while_cond_24140610___redundant_placeholder2H
Dlstm_202_while_lstm_202_while_cond_24140610___redundant_placeholder3
lstm_202_while_identity

lstm_202/while/LessLesslstm_202_while_placeholder,lstm_202_while_less_lstm_202_strided_slice_1*
T0*
_output_shapes
: ]
lstm_202/while/IdentityIdentitylstm_202/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_202_while_identity lstm_202/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¹$
ô
while_body_24138946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_lstm_cell_204_24138970_0:	@0
while_lstm_cell_204_24138972_0:@,
while_lstm_cell_204_24138974_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_lstm_cell_204_24138970:	@.
while_lstm_cell_204_24138972:@*
while_lstm_cell_204_24138974:@¢+while/lstm_cell_204/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0À
+while/lstm_cell_204/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_204_24138970_0while_lstm_cell_204_24138972_0while_lstm_cell_204_24138974_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24138931r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:04while/lstm_cell_204/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_204/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity4while/lstm_cell_204/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz

while/NoOpNoOp,^while/lstm_cell_204/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0">
while_lstm_cell_204_24138970while_lstm_cell_204_24138970_0">
while_lstm_cell_204_24138972while_lstm_cell_204_24138972_0">
while_lstm_cell_204_24138974while_lstm_cell_204_24138974_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2Z
+while/lstm_cell_204/StatefulPartitionedCall+while/lstm_cell_204/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ã
Í
while_cond_24138785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24138785___redundant_placeholder06
2while_while_cond_24138785___redundant_placeholder16
2while_while_cond_24138785___redundant_placeholder26
2while_while_cond_24138785___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


g
H__inference_dropout_76_layer_call_and_return_conditional_losses_24139930

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
K
¥
F__inference_lstm_202_layer_call_and_return_conditional_losses_24139367

inputs?
,lstm_cell_202_matmul_readvariableop_resource:	B
.lstm_cell_202_matmul_1_readvariableop_resource:
<
-lstm_cell_202_biasadd_readvariableop_resource:	
identity¢$lstm_cell_202/BiasAdd/ReadVariableOp¢#lstm_cell_202/MatMul/ReadVariableOp¢%lstm_cell_202/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_202/MatMul/ReadVariableOpReadVariableOp,lstm_cell_202_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_202/MatMulMatMulstrided_slice_2:output:0+lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_202_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_202/MatMul_1MatMulzeros:output:0-lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/addAddV2lstm_cell_202/MatMul:product:0 lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_202_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_202/BiasAddBiasAddlstm_cell_202/add:z:0,lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_202/splitSplit&lstm_cell_202/split/split_dim:output:0lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_202/SigmoidSigmoidlstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_1Sigmoidlstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_202/mulMullstm_cell_202/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_202/ReluRelulstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_1Mullstm_cell_202/Sigmoid:y:0 lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/add_1AddV2lstm_cell_202/mul:z:0lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_2Sigmoidlstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_202/Relu_1Relulstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_2Mullstm_cell_202/Sigmoid_2:y:0"lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_202_matmul_readvariableop_resource.lstm_cell_202_matmul_1_readvariableop_resource-lstm_cell_202_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24139283*
condR
while_cond_24139282*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_202/BiasAdd/ReadVariableOp$^lstm_cell_202/MatMul/ReadVariableOp&^lstm_cell_202/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_202/BiasAdd/ReadVariableOp$lstm_cell_202/BiasAdd/ReadVariableOp2J
#lstm_cell_202/MatMul/ReadVariableOp#lstm_cell_202/MatMul/ReadVariableOp2N
%lstm_cell_202/MatMul_1/ReadVariableOp%lstm_cell_202/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÆK
¨
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142401
inputs_0@
,lstm_cell_203_matmul_readvariableop_resource:
B
.lstm_cell_203_matmul_1_readvariableop_resource:
<
-lstm_cell_203_biasadd_readvariableop_resource:	
identity¢$lstm_cell_203/BiasAdd/ReadVariableOp¢#lstm_cell_203/MatMul/ReadVariableOp¢%lstm_cell_203/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_203/MatMul/ReadVariableOpReadVariableOp,lstm_cell_203_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMulMatMulstrided_slice_2:output:0+lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_203_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMul_1MatMulzeros:output:0-lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/addAddV2lstm_cell_203/MatMul:product:0 lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_203_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_203/BiasAddBiasAddlstm_cell_203/add:z:0,lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_203/splitSplit&lstm_cell_203/split/split_dim:output:0lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_203/SigmoidSigmoidlstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_1Sigmoidlstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_203/mulMullstm_cell_203/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_2Sigmoidlstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_1Mullstm_cell_203/Sigmoid:y:0lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/add_1AddV2lstm_cell_203/mul:z:0lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_3Sigmoidlstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
lstm_cell_203/Sigmoid_4Sigmoidlstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_2Mullstm_cell_203/Sigmoid_3:y:0lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_203_matmul_readvariableop_resource.lstm_cell_203_matmul_1_readvariableop_resource-lstm_cell_203_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24142317*
condR
while_cond_24142316*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_203/BiasAdd/ReadVariableOp$^lstm_cell_203/MatMul/ReadVariableOp&^lstm_cell_203/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_203/BiasAdd/ReadVariableOp$lstm_cell_203/BiasAdd/ReadVariableOp2J
#lstm_cell_203/MatMul/ReadVariableOp#lstm_cell_203/MatMul/ReadVariableOp2N
%lstm_cell_203/MatMul_1/ReadVariableOp%lstm_cell_203/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ã
Í
while_cond_24142602
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24142602___redundant_placeholder06
2while_while_cond_24142602___redundant_placeholder16
2while_while_cond_24142602___redundant_placeholder26
2while_while_cond_24142602___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
î8
ß
while_body_24139440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
4while_lstm_cell_203_matmul_readvariableop_resource_0:
J
6while_lstm_cell_203_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_203_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
2while_lstm_cell_203_matmul_readvariableop_resource:
H
4while_lstm_cell_203_matmul_1_readvariableop_resource:
B
3while_lstm_cell_203_biasadd_readvariableop_resource:	¢*while/lstm_cell_203/BiasAdd/ReadVariableOp¢)while/lstm_cell_203/MatMul/ReadVariableOp¢+while/lstm_cell_203/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0 
)while/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_203_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¼
while/lstm_cell_203/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_203_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_203/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_203/addAddV2$while/lstm_cell_203/MatMul:product:0&while/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_203_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_203/BiasAddBiasAddwhile/lstm_cell_203/add:z:02while/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_203/splitSplit,while/lstm_cell_203/split/split_dim:output:0$while/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_203/SigmoidSigmoid"while/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_1Sigmoid"while/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mulMul!while/lstm_cell_203/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_2Sigmoid"while/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_1Mulwhile/lstm_cell_203/Sigmoid:y:0!while/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/add_1AddV2while/lstm_cell_203/mul:z:0while/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_3Sigmoid"while/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/lstm_cell_203/Sigmoid_4Sigmoidwhile/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_2Mul!while/lstm_cell_203/Sigmoid_3:y:0!while/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_203/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_203/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_203/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_203/BiasAdd/ReadVariableOp*^while/lstm_cell_203/MatMul/ReadVariableOp,^while/lstm_cell_203/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_203_biasadd_readvariableop_resource5while_lstm_cell_203_biasadd_readvariableop_resource_0"n
4while_lstm_cell_203_matmul_1_readvariableop_resource6while_lstm_cell_203_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_203_matmul_readvariableop_resource4while_lstm_cell_203_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_203/BiasAdd/ReadVariableOp*while/lstm_cell_203/BiasAdd/ReadVariableOp2V
)while/lstm_cell_203/MatMul/ReadVariableOp)while/lstm_cell_203/MatMul/ReadVariableOp2Z
+while/lstm_cell_203/MatMul_1/ReadVariableOp+while/lstm_cell_203/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¾D
÷

lstm_204_while_body_24141337.
*lstm_204_while_lstm_204_while_loop_counter4
0lstm_204_while_lstm_204_while_maximum_iterations
lstm_204_while_placeholder 
lstm_204_while_placeholder_1 
lstm_204_while_placeholder_2 
lstm_204_while_placeholder_3-
)lstm_204_while_lstm_204_strided_slice_1_0i
elstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_204_while_lstm_cell_204_matmul_readvariableop_resource_0:	@Q
?lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource_0:@L
>lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource_0:@
lstm_204_while_identity
lstm_204_while_identity_1
lstm_204_while_identity_2
lstm_204_while_identity_3
lstm_204_while_identity_4
lstm_204_while_identity_5+
'lstm_204_while_lstm_204_strided_slice_1g
clstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensorN
;lstm_204_while_lstm_cell_204_matmul_readvariableop_resource:	@O
=lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource:@J
<lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource:@¢3lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp¢2lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp¢4lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp
@lstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ô
2lstm_204/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0lstm_204_while_placeholderIlstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0±
2lstm_204/while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp=lstm_204_while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0Ö
#lstm_204/while/lstm_cell_204/MatMulMatMul9lstm_204/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@´
4lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp?lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0½
%lstm_204/while/lstm_cell_204/MatMul_1MatMullstm_204_while_placeholder_2<lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@»
 lstm_204/while/lstm_cell_204/addAddV2-lstm_204/while/lstm_cell_204/MatMul:product:0/lstm_204/while/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
3lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp>lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ä
$lstm_204/while/lstm_cell_204/BiasAddBiasAdd$lstm_204/while/lstm_cell_204/add:z:0;lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
,lstm_204/while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"lstm_204/while/lstm_cell_204/splitSplit5lstm_204/while/lstm_cell_204/split/split_dim:output:0-lstm_204/while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
$lstm_204/while/lstm_cell_204/SigmoidSigmoid+lstm_204/while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_204/while/lstm_cell_204/Sigmoid_1Sigmoid+lstm_204/while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
 lstm_204/while/lstm_cell_204/mulMul*lstm_204/while/lstm_cell_204/Sigmoid_1:y:0lstm_204_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_204/while/lstm_cell_204/ReluRelu+lstm_204/while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
"lstm_204/while/lstm_cell_204/mul_1Mul(lstm_204/while/lstm_cell_204/Sigmoid:y:0/lstm_204/while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
"lstm_204/while/lstm_cell_204/add_1AddV2$lstm_204/while/lstm_cell_204/mul:z:0&lstm_204/while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_204/while/lstm_cell_204/Sigmoid_2Sigmoid+lstm_204/while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_204/while/lstm_cell_204/Relu_1Relu&lstm_204/while/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
"lstm_204/while/lstm_cell_204/mul_2Mul*lstm_204/while/lstm_cell_204/Sigmoid_2:y:01lstm_204/while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9lstm_204/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
3lstm_204/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_204_while_placeholder_1Blstm_204/while/TensorArrayV2Write/TensorListSetItem/index:output:0&lstm_204/while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_204/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_204/while/addAddV2lstm_204_while_placeholderlstm_204/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_204/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_204/while/add_1AddV2*lstm_204_while_lstm_204_while_loop_counterlstm_204/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_204/while/IdentityIdentitylstm_204/while/add_1:z:0^lstm_204/while/NoOp*
T0*
_output_shapes
: 
lstm_204/while/Identity_1Identity0lstm_204_while_lstm_204_while_maximum_iterations^lstm_204/while/NoOp*
T0*
_output_shapes
: t
lstm_204/while/Identity_2Identitylstm_204/while/add:z:0^lstm_204/while/NoOp*
T0*
_output_shapes
: ¡
lstm_204/while/Identity_3IdentityClstm_204/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_204/while/NoOp*
T0*
_output_shapes
: 
lstm_204/while/Identity_4Identity&lstm_204/while/lstm_cell_204/mul_2:z:0^lstm_204/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_204/while/Identity_5Identity&lstm_204/while/lstm_cell_204/add_1:z:0^lstm_204/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
lstm_204/while/NoOpNoOp4^lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp3^lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp5^lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_204_while_identity lstm_204/while/Identity:output:0"?
lstm_204_while_identity_1"lstm_204/while/Identity_1:output:0"?
lstm_204_while_identity_2"lstm_204/while/Identity_2:output:0"?
lstm_204_while_identity_3"lstm_204/while/Identity_3:output:0"?
lstm_204_while_identity_4"lstm_204/while/Identity_4:output:0"?
lstm_204_while_identity_5"lstm_204/while/Identity_5:output:0"T
'lstm_204_while_lstm_204_strided_slice_1)lstm_204_while_lstm_204_strided_slice_1_0"~
<lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource>lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource_0"
=lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource?lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource_0"|
;lstm_204_while_lstm_cell_204_matmul_readvariableop_resource=lstm_204_while_lstm_cell_204_matmul_readvariableop_resource_0"Ì
clstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensorelstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2j
3lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp3lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp2h
2lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp2lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp2l
4lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp4lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


g
H__inference_dropout_75_layer_call_and_return_conditional_losses_24140118

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
K
¦
F__inference_lstm_203_layer_call_and_return_conditional_losses_24140089

inputs@
,lstm_cell_203_matmul_readvariableop_resource:
B
.lstm_cell_203_matmul_1_readvariableop_resource:
<
-lstm_cell_203_biasadd_readvariableop_resource:	
identity¢$lstm_cell_203/BiasAdd/ReadVariableOp¢#lstm_cell_203/MatMul/ReadVariableOp¢%lstm_cell_203/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_203/MatMul/ReadVariableOpReadVariableOp,lstm_cell_203_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMulMatMulstrided_slice_2:output:0+lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_203_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMul_1MatMulzeros:output:0-lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/addAddV2lstm_cell_203/MatMul:product:0 lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_203_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_203/BiasAddBiasAddlstm_cell_203/add:z:0,lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_203/splitSplit&lstm_cell_203/split/split_dim:output:0lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_203/SigmoidSigmoidlstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_1Sigmoidlstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_203/mulMullstm_cell_203/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_2Sigmoidlstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_1Mullstm_cell_203/Sigmoid:y:0lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/add_1AddV2lstm_cell_203/mul:z:0lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_3Sigmoidlstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
lstm_cell_203/Sigmoid_4Sigmoidlstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_2Mullstm_cell_203/Sigmoid_3:y:0lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_203_matmul_readvariableop_resource.lstm_cell_203_matmul_1_readvariableop_resource-lstm_cell_203_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24140005*
condR
while_cond_24140004*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_203/BiasAdd/ReadVariableOp$^lstm_cell_203/MatMul/ReadVariableOp&^lstm_cell_203/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_203/BiasAdd/ReadVariableOp$lstm_cell_203/BiasAdd/ReadVariableOp2J
#lstm_cell_203/MatMul/ReadVariableOp#lstm_cell_203/MatMul/ReadVariableOp2N
%lstm_cell_203/MatMul_1/ReadVariableOp%lstm_cell_203/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸C
ý

lstm_202_while_body_24141042.
*lstm_202_while_lstm_202_while_loop_counter4
0lstm_202_while_lstm_202_while_maximum_iterations
lstm_202_while_placeholder 
lstm_202_while_placeholder_1 
lstm_202_while_placeholder_2 
lstm_202_while_placeholder_3-
)lstm_202_while_lstm_202_strided_slice_1_0i
elstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_202_while_lstm_cell_202_matmul_readvariableop_resource_0:	S
?lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource_0:
M
>lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource_0:	
lstm_202_while_identity
lstm_202_while_identity_1
lstm_202_while_identity_2
lstm_202_while_identity_3
lstm_202_while_identity_4
lstm_202_while_identity_5+
'lstm_202_while_lstm_202_strided_slice_1g
clstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensorN
;lstm_202_while_lstm_cell_202_matmul_readvariableop_resource:	Q
=lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource:
K
<lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource:	¢3lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp¢2lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp¢4lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp
@lstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ó
2lstm_202/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0lstm_202_while_placeholderIlstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0±
2lstm_202/while/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp=lstm_202_while_lstm_cell_202_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
#lstm_202/while/lstm_cell_202/MatMulMatMul9lstm_202/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
4lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp?lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¾
%lstm_202/while/lstm_cell_202/MatMul_1MatMullstm_202_while_placeholder_2<lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
 lstm_202/while/lstm_cell_202/addAddV2-lstm_202/while/lstm_cell_202/MatMul:product:0/lstm_202/while/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
3lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp>lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Å
$lstm_202/while/lstm_cell_202/BiasAddBiasAdd$lstm_202/while/lstm_cell_202/add:z:0;lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
,lstm_202/while/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"lstm_202/while/lstm_cell_202/splitSplit5lstm_202/while/lstm_cell_202/split/split_dim:output:0-lstm_202/while/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
$lstm_202/while/lstm_cell_202/SigmoidSigmoid+lstm_202/while/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_202/while/lstm_cell_202/Sigmoid_1Sigmoid+lstm_202/while/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
 lstm_202/while/lstm_cell_202/mulMul*lstm_202/while/lstm_cell_202/Sigmoid_1:y:0lstm_202_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_202/while/lstm_cell_202/ReluRelu+lstm_202/while/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
"lstm_202/while/lstm_cell_202/mul_1Mul(lstm_202/while/lstm_cell_202/Sigmoid:y:0/lstm_202/while/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"lstm_202/while/lstm_cell_202/add_1AddV2$lstm_202/while/lstm_cell_202/mul:z:0&lstm_202/while/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_202/while/lstm_cell_202/Sigmoid_2Sigmoid+lstm_202/while/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_202/while/lstm_cell_202/Relu_1Relu&lstm_202/while/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
"lstm_202/while/lstm_cell_202/mul_2Mul*lstm_202/while/lstm_cell_202/Sigmoid_2:y:01lstm_202/while/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
3lstm_202/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_202_while_placeholder_1lstm_202_while_placeholder&lstm_202/while/lstm_cell_202/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_202/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_202/while/addAddV2lstm_202_while_placeholderlstm_202/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_202/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_202/while/add_1AddV2*lstm_202_while_lstm_202_while_loop_counterlstm_202/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_202/while/IdentityIdentitylstm_202/while/add_1:z:0^lstm_202/while/NoOp*
T0*
_output_shapes
: 
lstm_202/while/Identity_1Identity0lstm_202_while_lstm_202_while_maximum_iterations^lstm_202/while/NoOp*
T0*
_output_shapes
: t
lstm_202/while/Identity_2Identitylstm_202/while/add:z:0^lstm_202/while/NoOp*
T0*
_output_shapes
: ¡
lstm_202/while/Identity_3IdentityClstm_202/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_202/while/NoOp*
T0*
_output_shapes
: 
lstm_202/while/Identity_4Identity&lstm_202/while/lstm_cell_202/mul_2:z:0^lstm_202/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_202/while/Identity_5Identity&lstm_202/while/lstm_cell_202/add_1:z:0^lstm_202/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
lstm_202/while/NoOpNoOp4^lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp3^lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp5^lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_202_while_identity lstm_202/while/Identity:output:0"?
lstm_202_while_identity_1"lstm_202/while/Identity_1:output:0"?
lstm_202_while_identity_2"lstm_202/while/Identity_2:output:0"?
lstm_202_while_identity_3"lstm_202/while/Identity_3:output:0"?
lstm_202_while_identity_4"lstm_202/while/Identity_4:output:0"?
lstm_202_while_identity_5"lstm_202/while/Identity_5:output:0"T
'lstm_202_while_lstm_202_strided_slice_1)lstm_202_while_lstm_202_strided_slice_1_0"~
<lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource>lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource_0"
=lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource?lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource_0"|
;lstm_202_while_lstm_cell_202_matmul_readvariableop_resource=lstm_202_while_lstm_cell_202_matmul_readvariableop_resource_0"Ì
clstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensorelstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2j
3lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp3lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp2h
2lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp2lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp2l
4lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp4lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ã
Í
while_cond_24142316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24142316___redundant_placeholder06
2while_while_cond_24142316___redundant_placeholder16
2while_while_cond_24142316___redundant_placeholder26
2while_while_cond_24142316___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
µ
¼
+__inference_lstm_203_layer_call_fn_24142082
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_203_layer_call_and_return_conditional_losses_24138664}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ã
Í
while_cond_24142459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24142459___redundant_placeholder06
2while_while_cond_24142459___redundant_placeholder16
2while_while_cond_24142459___redundant_placeholder26
2while_while_cond_24142459___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¸C
ý

lstm_202_while_body_24140611.
*lstm_202_while_lstm_202_while_loop_counter4
0lstm_202_while_lstm_202_while_maximum_iterations
lstm_202_while_placeholder 
lstm_202_while_placeholder_1 
lstm_202_while_placeholder_2 
lstm_202_while_placeholder_3-
)lstm_202_while_lstm_202_strided_slice_1_0i
elstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_202_while_lstm_cell_202_matmul_readvariableop_resource_0:	S
?lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource_0:
M
>lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource_0:	
lstm_202_while_identity
lstm_202_while_identity_1
lstm_202_while_identity_2
lstm_202_while_identity_3
lstm_202_while_identity_4
lstm_202_while_identity_5+
'lstm_202_while_lstm_202_strided_slice_1g
clstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensorN
;lstm_202_while_lstm_cell_202_matmul_readvariableop_resource:	Q
=lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource:
K
<lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource:	¢3lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp¢2lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp¢4lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp
@lstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ó
2lstm_202/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0lstm_202_while_placeholderIlstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0±
2lstm_202/while/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp=lstm_202_while_lstm_cell_202_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
#lstm_202/while/lstm_cell_202/MatMulMatMul9lstm_202/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
4lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp?lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¾
%lstm_202/while/lstm_cell_202/MatMul_1MatMullstm_202_while_placeholder_2<lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
 lstm_202/while/lstm_cell_202/addAddV2-lstm_202/while/lstm_cell_202/MatMul:product:0/lstm_202/while/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
3lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp>lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Å
$lstm_202/while/lstm_cell_202/BiasAddBiasAdd$lstm_202/while/lstm_cell_202/add:z:0;lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
,lstm_202/while/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"lstm_202/while/lstm_cell_202/splitSplit5lstm_202/while/lstm_cell_202/split/split_dim:output:0-lstm_202/while/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
$lstm_202/while/lstm_cell_202/SigmoidSigmoid+lstm_202/while/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_202/while/lstm_cell_202/Sigmoid_1Sigmoid+lstm_202/while/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
 lstm_202/while/lstm_cell_202/mulMul*lstm_202/while/lstm_cell_202/Sigmoid_1:y:0lstm_202_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_202/while/lstm_cell_202/ReluRelu+lstm_202/while/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
"lstm_202/while/lstm_cell_202/mul_1Mul(lstm_202/while/lstm_cell_202/Sigmoid:y:0/lstm_202/while/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"lstm_202/while/lstm_cell_202/add_1AddV2$lstm_202/while/lstm_cell_202/mul:z:0&lstm_202/while/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_202/while/lstm_cell_202/Sigmoid_2Sigmoid+lstm_202/while/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_202/while/lstm_cell_202/Relu_1Relu&lstm_202/while/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
"lstm_202/while/lstm_cell_202/mul_2Mul*lstm_202/while/lstm_cell_202/Sigmoid_2:y:01lstm_202/while/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
3lstm_202/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_202_while_placeholder_1lstm_202_while_placeholder&lstm_202/while/lstm_cell_202/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_202/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_202/while/addAddV2lstm_202_while_placeholderlstm_202/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_202/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_202/while/add_1AddV2*lstm_202_while_lstm_202_while_loop_counterlstm_202/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_202/while/IdentityIdentitylstm_202/while/add_1:z:0^lstm_202/while/NoOp*
T0*
_output_shapes
: 
lstm_202/while/Identity_1Identity0lstm_202_while_lstm_202_while_maximum_iterations^lstm_202/while/NoOp*
T0*
_output_shapes
: t
lstm_202/while/Identity_2Identitylstm_202/while/add:z:0^lstm_202/while/NoOp*
T0*
_output_shapes
: ¡
lstm_202/while/Identity_3IdentityClstm_202/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_202/while/NoOp*
T0*
_output_shapes
: 
lstm_202/while/Identity_4Identity&lstm_202/while/lstm_cell_202/mul_2:z:0^lstm_202/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_202/while/Identity_5Identity&lstm_202/while/lstm_cell_202/add_1:z:0^lstm_202/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
lstm_202/while/NoOpNoOp4^lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp3^lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp5^lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_202_while_identity lstm_202/while/Identity:output:0"?
lstm_202_while_identity_1"lstm_202/while/Identity_1:output:0"?
lstm_202_while_identity_2"lstm_202/while/Identity_2:output:0"?
lstm_202_while_identity_3"lstm_202/while/Identity_3:output:0"?
lstm_202_while_identity_4"lstm_202/while/Identity_4:output:0"?
lstm_202_while_identity_5"lstm_202/while/Identity_5:output:0"T
'lstm_202_while_lstm_202_strided_slice_1)lstm_202_while_lstm_202_strided_slice_1_0"~
<lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource>lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource_0"
=lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource?lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource_0"|
;lstm_202_while_lstm_cell_202_matmul_readvariableop_resource=lstm_202_while_lstm_cell_202_matmul_readvariableop_resource_0"Ì
clstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensorelstm_202_while_tensorarrayv2read_tensorlistgetitem_lstm_202_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2j
3lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp3lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp2h
2lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp2lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp2l
4lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp4lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ã
Í
while_cond_24141959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24141959___redundant_placeholder06
2while_while_cond_24141959___redundant_placeholder16
2while_while_cond_24141959___redundant_placeholder26
2while_while_cond_24141959___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
î8
ß
while_body_24142460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
4while_lstm_cell_203_matmul_readvariableop_resource_0:
J
6while_lstm_cell_203_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_203_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
2while_lstm_cell_203_matmul_readvariableop_resource:
H
4while_lstm_cell_203_matmul_1_readvariableop_resource:
B
3while_lstm_cell_203_biasadd_readvariableop_resource:	¢*while/lstm_cell_203/BiasAdd/ReadVariableOp¢)while/lstm_cell_203/MatMul/ReadVariableOp¢+while/lstm_cell_203/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0 
)while/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_203_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¼
while/lstm_cell_203/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_203_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_203/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_203/addAddV2$while/lstm_cell_203/MatMul:product:0&while/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_203_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_203/BiasAddBiasAddwhile/lstm_cell_203/add:z:02while/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_203/splitSplit,while/lstm_cell_203/split/split_dim:output:0$while/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_203/SigmoidSigmoid"while/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_1Sigmoid"while/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mulMul!while/lstm_cell_203/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_2Sigmoid"while/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_1Mulwhile/lstm_cell_203/Sigmoid:y:0!while/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/add_1AddV2while/lstm_cell_203/mul:z:0while/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_3Sigmoid"while/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/lstm_cell_203/Sigmoid_4Sigmoidwhile/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_2Mul!while/lstm_cell_203/Sigmoid_3:y:0!while/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_203/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_203/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_203/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_203/BiasAdd/ReadVariableOp*^while/lstm_cell_203/MatMul/ReadVariableOp,^while/lstm_cell_203/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_203_biasadd_readvariableop_resource5while_lstm_cell_203_biasadd_readvariableop_resource_0"n
4while_lstm_cell_203_matmul_1_readvariableop_resource6while_lstm_cell_203_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_203_matmul_readvariableop_resource4while_lstm_cell_203_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_203/BiasAdd/ReadVariableOp*while/lstm_cell_203/BiasAdd/ReadVariableOp2V
)while/lstm_cell_203/MatMul/ReadVariableOp)while/lstm_cell_203/MatMul/ReadVariableOp2Z
+while/lstm_cell_203/MatMul_1/ReadVariableOp+while/lstm_cell_203/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
è8
Ý
while_body_24141674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_202_matmul_readvariableop_resource_0:	J
6while_lstm_cell_202_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_202_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_202_matmul_readvariableop_resource:	H
4while_lstm_cell_202_matmul_1_readvariableop_resource:
B
3while_lstm_cell_202_biasadd_readvariableop_resource:	¢*while/lstm_cell_202/BiasAdd/ReadVariableOp¢)while/lstm_cell_202/MatMul/ReadVariableOp¢+while/lstm_cell_202/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_202_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_202/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_202_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_202/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_202/addAddV2$while/lstm_cell_202/MatMul:product:0&while/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_202_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_202/BiasAddBiasAddwhile/lstm_cell_202/add:z:02while/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_202/splitSplit,while/lstm_cell_202/split/split_dim:output:0$while/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_202/SigmoidSigmoid"while/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_1Sigmoid"while/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mulMul!while/lstm_cell_202/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/lstm_cell_202/ReluRelu"while/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mul_1Mulwhile/lstm_cell_202/Sigmoid:y:0&while/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/add_1AddV2while/lstm_cell_202/mul:z:0while/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_2Sigmoid"while/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_202/Relu_1Reluwhile/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_202/mul_2Mul!while/lstm_cell_202/Sigmoid_2:y:0(while/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_202/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_202/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_202/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_202/BiasAdd/ReadVariableOp*^while/lstm_cell_202/MatMul/ReadVariableOp,^while/lstm_cell_202/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_202_biasadd_readvariableop_resource5while_lstm_cell_202_biasadd_readvariableop_resource_0"n
4while_lstm_cell_202_matmul_1_readvariableop_resource6while_lstm_cell_202_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_202_matmul_readvariableop_resource4while_lstm_cell_202_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_202/BiasAdd/ReadVariableOp*while/lstm_cell_202/BiasAdd/ReadVariableOp2V
)while/lstm_cell_202/MatMul/ReadVariableOp)while/lstm_cell_202/MatMul/ReadVariableOp2Z
+while/lstm_cell_202/MatMul_1/ReadVariableOp+while/lstm_cell_202/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¿
Í
while_cond_24139138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24139138___redundant_placeholder06
2while_while_cond_24139138___redundant_placeholder16
2while_while_cond_24139138___redundant_placeholder26
2while_while_cond_24139138___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

º
+__inference_lstm_203_layer_call_fn_24142104

inputs
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_203_layer_call_and_return_conditional_losses_24139524t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À


lstm_202_while_cond_24141041.
*lstm_202_while_lstm_202_while_loop_counter4
0lstm_202_while_lstm_202_while_maximum_iterations
lstm_202_while_placeholder 
lstm_202_while_placeholder_1 
lstm_202_while_placeholder_2 
lstm_202_while_placeholder_30
,lstm_202_while_less_lstm_202_strided_slice_1H
Dlstm_202_while_lstm_202_while_cond_24141041___redundant_placeholder0H
Dlstm_202_while_lstm_202_while_cond_24141041___redundant_placeholder1H
Dlstm_202_while_lstm_202_while_cond_24141041___redundant_placeholder2H
Dlstm_202_while_lstm_202_while_cond_24141041___redundant_placeholder3
lstm_202_while_identity

lstm_202/while/LessLesslstm_202_while_placeholder,lstm_202_while_less_lstm_202_strided_slice_1*
T0*
_output_shapes
: ]
lstm_202/while/IdentityIdentitylstm_202/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_202_while_identity lstm_202/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ã
Í
while_cond_24138594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24138594___redundant_placeholder06
2while_while_cond_24138594___redundant_placeholder16
2while_while_cond_24138594___redundant_placeholder26
2while_while_cond_24138594___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÿ
û
0__inference_lstm_cell_203_layer_call_fn_24143489

inputs
states_0
states_1
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24138727p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1

f
-__inference_dropout_75_layer_call_fn_24142054

inputs
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_75_layer_call_and_return_conditional_losses_24140118t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
-__inference_dropout_76_layer_call_fn_24142697

inputs
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_76_layer_call_and_return_conditional_losses_24139930t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
L
¤
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143048
inputs_0?
,lstm_cell_204_matmul_readvariableop_resource:	@@
.lstm_cell_204_matmul_1_readvariableop_resource:@;
-lstm_cell_204_biasadd_readvariableop_resource:@
identity¢$lstm_cell_204/BiasAdd/ReadVariableOp¢#lstm_cell_204/MatMul/ReadVariableOp¢%lstm_cell_204/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24142963*
condR
while_cond_24142962*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

¹
+__inference_lstm_202_layer_call_fn_24141461

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_202_layer_call_and_return_conditional_losses_24139367t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
 
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140983

inputsH
5lstm_202_lstm_cell_202_matmul_readvariableop_resource:	K
7lstm_202_lstm_cell_202_matmul_1_readvariableop_resource:
E
6lstm_202_lstm_cell_202_biasadd_readvariableop_resource:	I
5lstm_203_lstm_cell_203_matmul_readvariableop_resource:
K
7lstm_203_lstm_cell_203_matmul_1_readvariableop_resource:
E
6lstm_203_lstm_cell_203_biasadd_readvariableop_resource:	H
5lstm_204_lstm_cell_204_matmul_readvariableop_resource:	@I
7lstm_204_lstm_cell_204_matmul_1_readvariableop_resource:@D
6lstm_204_lstm_cell_204_biasadd_readvariableop_resource:@:
(dense_194_matmul_readvariableop_resource:7
)dense_194_biasadd_readvariableop_resource:
identity¢ dense_194/BiasAdd/ReadVariableOp¢dense_194/MatMul/ReadVariableOp¢-lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp¢,lstm_202/lstm_cell_202/MatMul/ReadVariableOp¢.lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp¢lstm_202/while¢-lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp¢,lstm_203/lstm_cell_203/MatMul/ReadVariableOp¢.lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp¢lstm_203/while¢-lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp¢,lstm_204/lstm_cell_204/MatMul/ReadVariableOp¢.lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp¢lstm_204/whileD
lstm_202/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_202/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_202/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_202/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_202/strided_sliceStridedSlicelstm_202/Shape:output:0%lstm_202/strided_slice/stack:output:0'lstm_202/strided_slice/stack_1:output:0'lstm_202/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
lstm_202/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_202/zeros/packedPacklstm_202/strided_slice:output:0 lstm_202/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_202/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_202/zerosFilllstm_202/zeros/packed:output:0lstm_202/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
lstm_202/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_202/zeros_1/packedPacklstm_202/strided_slice:output:0"lstm_202/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_202/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_202/zeros_1Fill lstm_202/zeros_1/packed:output:0lstm_202/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
lstm_202/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_202/transpose	Transposeinputs lstm_202/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
lstm_202/Shape_1Shapelstm_202/transpose:y:0*
T0*
_output_shapes
:h
lstm_202/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_202/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_202/strided_slice_1StridedSlicelstm_202/Shape_1:output:0'lstm_202/strided_slice_1/stack:output:0)lstm_202/strided_slice_1/stack_1:output:0)lstm_202/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_202/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÏ
lstm_202/TensorArrayV2TensorListReserve-lstm_202/TensorArrayV2/element_shape:output:0!lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_202/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   û
0lstm_202/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_202/transpose:y:0Glstm_202/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_202/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_202/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_202/strided_slice_2StridedSlicelstm_202/transpose:y:0'lstm_202/strided_slice_2/stack:output:0)lstm_202/strided_slice_2/stack_1:output:0)lstm_202/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask£
,lstm_202/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp5lstm_202_lstm_cell_202_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0³
lstm_202/lstm_cell_202/MatMulMatMul!lstm_202/strided_slice_2:output:04lstm_202/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.lstm_202/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp7lstm_202_lstm_cell_202_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0­
lstm_202/lstm_cell_202/MatMul_1MatMullstm_202/zeros:output:06lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
lstm_202/lstm_cell_202/addAddV2'lstm_202/lstm_cell_202/MatMul:product:0)lstm_202/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
-lstm_202/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp6lstm_202_lstm_cell_202_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0³
lstm_202/lstm_cell_202/BiasAddBiasAddlstm_202/lstm_cell_202/add:z:05lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
&lstm_202/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ÿ
lstm_202/lstm_cell_202/splitSplit/lstm_202/lstm_cell_202/split/split_dim:output:0'lstm_202/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
lstm_202/lstm_cell_202/SigmoidSigmoid%lstm_202/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_202/lstm_cell_202/Sigmoid_1Sigmoid%lstm_202/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_202/lstm_cell_202/mulMul$lstm_202/lstm_cell_202/Sigmoid_1:y:0lstm_202/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_202/lstm_cell_202/ReluRelu%lstm_202/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
lstm_202/lstm_cell_202/mul_1Mul"lstm_202/lstm_cell_202/Sigmoid:y:0)lstm_202/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_202/lstm_cell_202/add_1AddV2lstm_202/lstm_cell_202/mul:z:0 lstm_202/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_202/lstm_cell_202/Sigmoid_2Sigmoid%lstm_202/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_202/lstm_cell_202/Relu_1Relu lstm_202/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
lstm_202/lstm_cell_202/mul_2Mul$lstm_202/lstm_cell_202/Sigmoid_2:y:0+lstm_202/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
&lstm_202/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ó
lstm_202/TensorArrayV2_1TensorListReserve/lstm_202/TensorArrayV2_1/element_shape:output:0!lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_202/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_202/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ]
lstm_202/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_202/whileWhile$lstm_202/while/loop_counter:output:0*lstm_202/while/maximum_iterations:output:0lstm_202/time:output:0!lstm_202/TensorArrayV2_1:handle:0lstm_202/zeros:output:0lstm_202/zeros_1:output:0!lstm_202/strided_slice_1:output:0@lstm_202/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_202_lstm_cell_202_matmul_readvariableop_resource7lstm_202_lstm_cell_202_matmul_1_readvariableop_resource6lstm_202_lstm_cell_202_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *(
body R
lstm_202_while_body_24140611*(
cond R
lstm_202_while_cond_24140610*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
9lstm_202/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Þ
+lstm_202/TensorArrayV2Stack/TensorListStackTensorListStacklstm_202/while:output:3Blstm_202/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0q
lstm_202/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 lstm_202/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
lstm_202/strided_slice_3StridedSlice4lstm_202/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_202/strided_slice_3/stack:output:0)lstm_202/strided_slice_3/stack_1:output:0)lstm_202/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskn
lstm_202/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
lstm_202/transpose_1	Transpose4lstm_202/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_202/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_202/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
dropout_75/IdentityIdentitylstm_202/transpose_1:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_203/ShapeShapedropout_75/Identity:output:0*
T0*
_output_shapes
:f
lstm_203/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_203/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_203/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_203/strided_sliceStridedSlicelstm_203/Shape:output:0%lstm_203/strided_slice/stack:output:0'lstm_203/strided_slice/stack_1:output:0'lstm_203/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
lstm_203/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_203/zeros/packedPacklstm_203/strided_slice:output:0 lstm_203/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_203/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_203/zerosFilllstm_203/zeros/packed:output:0lstm_203/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
lstm_203/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_203/zeros_1/packedPacklstm_203/strided_slice:output:0"lstm_203/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_203/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_203/zeros_1Fill lstm_203/zeros_1/packed:output:0lstm_203/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
lstm_203/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_203/transpose	Transposedropout_75/Identity:output:0 lstm_203/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
lstm_203/Shape_1Shapelstm_203/transpose:y:0*
T0*
_output_shapes
:h
lstm_203/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_203/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_203/strided_slice_1StridedSlicelstm_203/Shape_1:output:0'lstm_203/strided_slice_1/stack:output:0)lstm_203/strided_slice_1/stack_1:output:0)lstm_203/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_203/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÏ
lstm_203/TensorArrayV2TensorListReserve-lstm_203/TensorArrayV2/element_shape:output:0!lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_203/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   û
0lstm_203/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_203/transpose:y:0Glstm_203/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_203/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_203/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_203/strided_slice_2StridedSlicelstm_203/transpose:y:0'lstm_203/strided_slice_2/stack:output:0)lstm_203/strided_slice_2/stack_1:output:0)lstm_203/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¤
,lstm_203/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp5lstm_203_lstm_cell_203_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0³
lstm_203/lstm_cell_203/MatMulMatMul!lstm_203/strided_slice_2:output:04lstm_203/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.lstm_203/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp7lstm_203_lstm_cell_203_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0­
lstm_203/lstm_cell_203/MatMul_1MatMullstm_203/zeros:output:06lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
lstm_203/lstm_cell_203/addAddV2'lstm_203/lstm_cell_203/MatMul:product:0)lstm_203/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
-lstm_203/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp6lstm_203_lstm_cell_203_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0³
lstm_203/lstm_cell_203/BiasAddBiasAddlstm_203/lstm_cell_203/add:z:05lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
&lstm_203/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ÿ
lstm_203/lstm_cell_203/splitSplit/lstm_203/lstm_cell_203/split/split_dim:output:0'lstm_203/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
lstm_203/lstm_cell_203/SigmoidSigmoid%lstm_203/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_203/lstm_cell_203/Sigmoid_1Sigmoid%lstm_203/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_203/lstm_cell_203/mulMul$lstm_203/lstm_cell_203/Sigmoid_1:y:0lstm_203/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_203/lstm_cell_203/Sigmoid_2Sigmoid%lstm_203/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_203/lstm_cell_203/mul_1Mul"lstm_203/lstm_cell_203/Sigmoid:y:0$lstm_203/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_203/lstm_cell_203/add_1AddV2lstm_203/lstm_cell_203/mul:z:0 lstm_203/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_203/lstm_cell_203/Sigmoid_3Sigmoid%lstm_203/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_203/lstm_cell_203/Sigmoid_4Sigmoid lstm_203/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
lstm_203/lstm_cell_203/mul_2Mul$lstm_203/lstm_cell_203/Sigmoid_3:y:0$lstm_203/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
&lstm_203/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ó
lstm_203/TensorArrayV2_1TensorListReserve/lstm_203/TensorArrayV2_1/element_shape:output:0!lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_203/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_203/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ]
lstm_203/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_203/whileWhile$lstm_203/while/loop_counter:output:0*lstm_203/while/maximum_iterations:output:0lstm_203/time:output:0!lstm_203/TensorArrayV2_1:handle:0lstm_203/zeros:output:0lstm_203/zeros_1:output:0!lstm_203/strided_slice_1:output:0@lstm_203/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_203_lstm_cell_203_matmul_readvariableop_resource7lstm_203_lstm_cell_203_matmul_1_readvariableop_resource6lstm_203_lstm_cell_203_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *(
body R
lstm_203_while_body_24140751*(
cond R
lstm_203_while_cond_24140750*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
9lstm_203/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Þ
+lstm_203/TensorArrayV2Stack/TensorListStackTensorListStacklstm_203/while:output:3Blstm_203/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0q
lstm_203/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 lstm_203/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
lstm_203/strided_slice_3StridedSlice4lstm_203/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_203/strided_slice_3/stack:output:0)lstm_203/strided_slice_3/stack_1:output:0)lstm_203/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskn
lstm_203/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
lstm_203/transpose_1	Transpose4lstm_203/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_203/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_203/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    p
dropout_76/IdentityIdentitylstm_203/transpose_1:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_204/ShapeShapedropout_76/Identity:output:0*
T0*
_output_shapes
:f
lstm_204/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_204/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_204/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_204/strided_sliceStridedSlicelstm_204/Shape:output:0%lstm_204/strided_slice/stack:output:0'lstm_204/strided_slice/stack_1:output:0'lstm_204/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_204/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_204/zeros/packedPacklstm_204/strided_slice:output:0 lstm_204/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_204/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_204/zerosFilllstm_204/zeros/packed:output:0lstm_204/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_204/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_204/zeros_1/packedPacklstm_204/strided_slice:output:0"lstm_204/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_204/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_204/zeros_1Fill lstm_204/zeros_1/packed:output:0lstm_204/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
lstm_204/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_204/transpose	Transposedropout_76/Identity:output:0 lstm_204/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
lstm_204/Shape_1Shapelstm_204/transpose:y:0*
T0*
_output_shapes
:h
lstm_204/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_204/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_204/strided_slice_1StridedSlicelstm_204/Shape_1:output:0'lstm_204/strided_slice_1/stack:output:0)lstm_204/strided_slice_1/stack_1:output:0)lstm_204/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_204/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÏ
lstm_204/TensorArrayV2TensorListReserve-lstm_204/TensorArrayV2/element_shape:output:0!lstm_204/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_204/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   û
0lstm_204/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_204/transpose:y:0Glstm_204/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_204/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_204/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_204/strided_slice_2StridedSlicelstm_204/transpose:y:0'lstm_204/strided_slice_2/stack:output:0)lstm_204/strided_slice_2/stack_1:output:0)lstm_204/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask£
,lstm_204/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp5lstm_204_lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0²
lstm_204/lstm_cell_204/MatMulMatMul!lstm_204/strided_slice_2:output:04lstm_204/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
.lstm_204/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp7lstm_204_lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0¬
lstm_204/lstm_cell_204/MatMul_1MatMullstm_204/zeros:output:06lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@©
lstm_204/lstm_cell_204/addAddV2'lstm_204/lstm_cell_204/MatMul:product:0)lstm_204/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
-lstm_204/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp6lstm_204_lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0²
lstm_204/lstm_cell_204/BiasAddBiasAddlstm_204/lstm_cell_204/add:z:05lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
&lstm_204/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :û
lstm_204/lstm_cell_204/splitSplit/lstm_204/lstm_cell_204/split/split_dim:output:0'lstm_204/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
lstm_204/lstm_cell_204/SigmoidSigmoid%lstm_204/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_204/lstm_cell_204/Sigmoid_1Sigmoid%lstm_204/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_204/lstm_cell_204/mulMul$lstm_204/lstm_cell_204/Sigmoid_1:y:0lstm_204/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_204/lstm_cell_204/ReluRelu%lstm_204/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_204/lstm_cell_204/mul_1Mul"lstm_204/lstm_cell_204/Sigmoid:y:0)lstm_204/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_204/lstm_cell_204/add_1AddV2lstm_204/lstm_cell_204/mul:z:0 lstm_204/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_204/lstm_cell_204/Sigmoid_2Sigmoid%lstm_204/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_204/lstm_cell_204/Relu_1Relu lstm_204/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
lstm_204/lstm_cell_204/mul_2Mul$lstm_204/lstm_cell_204/Sigmoid_2:y:0+lstm_204/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
&lstm_204/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   g
%lstm_204/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_204/TensorArrayV2_1TensorListReserve/lstm_204/TensorArrayV2_1/element_shape:output:0.lstm_204/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_204/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_204/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ]
lstm_204/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_204/whileWhile$lstm_204/while/loop_counter:output:0*lstm_204/while/maximum_iterations:output:0lstm_204/time:output:0!lstm_204/TensorArrayV2_1:handle:0lstm_204/zeros:output:0lstm_204/zeros_1:output:0!lstm_204/strided_slice_1:output:0@lstm_204/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_204_lstm_cell_204_matmul_readvariableop_resource7lstm_204_lstm_cell_204_matmul_1_readvariableop_resource6lstm_204_lstm_cell_204_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *(
body R
lstm_204_while_body_24140892*(
cond R
lstm_204_while_cond_24140891*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
9lstm_204/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ñ
+lstm_204/TensorArrayV2Stack/TensorListStackTensorListStacklstm_204/while:output:3Blstm_204/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsq
lstm_204/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 lstm_204/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_204/strided_slice_3StridedSlice4lstm_204/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_204/strided_slice_3/stack:output:0)lstm_204/strided_slice_3/stack_1:output:0)lstm_204/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskn
lstm_204/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ±
lstm_204/transpose_1	Transpose4lstm_204/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_204/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_204/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_194/MatMul/ReadVariableOpReadVariableOp(dense_194_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_194/MatMulMatMul!lstm_204/strided_slice_3:output:0'dense_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_194/BiasAdd/ReadVariableOpReadVariableOp)dense_194_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_194/BiasAddBiasAdddense_194/MatMul:product:0(dense_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_194/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp!^dense_194/BiasAdd/ReadVariableOp ^dense_194/MatMul/ReadVariableOp.^lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp-^lstm_202/lstm_cell_202/MatMul/ReadVariableOp/^lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp^lstm_202/while.^lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp-^lstm_203/lstm_cell_203/MatMul/ReadVariableOp/^lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp^lstm_203/while.^lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp-^lstm_204/lstm_cell_204/MatMul/ReadVariableOp/^lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp^lstm_204/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_194/BiasAdd/ReadVariableOp dense_194/BiasAdd/ReadVariableOp2B
dense_194/MatMul/ReadVariableOpdense_194/MatMul/ReadVariableOp2^
-lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp-lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp2\
,lstm_202/lstm_cell_202/MatMul/ReadVariableOp,lstm_202/lstm_cell_202/MatMul/ReadVariableOp2`
.lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp.lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp2 
lstm_202/whilelstm_202/while2^
-lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp-lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp2\
,lstm_203/lstm_cell_203/MatMul/ReadVariableOp,lstm_203/lstm_cell_203/MatMul/ReadVariableOp2`
.lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp.lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp2 
lstm_203/whilelstm_203/while2^
-lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp-lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp2\
,lstm_204/lstm_cell_204/MatMul/ReadVariableOp,lstm_204/lstm_cell_204/MatMul/ReadVariableOp2`
.lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp.lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp2 
lstm_204/whilelstm_204/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
X
¦
!__inference__traced_save_24143794
file_prefix/
+savev2_dense_194_kernel_read_readvariableop-
)savev2_dense_194_bias_read_readvariableop<
8savev2_lstm_202_lstm_cell_202_kernel_read_readvariableopF
Bsavev2_lstm_202_lstm_cell_202_recurrent_kernel_read_readvariableop:
6savev2_lstm_202_lstm_cell_202_bias_read_readvariableop<
8savev2_lstm_203_lstm_cell_203_kernel_read_readvariableopF
Bsavev2_lstm_203_lstm_cell_203_recurrent_kernel_read_readvariableop:
6savev2_lstm_203_lstm_cell_203_bias_read_readvariableop<
8savev2_lstm_204_lstm_cell_204_kernel_read_readvariableopF
Bsavev2_lstm_204_lstm_cell_204_recurrent_kernel_read_readvariableop:
6savev2_lstm_204_lstm_cell_204_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_194_kernel_m_read_readvariableop4
0savev2_adam_dense_194_bias_m_read_readvariableopC
?savev2_adam_lstm_202_lstm_cell_202_kernel_m_read_readvariableopM
Isavev2_adam_lstm_202_lstm_cell_202_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_202_lstm_cell_202_bias_m_read_readvariableopC
?savev2_adam_lstm_203_lstm_cell_203_kernel_m_read_readvariableopM
Isavev2_adam_lstm_203_lstm_cell_203_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_203_lstm_cell_203_bias_m_read_readvariableopC
?savev2_adam_lstm_204_lstm_cell_204_kernel_m_read_readvariableopM
Isavev2_adam_lstm_204_lstm_cell_204_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_204_lstm_cell_204_bias_m_read_readvariableop6
2savev2_adam_dense_194_kernel_v_read_readvariableop4
0savev2_adam_dense_194_bias_v_read_readvariableopC
?savev2_adam_lstm_202_lstm_cell_202_kernel_v_read_readvariableopM
Isavev2_adam_lstm_202_lstm_cell_202_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_202_lstm_cell_202_bias_v_read_readvariableopC
?savev2_adam_lstm_203_lstm_cell_203_kernel_v_read_readvariableopM
Isavev2_adam_lstm_203_lstm_cell_203_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_203_lstm_cell_203_bias_v_read_readvariableopC
?savev2_adam_lstm_204_lstm_cell_204_kernel_v_read_readvariableopM
Isavev2_adam_lstm_204_lstm_cell_204_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_204_lstm_cell_204_bias_v_read_readvariableop
savev2_const

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
: Å
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*î
valueäBá)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¿
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ð
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_194_kernel_read_readvariableop)savev2_dense_194_bias_read_readvariableop8savev2_lstm_202_lstm_cell_202_kernel_read_readvariableopBsavev2_lstm_202_lstm_cell_202_recurrent_kernel_read_readvariableop6savev2_lstm_202_lstm_cell_202_bias_read_readvariableop8savev2_lstm_203_lstm_cell_203_kernel_read_readvariableopBsavev2_lstm_203_lstm_cell_203_recurrent_kernel_read_readvariableop6savev2_lstm_203_lstm_cell_203_bias_read_readvariableop8savev2_lstm_204_lstm_cell_204_kernel_read_readvariableopBsavev2_lstm_204_lstm_cell_204_recurrent_kernel_read_readvariableop6savev2_lstm_204_lstm_cell_204_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_194_kernel_m_read_readvariableop0savev2_adam_dense_194_bias_m_read_readvariableop?savev2_adam_lstm_202_lstm_cell_202_kernel_m_read_readvariableopIsavev2_adam_lstm_202_lstm_cell_202_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_202_lstm_cell_202_bias_m_read_readvariableop?savev2_adam_lstm_203_lstm_cell_203_kernel_m_read_readvariableopIsavev2_adam_lstm_203_lstm_cell_203_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_203_lstm_cell_203_bias_m_read_readvariableop?savev2_adam_lstm_204_lstm_cell_204_kernel_m_read_readvariableopIsavev2_adam_lstm_204_lstm_cell_204_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_204_lstm_cell_204_bias_m_read_readvariableop2savev2_adam_dense_194_kernel_v_read_readvariableop0savev2_adam_dense_194_bias_v_read_readvariableop?savev2_adam_lstm_202_lstm_cell_202_kernel_v_read_readvariableopIsavev2_adam_lstm_202_lstm_cell_202_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_202_lstm_cell_202_bias_v_read_readvariableop?savev2_adam_lstm_203_lstm_cell_203_kernel_v_read_readvariableopIsavev2_adam_lstm_203_lstm_cell_203_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_203_lstm_cell_203_bias_v_read_readvariableop?savev2_adam_lstm_204_lstm_cell_204_kernel_v_read_readvariableopIsavev2_adam_lstm_204_lstm_cell_204_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_204_lstm_cell_204_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	
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

identity_1Identity_1:output:0*ß
_input_shapesÍ
Ê: :::	:
::
:
::	@:@:@: : : : : : : :::	:
::
:
::	@:@:@:::	:
::
:
::	@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::%	!

_output_shapes
:	@:$
 

_output_shapes

:@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:: 

_output_shapes
::% !

_output_shapes
:	:&!"
 
_output_shapes
:
:!"

_output_shapes	
::&#"
 
_output_shapes
:
:&$"
 
_output_shapes
:
:!%

_output_shapes	
::%&!

_output_shapes
:	@:$' 

_output_shapes

:@: (

_output_shapes
:@:)

_output_shapes
: 

¸
+__inference_lstm_204_layer_call_fn_24142725
inputs_0
unknown:	@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139016o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¾C
ÿ

lstm_203_while_body_24140751.
*lstm_203_while_lstm_203_while_loop_counter4
0lstm_203_while_lstm_203_while_maximum_iterations
lstm_203_while_placeholder 
lstm_203_while_placeholder_1 
lstm_203_while_placeholder_2 
lstm_203_while_placeholder_3-
)lstm_203_while_lstm_203_strided_slice_1_0i
elstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_203_while_lstm_cell_203_matmul_readvariableop_resource_0:
S
?lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource_0:
M
>lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource_0:	
lstm_203_while_identity
lstm_203_while_identity_1
lstm_203_while_identity_2
lstm_203_while_identity_3
lstm_203_while_identity_4
lstm_203_while_identity_5+
'lstm_203_while_lstm_203_strided_slice_1g
clstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensorO
;lstm_203_while_lstm_cell_203_matmul_readvariableop_resource:
Q
=lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource:
K
<lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource:	¢3lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp¢2lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp¢4lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp
@lstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ô
2lstm_203/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0lstm_203_while_placeholderIlstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0²
2lstm_203/while/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp=lstm_203_while_lstm_cell_203_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0×
#lstm_203/while/lstm_cell_203/MatMulMatMul9lstm_203/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
4lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp?lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¾
%lstm_203/while/lstm_cell_203/MatMul_1MatMullstm_203_while_placeholder_2<lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
 lstm_203/while/lstm_cell_203/addAddV2-lstm_203/while/lstm_cell_203/MatMul:product:0/lstm_203/while/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
3lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp>lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Å
$lstm_203/while/lstm_cell_203/BiasAddBiasAdd$lstm_203/while/lstm_cell_203/add:z:0;lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
,lstm_203/while/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"lstm_203/while/lstm_cell_203/splitSplit5lstm_203/while/lstm_cell_203/split/split_dim:output:0-lstm_203/while/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
$lstm_203/while/lstm_cell_203/SigmoidSigmoid+lstm_203/while/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_203/while/lstm_cell_203/Sigmoid_1Sigmoid+lstm_203/while/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
 lstm_203/while/lstm_cell_203/mulMul*lstm_203/while/lstm_cell_203/Sigmoid_1:y:0lstm_203_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_203/while/lstm_cell_203/Sigmoid_2Sigmoid+lstm_203/while/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
"lstm_203/while/lstm_cell_203/mul_1Mul(lstm_203/while/lstm_cell_203/Sigmoid:y:0*lstm_203/while/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"lstm_203/while/lstm_cell_203/add_1AddV2$lstm_203/while/lstm_cell_203/mul:z:0&lstm_203/while/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_203/while/lstm_cell_203/Sigmoid_3Sigmoid+lstm_203/while/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_203/while/lstm_cell_203/Sigmoid_4Sigmoid&lstm_203/while/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
"lstm_203/while/lstm_cell_203/mul_2Mul*lstm_203/while/lstm_cell_203/Sigmoid_3:y:0*lstm_203/while/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
3lstm_203/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_203_while_placeholder_1lstm_203_while_placeholder&lstm_203/while/lstm_cell_203/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_203/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_203/while/addAddV2lstm_203_while_placeholderlstm_203/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_203/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_203/while/add_1AddV2*lstm_203_while_lstm_203_while_loop_counterlstm_203/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_203/while/IdentityIdentitylstm_203/while/add_1:z:0^lstm_203/while/NoOp*
T0*
_output_shapes
: 
lstm_203/while/Identity_1Identity0lstm_203_while_lstm_203_while_maximum_iterations^lstm_203/while/NoOp*
T0*
_output_shapes
: t
lstm_203/while/Identity_2Identitylstm_203/while/add:z:0^lstm_203/while/NoOp*
T0*
_output_shapes
: ¡
lstm_203/while/Identity_3IdentityClstm_203/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_203/while/NoOp*
T0*
_output_shapes
: 
lstm_203/while/Identity_4Identity&lstm_203/while/lstm_cell_203/mul_2:z:0^lstm_203/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_203/while/Identity_5Identity&lstm_203/while/lstm_cell_203/add_1:z:0^lstm_203/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
lstm_203/while/NoOpNoOp4^lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp3^lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp5^lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_203_while_identity lstm_203/while/Identity:output:0"?
lstm_203_while_identity_1"lstm_203/while/Identity_1:output:0"?
lstm_203_while_identity_2"lstm_203/while/Identity_2:output:0"?
lstm_203_while_identity_3"lstm_203/while/Identity_3:output:0"?
lstm_203_while_identity_4"lstm_203/while/Identity_4:output:0"?
lstm_203_while_identity_5"lstm_203/while/Identity_5:output:0"T
'lstm_203_while_lstm_203_strided_slice_1)lstm_203_while_lstm_203_strided_slice_1_0"~
<lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource>lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource_0"
=lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource?lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource_0"|
;lstm_203_while_lstm_cell_203_matmul_readvariableop_resource=lstm_203_while_lstm_cell_203_matmul_readvariableop_resource_0"Ì
clstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensorelstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2j
3lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp3lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp2h
2lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp2lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp2l
4lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp4lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ã
Í
while_cond_24141530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24141530___redundant_placeholder06
2while_while_cond_24141530___redundant_placeholder16
2while_while_cond_24141530___redundant_placeholder26
2while_while_cond_24141530___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
µ
¼
+__inference_lstm_203_layer_call_fn_24142093
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_203_layer_call_and_return_conditional_losses_24138855}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ü

K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24143521

inputs
states_0
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¿
Í
while_cond_24142962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24142962___redundant_placeholder06
2while_while_cond_24142962___redundant_placeholder16
2while_while_cond_24142962___redundant_placeholder26
2while_while_cond_24142962___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
©9

F__inference_lstm_204_layer_call_and_return_conditional_losses_24139016

inputs)
lstm_cell_204_24138932:	@(
lstm_cell_204_24138934:@$
lstm_cell_204_24138936:@
identity¢%lstm_cell_204/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
%lstm_cell_204/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_204_24138932lstm_cell_204_24138934lstm_cell_204_24138936*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24138931n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_204_24138932lstm_cell_204_24138934lstm_cell_204_24138936*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24138946*
condR
while_cond_24138945*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
NoOpNoOp&^lstm_cell_204/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_204/StatefulPartitionedCall%lstm_cell_204/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
¶
+__inference_lstm_204_layer_call_fn_24142758

inputs
unknown:	@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139901o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
û
0__inference_lstm_cell_203_layer_call_fn_24143472

inputs
states_0
states_1
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24138581p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¿
Í
while_cond_24139815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24139815___redundant_placeholder06
2while_while_cond_24139815___redundant_placeholder16
2while_while_cond_24139815___redundant_placeholder26
2while_while_cond_24139815___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
È

,__inference_dense_194_layer_call_fn_24143347

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_194_layer_call_and_return_conditional_losses_24139701o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
U
á
+sequential_116_lstm_202_while_body_24137792L
Hsequential_116_lstm_202_while_sequential_116_lstm_202_while_loop_counterR
Nsequential_116_lstm_202_while_sequential_116_lstm_202_while_maximum_iterations-
)sequential_116_lstm_202_while_placeholder/
+sequential_116_lstm_202_while_placeholder_1/
+sequential_116_lstm_202_while_placeholder_2/
+sequential_116_lstm_202_while_placeholder_3K
Gsequential_116_lstm_202_while_sequential_116_lstm_202_strided_slice_1_0
sequential_116_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_202_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_116_lstm_202_while_lstm_cell_202_matmul_readvariableop_resource_0:	b
Nsequential_116_lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource_0:
\
Msequential_116_lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource_0:	*
&sequential_116_lstm_202_while_identity,
(sequential_116_lstm_202_while_identity_1,
(sequential_116_lstm_202_while_identity_2,
(sequential_116_lstm_202_while_identity_3,
(sequential_116_lstm_202_while_identity_4,
(sequential_116_lstm_202_while_identity_5I
Esequential_116_lstm_202_while_sequential_116_lstm_202_strided_slice_1
sequential_116_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_202_tensorarrayunstack_tensorlistfromtensor]
Jsequential_116_lstm_202_while_lstm_cell_202_matmul_readvariableop_resource:	`
Lsequential_116_lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource:
Z
Ksequential_116_lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource:	¢Bsequential_116/lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp¢Asequential_116/lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp¢Csequential_116/lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp 
Osequential_116/lstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
Asequential_116/lstm_202/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_116_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_202_tensorarrayunstack_tensorlistfromtensor_0)sequential_116_lstm_202_while_placeholderXsequential_116/lstm_202/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ï
Asequential_116/lstm_202/while/lstm_cell_202/MatMul/ReadVariableOpReadVariableOpLsequential_116_lstm_202_while_lstm_cell_202_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
2sequential_116/lstm_202/while/lstm_cell_202/MatMulMatMulHsequential_116/lstm_202/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_116/lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
Csequential_116/lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOpNsequential_116_lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ë
4sequential_116/lstm_202/while/lstm_cell_202/MatMul_1MatMul+sequential_116_lstm_202_while_placeholder_2Ksequential_116/lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
/sequential_116/lstm_202/while/lstm_cell_202/addAddV2<sequential_116/lstm_202/while/lstm_cell_202/MatMul:product:0>sequential_116/lstm_202/while/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
Bsequential_116/lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOpMsequential_116_lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ò
3sequential_116/lstm_202/while/lstm_cell_202/BiasAddBiasAdd3sequential_116/lstm_202/while/lstm_cell_202/add:z:0Jsequential_116/lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
;sequential_116/lstm_202/while/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¾
1sequential_116/lstm_202/while/lstm_cell_202/splitSplitDsequential_116/lstm_202/while/lstm_cell_202/split/split_dim:output:0<sequential_116/lstm_202/while/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split­
3sequential_116/lstm_202/while/lstm_cell_202/SigmoidSigmoid:sequential_116/lstm_202/while/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
5sequential_116/lstm_202/while/lstm_cell_202/Sigmoid_1Sigmoid:sequential_116/lstm_202/while/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
/sequential_116/lstm_202/while/lstm_cell_202/mulMul9sequential_116/lstm_202/while/lstm_cell_202/Sigmoid_1:y:0+sequential_116_lstm_202_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0sequential_116/lstm_202/while/lstm_cell_202/ReluRelu:sequential_116/lstm_202/while/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
1sequential_116/lstm_202/while/lstm_cell_202/mul_1Mul7sequential_116/lstm_202/while/lstm_cell_202/Sigmoid:y:0>sequential_116/lstm_202/while/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
1sequential_116/lstm_202/while/lstm_cell_202/add_1AddV23sequential_116/lstm_202/while/lstm_cell_202/mul:z:05sequential_116/lstm_202/while/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
5sequential_116/lstm_202/while/lstm_cell_202/Sigmoid_2Sigmoid:sequential_116/lstm_202/while/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
2sequential_116/lstm_202/while/lstm_cell_202/Relu_1Relu5sequential_116/lstm_202/while/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
1sequential_116/lstm_202/while/lstm_cell_202/mul_2Mul9sequential_116/lstm_202/while/lstm_cell_202/Sigmoid_2:y:0@sequential_116/lstm_202/while/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
Bsequential_116/lstm_202/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_116_lstm_202_while_placeholder_1)sequential_116_lstm_202_while_placeholder5sequential_116/lstm_202/while/lstm_cell_202/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_116/lstm_202/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_116/lstm_202/while/addAddV2)sequential_116_lstm_202_while_placeholder,sequential_116/lstm_202/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_116/lstm_202/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_116/lstm_202/while/add_1AddV2Hsequential_116_lstm_202_while_sequential_116_lstm_202_while_loop_counter.sequential_116/lstm_202/while/add_1/y:output:0*
T0*
_output_shapes
: ¡
&sequential_116/lstm_202/while/IdentityIdentity'sequential_116/lstm_202/while/add_1:z:0#^sequential_116/lstm_202/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_116/lstm_202/while/Identity_1IdentityNsequential_116_lstm_202_while_sequential_116_lstm_202_while_maximum_iterations#^sequential_116/lstm_202/while/NoOp*
T0*
_output_shapes
: ¡
(sequential_116/lstm_202/while/Identity_2Identity%sequential_116/lstm_202/while/add:z:0#^sequential_116/lstm_202/while/NoOp*
T0*
_output_shapes
: Î
(sequential_116/lstm_202/while/Identity_3IdentityRsequential_116/lstm_202/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_116/lstm_202/while/NoOp*
T0*
_output_shapes
: Ã
(sequential_116/lstm_202/while/Identity_4Identity5sequential_116/lstm_202/while/lstm_cell_202/mul_2:z:0#^sequential_116/lstm_202/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
(sequential_116/lstm_202/while/Identity_5Identity5sequential_116/lstm_202/while/lstm_cell_202/add_1:z:0#^sequential_116/lstm_202/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
"sequential_116/lstm_202/while/NoOpNoOpC^sequential_116/lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOpB^sequential_116/lstm_202/while/lstm_cell_202/MatMul/ReadVariableOpD^sequential_116/lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_116_lstm_202_while_identity/sequential_116/lstm_202/while/Identity:output:0"]
(sequential_116_lstm_202_while_identity_11sequential_116/lstm_202/while/Identity_1:output:0"]
(sequential_116_lstm_202_while_identity_21sequential_116/lstm_202/while/Identity_2:output:0"]
(sequential_116_lstm_202_while_identity_31sequential_116/lstm_202/while/Identity_3:output:0"]
(sequential_116_lstm_202_while_identity_41sequential_116/lstm_202/while/Identity_4:output:0"]
(sequential_116_lstm_202_while_identity_51sequential_116/lstm_202/while/Identity_5:output:0"
Ksequential_116_lstm_202_while_lstm_cell_202_biasadd_readvariableop_resourceMsequential_116_lstm_202_while_lstm_cell_202_biasadd_readvariableop_resource_0"
Lsequential_116_lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resourceNsequential_116_lstm_202_while_lstm_cell_202_matmul_1_readvariableop_resource_0"
Jsequential_116_lstm_202_while_lstm_cell_202_matmul_readvariableop_resourceLsequential_116_lstm_202_while_lstm_cell_202_matmul_readvariableop_resource_0"
Esequential_116_lstm_202_while_sequential_116_lstm_202_strided_slice_1Gsequential_116_lstm_202_while_sequential_116_lstm_202_strided_slice_1_0"
sequential_116_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_202_tensorarrayunstack_tensorlistfromtensorsequential_116_lstm_202_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_202_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
Bsequential_116/lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOpBsequential_116/lstm_202/while/lstm_cell_202/BiasAdd/ReadVariableOp2
Asequential_116/lstm_202/while/lstm_cell_202/MatMul/ReadVariableOpAsequential_116/lstm_202/while/lstm_cell_202/MatMul/ReadVariableOp2
Csequential_116/lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOpCsequential_116/lstm_202/while/lstm_cell_202/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ã
Í
while_cond_24138435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24138435___redundant_placeholder06
2while_while_cond_24138435___redundant_placeholder16
2while_while_cond_24138435___redundant_placeholder26
2while_while_cond_24138435___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¹
I
-__inference_dropout_76_layer_call_fn_24142692

inputs
identity¸
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_76_layer_call_and_return_conditional_losses_24139537e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_76_layer_call_and_return_conditional_losses_24142714

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú

K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24143619

inputs
states_0
states_11
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¾K
§
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141758
inputs_0?
,lstm_cell_202_matmul_readvariableop_resource:	B
.lstm_cell_202_matmul_1_readvariableop_resource:
<
-lstm_cell_202_biasadd_readvariableop_resource:	
identity¢$lstm_cell_202/BiasAdd/ReadVariableOp¢#lstm_cell_202/MatMul/ReadVariableOp¢%lstm_cell_202/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_202/MatMul/ReadVariableOpReadVariableOp,lstm_cell_202_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_202/MatMulMatMulstrided_slice_2:output:0+lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_202_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_202/MatMul_1MatMulzeros:output:0-lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/addAddV2lstm_cell_202/MatMul:product:0 lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_202_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_202/BiasAddBiasAddlstm_cell_202/add:z:0,lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_202/splitSplit&lstm_cell_202/split/split_dim:output:0lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_202/SigmoidSigmoidlstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_1Sigmoidlstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_202/mulMullstm_cell_202/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_202/ReluRelulstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_1Mullstm_cell_202/Sigmoid:y:0 lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/add_1AddV2lstm_cell_202/mul:z:0lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_2Sigmoidlstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_202/Relu_1Relulstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_2Mullstm_cell_202/Sigmoid_2:y:0"lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_202_matmul_readvariableop_resource.lstm_cell_202_matmul_1_readvariableop_resource-lstm_cell_202_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24141674*
condR
while_cond_24141673*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_202/BiasAdd/ReadVariableOp$^lstm_cell_202/MatMul/ReadVariableOp&^lstm_cell_202/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_202/BiasAdd/ReadVariableOp$lstm_cell_202/BiasAdd/ReadVariableOp2J
#lstm_cell_202/MatMul/ReadVariableOp#lstm_cell_202/MatMul/ReadVariableOp2N
%lstm_cell_202/MatMul_1/ReadVariableOp%lstm_cell_202/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
À


lstm_203_while_cond_24141188.
*lstm_203_while_lstm_203_while_loop_counter4
0lstm_203_while_lstm_203_while_maximum_iterations
lstm_203_while_placeholder 
lstm_203_while_placeholder_1 
lstm_203_while_placeholder_2 
lstm_203_while_placeholder_30
,lstm_203_while_less_lstm_203_strided_slice_1H
Dlstm_203_while_lstm_203_while_cond_24141188___redundant_placeholder0H
Dlstm_203_while_lstm_203_while_cond_24141188___redundant_placeholder1H
Dlstm_203_while_lstm_203_while_cond_24141188___redundant_placeholder2H
Dlstm_203_while_lstm_203_while_cond_24141188___redundant_placeholder3
lstm_203_while_identity

lstm_203/while/LessLesslstm_203_while_placeholder,lstm_203_while_less_lstm_203_strided_slice_1*
T0*
_output_shapes
: ]
lstm_203/while/IdentityIdentitylstm_203/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_203_while_identity lstm_203/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
K
¦
F__inference_lstm_203_layer_call_and_return_conditional_losses_24139524

inputs@
,lstm_cell_203_matmul_readvariableop_resource:
B
.lstm_cell_203_matmul_1_readvariableop_resource:
<
-lstm_cell_203_biasadd_readvariableop_resource:	
identity¢$lstm_cell_203/BiasAdd/ReadVariableOp¢#lstm_cell_203/MatMul/ReadVariableOp¢%lstm_cell_203/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_203/MatMul/ReadVariableOpReadVariableOp,lstm_cell_203_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMulMatMulstrided_slice_2:output:0+lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_203_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMul_1MatMulzeros:output:0-lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/addAddV2lstm_cell_203/MatMul:product:0 lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_203_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_203/BiasAddBiasAddlstm_cell_203/add:z:0,lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_203/splitSplit&lstm_cell_203/split/split_dim:output:0lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_203/SigmoidSigmoidlstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_1Sigmoidlstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_203/mulMullstm_cell_203/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_2Sigmoidlstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_1Mullstm_cell_203/Sigmoid:y:0lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/add_1AddV2lstm_cell_203/mul:z:0lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_3Sigmoidlstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
lstm_cell_203/Sigmoid_4Sigmoidlstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_2Mullstm_cell_203/Sigmoid_3:y:0lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_203_matmul_readvariableop_resource.lstm_cell_203_matmul_1_readvariableop_resource-lstm_cell_203_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24139440*
condR
while_cond_24139439*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_203/BiasAdd/ReadVariableOp$^lstm_cell_203/MatMul/ReadVariableOp&^lstm_cell_203/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_203/BiasAdd/ReadVariableOp$lstm_cell_203/BiasAdd/ReadVariableOp2J
#lstm_cell_203/MatMul/ReadVariableOp#lstm_cell_203/MatMul/ReadVariableOp2N
%lstm_cell_203/MatMul_1/ReadVariableOp%lstm_cell_203/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô

K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24138727

inputs

states
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
è8
Ý
while_body_24141960
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_202_matmul_readvariableop_resource_0:	J
6while_lstm_cell_202_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_202_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_202_matmul_readvariableop_resource:	H
4while_lstm_cell_202_matmul_1_readvariableop_resource:
B
3while_lstm_cell_202_biasadd_readvariableop_resource:	¢*while/lstm_cell_202/BiasAdd/ReadVariableOp¢)while/lstm_cell_202/MatMul/ReadVariableOp¢+while/lstm_cell_202/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_202_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_202/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_202_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_202/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_202/addAddV2$while/lstm_cell_202/MatMul:product:0&while/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_202_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_202/BiasAddBiasAddwhile/lstm_cell_202/add:z:02while/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_202/splitSplit,while/lstm_cell_202/split/split_dim:output:0$while/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_202/SigmoidSigmoid"while/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_1Sigmoid"while/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mulMul!while/lstm_cell_202/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/lstm_cell_202/ReluRelu"while/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mul_1Mulwhile/lstm_cell_202/Sigmoid:y:0&while/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/add_1AddV2while/lstm_cell_202/mul:z:0while/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_2Sigmoid"while/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_202/Relu_1Reluwhile/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_202/mul_2Mul!while/lstm_cell_202/Sigmoid_2:y:0(while/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_202/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_202/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_202/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_202/BiasAdd/ReadVariableOp*^while/lstm_cell_202/MatMul/ReadVariableOp,^while/lstm_cell_202/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_202_biasadd_readvariableop_resource5while_lstm_cell_202_biasadd_readvariableop_resource_0"n
4while_lstm_cell_202_matmul_1_readvariableop_resource6while_lstm_cell_202_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_202_matmul_readvariableop_resource4while_lstm_cell_202_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_202/BiasAdd/ReadVariableOp*while/lstm_cell_202/BiasAdd/ReadVariableOp2V
)while/lstm_cell_202/MatMul/ReadVariableOp)while/lstm_cell_202/MatMul/ReadVariableOp2Z
+while/lstm_cell_202/MatMul_1/ReadVariableOp+while/lstm_cell_202/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
®#
ü
while_body_24138786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
while_lstm_cell_203_24138810_0:
2
while_lstm_cell_203_24138812_0:
-
while_lstm_cell_203_24138814_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_lstm_cell_203_24138810:
0
while_lstm_cell_203_24138812:
+
while_lstm_cell_203_24138814:	¢+while/lstm_cell_203/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ã
+while/lstm_cell_203/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_203_24138810_0while_lstm_cell_203_24138812_0while_lstm_cell_203_24138814_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24138727Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_203/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_203/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity4while/lstm_cell_203/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz

while/NoOpNoOp,^while/lstm_cell_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0">
while_lstm_cell_203_24138810while_lstm_cell_203_24138810_0">
while_lstm_cell_203_24138812while_lstm_cell_203_24138812_0">
while_lstm_cell_203_24138814while_lstm_cell_203_24138814_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2Z
+while/lstm_cell_203/StatefulPartitionedCall+while/lstm_cell_203/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¾K
§
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141615
inputs_0?
,lstm_cell_202_matmul_readvariableop_resource:	B
.lstm_cell_202_matmul_1_readvariableop_resource:
<
-lstm_cell_202_biasadd_readvariableop_resource:	
identity¢$lstm_cell_202/BiasAdd/ReadVariableOp¢#lstm_cell_202/MatMul/ReadVariableOp¢%lstm_cell_202/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_202/MatMul/ReadVariableOpReadVariableOp,lstm_cell_202_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_202/MatMulMatMulstrided_slice_2:output:0+lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_202_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_202/MatMul_1MatMulzeros:output:0-lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/addAddV2lstm_cell_202/MatMul:product:0 lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_202_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_202/BiasAddBiasAddlstm_cell_202/add:z:0,lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_202/splitSplit&lstm_cell_202/split/split_dim:output:0lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_202/SigmoidSigmoidlstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_1Sigmoidlstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_202/mulMullstm_cell_202/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_202/ReluRelulstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_1Mullstm_cell_202/Sigmoid:y:0 lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/add_1AddV2lstm_cell_202/mul:z:0lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_2Sigmoidlstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_202/Relu_1Relulstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_2Mullstm_cell_202/Sigmoid_2:y:0"lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_202_matmul_readvariableop_resource.lstm_cell_202_matmul_1_readvariableop_resource-lstm_cell_202_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24141531*
condR
while_cond_24141530*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_202/BiasAdd/ReadVariableOp$^lstm_cell_202/MatMul/ReadVariableOp&^lstm_cell_202/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_202/BiasAdd/ReadVariableOp$lstm_cell_202/BiasAdd/ReadVariableOp2J
#lstm_cell_202/MatMul/ReadVariableOp#lstm_cell_202/MatMul/ReadVariableOp2N
%lstm_cell_202/MatMul_1/ReadVariableOp%lstm_cell_202/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
è8
Ý
while_body_24139283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_202_matmul_readvariableop_resource_0:	J
6while_lstm_cell_202_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_202_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_202_matmul_readvariableop_resource:	H
4while_lstm_cell_202_matmul_1_readvariableop_resource:
B
3while_lstm_cell_202_biasadd_readvariableop_resource:	¢*while/lstm_cell_202/BiasAdd/ReadVariableOp¢)while/lstm_cell_202/MatMul/ReadVariableOp¢+while/lstm_cell_202/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_202_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_202/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_202_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_202/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_202/addAddV2$while/lstm_cell_202/MatMul:product:0&while/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_202_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_202/BiasAddBiasAddwhile/lstm_cell_202/add:z:02while/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_202/splitSplit,while/lstm_cell_202/split/split_dim:output:0$while/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_202/SigmoidSigmoid"while/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_1Sigmoid"while/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mulMul!while/lstm_cell_202/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/lstm_cell_202/ReluRelu"while/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mul_1Mulwhile/lstm_cell_202/Sigmoid:y:0&while/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/add_1AddV2while/lstm_cell_202/mul:z:0while/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_2Sigmoid"while/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_202/Relu_1Reluwhile/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_202/mul_2Mul!while/lstm_cell_202/Sigmoid_2:y:0(while/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_202/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_202/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_202/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_202/BiasAdd/ReadVariableOp*^while/lstm_cell_202/MatMul/ReadVariableOp,^while/lstm_cell_202/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_202_biasadd_readvariableop_resource5while_lstm_cell_202_biasadd_readvariableop_resource_0"n
4while_lstm_cell_202_matmul_1_readvariableop_resource6while_lstm_cell_202_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_202_matmul_readvariableop_resource4while_lstm_cell_202_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_202/BiasAdd/ReadVariableOp*while/lstm_cell_202/BiasAdd/ReadVariableOp2V
)while/lstm_cell_202/MatMul/ReadVariableOp)while/lstm_cell_202/MatMul/ReadVariableOp2Z
+while/lstm_cell_202/MatMul_1/ReadVariableOp+while/lstm_cell_202/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¹

L__inference_sequential_116_layer_call_and_return_conditional_losses_24139708

inputs$
lstm_202_24139368:	%
lstm_202_24139370:
 
lstm_202_24139372:	%
lstm_203_24139525:
%
lstm_203_24139527:
 
lstm_203_24139529:	$
lstm_204_24139684:	@#
lstm_204_24139686:@
lstm_204_24139688:@$
dense_194_24139702: 
dense_194_24139704:
identity¢!dense_194/StatefulPartitionedCall¢ lstm_202/StatefulPartitionedCall¢ lstm_203/StatefulPartitionedCall¢ lstm_204/StatefulPartitionedCall
 lstm_202/StatefulPartitionedCallStatefulPartitionedCallinputslstm_202_24139368lstm_202_24139370lstm_202_24139372*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_202_layer_call_and_return_conditional_losses_24139367æ
dropout_75/PartitionedCallPartitionedCall)lstm_202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_75_layer_call_and_return_conditional_losses_24139380­
 lstm_203/StatefulPartitionedCallStatefulPartitionedCall#dropout_75/PartitionedCall:output:0lstm_203_24139525lstm_203_24139527lstm_203_24139529*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_203_layer_call_and_return_conditional_losses_24139524æ
dropout_76/PartitionedCallPartitionedCall)lstm_203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_76_layer_call_and_return_conditional_losses_24139537¨
 lstm_204/StatefulPartitionedCallStatefulPartitionedCall#dropout_76/PartitionedCall:output:0lstm_204_24139684lstm_204_24139686lstm_204_24139688*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139683
!dense_194/StatefulPartitionedCallStatefulPartitionedCall)lstm_204/StatefulPartitionedCall:output:0dense_194_24139702dense_194_24139704*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_194_layer_call_and_return_conditional_losses_24139701y
IdentityIdentity*dense_194/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
NoOpNoOp"^dense_194/StatefulPartitionedCall!^lstm_202/StatefulPartitionedCall!^lstm_203/StatefulPartitionedCall!^lstm_204/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2F
!dense_194/StatefulPartitionedCall!dense_194/StatefulPartitionedCall2D
 lstm_202/StatefulPartitionedCall lstm_202/StatefulPartitionedCall2D
 lstm_203/StatefulPartitionedCall lstm_203/StatefulPartitionedCall2D
 lstm_204/StatefulPartitionedCall lstm_204/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
­
+sequential_116_lstm_202_while_cond_24137791L
Hsequential_116_lstm_202_while_sequential_116_lstm_202_while_loop_counterR
Nsequential_116_lstm_202_while_sequential_116_lstm_202_while_maximum_iterations-
)sequential_116_lstm_202_while_placeholder/
+sequential_116_lstm_202_while_placeholder_1/
+sequential_116_lstm_202_while_placeholder_2/
+sequential_116_lstm_202_while_placeholder_3N
Jsequential_116_lstm_202_while_less_sequential_116_lstm_202_strided_slice_1f
bsequential_116_lstm_202_while_sequential_116_lstm_202_while_cond_24137791___redundant_placeholder0f
bsequential_116_lstm_202_while_sequential_116_lstm_202_while_cond_24137791___redundant_placeholder1f
bsequential_116_lstm_202_while_sequential_116_lstm_202_while_cond_24137791___redundant_placeholder2f
bsequential_116_lstm_202_while_sequential_116_lstm_202_while_cond_24137791___redundant_placeholder3*
&sequential_116_lstm_202_while_identity
Â
"sequential_116/lstm_202/while/LessLess)sequential_116_lstm_202_while_placeholderJsequential_116_lstm_202_while_less_sequential_116_lstm_202_strided_slice_1*
T0*
_output_shapes
: {
&sequential_116/lstm_202/while/IdentityIdentity&sequential_116/lstm_202/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_116_lstm_202_while_identity/sequential_116/lstm_202/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ñ

L__inference_sequential_116_layer_call_and_return_conditional_losses_24140431
lstm_202_input$
lstm_202_24140402:	%
lstm_202_24140404:
 
lstm_202_24140406:	%
lstm_203_24140410:
%
lstm_203_24140412:
 
lstm_203_24140414:	$
lstm_204_24140418:	@#
lstm_204_24140420:@
lstm_204_24140422:@$
dense_194_24140425: 
dense_194_24140427:
identity¢!dense_194/StatefulPartitionedCall¢ lstm_202/StatefulPartitionedCall¢ lstm_203/StatefulPartitionedCall¢ lstm_204/StatefulPartitionedCall
 lstm_202/StatefulPartitionedCallStatefulPartitionedCalllstm_202_inputlstm_202_24140402lstm_202_24140404lstm_202_24140406*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_202_layer_call_and_return_conditional_losses_24139367æ
dropout_75/PartitionedCallPartitionedCall)lstm_202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_75_layer_call_and_return_conditional_losses_24139380­
 lstm_203/StatefulPartitionedCallStatefulPartitionedCall#dropout_75/PartitionedCall:output:0lstm_203_24140410lstm_203_24140412lstm_203_24140414*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_203_layer_call_and_return_conditional_losses_24139524æ
dropout_76/PartitionedCallPartitionedCall)lstm_203/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_76_layer_call_and_return_conditional_losses_24139537¨
 lstm_204/StatefulPartitionedCallStatefulPartitionedCall#dropout_76/PartitionedCall:output:0lstm_204_24140418lstm_204_24140420lstm_204_24140422*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139683
!dense_194/StatefulPartitionedCallStatefulPartitionedCall)lstm_204/StatefulPartitionedCall:output:0dense_194_24140425dense_194_24140427*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_194_layer_call_and_return_conditional_losses_24139701y
IdentityIdentity*dense_194/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
NoOpNoOp"^dense_194/StatefulPartitionedCall!^lstm_202/StatefulPartitionedCall!^lstm_203/StatefulPartitionedCall!^lstm_204/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2F
!dense_194/StatefulPartitionedCall!dense_194/StatefulPartitionedCall2D
 lstm_202/StatefulPartitionedCall lstm_202/StatefulPartitionedCall2D
 lstm_203/StatefulPartitionedCall lstm_203/StatefulPartitionedCall2D
 lstm_204/StatefulPartitionedCall lstm_204/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_202_input
¨V
Û
+sequential_116_lstm_204_while_body_24138073L
Hsequential_116_lstm_204_while_sequential_116_lstm_204_while_loop_counterR
Nsequential_116_lstm_204_while_sequential_116_lstm_204_while_maximum_iterations-
)sequential_116_lstm_204_while_placeholder/
+sequential_116_lstm_204_while_placeholder_1/
+sequential_116_lstm_204_while_placeholder_2/
+sequential_116_lstm_204_while_placeholder_3K
Gsequential_116_lstm_204_while_sequential_116_lstm_204_strided_slice_1_0
sequential_116_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_204_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_116_lstm_204_while_lstm_cell_204_matmul_readvariableop_resource_0:	@`
Nsequential_116_lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource_0:@[
Msequential_116_lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource_0:@*
&sequential_116_lstm_204_while_identity,
(sequential_116_lstm_204_while_identity_1,
(sequential_116_lstm_204_while_identity_2,
(sequential_116_lstm_204_while_identity_3,
(sequential_116_lstm_204_while_identity_4,
(sequential_116_lstm_204_while_identity_5I
Esequential_116_lstm_204_while_sequential_116_lstm_204_strided_slice_1
sequential_116_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_204_tensorarrayunstack_tensorlistfromtensor]
Jsequential_116_lstm_204_while_lstm_cell_204_matmul_readvariableop_resource:	@^
Lsequential_116_lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource:@Y
Ksequential_116_lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource:@¢Bsequential_116/lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp¢Asequential_116/lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp¢Csequential_116/lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp 
Osequential_116/lstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
Asequential_116/lstm_204/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_116_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_204_tensorarrayunstack_tensorlistfromtensor_0)sequential_116_lstm_204_while_placeholderXsequential_116/lstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ï
Asequential_116/lstm_204/while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOpLsequential_116_lstm_204_while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
2sequential_116/lstm_204/while/lstm_cell_204/MatMulMatMulHsequential_116/lstm_204/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_116/lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ò
Csequential_116/lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOpNsequential_116_lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0ê
4sequential_116/lstm_204/while/lstm_cell_204/MatMul_1MatMul+sequential_116_lstm_204_while_placeholder_2Ksequential_116/lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
/sequential_116/lstm_204/while/lstm_cell_204/addAddV2<sequential_116/lstm_204/while/lstm_cell_204/MatMul:product:0>sequential_116/lstm_204/while/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
Bsequential_116/lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOpMsequential_116_lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0ñ
3sequential_116/lstm_204/while/lstm_cell_204/BiasAddBiasAdd3sequential_116/lstm_204/while/lstm_cell_204/add:z:0Jsequential_116/lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
;sequential_116/lstm_204/while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
1sequential_116/lstm_204/while/lstm_cell_204/splitSplitDsequential_116/lstm_204/while/lstm_cell_204/split/split_dim:output:0<sequential_116/lstm_204/while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¬
3sequential_116/lstm_204/while/lstm_cell_204/SigmoidSigmoid:sequential_116/lstm_204/while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
5sequential_116/lstm_204/while/lstm_cell_204/Sigmoid_1Sigmoid:sequential_116/lstm_204/while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
/sequential_116/lstm_204/while/lstm_cell_204/mulMul9sequential_116/lstm_204/while/lstm_cell_204/Sigmoid_1:y:0+sequential_116_lstm_204_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0sequential_116/lstm_204/while/lstm_cell_204/ReluRelu:sequential_116/lstm_204/while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
1sequential_116/lstm_204/while/lstm_cell_204/mul_1Mul7sequential_116/lstm_204/while/lstm_cell_204/Sigmoid:y:0>sequential_116/lstm_204/while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
1sequential_116/lstm_204/while/lstm_cell_204/add_1AddV23sequential_116/lstm_204/while/lstm_cell_204/mul:z:05sequential_116/lstm_204/while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
5sequential_116/lstm_204/while/lstm_cell_204/Sigmoid_2Sigmoid:sequential_116/lstm_204/while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
2sequential_116/lstm_204/while/lstm_cell_204/Relu_1Relu5sequential_116/lstm_204/while/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
1sequential_116/lstm_204/while/lstm_cell_204/mul_2Mul9sequential_116/lstm_204/while/lstm_cell_204/Sigmoid_2:y:0@sequential_116/lstm_204/while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hsequential_116/lstm_204/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Î
Bsequential_116/lstm_204/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_116_lstm_204_while_placeholder_1Qsequential_116/lstm_204/while/TensorArrayV2Write/TensorListSetItem/index:output:05sequential_116/lstm_204/while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒe
#sequential_116/lstm_204/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¤
!sequential_116/lstm_204/while/addAddV2)sequential_116_lstm_204_while_placeholder,sequential_116/lstm_204/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_116/lstm_204/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ç
#sequential_116/lstm_204/while/add_1AddV2Hsequential_116_lstm_204_while_sequential_116_lstm_204_while_loop_counter.sequential_116/lstm_204/while/add_1/y:output:0*
T0*
_output_shapes
: ¡
&sequential_116/lstm_204/while/IdentityIdentity'sequential_116/lstm_204/while/add_1:z:0#^sequential_116/lstm_204/while/NoOp*
T0*
_output_shapes
: Ê
(sequential_116/lstm_204/while/Identity_1IdentityNsequential_116_lstm_204_while_sequential_116_lstm_204_while_maximum_iterations#^sequential_116/lstm_204/while/NoOp*
T0*
_output_shapes
: ¡
(sequential_116/lstm_204/while/Identity_2Identity%sequential_116/lstm_204/while/add:z:0#^sequential_116/lstm_204/while/NoOp*
T0*
_output_shapes
: Î
(sequential_116/lstm_204/while/Identity_3IdentityRsequential_116/lstm_204/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_116/lstm_204/while/NoOp*
T0*
_output_shapes
: Â
(sequential_116/lstm_204/while/Identity_4Identity5sequential_116/lstm_204/while/lstm_cell_204/mul_2:z:0#^sequential_116/lstm_204/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
(sequential_116/lstm_204/while/Identity_5Identity5sequential_116/lstm_204/while/lstm_cell_204/add_1:z:0#^sequential_116/lstm_204/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
"sequential_116/lstm_204/while/NoOpNoOpC^sequential_116/lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOpB^sequential_116/lstm_204/while/lstm_cell_204/MatMul/ReadVariableOpD^sequential_116/lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_116_lstm_204_while_identity/sequential_116/lstm_204/while/Identity:output:0"]
(sequential_116_lstm_204_while_identity_11sequential_116/lstm_204/while/Identity_1:output:0"]
(sequential_116_lstm_204_while_identity_21sequential_116/lstm_204/while/Identity_2:output:0"]
(sequential_116_lstm_204_while_identity_31sequential_116/lstm_204/while/Identity_3:output:0"]
(sequential_116_lstm_204_while_identity_41sequential_116/lstm_204/while/Identity_4:output:0"]
(sequential_116_lstm_204_while_identity_51sequential_116/lstm_204/while/Identity_5:output:0"
Ksequential_116_lstm_204_while_lstm_cell_204_biasadd_readvariableop_resourceMsequential_116_lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource_0"
Lsequential_116_lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resourceNsequential_116_lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource_0"
Jsequential_116_lstm_204_while_lstm_cell_204_matmul_readvariableop_resourceLsequential_116_lstm_204_while_lstm_cell_204_matmul_readvariableop_resource_0"
Esequential_116_lstm_204_while_sequential_116_lstm_204_strided_slice_1Gsequential_116_lstm_204_while_sequential_116_lstm_204_strided_slice_1_0"
sequential_116_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_204_tensorarrayunstack_tensorlistfromtensorsequential_116_lstm_204_while_tensorarrayv2read_tensorlistgetitem_sequential_116_lstm_204_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2
Bsequential_116/lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOpBsequential_116/lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp2
Asequential_116/lstm_204/while/lstm_cell_204/MatMul/ReadVariableOpAsequential_116/lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp2
Csequential_116/lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOpCsequential_116/lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¿
Í
while_cond_24143252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24143252___redundant_placeholder06
2while_while_cond_24143252___redundant_placeholder16
2while_while_cond_24143252___redundant_placeholder26
2while_while_cond_24143252___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
K
¥
F__inference_lstm_202_layer_call_and_return_conditional_losses_24142044

inputs?
,lstm_cell_202_matmul_readvariableop_resource:	B
.lstm_cell_202_matmul_1_readvariableop_resource:
<
-lstm_cell_202_biasadd_readvariableop_resource:	
identity¢$lstm_cell_202/BiasAdd/ReadVariableOp¢#lstm_cell_202/MatMul/ReadVariableOp¢%lstm_cell_202/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_202/MatMul/ReadVariableOpReadVariableOp,lstm_cell_202_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_202/MatMulMatMulstrided_slice_2:output:0+lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_202_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_202/MatMul_1MatMulzeros:output:0-lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/addAddV2lstm_cell_202/MatMul:product:0 lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_202_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_202/BiasAddBiasAddlstm_cell_202/add:z:0,lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_202/splitSplit&lstm_cell_202/split/split_dim:output:0lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_202/SigmoidSigmoidlstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_1Sigmoidlstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_202/mulMullstm_cell_202/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_202/ReluRelulstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_1Mullstm_cell_202/Sigmoid:y:0 lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/add_1AddV2lstm_cell_202/mul:z:0lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_2Sigmoidlstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_202/Relu_1Relulstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_2Mullstm_cell_202/Sigmoid_2:y:0"lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_202_matmul_readvariableop_resource.lstm_cell_202_matmul_1_readvariableop_resource-lstm_cell_202_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24141960*
condR
while_cond_24141959*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_202/BiasAdd/ReadVariableOp$^lstm_cell_202/MatMul/ReadVariableOp&^lstm_cell_202/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_202/BiasAdd/ReadVariableOp$lstm_cell_202/BiasAdd/ReadVariableOp2J
#lstm_cell_202/MatMul/ReadVariableOp#lstm_cell_202/MatMul/ReadVariableOp2N
%lstm_cell_202/MatMul_1/ReadVariableOp%lstm_cell_202/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_75_layer_call_and_return_conditional_losses_24142071

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å9
×
while_body_24143108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	@H
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_204_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	@F
4while_lstm_cell_204_matmul_1_readvariableop_resource:@A
3while_lstm_cell_204_biasadd_readvariableop_resource:@¢*while/lstm_cell_204/BiasAdd/ReadVariableOp¢)while/lstm_cell_204/MatMul/ReadVariableOp¢+while/lstm_cell_204/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0»
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¢
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0©
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : î
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ä

¡
1__inference_sequential_116_layer_call_fn_24140525

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_116_layer_call_and_return_conditional_losses_24139708o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î8
ß
while_body_24140005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
4while_lstm_cell_203_matmul_readvariableop_resource_0:
J
6while_lstm_cell_203_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_203_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
2while_lstm_cell_203_matmul_readvariableop_resource:
H
4while_lstm_cell_203_matmul_1_readvariableop_resource:
B
3while_lstm_cell_203_biasadd_readvariableop_resource:	¢*while/lstm_cell_203/BiasAdd/ReadVariableOp¢)while/lstm_cell_203/MatMul/ReadVariableOp¢+while/lstm_cell_203/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0 
)while/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_203_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¼
while/lstm_cell_203/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_203_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_203/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_203/addAddV2$while/lstm_cell_203/MatMul:product:0&while/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_203_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_203/BiasAddBiasAddwhile/lstm_cell_203/add:z:02while/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_203/splitSplit,while/lstm_cell_203/split/split_dim:output:0$while/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_203/SigmoidSigmoid"while/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_1Sigmoid"while/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mulMul!while/lstm_cell_203/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_2Sigmoid"while/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_1Mulwhile/lstm_cell_203/Sigmoid:y:0!while/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/add_1AddV2while/lstm_cell_203/mul:z:0while/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_3Sigmoid"while/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/lstm_cell_203/Sigmoid_4Sigmoidwhile/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_2Mul!while/lstm_cell_203/Sigmoid_3:y:0!while/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_203/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_203/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_203/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_203/BiasAdd/ReadVariableOp*^while/lstm_cell_203/MatMul/ReadVariableOp,^while/lstm_cell_203/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_203_biasadd_readvariableop_resource5while_lstm_cell_203_biasadd_readvariableop_resource_0"n
4while_lstm_cell_203_matmul_1_readvariableop_resource6while_lstm_cell_203_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_203_matmul_readvariableop_resource4while_lstm_cell_203_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_203/BiasAdd/ReadVariableOp*while/lstm_cell_203/BiasAdd/ReadVariableOp2V
)while/lstm_cell_203/MatMul/ReadVariableOp)while/lstm_cell_203/MatMul/ReadVariableOp2Z
+while/lstm_cell_203/MatMul_1/ReadVariableOp+while/lstm_cell_203/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
«#
ú
while_body_24138436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_lstm_cell_202_24138460_0:	2
while_lstm_cell_202_24138462_0:
-
while_lstm_cell_202_24138464_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_lstm_cell_202_24138460:	0
while_lstm_cell_202_24138462:
+
while_lstm_cell_202_24138464:	¢+while/lstm_cell_202/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ã
+while/lstm_cell_202/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_202_24138460_0while_lstm_cell_202_24138462_0while_lstm_cell_202_24138464_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24138377Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_202/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_202/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity4while/lstm_cell_202/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz

while/NoOpNoOp,^while/lstm_cell_202/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0">
while_lstm_cell_202_24138460while_lstm_cell_202_24138460_0">
while_lstm_cell_202_24138462while_lstm_cell_202_24138462_0">
while_lstm_cell_202_24138464while_lstm_cell_202_24138464_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2Z
+while/lstm_cell_202/StatefulPartitionedCall+while/lstm_cell_202/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
²
»
+__inference_lstm_202_layer_call_fn_24141450
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_202_layer_call_and_return_conditional_losses_24138505}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ì8

F__inference_lstm_202_layer_call_and_return_conditional_losses_24138505

inputs)
lstm_cell_202_24138423:	*
lstm_cell_202_24138425:
%
lstm_cell_202_24138427:	
identity¢%lstm_cell_202/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
%lstm_cell_202/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_202_24138423lstm_cell_202_24138425lstm_cell_202_24138427*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24138377n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : È
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_202_24138423lstm_cell_202_24138425lstm_cell_202_24138427*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24138436*
condR
while_cond_24138435*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
NoOpNoOp&^lstm_cell_202/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_202/StatefulPartitionedCall%lstm_cell_202/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î8
ß
while_body_24142317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
4while_lstm_cell_203_matmul_readvariableop_resource_0:
J
6while_lstm_cell_203_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_203_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
2while_lstm_cell_203_matmul_readvariableop_resource:
H
4while_lstm_cell_203_matmul_1_readvariableop_resource:
B
3while_lstm_cell_203_biasadd_readvariableop_resource:	¢*while/lstm_cell_203/BiasAdd/ReadVariableOp¢)while/lstm_cell_203/MatMul/ReadVariableOp¢+while/lstm_cell_203/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0 
)while/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_203_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¼
while/lstm_cell_203/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_203_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_203/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_203/addAddV2$while/lstm_cell_203/MatMul:product:0&while/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_203_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_203/BiasAddBiasAddwhile/lstm_cell_203/add:z:02while/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_203/splitSplit,while/lstm_cell_203/split/split_dim:output:0$while/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_203/SigmoidSigmoid"while/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_1Sigmoid"while/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mulMul!while/lstm_cell_203/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_2Sigmoid"while/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_1Mulwhile/lstm_cell_203/Sigmoid:y:0!while/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/add_1AddV2while/lstm_cell_203/mul:z:0while/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_3Sigmoid"while/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/lstm_cell_203/Sigmoid_4Sigmoidwhile/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_2Mul!while/lstm_cell_203/Sigmoid_3:y:0!while/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_203/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_203/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_203/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_203/BiasAdd/ReadVariableOp*^while/lstm_cell_203/MatMul/ReadVariableOp,^while/lstm_cell_203/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_203_biasadd_readvariableop_resource5while_lstm_cell_203_biasadd_readvariableop_resource_0"n
4while_lstm_cell_203_matmul_1_readvariableop_resource6while_lstm_cell_203_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_203_matmul_readvariableop_resource4while_lstm_cell_203_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_203/BiasAdd/ReadVariableOp*while/lstm_cell_203/BiasAdd/ReadVariableOp2V
)while/lstm_cell_203/MatMul/ReadVariableOp)while/lstm_cell_203/MatMul/ReadVariableOp2Z
+while/lstm_cell_203/MatMul_1/ReadVariableOp+while/lstm_cell_203/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
«#
ú
while_body_24138245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_lstm_cell_202_24138269_0:	2
while_lstm_cell_202_24138271_0:
-
while_lstm_cell_202_24138273_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_lstm_cell_202_24138269:	0
while_lstm_cell_202_24138271:
+
while_lstm_cell_202_24138273:	¢+while/lstm_cell_202/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ã
+while/lstm_cell_202/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_202_24138269_0while_lstm_cell_202_24138271_0while_lstm_cell_202_24138273_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24138231Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_202/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_202/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity4while/lstm_cell_202/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz

while/NoOpNoOp,^while/lstm_cell_202/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0">
while_lstm_cell_202_24138269while_lstm_cell_202_24138269_0">
while_lstm_cell_202_24138271while_lstm_cell_202_24138271_0">
while_lstm_cell_202_24138273while_lstm_cell_202_24138273_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2Z
+while/lstm_cell_202/StatefulPartitionedCall+while/lstm_cell_202/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ö

K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24143423

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ò

K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24139079

inputs

states
states_11
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¿
Í
while_cond_24138945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24138945___redundant_placeholder06
2while_while_cond_24138945___redundant_placeholder16
2while_while_cond_24138945___redundant_placeholder26
2while_while_cond_24138945___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
å9
×
while_body_24143253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	@H
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_204_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	@F
4while_lstm_cell_204_matmul_1_readvariableop_resource:@A
3while_lstm_cell_204_biasadd_readvariableop_resource:@¢*while/lstm_cell_204/BiasAdd/ReadVariableOp¢)while/lstm_cell_204/MatMul/ReadVariableOp¢+while/lstm_cell_204/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0»
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¢
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0©
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : î
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ú

K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24143651

inputs
states_0
states_11
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ì8

F__inference_lstm_202_layer_call_and_return_conditional_losses_24138314

inputs)
lstm_cell_202_24138232:	*
lstm_cell_202_24138234:
%
lstm_cell_202_24138236:	
identity¢%lstm_cell_202/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
%lstm_cell_202/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_202_24138232lstm_cell_202_24138234lstm_cell_202_24138236*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24138231n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : È
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_202_24138232lstm_cell_202_24138234lstm_cell_202_24138236*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24138245*
condR
while_cond_24138244*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
NoOpNoOp&^lstm_cell_202/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_202/StatefulPartitionedCall%lstm_cell_202/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
f
H__inference_dropout_75_layer_call_and_return_conditional_losses_24139380

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö

K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24143455

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¾D
÷

lstm_204_while_body_24140892.
*lstm_204_while_lstm_204_while_loop_counter4
0lstm_204_while_lstm_204_while_maximum_iterations
lstm_204_while_placeholder 
lstm_204_while_placeholder_1 
lstm_204_while_placeholder_2 
lstm_204_while_placeholder_3-
)lstm_204_while_lstm_204_strided_slice_1_0i
elstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_204_while_lstm_cell_204_matmul_readvariableop_resource_0:	@Q
?lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource_0:@L
>lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource_0:@
lstm_204_while_identity
lstm_204_while_identity_1
lstm_204_while_identity_2
lstm_204_while_identity_3
lstm_204_while_identity_4
lstm_204_while_identity_5+
'lstm_204_while_lstm_204_strided_slice_1g
clstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensorN
;lstm_204_while_lstm_cell_204_matmul_readvariableop_resource:	@O
=lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource:@J
<lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource:@¢3lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp¢2lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp¢4lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp
@lstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ô
2lstm_204/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0lstm_204_while_placeholderIlstm_204/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0±
2lstm_204/while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp=lstm_204_while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0Ö
#lstm_204/while/lstm_cell_204/MatMulMatMul9lstm_204/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@´
4lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp?lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0½
%lstm_204/while/lstm_cell_204/MatMul_1MatMullstm_204_while_placeholder_2<lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@»
 lstm_204/while/lstm_cell_204/addAddV2-lstm_204/while/lstm_cell_204/MatMul:product:0/lstm_204/while/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
3lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp>lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ä
$lstm_204/while/lstm_cell_204/BiasAddBiasAdd$lstm_204/while/lstm_cell_204/add:z:0;lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
,lstm_204/while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"lstm_204/while/lstm_cell_204/splitSplit5lstm_204/while/lstm_cell_204/split/split_dim:output:0-lstm_204/while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
$lstm_204/while/lstm_cell_204/SigmoidSigmoid+lstm_204/while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_204/while/lstm_cell_204/Sigmoid_1Sigmoid+lstm_204/while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
 lstm_204/while/lstm_cell_204/mulMul*lstm_204/while/lstm_cell_204/Sigmoid_1:y:0lstm_204_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_204/while/lstm_cell_204/ReluRelu+lstm_204/while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
"lstm_204/while/lstm_cell_204/mul_1Mul(lstm_204/while/lstm_cell_204/Sigmoid:y:0/lstm_204/while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
"lstm_204/while/lstm_cell_204/add_1AddV2$lstm_204/while/lstm_cell_204/mul:z:0&lstm_204/while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_204/while/lstm_cell_204/Sigmoid_2Sigmoid+lstm_204/while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_204/while/lstm_cell_204/Relu_1Relu&lstm_204/while/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
"lstm_204/while/lstm_cell_204/mul_2Mul*lstm_204/while/lstm_cell_204/Sigmoid_2:y:01lstm_204/while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9lstm_204/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
3lstm_204/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_204_while_placeholder_1Blstm_204/while/TensorArrayV2Write/TensorListSetItem/index:output:0&lstm_204/while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_204/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_204/while/addAddV2lstm_204_while_placeholderlstm_204/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_204/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_204/while/add_1AddV2*lstm_204_while_lstm_204_while_loop_counterlstm_204/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_204/while/IdentityIdentitylstm_204/while/add_1:z:0^lstm_204/while/NoOp*
T0*
_output_shapes
: 
lstm_204/while/Identity_1Identity0lstm_204_while_lstm_204_while_maximum_iterations^lstm_204/while/NoOp*
T0*
_output_shapes
: t
lstm_204/while/Identity_2Identitylstm_204/while/add:z:0^lstm_204/while/NoOp*
T0*
_output_shapes
: ¡
lstm_204/while/Identity_3IdentityClstm_204/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_204/while/NoOp*
T0*
_output_shapes
: 
lstm_204/while/Identity_4Identity&lstm_204/while/lstm_cell_204/mul_2:z:0^lstm_204/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_204/while/Identity_5Identity&lstm_204/while/lstm_cell_204/add_1:z:0^lstm_204/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
lstm_204/while/NoOpNoOp4^lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp3^lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp5^lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_204_while_identity lstm_204/while/Identity:output:0"?
lstm_204_while_identity_1"lstm_204/while/Identity_1:output:0"?
lstm_204_while_identity_2"lstm_204/while/Identity_2:output:0"?
lstm_204_while_identity_3"lstm_204/while/Identity_3:output:0"?
lstm_204_while_identity_4"lstm_204/while/Identity_4:output:0"?
lstm_204_while_identity_5"lstm_204/while/Identity_5:output:0"T
'lstm_204_while_lstm_204_strided_slice_1)lstm_204_while_lstm_204_strided_slice_1_0"~
<lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource>lstm_204_while_lstm_cell_204_biasadd_readvariableop_resource_0"
=lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource?lstm_204_while_lstm_cell_204_matmul_1_readvariableop_resource_0"|
;lstm_204_while_lstm_cell_204_matmul_readvariableop_resource=lstm_204_while_lstm_cell_204_matmul_readvariableop_resource_0"Ì
clstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensorelstm_204_while_tensorarrayv2read_tensorlistgetitem_lstm_204_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2j
3lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp3lstm_204/while/lstm_cell_204/BiasAdd/ReadVariableOp2h
2lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp2lstm_204/while/lstm_cell_204/MatMul/ReadVariableOp2l
4lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp4lstm_204/while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

º
+__inference_lstm_203_layer_call_fn_24142115

inputs
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_203_layer_call_and_return_conditional_losses_24140089t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å9
×
while_body_24139598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	@H
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_204_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	@F
4while_lstm_cell_204_matmul_1_readvariableop_resource:@A
3while_lstm_cell_204_biasadd_readvariableop_resource:@¢*while/lstm_cell_204/BiasAdd/ReadVariableOp¢)while/lstm_cell_204/MatMul/ReadVariableOp¢+while/lstm_cell_204/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0»
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¢
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0©
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : î
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
î8
ß
while_body_24142603
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
4while_lstm_cell_203_matmul_readvariableop_resource_0:
J
6while_lstm_cell_203_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_203_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
2while_lstm_cell_203_matmul_readvariableop_resource:
H
4while_lstm_cell_203_matmul_1_readvariableop_resource:
B
3while_lstm_cell_203_biasadd_readvariableop_resource:	¢*while/lstm_cell_203/BiasAdd/ReadVariableOp¢)while/lstm_cell_203/MatMul/ReadVariableOp¢+while/lstm_cell_203/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0 
)while/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_203_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¼
while/lstm_cell_203/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_203_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_203/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_203/addAddV2$while/lstm_cell_203/MatMul:product:0&while/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_203_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_203/BiasAddBiasAddwhile/lstm_cell_203/add:z:02while/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_203/splitSplit,while/lstm_cell_203/split/split_dim:output:0$while/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_203/SigmoidSigmoid"while/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_1Sigmoid"while/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mulMul!while/lstm_cell_203/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_2Sigmoid"while/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_1Mulwhile/lstm_cell_203/Sigmoid:y:0!while/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/add_1AddV2while/lstm_cell_203/mul:z:0while/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_3Sigmoid"while/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/lstm_cell_203/Sigmoid_4Sigmoidwhile/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_2Mul!while/lstm_cell_203/Sigmoid_3:y:0!while/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_203/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_203/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_203/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_203/BiasAdd/ReadVariableOp*^while/lstm_cell_203/MatMul/ReadVariableOp,^while/lstm_cell_203/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_203_biasadd_readvariableop_resource5while_lstm_cell_203_biasadd_readvariableop_resource_0"n
4while_lstm_cell_203_matmul_1_readvariableop_resource6while_lstm_cell_203_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_203_matmul_readvariableop_resource4while_lstm_cell_203_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_203/BiasAdd/ReadVariableOp*while/lstm_cell_203/BiasAdd/ReadVariableOp2V
)while/lstm_cell_203/MatMul/ReadVariableOp)while/lstm_cell_203/MatMul/ReadVariableOp2Z
+while/lstm_cell_203/MatMul_1/ReadVariableOp+while/lstm_cell_203/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ñ
÷
0__inference_lstm_cell_204_layer_call_fn_24143570

inputs
states_0
states_1
unknown:	@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24138931o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ñ8

F__inference_lstm_203_layer_call_and_return_conditional_losses_24138664

inputs*
lstm_cell_203_24138582:
*
lstm_cell_203_24138584:
%
lstm_cell_203_24138586:	
identity¢%lstm_cell_203/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
%lstm_cell_203/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_203_24138582lstm_cell_203_24138584lstm_cell_203_24138586*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24138581n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : È
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_203_24138582lstm_cell_203_24138584lstm_cell_203_24138586*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24138595*
condR
while_cond_24138594*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
NoOpNoOp&^lstm_cell_203/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_203/StatefulPartitionedCall%lstm_cell_203/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
Í
while_cond_24139439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24139439___redundant_placeholder06
2while_while_cond_24139439___redundant_placeholder16
2while_while_cond_24139439___redundant_placeholder26
2while_while_cond_24139439___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ä

¡
1__inference_sequential_116_layer_call_fn_24140552

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140347o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü
ú
0__inference_lstm_cell_202_layer_call_fn_24143391

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24138377p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ã
Í
while_cond_24142173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24142173___redundant_placeholder06
2while_while_cond_24142173___redundant_placeholder16
2while_while_cond_24142173___redundant_placeholder26
2while_while_cond_24142173___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
È


&__inference_signature_wrapper_24140498
lstm_202_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCalllstm_202_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_24138164o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_202_input
¹
I
-__inference_dropout_75_layer_call_fn_24142049

inputs
identity¸
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_75_layer_call_and_return_conditional_losses_24139380e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÆK
¨
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142258
inputs_0@
,lstm_cell_203_matmul_readvariableop_resource:
B
.lstm_cell_203_matmul_1_readvariableop_resource:
<
-lstm_cell_203_biasadd_readvariableop_resource:	
identity¢$lstm_cell_203/BiasAdd/ReadVariableOp¢#lstm_cell_203/MatMul/ReadVariableOp¢%lstm_cell_203/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_203/MatMul/ReadVariableOpReadVariableOp,lstm_cell_203_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMulMatMulstrided_slice_2:output:0+lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_203_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_203/MatMul_1MatMulzeros:output:0-lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/addAddV2lstm_cell_203/MatMul:product:0 lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_203_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_203/BiasAddBiasAddlstm_cell_203/add:z:0,lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_203/splitSplit&lstm_cell_203/split/split_dim:output:0lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_203/SigmoidSigmoidlstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_1Sigmoidlstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_203/mulMullstm_cell_203/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_2Sigmoidlstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_1Mullstm_cell_203/Sigmoid:y:0lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/add_1AddV2lstm_cell_203/mul:z:0lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_203/Sigmoid_3Sigmoidlstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
lstm_cell_203/Sigmoid_4Sigmoidlstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_203/mul_2Mullstm_cell_203/Sigmoid_3:y:0lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_203_matmul_readvariableop_resource.lstm_cell_203_matmul_1_readvariableop_resource-lstm_cell_203_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24142174*
condR
while_cond_24142173*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_203/BiasAdd/ReadVariableOp$^lstm_cell_203/MatMul/ReadVariableOp&^lstm_cell_203/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_203/BiasAdd/ReadVariableOp$lstm_cell_203/BiasAdd/ReadVariableOp2J
#lstm_cell_203/MatMul/ReadVariableOp#lstm_cell_203/MatMul/ReadVariableOp2N
%lstm_cell_203/MatMul_1/ReadVariableOp%lstm_cell_203/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
î8
ß
while_body_24142174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
4while_lstm_cell_203_matmul_readvariableop_resource_0:
J
6while_lstm_cell_203_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_203_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
2while_lstm_cell_203_matmul_readvariableop_resource:
H
4while_lstm_cell_203_matmul_1_readvariableop_resource:
B
3while_lstm_cell_203_biasadd_readvariableop_resource:	¢*while/lstm_cell_203/BiasAdd/ReadVariableOp¢)while/lstm_cell_203/MatMul/ReadVariableOp¢+while/lstm_cell_203/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0 
)while/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_203_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¼
while/lstm_cell_203/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_203_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_203/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_203/addAddV2$while/lstm_cell_203/MatMul:product:0&while/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_203_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_203/BiasAddBiasAddwhile/lstm_cell_203/add:z:02while/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_203/splitSplit,while/lstm_cell_203/split/split_dim:output:0$while/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_203/SigmoidSigmoid"while/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_1Sigmoid"while/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mulMul!while/lstm_cell_203/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_2Sigmoid"while/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_1Mulwhile/lstm_cell_203/Sigmoid:y:0!while/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/add_1AddV2while/lstm_cell_203/mul:z:0while/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/Sigmoid_3Sigmoid"while/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/lstm_cell_203/Sigmoid_4Sigmoidwhile/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_203/mul_2Mul!while/lstm_cell_203/Sigmoid_3:y:0!while/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_203/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_203/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_203/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_203/BiasAdd/ReadVariableOp*^while/lstm_cell_203/MatMul/ReadVariableOp,^while/lstm_cell_203/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_203_biasadd_readvariableop_resource5while_lstm_cell_203_biasadd_readvariableop_resource_0"n
4while_lstm_cell_203_matmul_1_readvariableop_resource6while_lstm_cell_203_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_203_matmul_readvariableop_resource4while_lstm_cell_203_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_203/BiasAdd/ReadVariableOp*while/lstm_cell_203/BiasAdd/ReadVariableOp2V
)while/lstm_cell_203/MatMul/ReadVariableOp)while/lstm_cell_203/MatMul/ReadVariableOp2Z
+while/lstm_cell_203/MatMul_1/ReadVariableOp+while/lstm_cell_203/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
çK
¢
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139901

inputs?
,lstm_cell_204_matmul_readvariableop_resource:	@@
.lstm_cell_204_matmul_1_readvariableop_resource:@;
-lstm_cell_204_biasadd_readvariableop_resource:@
identity¢$lstm_cell_204/BiasAdd/ReadVariableOp¢#lstm_cell_204/MatMul/ReadVariableOp¢%lstm_cell_204/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_204/MatMul/ReadVariableOpReadVariableOp,lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_204/MatMulMatMulstrided_slice_2:output:0+lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0
lstm_cell_204/MatMul_1MatMulzeros:output:0-lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_204/addAddV2lstm_cell_204/MatMul:product:0 lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
lstm_cell_204/BiasAddBiasAddlstm_cell_204/add:z:0,lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_cell_204/splitSplit&lstm_cell_204/split/split_dim:output:0lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitp
lstm_cell_204/SigmoidSigmoidlstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_1Sigmoidlstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_204/mulMullstm_cell_204/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_204/ReluRelulstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_1Mullstm_cell_204/Sigmoid:y:0 lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
lstm_cell_204/add_1AddV2lstm_cell_204/mul:z:0lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_cell_204/Sigmoid_2Sigmoidlstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_204/Relu_1Relulstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_204/mul_2Mullstm_cell_204/Sigmoid_2:y:0"lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_204_matmul_readvariableop_resource.lstm_cell_204_matmul_1_readvariableop_resource-lstm_cell_204_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24139816*
condR
while_cond_24139815*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_204/BiasAdd/ReadVariableOp$^lstm_cell_204/MatMul/ReadVariableOp&^lstm_cell_204/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_204/BiasAdd/ReadVariableOp$lstm_cell_204/BiasAdd/ReadVariableOp2J
#lstm_cell_204/MatMul/ReadVariableOp#lstm_cell_204/MatMul/ReadVariableOp2N
%lstm_cell_204/MatMul_1/ReadVariableOp%lstm_cell_204/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
Í
while_cond_24141673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24141673___redundant_placeholder06
2while_while_cond_24141673___redundant_placeholder16
2while_while_cond_24141673___redundant_placeholder26
2while_while_cond_24141673___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
K
¥
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141901

inputs?
,lstm_cell_202_matmul_readvariableop_resource:	B
.lstm_cell_202_matmul_1_readvariableop_resource:
<
-lstm_cell_202_biasadd_readvariableop_resource:	
identity¢$lstm_cell_202/BiasAdd/ReadVariableOp¢#lstm_cell_202/MatMul/ReadVariableOp¢%lstm_cell_202/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
#lstm_cell_202/MatMul/ReadVariableOpReadVariableOp,lstm_cell_202_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_202/MatMulMatMulstrided_slice_2:output:0+lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_202_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_202/MatMul_1MatMulzeros:output:0-lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/addAddV2lstm_cell_202/MatMul:product:0 lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_202_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_202/BiasAddBiasAddlstm_cell_202/add:z:0,lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_202/splitSplit&lstm_cell_202/split/split_dim:output:0lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitq
lstm_cell_202/SigmoidSigmoidlstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_1Sigmoidlstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_202/mulMullstm_cell_202/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_202/ReluRelulstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_1Mullstm_cell_202/Sigmoid:y:0 lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/add_1AddV2lstm_cell_202/mul:z:0lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
lstm_cell_202/Sigmoid_2Sigmoidlstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm_cell_202/Relu_1Relulstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_202/mul_2Mullstm_cell_202/Sigmoid_2:y:0"lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_202_matmul_readvariableop_resource.lstm_cell_202_matmul_1_readvariableop_resource-lstm_cell_202_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_24141817*
condR
while_cond_24141816*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^lstm_cell_202/BiasAdd/ReadVariableOp$^lstm_cell_202/MatMul/ReadVariableOp&^lstm_cell_202/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_202/BiasAdd/ReadVariableOp$lstm_cell_202/BiasAdd/ReadVariableOp2J
#lstm_cell_202/MatMul/ReadVariableOp#lstm_cell_202/MatMul/ReadVariableOp2N
%lstm_cell_202/MatMul_1/ReadVariableOp%lstm_cell_202/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å9
×
while_body_24139816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	@H
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_204_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	@F
4while_lstm_cell_204_matmul_1_readvariableop_resource:@A
3while_lstm_cell_204_biasadd_readvariableop_resource:@¢*while/lstm_cell_204/BiasAdd/ReadVariableOp¢)while/lstm_cell_204/MatMul/ReadVariableOp¢+while/lstm_cell_204/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0»
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¢
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0©
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : î
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

 
L__inference_sequential_116_layer_call_and_return_conditional_losses_24141428

inputsH
5lstm_202_lstm_cell_202_matmul_readvariableop_resource:	K
7lstm_202_lstm_cell_202_matmul_1_readvariableop_resource:
E
6lstm_202_lstm_cell_202_biasadd_readvariableop_resource:	I
5lstm_203_lstm_cell_203_matmul_readvariableop_resource:
K
7lstm_203_lstm_cell_203_matmul_1_readvariableop_resource:
E
6lstm_203_lstm_cell_203_biasadd_readvariableop_resource:	H
5lstm_204_lstm_cell_204_matmul_readvariableop_resource:	@I
7lstm_204_lstm_cell_204_matmul_1_readvariableop_resource:@D
6lstm_204_lstm_cell_204_biasadd_readvariableop_resource:@:
(dense_194_matmul_readvariableop_resource:7
)dense_194_biasadd_readvariableop_resource:
identity¢ dense_194/BiasAdd/ReadVariableOp¢dense_194/MatMul/ReadVariableOp¢-lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp¢,lstm_202/lstm_cell_202/MatMul/ReadVariableOp¢.lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp¢lstm_202/while¢-lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp¢,lstm_203/lstm_cell_203/MatMul/ReadVariableOp¢.lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp¢lstm_203/while¢-lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp¢,lstm_204/lstm_cell_204/MatMul/ReadVariableOp¢.lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp¢lstm_204/whileD
lstm_202/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_202/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_202/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_202/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_202/strided_sliceStridedSlicelstm_202/Shape:output:0%lstm_202/strided_slice/stack:output:0'lstm_202/strided_slice/stack_1:output:0'lstm_202/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
lstm_202/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_202/zeros/packedPacklstm_202/strided_slice:output:0 lstm_202/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_202/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_202/zerosFilllstm_202/zeros/packed:output:0lstm_202/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
lstm_202/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_202/zeros_1/packedPacklstm_202/strided_slice:output:0"lstm_202/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_202/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_202/zeros_1Fill lstm_202/zeros_1/packed:output:0lstm_202/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
lstm_202/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_202/transpose	Transposeinputs lstm_202/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
lstm_202/Shape_1Shapelstm_202/transpose:y:0*
T0*
_output_shapes
:h
lstm_202/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_202/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_202/strided_slice_1StridedSlicelstm_202/Shape_1:output:0'lstm_202/strided_slice_1/stack:output:0)lstm_202/strided_slice_1/stack_1:output:0)lstm_202/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_202/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÏ
lstm_202/TensorArrayV2TensorListReserve-lstm_202/TensorArrayV2/element_shape:output:0!lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_202/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   û
0lstm_202/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_202/transpose:y:0Glstm_202/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_202/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_202/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_202/strided_slice_2StridedSlicelstm_202/transpose:y:0'lstm_202/strided_slice_2/stack:output:0)lstm_202/strided_slice_2/stack_1:output:0)lstm_202/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask£
,lstm_202/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp5lstm_202_lstm_cell_202_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0³
lstm_202/lstm_cell_202/MatMulMatMul!lstm_202/strided_slice_2:output:04lstm_202/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.lstm_202/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp7lstm_202_lstm_cell_202_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0­
lstm_202/lstm_cell_202/MatMul_1MatMullstm_202/zeros:output:06lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
lstm_202/lstm_cell_202/addAddV2'lstm_202/lstm_cell_202/MatMul:product:0)lstm_202/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
-lstm_202/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp6lstm_202_lstm_cell_202_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0³
lstm_202/lstm_cell_202/BiasAddBiasAddlstm_202/lstm_cell_202/add:z:05lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
&lstm_202/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ÿ
lstm_202/lstm_cell_202/splitSplit/lstm_202/lstm_cell_202/split/split_dim:output:0'lstm_202/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
lstm_202/lstm_cell_202/SigmoidSigmoid%lstm_202/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_202/lstm_cell_202/Sigmoid_1Sigmoid%lstm_202/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_202/lstm_cell_202/mulMul$lstm_202/lstm_cell_202/Sigmoid_1:y:0lstm_202/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_202/lstm_cell_202/ReluRelu%lstm_202/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
lstm_202/lstm_cell_202/mul_1Mul"lstm_202/lstm_cell_202/Sigmoid:y:0)lstm_202/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_202/lstm_cell_202/add_1AddV2lstm_202/lstm_cell_202/mul:z:0 lstm_202/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_202/lstm_cell_202/Sigmoid_2Sigmoid%lstm_202/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_202/lstm_cell_202/Relu_1Relu lstm_202/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
lstm_202/lstm_cell_202/mul_2Mul$lstm_202/lstm_cell_202/Sigmoid_2:y:0+lstm_202/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
&lstm_202/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ó
lstm_202/TensorArrayV2_1TensorListReserve/lstm_202/TensorArrayV2_1/element_shape:output:0!lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_202/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_202/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ]
lstm_202/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_202/whileWhile$lstm_202/while/loop_counter:output:0*lstm_202/while/maximum_iterations:output:0lstm_202/time:output:0!lstm_202/TensorArrayV2_1:handle:0lstm_202/zeros:output:0lstm_202/zeros_1:output:0!lstm_202/strided_slice_1:output:0@lstm_202/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_202_lstm_cell_202_matmul_readvariableop_resource7lstm_202_lstm_cell_202_matmul_1_readvariableop_resource6lstm_202_lstm_cell_202_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *(
body R
lstm_202_while_body_24141042*(
cond R
lstm_202_while_cond_24141041*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
9lstm_202/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Þ
+lstm_202/TensorArrayV2Stack/TensorListStackTensorListStacklstm_202/while:output:3Blstm_202/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0q
lstm_202/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 lstm_202/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_202/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
lstm_202/strided_slice_3StridedSlice4lstm_202/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_202/strided_slice_3/stack:output:0)lstm_202/strided_slice_3/stack_1:output:0)lstm_202/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskn
lstm_202/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
lstm_202/transpose_1	Transpose4lstm_202/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_202/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_202/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_75/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_75/dropout/MulMullstm_202/transpose_1:y:0!dropout_75/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
dropout_75/dropout/ShapeShapelstm_202/transpose_1:y:0*
T0*
_output_shapes
:§
/dropout_75/dropout/random_uniform/RandomUniformRandomUniform!dropout_75/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_75/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ì
dropout_75/dropout/GreaterEqualGreaterEqual8dropout_75/dropout/random_uniform/RandomUniform:output:0*dropout_75/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_75/dropout/CastCast#dropout_75/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_75/dropout/Mul_1Muldropout_75/dropout/Mul:z:0dropout_75/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_203/ShapeShapedropout_75/dropout/Mul_1:z:0*
T0*
_output_shapes
:f
lstm_203/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_203/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_203/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_203/strided_sliceStridedSlicelstm_203/Shape:output:0%lstm_203/strided_slice/stack:output:0'lstm_203/strided_slice/stack_1:output:0'lstm_203/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
lstm_203/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_203/zeros/packedPacklstm_203/strided_slice:output:0 lstm_203/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_203/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_203/zerosFilllstm_203/zeros/packed:output:0lstm_203/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
lstm_203/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_203/zeros_1/packedPacklstm_203/strided_slice:output:0"lstm_203/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_203/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_203/zeros_1Fill lstm_203/zeros_1/packed:output:0lstm_203/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
lstm_203/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_203/transpose	Transposedropout_75/dropout/Mul_1:z:0 lstm_203/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
lstm_203/Shape_1Shapelstm_203/transpose:y:0*
T0*
_output_shapes
:h
lstm_203/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_203/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_203/strided_slice_1StridedSlicelstm_203/Shape_1:output:0'lstm_203/strided_slice_1/stack:output:0)lstm_203/strided_slice_1/stack_1:output:0)lstm_203/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_203/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÏ
lstm_203/TensorArrayV2TensorListReserve-lstm_203/TensorArrayV2/element_shape:output:0!lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_203/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   û
0lstm_203/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_203/transpose:y:0Glstm_203/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_203/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_203/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_203/strided_slice_2StridedSlicelstm_203/transpose:y:0'lstm_203/strided_slice_2/stack:output:0)lstm_203/strided_slice_2/stack_1:output:0)lstm_203/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask¤
,lstm_203/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp5lstm_203_lstm_cell_203_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0³
lstm_203/lstm_cell_203/MatMulMatMul!lstm_203/strided_slice_2:output:04lstm_203/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.lstm_203/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp7lstm_203_lstm_cell_203_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0­
lstm_203/lstm_cell_203/MatMul_1MatMullstm_203/zeros:output:06lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
lstm_203/lstm_cell_203/addAddV2'lstm_203/lstm_cell_203/MatMul:product:0)lstm_203/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
-lstm_203/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp6lstm_203_lstm_cell_203_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0³
lstm_203/lstm_cell_203/BiasAddBiasAddlstm_203/lstm_cell_203/add:z:05lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
&lstm_203/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ÿ
lstm_203/lstm_cell_203/splitSplit/lstm_203/lstm_cell_203/split/split_dim:output:0'lstm_203/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
lstm_203/lstm_cell_203/SigmoidSigmoid%lstm_203/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_203/lstm_cell_203/Sigmoid_1Sigmoid%lstm_203/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_203/lstm_cell_203/mulMul$lstm_203/lstm_cell_203/Sigmoid_1:y:0lstm_203/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_203/lstm_cell_203/Sigmoid_2Sigmoid%lstm_203/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_203/lstm_cell_203/mul_1Mul"lstm_203/lstm_cell_203/Sigmoid:y:0$lstm_203/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_203/lstm_cell_203/add_1AddV2lstm_203/lstm_cell_203/mul:z:0 lstm_203/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_203/lstm_cell_203/Sigmoid_3Sigmoid%lstm_203/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_203/lstm_cell_203/Sigmoid_4Sigmoid lstm_203/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
lstm_203/lstm_cell_203/mul_2Mul$lstm_203/lstm_cell_203/Sigmoid_3:y:0$lstm_203/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
&lstm_203/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ó
lstm_203/TensorArrayV2_1TensorListReserve/lstm_203/TensorArrayV2_1/element_shape:output:0!lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_203/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_203/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ]
lstm_203/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_203/whileWhile$lstm_203/while/loop_counter:output:0*lstm_203/while/maximum_iterations:output:0lstm_203/time:output:0!lstm_203/TensorArrayV2_1:handle:0lstm_203/zeros:output:0lstm_203/zeros_1:output:0!lstm_203/strided_slice_1:output:0@lstm_203/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_203_lstm_cell_203_matmul_readvariableop_resource7lstm_203_lstm_cell_203_matmul_1_readvariableop_resource6lstm_203_lstm_cell_203_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *(
body R
lstm_203_while_body_24141189*(
cond R
lstm_203_while_cond_24141188*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
9lstm_203/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Þ
+lstm_203/TensorArrayV2Stack/TensorListStackTensorListStacklstm_203/while:output:3Blstm_203/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0q
lstm_203/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 lstm_203/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_203/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
lstm_203/strided_slice_3StridedSlice4lstm_203/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_203/strided_slice_3/stack:output:0)lstm_203/strided_slice_3/stack_1:output:0)lstm_203/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskn
lstm_203/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
lstm_203/transpose_1	Transpose4lstm_203/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_203/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_203/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_76/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?
dropout_76/dropout/MulMullstm_203/transpose_1:y:0!dropout_76/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
dropout_76/dropout/ShapeShapelstm_203/transpose_1:y:0*
T0*
_output_shapes
:§
/dropout_76/dropout/random_uniform/RandomUniformRandomUniform!dropout_76/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0f
!dropout_76/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ì
dropout_76/dropout/GreaterEqualGreaterEqual8dropout_76/dropout/random_uniform/RandomUniform:output:0*dropout_76/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_76/dropout/CastCast#dropout_76/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_76/dropout/Mul_1Muldropout_76/dropout/Mul:z:0dropout_76/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_204/ShapeShapedropout_76/dropout/Mul_1:z:0*
T0*
_output_shapes
:f
lstm_204/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_204/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_204/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_204/strided_sliceStridedSlicelstm_204/Shape:output:0%lstm_204/strided_slice/stack:output:0'lstm_204/strided_slice/stack_1:output:0'lstm_204/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_204/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_204/zeros/packedPacklstm_204/strided_slice:output:0 lstm_204/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_204/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_204/zerosFilllstm_204/zeros/packed:output:0lstm_204/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_204/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
lstm_204/zeros_1/packedPacklstm_204/strided_slice:output:0"lstm_204/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_204/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_204/zeros_1Fill lstm_204/zeros_1/packed:output:0lstm_204/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
lstm_204/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_204/transpose	Transposedropout_76/dropout/Mul_1:z:0 lstm_204/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
lstm_204/Shape_1Shapelstm_204/transpose:y:0*
T0*
_output_shapes
:h
lstm_204/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_204/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_204/strided_slice_1StridedSlicelstm_204/Shape_1:output:0'lstm_204/strided_slice_1/stack:output:0)lstm_204/strided_slice_1/stack_1:output:0)lstm_204/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_204/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÏ
lstm_204/TensorArrayV2TensorListReserve-lstm_204/TensorArrayV2/element_shape:output:0!lstm_204/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>lstm_204/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   û
0lstm_204/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_204/transpose:y:0Glstm_204/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒh
lstm_204/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_204/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_204/strided_slice_2StridedSlicelstm_204/transpose:y:0'lstm_204/strided_slice_2/stack:output:0)lstm_204/strided_slice_2/stack_1:output:0)lstm_204/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask£
,lstm_204/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp5lstm_204_lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0²
lstm_204/lstm_cell_204/MatMulMatMul!lstm_204/strided_slice_2:output:04lstm_204/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
.lstm_204/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp7lstm_204_lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0¬
lstm_204/lstm_cell_204/MatMul_1MatMullstm_204/zeros:output:06lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@©
lstm_204/lstm_cell_204/addAddV2'lstm_204/lstm_cell_204/MatMul:product:0)lstm_204/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
-lstm_204/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp6lstm_204_lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0²
lstm_204/lstm_cell_204/BiasAddBiasAddlstm_204/lstm_cell_204/add:z:05lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
&lstm_204/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :û
lstm_204/lstm_cell_204/splitSplit/lstm_204/lstm_cell_204/split/split_dim:output:0'lstm_204/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
lstm_204/lstm_cell_204/SigmoidSigmoid%lstm_204/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_204/lstm_cell_204/Sigmoid_1Sigmoid%lstm_204/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_204/lstm_cell_204/mulMul$lstm_204/lstm_cell_204/Sigmoid_1:y:0lstm_204/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_204/lstm_cell_204/ReluRelu%lstm_204/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm_204/lstm_cell_204/mul_1Mul"lstm_204/lstm_cell_204/Sigmoid:y:0)lstm_204/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_204/lstm_cell_204/add_1AddV2lstm_204/lstm_cell_204/mul:z:0 lstm_204/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_204/lstm_cell_204/Sigmoid_2Sigmoid%lstm_204/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_204/lstm_cell_204/Relu_1Relu lstm_204/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
lstm_204/lstm_cell_204/mul_2Mul$lstm_204/lstm_cell_204/Sigmoid_2:y:0+lstm_204/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
&lstm_204/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   g
%lstm_204/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :à
lstm_204/TensorArrayV2_1TensorListReserve/lstm_204/TensorArrayV2_1/element_shape:output:0.lstm_204/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒO
lstm_204/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_204/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ]
lstm_204/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_204/whileWhile$lstm_204/while/loop_counter:output:0*lstm_204/while/maximum_iterations:output:0lstm_204/time:output:0!lstm_204/TensorArrayV2_1:handle:0lstm_204/zeros:output:0lstm_204/zeros_1:output:0!lstm_204/strided_slice_1:output:0@lstm_204/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_204_lstm_cell_204_matmul_readvariableop_resource7lstm_204_lstm_cell_204_matmul_1_readvariableop_resource6lstm_204_lstm_cell_204_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *(
body R
lstm_204_while_body_24141337*(
cond R
lstm_204_while_cond_24141336*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
9lstm_204/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ñ
+lstm_204/TensorArrayV2Stack/TensorListStackTensorListStacklstm_204/while:output:3Blstm_204/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elementsq
lstm_204/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿj
 lstm_204/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_204/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:´
lstm_204/strided_slice_3StridedSlice4lstm_204/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_204/strided_slice_3/stack:output:0)lstm_204/strided_slice_3/stack_1:output:0)lstm_204/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskn
lstm_204/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ±
lstm_204/transpose_1	Transpose4lstm_204/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_204/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_204/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_194/MatMul/ReadVariableOpReadVariableOp(dense_194_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_194/MatMulMatMul!lstm_204/strided_slice_3:output:0'dense_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_194/BiasAdd/ReadVariableOpReadVariableOp)dense_194_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_194/BiasAddBiasAdddense_194/MatMul:product:0(dense_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_194/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp!^dense_194/BiasAdd/ReadVariableOp ^dense_194/MatMul/ReadVariableOp.^lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp-^lstm_202/lstm_cell_202/MatMul/ReadVariableOp/^lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp^lstm_202/while.^lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp-^lstm_203/lstm_cell_203/MatMul/ReadVariableOp/^lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp^lstm_203/while.^lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp-^lstm_204/lstm_cell_204/MatMul/ReadVariableOp/^lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp^lstm_204/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2D
 dense_194/BiasAdd/ReadVariableOp dense_194/BiasAdd/ReadVariableOp2B
dense_194/MatMul/ReadVariableOpdense_194/MatMul/ReadVariableOp2^
-lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp-lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp2\
,lstm_202/lstm_cell_202/MatMul/ReadVariableOp,lstm_202/lstm_cell_202/MatMul/ReadVariableOp2`
.lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp.lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp2 
lstm_202/whilelstm_202/while2^
-lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp-lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp2\
,lstm_203/lstm_cell_203/MatMul/ReadVariableOp,lstm_203/lstm_cell_203/MatMul/ReadVariableOp2`
.lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp.lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp2 
lstm_203/whilelstm_203/while2^
-lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp-lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp2\
,lstm_204/lstm_cell_204/MatMul/ReadVariableOp,lstm_204/lstm_cell_204/MatMul/ReadVariableOp2`
.lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp.lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp2 
lstm_204/whilelstm_204/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î

K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24138231

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ã
Í
while_cond_24138244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24138244___redundant_placeholder06
2while_while_cond_24138244___redundant_placeholder16
2while_while_cond_24138244___redundant_placeholder26
2while_while_cond_24138244___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
®#
ü
while_body_24138595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
while_lstm_cell_203_24138619_0:
2
while_lstm_cell_203_24138621_0:
-
while_lstm_cell_203_24138623_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_lstm_cell_203_24138619:
0
while_lstm_cell_203_24138621:
+
while_lstm_cell_203_24138623:	¢+while/lstm_cell_203/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ã
+while/lstm_cell_203/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_203_24138619_0while_lstm_cell_203_24138621_0while_lstm_cell_203_24138623_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24138581Ý
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_203/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity4while/lstm_cell_203/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity4while/lstm_cell_203/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz

while/NoOpNoOp,^while/lstm_cell_203/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0">
while_lstm_cell_203_24138619while_lstm_cell_203_24138619_0">
while_lstm_cell_203_24138621while_lstm_cell_203_24138621_0">
while_lstm_cell_203_24138623while_lstm_cell_203_24138623_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2Z
+while/lstm_cell_203/StatefulPartitionedCall+while/lstm_cell_203/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¶!
Õ
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140347

inputs$
lstm_202_24140318:	%
lstm_202_24140320:
 
lstm_202_24140322:	%
lstm_203_24140326:
%
lstm_203_24140328:
 
lstm_203_24140330:	$
lstm_204_24140334:	@#
lstm_204_24140336:@
lstm_204_24140338:@$
dense_194_24140341: 
dense_194_24140343:
identity¢!dense_194/StatefulPartitionedCall¢"dropout_75/StatefulPartitionedCall¢"dropout_76/StatefulPartitionedCall¢ lstm_202/StatefulPartitionedCall¢ lstm_203/StatefulPartitionedCall¢ lstm_204/StatefulPartitionedCall
 lstm_202/StatefulPartitionedCallStatefulPartitionedCallinputslstm_202_24140318lstm_202_24140320lstm_202_24140322*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_202_layer_call_and_return_conditional_losses_24140277ö
"dropout_75/StatefulPartitionedCallStatefulPartitionedCall)lstm_202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_75_layer_call_and_return_conditional_losses_24140118µ
 lstm_203/StatefulPartitionedCallStatefulPartitionedCall+dropout_75/StatefulPartitionedCall:output:0lstm_203_24140326lstm_203_24140328lstm_203_24140330*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_203_layer_call_and_return_conditional_losses_24140089
"dropout_76/StatefulPartitionedCallStatefulPartitionedCall)lstm_203/StatefulPartitionedCall:output:0#^dropout_75/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_76_layer_call_and_return_conditional_losses_24139930°
 lstm_204/StatefulPartitionedCallStatefulPartitionedCall+dropout_76/StatefulPartitionedCall:output:0lstm_204_24140334lstm_204_24140336lstm_204_24140338*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139901
!dense_194/StatefulPartitionedCallStatefulPartitionedCall)lstm_204/StatefulPartitionedCall:output:0dense_194_24140341dense_194_24140343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_194_layer_call_and_return_conditional_losses_24139701y
IdentityIdentity*dense_194/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp"^dense_194/StatefulPartitionedCall#^dropout_75/StatefulPartitionedCall#^dropout_76/StatefulPartitionedCall!^lstm_202/StatefulPartitionedCall!^lstm_203/StatefulPartitionedCall!^lstm_204/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2F
!dense_194/StatefulPartitionedCall!dense_194/StatefulPartitionedCall2H
"dropout_75/StatefulPartitionedCall"dropout_75/StatefulPartitionedCall2H
"dropout_76/StatefulPartitionedCall"dropout_76/StatefulPartitionedCall2D
 lstm_202/StatefulPartitionedCall lstm_202/StatefulPartitionedCall2D
 lstm_203/StatefulPartitionedCall lstm_203/StatefulPartitionedCall2D
 lstm_204/StatefulPartitionedCall lstm_204/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾C
ÿ

lstm_203_while_body_24141189.
*lstm_203_while_lstm_203_while_loop_counter4
0lstm_203_while_lstm_203_while_maximum_iterations
lstm_203_while_placeholder 
lstm_203_while_placeholder_1 
lstm_203_while_placeholder_2 
lstm_203_while_placeholder_3-
)lstm_203_while_lstm_203_strided_slice_1_0i
elstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_203_while_lstm_cell_203_matmul_readvariableop_resource_0:
S
?lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource_0:
M
>lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource_0:	
lstm_203_while_identity
lstm_203_while_identity_1
lstm_203_while_identity_2
lstm_203_while_identity_3
lstm_203_while_identity_4
lstm_203_while_identity_5+
'lstm_203_while_lstm_203_strided_slice_1g
clstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensorO
;lstm_203_while_lstm_cell_203_matmul_readvariableop_resource:
Q
=lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource:
K
<lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource:	¢3lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp¢2lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp¢4lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp
@lstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ô
2lstm_203/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0lstm_203_while_placeholderIlstm_203/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0²
2lstm_203/while/lstm_cell_203/MatMul/ReadVariableOpReadVariableOp=lstm_203_while_lstm_cell_203_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0×
#lstm_203/while/lstm_cell_203/MatMulMatMul9lstm_203/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
4lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOp?lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¾
%lstm_203/while/lstm_cell_203/MatMul_1MatMullstm_203_while_placeholder_2<lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
 lstm_203/while/lstm_cell_203/addAddV2-lstm_203/while/lstm_cell_203/MatMul:product:0/lstm_203/while/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
3lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOp>lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Å
$lstm_203/while/lstm_cell_203/BiasAddBiasAdd$lstm_203/while/lstm_cell_203/add:z:0;lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
,lstm_203/while/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"lstm_203/while/lstm_cell_203/splitSplit5lstm_203/while/lstm_cell_203/split/split_dim:output:0-lstm_203/while/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
$lstm_203/while/lstm_cell_203/SigmoidSigmoid+lstm_203/while/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_203/while/lstm_cell_203/Sigmoid_1Sigmoid+lstm_203/while/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
 lstm_203/while/lstm_cell_203/mulMul*lstm_203/while/lstm_cell_203/Sigmoid_1:y:0lstm_203_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_203/while/lstm_cell_203/Sigmoid_2Sigmoid+lstm_203/while/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
"lstm_203/while/lstm_cell_203/mul_1Mul(lstm_203/while/lstm_cell_203/Sigmoid:y:0*lstm_203/while/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
"lstm_203/while/lstm_cell_203/add_1AddV2$lstm_203/while/lstm_cell_203/mul:z:0&lstm_203/while/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_203/while/lstm_cell_203/Sigmoid_3Sigmoid+lstm_203/while/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_203/while/lstm_cell_203/Sigmoid_4Sigmoid&lstm_203/while/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
"lstm_203/while/lstm_cell_203/mul_2Mul*lstm_203/while/lstm_cell_203/Sigmoid_3:y:0*lstm_203/while/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
3lstm_203/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_203_while_placeholder_1lstm_203_while_placeholder&lstm_203/while/lstm_cell_203/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒV
lstm_203/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_203/while/addAddV2lstm_203_while_placeholderlstm_203/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_203/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_203/while/add_1AddV2*lstm_203_while_lstm_203_while_loop_counterlstm_203/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_203/while/IdentityIdentitylstm_203/while/add_1:z:0^lstm_203/while/NoOp*
T0*
_output_shapes
: 
lstm_203/while/Identity_1Identity0lstm_203_while_lstm_203_while_maximum_iterations^lstm_203/while/NoOp*
T0*
_output_shapes
: t
lstm_203/while/Identity_2Identitylstm_203/while/add:z:0^lstm_203/while/NoOp*
T0*
_output_shapes
: ¡
lstm_203/while/Identity_3IdentityClstm_203/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_203/while/NoOp*
T0*
_output_shapes
: 
lstm_203/while/Identity_4Identity&lstm_203/while/lstm_cell_203/mul_2:z:0^lstm_203/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_203/while/Identity_5Identity&lstm_203/while/lstm_cell_203/add_1:z:0^lstm_203/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
lstm_203/while/NoOpNoOp4^lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp3^lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp5^lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_203_while_identity lstm_203/while/Identity:output:0"?
lstm_203_while_identity_1"lstm_203/while/Identity_1:output:0"?
lstm_203_while_identity_2"lstm_203/while/Identity_2:output:0"?
lstm_203_while_identity_3"lstm_203/while/Identity_3:output:0"?
lstm_203_while_identity_4"lstm_203/while/Identity_4:output:0"?
lstm_203_while_identity_5"lstm_203/while/Identity_5:output:0"T
'lstm_203_while_lstm_203_strided_slice_1)lstm_203_while_lstm_203_strided_slice_1_0"~
<lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource>lstm_203_while_lstm_cell_203_biasadd_readvariableop_resource_0"
=lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource?lstm_203_while_lstm_cell_203_matmul_1_readvariableop_resource_0"|
;lstm_203_while_lstm_cell_203_matmul_readvariableop_resource=lstm_203_while_lstm_cell_203_matmul_readvariableop_resource_0"Ì
clstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensorelstm_203_while_tensorarrayv2read_tensorlistgetitem_lstm_203_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2j
3lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp3lstm_203/while/lstm_cell_203/BiasAdd/ReadVariableOp2h
2lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp2lstm_203/while/lstm_cell_203/MatMul/ReadVariableOp2l
4lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp4lstm_203/while/lstm_cell_203/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ý
¶
+__inference_lstm_204_layer_call_fn_24142747

inputs
unknown:	@
	unknown_0:@
	unknown_1:@
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139683o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¹
+__inference_lstm_202_layer_call_fn_24141472

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_202_layer_call_and_return_conditional_losses_24140277t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê	
ø
G__inference_dense_194_layer_call_and_return_conditional_losses_24143357

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î!
Ý
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140463
lstm_202_input$
lstm_202_24140434:	%
lstm_202_24140436:
 
lstm_202_24140438:	%
lstm_203_24140442:
%
lstm_203_24140444:
 
lstm_203_24140446:	$
lstm_204_24140450:	@#
lstm_204_24140452:@
lstm_204_24140454:@$
dense_194_24140457: 
dense_194_24140459:
identity¢!dense_194/StatefulPartitionedCall¢"dropout_75/StatefulPartitionedCall¢"dropout_76/StatefulPartitionedCall¢ lstm_202/StatefulPartitionedCall¢ lstm_203/StatefulPartitionedCall¢ lstm_204/StatefulPartitionedCall
 lstm_202/StatefulPartitionedCallStatefulPartitionedCalllstm_202_inputlstm_202_24140434lstm_202_24140436lstm_202_24140438*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_202_layer_call_and_return_conditional_losses_24140277ö
"dropout_75/StatefulPartitionedCallStatefulPartitionedCall)lstm_202/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_75_layer_call_and_return_conditional_losses_24140118µ
 lstm_203/StatefulPartitionedCallStatefulPartitionedCall+dropout_75/StatefulPartitionedCall:output:0lstm_203_24140442lstm_203_24140444lstm_203_24140446*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_203_layer_call_and_return_conditional_losses_24140089
"dropout_76/StatefulPartitionedCallStatefulPartitionedCall)lstm_203/StatefulPartitionedCall:output:0#^dropout_75/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_76_layer_call_and_return_conditional_losses_24139930°
 lstm_204/StatefulPartitionedCallStatefulPartitionedCall+dropout_76/StatefulPartitionedCall:output:0lstm_204_24140450lstm_204_24140452lstm_204_24140454*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_204_layer_call_and_return_conditional_losses_24139901
!dense_194/StatefulPartitionedCallStatefulPartitionedCall)lstm_204/StatefulPartitionedCall:output:0dense_194_24140457dense_194_24140459*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_194_layer_call_and_return_conditional_losses_24139701y
IdentityIdentity*dense_194/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp"^dense_194/StatefulPartitionedCall#^dropout_75/StatefulPartitionedCall#^dropout_76/StatefulPartitionedCall!^lstm_202/StatefulPartitionedCall!^lstm_203/StatefulPartitionedCall!^lstm_204/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2F
!dense_194/StatefulPartitionedCall!dense_194/StatefulPartitionedCall2H
"dropout_75/StatefulPartitionedCall"dropout_75/StatefulPartitionedCall2H
"dropout_76/StatefulPartitionedCall"dropout_76/StatefulPartitionedCall2D
 lstm_202/StatefulPartitionedCall lstm_202/StatefulPartitionedCall2D
 lstm_203/StatefulPartitionedCall lstm_203/StatefulPartitionedCall2D
 lstm_204/StatefulPartitionedCall lstm_204/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_202_input
è8
Ý
while_body_24141817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_202_matmul_readvariableop_resource_0:	J
6while_lstm_cell_202_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_202_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_202_matmul_readvariableop_resource:	H
4while_lstm_cell_202_matmul_1_readvariableop_resource:
B
3while_lstm_cell_202_biasadd_readvariableop_resource:	¢*while/lstm_cell_202/BiasAdd/ReadVariableOp¢)while/lstm_cell_202/MatMul/ReadVariableOp¢+while/lstm_cell_202/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_202/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_202_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_202/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
+while/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_202_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_202/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
while/lstm_cell_202/addAddV2$while/lstm_cell_202/MatMul:product:0&while/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*while/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_202_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ª
while/lstm_cell_202/BiasAddBiasAddwhile/lstm_cell_202/add:z:02while/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_202/splitSplit,while/lstm_cell_202/split/split_dim:output:0$while/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split}
while/lstm_cell_202/SigmoidSigmoid"while/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_1Sigmoid"while/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mulMul!while/lstm_cell_202/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/lstm_cell_202/ReluRelu"while/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/mul_1Mulwhile/lstm_cell_202/Sigmoid:y:0&while/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/add_1AddV2while/lstm_cell_202/mul:z:0while/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_202/Sigmoid_2Sigmoid"while/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
while/lstm_cell_202/Relu_1Reluwhile/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_202/mul_2Mul!while/lstm_cell_202/Sigmoid_2:y:0(while/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_202/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/lstm_cell_202/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/Identity_5Identitywhile/lstm_cell_202/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_202/BiasAdd/ReadVariableOp*^while/lstm_cell_202/MatMul/ReadVariableOp,^while/lstm_cell_202/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_202_biasadd_readvariableop_resource5while_lstm_cell_202_biasadd_readvariableop_resource_0"n
4while_lstm_cell_202_matmul_1_readvariableop_resource6while_lstm_cell_202_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_202_matmul_readvariableop_resource4while_lstm_cell_202_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_202/BiasAdd/ReadVariableOp*while/lstm_cell_202/BiasAdd/ReadVariableOp2V
)while/lstm_cell_202/MatMul/ReadVariableOp)while/lstm_cell_202/MatMul/ReadVariableOp2Z
+while/lstm_cell_202/MatMul_1/ReadVariableOp+while/lstm_cell_202/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
å9
×
while_body_24142818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_204_matmul_readvariableop_resource_0:	@H
6while_lstm_cell_204_matmul_1_readvariableop_resource_0:@C
5while_lstm_cell_204_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_204_matmul_readvariableop_resource:	@F
4while_lstm_cell_204_matmul_1_readvariableop_resource:@A
3while_lstm_cell_204_biasadd_readvariableop_resource:@¢*while/lstm_cell_204/BiasAdd/ReadVariableOp¢)while/lstm_cell_204/MatMul/ReadVariableOp¢+while/lstm_cell_204/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
)while/lstm_cell_204/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_204_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0»
while/lstm_cell_204/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
+while/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_204_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0¢
while/lstm_cell_204/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
while/lstm_cell_204/addAddV2$while/lstm_cell_204/MatMul:product:0&while/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*while/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_204_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0©
while/lstm_cell_204/BiasAddBiasAddwhile/lstm_cell_204/add:z:02while/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#while/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
while/lstm_cell_204/splitSplit,while/lstm_cell_204/split/split_dim:output:0$while/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split|
while/lstm_cell_204/SigmoidSigmoid"while/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_1Sigmoid"while/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mulMul!while/lstm_cell_204/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_204/ReluRelu"while/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_1Mulwhile/lstm_cell_204/Sigmoid:y:0&while/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/add_1AddV2while/lstm_cell_204/mul:z:0while/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
while/lstm_cell_204/Sigmoid_2Sigmoid"while/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_204/Relu_1Reluwhile/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_204/mul_2Mul!while/lstm_cell_204/Sigmoid_2:y:0(while/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : î
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_204/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_204/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
while/Identity_5Identitywhile/lstm_cell_204/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ

while/NoOpNoOp+^while/lstm_cell_204/BiasAdd/ReadVariableOp*^while/lstm_cell_204/MatMul/ReadVariableOp,^while/lstm_cell_204/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_204_biasadd_readvariableop_resource5while_lstm_cell_204_biasadd_readvariableop_resource_0"n
4while_lstm_cell_204_matmul_1_readvariableop_resource6while_lstm_cell_204_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_204_matmul_readvariableop_resource4while_lstm_cell_204_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_204/BiasAdd/ReadVariableOp*while/lstm_cell_204/BiasAdd/ReadVariableOp2V
)while/lstm_cell_204/MatMul/ReadVariableOp)while/lstm_cell_204/MatMul/ReadVariableOp2Z
+while/lstm_cell_204/MatMul_1/ReadVariableOp+while/lstm_cell_204/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ñ
÷
0__inference_lstm_cell_204_layer_call_fn_24143587

inputs
states_0
states_1
unknown:	@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24139079o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ã
Í
while_cond_24140192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24140192___redundant_placeholder06
2while_while_cond_24140192___redundant_placeholder16
2while_while_cond_24140192___redundant_placeholder26
2while_while_cond_24140192___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ã
Í
while_cond_24141816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_16
2while_while_cond_24141816___redundant_placeholder06
2while_while_cond_24141816___redundant_placeholder16
2while_while_cond_24141816___redundant_placeholder26
2while_while_cond_24141816___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
È¿
ö
#__inference__wrapped_model_24138164
lstm_202_inputW
Dsequential_116_lstm_202_lstm_cell_202_matmul_readvariableop_resource:	Z
Fsequential_116_lstm_202_lstm_cell_202_matmul_1_readvariableop_resource:
T
Esequential_116_lstm_202_lstm_cell_202_biasadd_readvariableop_resource:	X
Dsequential_116_lstm_203_lstm_cell_203_matmul_readvariableop_resource:
Z
Fsequential_116_lstm_203_lstm_cell_203_matmul_1_readvariableop_resource:
T
Esequential_116_lstm_203_lstm_cell_203_biasadd_readvariableop_resource:	W
Dsequential_116_lstm_204_lstm_cell_204_matmul_readvariableop_resource:	@X
Fsequential_116_lstm_204_lstm_cell_204_matmul_1_readvariableop_resource:@S
Esequential_116_lstm_204_lstm_cell_204_biasadd_readvariableop_resource:@I
7sequential_116_dense_194_matmul_readvariableop_resource:F
8sequential_116_dense_194_biasadd_readvariableop_resource:
identity¢/sequential_116/dense_194/BiasAdd/ReadVariableOp¢.sequential_116/dense_194/MatMul/ReadVariableOp¢<sequential_116/lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp¢;sequential_116/lstm_202/lstm_cell_202/MatMul/ReadVariableOp¢=sequential_116/lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp¢sequential_116/lstm_202/while¢<sequential_116/lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp¢;sequential_116/lstm_203/lstm_cell_203/MatMul/ReadVariableOp¢=sequential_116/lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp¢sequential_116/lstm_203/while¢<sequential_116/lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp¢;sequential_116/lstm_204/lstm_cell_204/MatMul/ReadVariableOp¢=sequential_116/lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp¢sequential_116/lstm_204/while[
sequential_116/lstm_202/ShapeShapelstm_202_input*
T0*
_output_shapes
:u
+sequential_116/lstm_202/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_116/lstm_202/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_116/lstm_202/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_116/lstm_202/strided_sliceStridedSlice&sequential_116/lstm_202/Shape:output:04sequential_116/lstm_202/strided_slice/stack:output:06sequential_116/lstm_202/strided_slice/stack_1:output:06sequential_116/lstm_202/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
&sequential_116/lstm_202/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»
$sequential_116/lstm_202/zeros/packedPack.sequential_116/lstm_202/strided_slice:output:0/sequential_116/lstm_202/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_116/lstm_202/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    µ
sequential_116/lstm_202/zerosFill-sequential_116/lstm_202/zeros/packed:output:0,sequential_116/lstm_202/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
(sequential_116/lstm_202/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¿
&sequential_116/lstm_202/zeros_1/packedPack.sequential_116/lstm_202/strided_slice:output:01sequential_116/lstm_202/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_116/lstm_202/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    »
sequential_116/lstm_202/zeros_1Fill/sequential_116/lstm_202/zeros_1/packed:output:0.sequential_116/lstm_202/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
&sequential_116/lstm_202/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¥
!sequential_116/lstm_202/transpose	Transposelstm_202_input/sequential_116/lstm_202/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
sequential_116/lstm_202/Shape_1Shape%sequential_116/lstm_202/transpose:y:0*
T0*
_output_shapes
:w
-sequential_116/lstm_202/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_202/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_202/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_116/lstm_202/strided_slice_1StridedSlice(sequential_116/lstm_202/Shape_1:output:06sequential_116/lstm_202/strided_slice_1/stack:output:08sequential_116/lstm_202/strided_slice_1/stack_1:output:08sequential_116/lstm_202/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_116/lstm_202/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿü
%sequential_116/lstm_202/TensorArrayV2TensorListReserve<sequential_116/lstm_202/TensorArrayV2/element_shape:output:00sequential_116/lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_116/lstm_202/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¨
?sequential_116/lstm_202/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_116/lstm_202/transpose:y:0Vsequential_116/lstm_202/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_116/lstm_202/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_202/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_202/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
'sequential_116/lstm_202/strided_slice_2StridedSlice%sequential_116/lstm_202/transpose:y:06sequential_116/lstm_202/strided_slice_2/stack:output:08sequential_116/lstm_202/strided_slice_2/stack_1:output:08sequential_116/lstm_202/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÁ
;sequential_116/lstm_202/lstm_cell_202/MatMul/ReadVariableOpReadVariableOpDsequential_116_lstm_202_lstm_cell_202_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0à
,sequential_116/lstm_202/lstm_cell_202/MatMulMatMul0sequential_116/lstm_202/strided_slice_2:output:0Csequential_116/lstm_202/lstm_cell_202/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
=sequential_116/lstm_202/lstm_cell_202/MatMul_1/ReadVariableOpReadVariableOpFsequential_116_lstm_202_lstm_cell_202_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ú
.sequential_116/lstm_202/lstm_cell_202/MatMul_1MatMul&sequential_116/lstm_202/zeros:output:0Esequential_116/lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
)sequential_116/lstm_202/lstm_cell_202/addAddV26sequential_116/lstm_202/lstm_cell_202/MatMul:product:08sequential_116/lstm_202/lstm_cell_202/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
<sequential_116/lstm_202/lstm_cell_202/BiasAdd/ReadVariableOpReadVariableOpEsequential_116_lstm_202_lstm_cell_202_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0à
-sequential_116/lstm_202/lstm_cell_202/BiasAddBiasAdd-sequential_116/lstm_202/lstm_cell_202/add:z:0Dsequential_116/lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
5sequential_116/lstm_202/lstm_cell_202/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¬
+sequential_116/lstm_202/lstm_cell_202/splitSplit>sequential_116/lstm_202/lstm_cell_202/split/split_dim:output:06sequential_116/lstm_202/lstm_cell_202/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¡
-sequential_116/lstm_202/lstm_cell_202/SigmoidSigmoid4sequential_116/lstm_202/lstm_cell_202/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
/sequential_116/lstm_202/lstm_cell_202/Sigmoid_1Sigmoid4sequential_116/lstm_202/lstm_cell_202/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
)sequential_116/lstm_202/lstm_cell_202/mulMul3sequential_116/lstm_202/lstm_cell_202/Sigmoid_1:y:0(sequential_116/lstm_202/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_116/lstm_202/lstm_cell_202/ReluRelu4sequential_116/lstm_202/lstm_cell_202/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
+sequential_116/lstm_202/lstm_cell_202/mul_1Mul1sequential_116/lstm_202/lstm_cell_202/Sigmoid:y:08sequential_116/lstm_202/lstm_cell_202/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
+sequential_116/lstm_202/lstm_cell_202/add_1AddV2-sequential_116/lstm_202/lstm_cell_202/mul:z:0/sequential_116/lstm_202/lstm_cell_202/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
/sequential_116/lstm_202/lstm_cell_202/Sigmoid_2Sigmoid4sequential_116/lstm_202/lstm_cell_202/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_116/lstm_202/lstm_cell_202/Relu_1Relu/sequential_116/lstm_202/lstm_cell_202/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
+sequential_116/lstm_202/lstm_cell_202/mul_2Mul3sequential_116/lstm_202/lstm_cell_202/Sigmoid_2:y:0:sequential_116/lstm_202/lstm_cell_202/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5sequential_116/lstm_202/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
'sequential_116/lstm_202/TensorArrayV2_1TensorListReserve>sequential_116/lstm_202/TensorArrayV2_1/element_shape:output:00sequential_116/lstm_202/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_116/lstm_202/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_116/lstm_202/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿl
*sequential_116/lstm_202/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ý
sequential_116/lstm_202/whileWhile3sequential_116/lstm_202/while/loop_counter:output:09sequential_116/lstm_202/while/maximum_iterations:output:0%sequential_116/lstm_202/time:output:00sequential_116/lstm_202/TensorArrayV2_1:handle:0&sequential_116/lstm_202/zeros:output:0(sequential_116/lstm_202/zeros_1:output:00sequential_116/lstm_202/strided_slice_1:output:0Osequential_116/lstm_202/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_116_lstm_202_lstm_cell_202_matmul_readvariableop_resourceFsequential_116_lstm_202_lstm_cell_202_matmul_1_readvariableop_resourceEsequential_116_lstm_202_lstm_cell_202_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *7
body/R-
+sequential_116_lstm_202_while_body_24137792*7
cond/R-
+sequential_116_lstm_202_while_cond_24137791*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Hsequential_116/lstm_202/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
:sequential_116/lstm_202/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_116/lstm_202/while:output:3Qsequential_116/lstm_202/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
-sequential_116/lstm_202/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿy
/sequential_116/lstm_202/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_202/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
'sequential_116/lstm_202/strided_slice_3StridedSliceCsequential_116/lstm_202/TensorArrayV2Stack/TensorListStack:tensor:06sequential_116/lstm_202/strided_slice_3/stack:output:08sequential_116/lstm_202/strided_slice_3/stack_1:output:08sequential_116/lstm_202/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask}
(sequential_116/lstm_202/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ß
#sequential_116/lstm_202/transpose_1	TransposeCsequential_116/lstm_202/TensorArrayV2Stack/TensorListStack:tensor:01sequential_116/lstm_202/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
sequential_116/lstm_202/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
"sequential_116/dropout_75/IdentityIdentity'sequential_116/lstm_202/transpose_1:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
sequential_116/lstm_203/ShapeShape+sequential_116/dropout_75/Identity:output:0*
T0*
_output_shapes
:u
+sequential_116/lstm_203/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_116/lstm_203/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_116/lstm_203/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_116/lstm_203/strided_sliceStridedSlice&sequential_116/lstm_203/Shape:output:04sequential_116/lstm_203/strided_slice/stack:output:06sequential_116/lstm_203/strided_slice/stack_1:output:06sequential_116/lstm_203/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
&sequential_116/lstm_203/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :»
$sequential_116/lstm_203/zeros/packedPack.sequential_116/lstm_203/strided_slice:output:0/sequential_116/lstm_203/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_116/lstm_203/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    µ
sequential_116/lstm_203/zerosFill-sequential_116/lstm_203/zeros/packed:output:0,sequential_116/lstm_203/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
(sequential_116/lstm_203/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¿
&sequential_116/lstm_203/zeros_1/packedPack.sequential_116/lstm_203/strided_slice:output:01sequential_116/lstm_203/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_116/lstm_203/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    »
sequential_116/lstm_203/zeros_1Fill/sequential_116/lstm_203/zeros_1/packed:output:0.sequential_116/lstm_203/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
&sequential_116/lstm_203/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ã
!sequential_116/lstm_203/transpose	Transpose+sequential_116/dropout_75/Identity:output:0/sequential_116/lstm_203/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
sequential_116/lstm_203/Shape_1Shape%sequential_116/lstm_203/transpose:y:0*
T0*
_output_shapes
:w
-sequential_116/lstm_203/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_203/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_203/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_116/lstm_203/strided_slice_1StridedSlice(sequential_116/lstm_203/Shape_1:output:06sequential_116/lstm_203/strided_slice_1/stack:output:08sequential_116/lstm_203/strided_slice_1/stack_1:output:08sequential_116/lstm_203/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_116/lstm_203/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿü
%sequential_116/lstm_203/TensorArrayV2TensorListReserve<sequential_116/lstm_203/TensorArrayV2/element_shape:output:00sequential_116/lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_116/lstm_203/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¨
?sequential_116/lstm_203/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_116/lstm_203/transpose:y:0Vsequential_116/lstm_203/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_116/lstm_203/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_203/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_203/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
'sequential_116/lstm_203/strided_slice_2StridedSlice%sequential_116/lstm_203/transpose:y:06sequential_116/lstm_203/strided_slice_2/stack:output:08sequential_116/lstm_203/strided_slice_2/stack_1:output:08sequential_116/lstm_203/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÂ
;sequential_116/lstm_203/lstm_cell_203/MatMul/ReadVariableOpReadVariableOpDsequential_116_lstm_203_lstm_cell_203_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0à
,sequential_116/lstm_203/lstm_cell_203/MatMulMatMul0sequential_116/lstm_203/strided_slice_2:output:0Csequential_116/lstm_203/lstm_cell_203/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
=sequential_116/lstm_203/lstm_cell_203/MatMul_1/ReadVariableOpReadVariableOpFsequential_116_lstm_203_lstm_cell_203_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ú
.sequential_116/lstm_203/lstm_cell_203/MatMul_1MatMul&sequential_116/lstm_203/zeros:output:0Esequential_116/lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
)sequential_116/lstm_203/lstm_cell_203/addAddV26sequential_116/lstm_203/lstm_cell_203/MatMul:product:08sequential_116/lstm_203/lstm_cell_203/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
<sequential_116/lstm_203/lstm_cell_203/BiasAdd/ReadVariableOpReadVariableOpEsequential_116_lstm_203_lstm_cell_203_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0à
-sequential_116/lstm_203/lstm_cell_203/BiasAddBiasAdd-sequential_116/lstm_203/lstm_cell_203/add:z:0Dsequential_116/lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
5sequential_116/lstm_203/lstm_cell_203/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¬
+sequential_116/lstm_203/lstm_cell_203/splitSplit>sequential_116/lstm_203/lstm_cell_203/split/split_dim:output:06sequential_116/lstm_203/lstm_cell_203/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split¡
-sequential_116/lstm_203/lstm_cell_203/SigmoidSigmoid4sequential_116/lstm_203/lstm_cell_203/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
/sequential_116/lstm_203/lstm_cell_203/Sigmoid_1Sigmoid4sequential_116/lstm_203/lstm_cell_203/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
)sequential_116/lstm_203/lstm_cell_203/mulMul3sequential_116/lstm_203/lstm_cell_203/Sigmoid_1:y:0(sequential_116/lstm_203/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
/sequential_116/lstm_203/lstm_cell_203/Sigmoid_2Sigmoid4sequential_116/lstm_203/lstm_cell_203/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
+sequential_116/lstm_203/lstm_cell_203/mul_1Mul1sequential_116/lstm_203/lstm_cell_203/Sigmoid:y:03sequential_116/lstm_203/lstm_cell_203/Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
+sequential_116/lstm_203/lstm_cell_203/add_1AddV2-sequential_116/lstm_203/lstm_cell_203/mul:z:0/sequential_116/lstm_203/lstm_cell_203/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
/sequential_116/lstm_203/lstm_cell_203/Sigmoid_3Sigmoid4sequential_116/lstm_203/lstm_cell_203/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/sequential_116/lstm_203/lstm_cell_203/Sigmoid_4Sigmoid/sequential_116/lstm_203/lstm_cell_203/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
+sequential_116/lstm_203/lstm_cell_203/mul_2Mul3sequential_116/lstm_203/lstm_cell_203/Sigmoid_3:y:03sequential_116/lstm_203/lstm_cell_203/Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5sequential_116/lstm_203/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
'sequential_116/lstm_203/TensorArrayV2_1TensorListReserve>sequential_116/lstm_203/TensorArrayV2_1/element_shape:output:00sequential_116/lstm_203/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_116/lstm_203/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_116/lstm_203/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿl
*sequential_116/lstm_203/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ý
sequential_116/lstm_203/whileWhile3sequential_116/lstm_203/while/loop_counter:output:09sequential_116/lstm_203/while/maximum_iterations:output:0%sequential_116/lstm_203/time:output:00sequential_116/lstm_203/TensorArrayV2_1:handle:0&sequential_116/lstm_203/zeros:output:0(sequential_116/lstm_203/zeros_1:output:00sequential_116/lstm_203/strided_slice_1:output:0Osequential_116/lstm_203/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_116_lstm_203_lstm_cell_203_matmul_readvariableop_resourceFsequential_116_lstm_203_lstm_cell_203_matmul_1_readvariableop_resourceEsequential_116_lstm_203_lstm_cell_203_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *7
body/R-
+sequential_116_lstm_203_while_body_24137932*7
cond/R-
+sequential_116_lstm_203_while_cond_24137931*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Hsequential_116/lstm_203/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
:sequential_116/lstm_203/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_116/lstm_203/while:output:3Qsequential_116/lstm_203/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
-sequential_116/lstm_203/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿy
/sequential_116/lstm_203/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_203/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
'sequential_116/lstm_203/strided_slice_3StridedSliceCsequential_116/lstm_203/TensorArrayV2Stack/TensorListStack:tensor:06sequential_116/lstm_203/strided_slice_3/stack:output:08sequential_116/lstm_203/strided_slice_3/stack_1:output:08sequential_116/lstm_203/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask}
(sequential_116/lstm_203/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ß
#sequential_116/lstm_203/transpose_1	TransposeCsequential_116/lstm_203/TensorArrayV2Stack/TensorListStack:tensor:01sequential_116/lstm_203/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
sequential_116/lstm_203/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
"sequential_116/dropout_76/IdentityIdentity'sequential_116/lstm_203/transpose_1:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
sequential_116/lstm_204/ShapeShape+sequential_116/dropout_76/Identity:output:0*
T0*
_output_shapes
:u
+sequential_116/lstm_204/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_116/lstm_204/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_116/lstm_204/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_116/lstm_204/strided_sliceStridedSlice&sequential_116/lstm_204/Shape:output:04sequential_116/lstm_204/strided_slice/stack:output:06sequential_116/lstm_204/strided_slice/stack_1:output:06sequential_116/lstm_204/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_116/lstm_204/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :»
$sequential_116/lstm_204/zeros/packedPack.sequential_116/lstm_204/strided_slice:output:0/sequential_116/lstm_204/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_116/lstm_204/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_116/lstm_204/zerosFill-sequential_116/lstm_204/zeros/packed:output:0,sequential_116/lstm_204/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(sequential_116/lstm_204/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :¿
&sequential_116/lstm_204/zeros_1/packedPack.sequential_116/lstm_204/strided_slice:output:01sequential_116/lstm_204/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_116/lstm_204/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    º
sequential_116/lstm_204/zeros_1Fill/sequential_116/lstm_204/zeros_1/packed:output:0.sequential_116/lstm_204/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
&sequential_116/lstm_204/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ã
!sequential_116/lstm_204/transpose	Transpose+sequential_116/dropout_76/Identity:output:0/sequential_116/lstm_204/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
sequential_116/lstm_204/Shape_1Shape%sequential_116/lstm_204/transpose:y:0*
T0*
_output_shapes
:w
-sequential_116/lstm_204/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_204/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_204/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_116/lstm_204/strided_slice_1StridedSlice(sequential_116/lstm_204/Shape_1:output:06sequential_116/lstm_204/strided_slice_1/stack:output:08sequential_116/lstm_204/strided_slice_1/stack_1:output:08sequential_116/lstm_204/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_116/lstm_204/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿü
%sequential_116/lstm_204/TensorArrayV2TensorListReserve<sequential_116/lstm_204/TensorArrayV2/element_shape:output:00sequential_116/lstm_204/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Msequential_116/lstm_204/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¨
?sequential_116/lstm_204/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_116/lstm_204/transpose:y:0Vsequential_116/lstm_204/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒw
-sequential_116/lstm_204/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_204/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_116/lstm_204/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
'sequential_116/lstm_204/strided_slice_2StridedSlice%sequential_116/lstm_204/transpose:y:06sequential_116/lstm_204/strided_slice_2/stack:output:08sequential_116/lstm_204/strided_slice_2/stack_1:output:08sequential_116/lstm_204/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÁ
;sequential_116/lstm_204/lstm_cell_204/MatMul/ReadVariableOpReadVariableOpDsequential_116_lstm_204_lstm_cell_204_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0ß
,sequential_116/lstm_204/lstm_cell_204/MatMulMatMul0sequential_116/lstm_204/strided_slice_2:output:0Csequential_116/lstm_204/lstm_cell_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
=sequential_116/lstm_204/lstm_cell_204/MatMul_1/ReadVariableOpReadVariableOpFsequential_116_lstm_204_lstm_cell_204_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0Ù
.sequential_116/lstm_204/lstm_cell_204/MatMul_1MatMul&sequential_116/lstm_204/zeros:output:0Esequential_116/lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
)sequential_116/lstm_204/lstm_cell_204/addAddV26sequential_116/lstm_204/lstm_cell_204/MatMul:product:08sequential_116/lstm_204/lstm_cell_204/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
<sequential_116/lstm_204/lstm_cell_204/BiasAdd/ReadVariableOpReadVariableOpEsequential_116_lstm_204_lstm_cell_204_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ß
-sequential_116/lstm_204/lstm_cell_204/BiasAddBiasAdd-sequential_116/lstm_204/lstm_cell_204/add:z:0Dsequential_116/lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
5sequential_116/lstm_204/lstm_cell_204/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
+sequential_116/lstm_204/lstm_cell_204/splitSplit>sequential_116/lstm_204/lstm_cell_204/split/split_dim:output:06sequential_116/lstm_204/lstm_cell_204/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split 
-sequential_116/lstm_204/lstm_cell_204/SigmoidSigmoid4sequential_116/lstm_204/lstm_cell_204/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
/sequential_116/lstm_204/lstm_cell_204/Sigmoid_1Sigmoid4sequential_116/lstm_204/lstm_cell_204/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
)sequential_116/lstm_204/lstm_cell_204/mulMul3sequential_116/lstm_204/lstm_cell_204/Sigmoid_1:y:0(sequential_116/lstm_204/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_116/lstm_204/lstm_cell_204/ReluRelu4sequential_116/lstm_204/lstm_cell_204/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
+sequential_116/lstm_204/lstm_cell_204/mul_1Mul1sequential_116/lstm_204/lstm_cell_204/Sigmoid:y:08sequential_116/lstm_204/lstm_cell_204/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
+sequential_116/lstm_204/lstm_cell_204/add_1AddV2-sequential_116/lstm_204/lstm_cell_204/mul:z:0/sequential_116/lstm_204/lstm_cell_204/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
/sequential_116/lstm_204/lstm_cell_204/Sigmoid_2Sigmoid4sequential_116/lstm_204/lstm_cell_204/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_116/lstm_204/lstm_cell_204/Relu_1Relu/sequential_116/lstm_204/lstm_cell_204/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
+sequential_116/lstm_204/lstm_cell_204/mul_2Mul3sequential_116/lstm_204/lstm_cell_204/Sigmoid_2:y:0:sequential_116/lstm_204/lstm_cell_204/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5sequential_116/lstm_204/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   v
4sequential_116/lstm_204/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
'sequential_116/lstm_204/TensorArrayV2_1TensorListReserve>sequential_116/lstm_204/TensorArrayV2_1/element_shape:output:0=sequential_116/lstm_204/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ^
sequential_116/lstm_204/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_116/lstm_204/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿl
*sequential_116/lstm_204/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ù
sequential_116/lstm_204/whileWhile3sequential_116/lstm_204/while/loop_counter:output:09sequential_116/lstm_204/while/maximum_iterations:output:0%sequential_116/lstm_204/time:output:00sequential_116/lstm_204/TensorArrayV2_1:handle:0&sequential_116/lstm_204/zeros:output:0(sequential_116/lstm_204/zeros_1:output:00sequential_116/lstm_204/strided_slice_1:output:0Osequential_116/lstm_204/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_116_lstm_204_lstm_cell_204_matmul_readvariableop_resourceFsequential_116_lstm_204_lstm_cell_204_matmul_1_readvariableop_resourceEsequential_116_lstm_204_lstm_cell_204_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *7
body/R-
+sequential_116_lstm_204_while_body_24138073*7
cond/R-
+sequential_116_lstm_204_while_cond_24138072*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Hsequential_116/lstm_204/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
:sequential_116/lstm_204/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_116/lstm_204/while:output:3Qsequential_116/lstm_204/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*
num_elements
-sequential_116/lstm_204/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿy
/sequential_116/lstm_204/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_116/lstm_204/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ÿ
'sequential_116/lstm_204/strided_slice_3StridedSliceCsequential_116/lstm_204/TensorArrayV2Stack/TensorListStack:tensor:06sequential_116/lstm_204/strided_slice_3/stack:output:08sequential_116/lstm_204/strided_slice_3/stack_1:output:08sequential_116/lstm_204/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask}
(sequential_116/lstm_204/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Þ
#sequential_116/lstm_204/transpose_1	TransposeCsequential_116/lstm_204/TensorArrayV2Stack/TensorListStack:tensor:01sequential_116/lstm_204/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
sequential_116/lstm_204/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¦
.sequential_116/dense_194/MatMul/ReadVariableOpReadVariableOp7sequential_116_dense_194_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Å
sequential_116/dense_194/MatMulMatMul0sequential_116/lstm_204/strided_slice_3:output:06sequential_116/dense_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
/sequential_116/dense_194/BiasAdd/ReadVariableOpReadVariableOp8sequential_116_dense_194_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 sequential_116/dense_194/BiasAddBiasAdd)sequential_116/dense_194/MatMul:product:07sequential_116/dense_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
IdentityIdentity)sequential_116/dense_194/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp0^sequential_116/dense_194/BiasAdd/ReadVariableOp/^sequential_116/dense_194/MatMul/ReadVariableOp=^sequential_116/lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp<^sequential_116/lstm_202/lstm_cell_202/MatMul/ReadVariableOp>^sequential_116/lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp^sequential_116/lstm_202/while=^sequential_116/lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp<^sequential_116/lstm_203/lstm_cell_203/MatMul/ReadVariableOp>^sequential_116/lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp^sequential_116/lstm_203/while=^sequential_116/lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp<^sequential_116/lstm_204/lstm_cell_204/MatMul/ReadVariableOp>^sequential_116/lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp^sequential_116/lstm_204/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2b
/sequential_116/dense_194/BiasAdd/ReadVariableOp/sequential_116/dense_194/BiasAdd/ReadVariableOp2`
.sequential_116/dense_194/MatMul/ReadVariableOp.sequential_116/dense_194/MatMul/ReadVariableOp2|
<sequential_116/lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp<sequential_116/lstm_202/lstm_cell_202/BiasAdd/ReadVariableOp2z
;sequential_116/lstm_202/lstm_cell_202/MatMul/ReadVariableOp;sequential_116/lstm_202/lstm_cell_202/MatMul/ReadVariableOp2~
=sequential_116/lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp=sequential_116/lstm_202/lstm_cell_202/MatMul_1/ReadVariableOp2>
sequential_116/lstm_202/whilesequential_116/lstm_202/while2|
<sequential_116/lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp<sequential_116/lstm_203/lstm_cell_203/BiasAdd/ReadVariableOp2z
;sequential_116/lstm_203/lstm_cell_203/MatMul/ReadVariableOp;sequential_116/lstm_203/lstm_cell_203/MatMul/ReadVariableOp2~
=sequential_116/lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp=sequential_116/lstm_203/lstm_cell_203/MatMul_1/ReadVariableOp2>
sequential_116/lstm_203/whilesequential_116/lstm_203/while2|
<sequential_116/lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp<sequential_116/lstm_204/lstm_cell_204/BiasAdd/ReadVariableOp2z
;sequential_116/lstm_204/lstm_cell_204/MatMul/ReadVariableOp;sequential_116/lstm_204/lstm_cell_204/MatMul/ReadVariableOp2~
=sequential_116/lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp=sequential_116/lstm_204/lstm_cell_204/MatMul_1/ReadVariableOp2>
sequential_116/lstm_204/whilesequential_116/lstm_204/while:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_202_input
ä
­
+sequential_116_lstm_203_while_cond_24137931L
Hsequential_116_lstm_203_while_sequential_116_lstm_203_while_loop_counterR
Nsequential_116_lstm_203_while_sequential_116_lstm_203_while_maximum_iterations-
)sequential_116_lstm_203_while_placeholder/
+sequential_116_lstm_203_while_placeholder_1/
+sequential_116_lstm_203_while_placeholder_2/
+sequential_116_lstm_203_while_placeholder_3N
Jsequential_116_lstm_203_while_less_sequential_116_lstm_203_strided_slice_1f
bsequential_116_lstm_203_while_sequential_116_lstm_203_while_cond_24137931___redundant_placeholder0f
bsequential_116_lstm_203_while_sequential_116_lstm_203_while_cond_24137931___redundant_placeholder1f
bsequential_116_lstm_203_while_sequential_116_lstm_203_while_cond_24137931___redundant_placeholder2f
bsequential_116_lstm_203_while_sequential_116_lstm_203_while_cond_24137931___redundant_placeholder3*
&sequential_116_lstm_203_while_identity
Â
"sequential_116/lstm_203/while/LessLess)sequential_116_lstm_203_while_placeholderJsequential_116_lstm_203_while_less_sequential_116_lstm_203_strided_slice_1*
T0*
_output_shapes
: {
&sequential_116/lstm_203/while/IdentityIdentity&sequential_116/lstm_203/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_116_lstm_203_while_identity/sequential_116/lstm_203/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ô

K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24138581

inputs

states
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_3Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_4Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ò

K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24138931

inputs

states
states_11
matmul_readvariableop_resource:	@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
serving_defaultª
M
lstm_202_input;
 serving_default_lstm_202_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_1940
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ñõ

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ú
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
¼
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
Ú
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator
'cell
(
state_spec"
_tf_keras_rnn_layer
¼
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/_random_generator"
_tf_keras_layer
Ú
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6_random_generator
7cell
8
state_spec"
_tf_keras_rnn_layer
»
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias"
_tf_keras_layer
n
A0
B1
C2
D3
E4
F5
G6
H7
I8
?9
@10"
trackable_list_wrapper
n
A0
B1
C2
D3
E4
F5
G6
H7
I8
?9
@10"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ú
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_32
1__inference_sequential_116_layer_call_fn_24139733
1__inference_sequential_116_layer_call_fn_24140525
1__inference_sequential_116_layer_call_fn_24140552
1__inference_sequential_116_layer_call_fn_24140399À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zOtrace_0zPtrace_1zQtrace_2zRtrace_3
æ
Strace_0
Ttrace_1
Utrace_2
Vtrace_32û
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140983
L__inference_sequential_116_layer_call_and_return_conditional_losses_24141428
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140431
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140463À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zStrace_0zTtrace_1zUtrace_2zVtrace_3
ÕBÒ
#__inference__wrapped_model_24138164lstm_202_input"
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
¯
Witer

Xbeta_1

Ybeta_2
	Zdecay
[learning_rate?mØ@mÙAmÚBmÛCmÜDmÝEmÞFmßGmàHmáImâ?vã@väAvåBvæCvçDvèEvéFvêGvëHvìIví"
	optimizer
,
\serving_default"
signature_map
5
A0
B1
C2"
trackable_list_wrapper
5
A0
B1
C2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

]states
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
÷
ctrace_0
dtrace_1
etrace_2
ftrace_32
+__inference_lstm_202_layer_call_fn_24141439
+__inference_lstm_202_layer_call_fn_24141450
+__inference_lstm_202_layer_call_fn_24141461
+__inference_lstm_202_layer_call_fn_24141472Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zctrace_0zdtrace_1zetrace_2zftrace_3
ã
gtrace_0
htrace_1
itrace_2
jtrace_32ø
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141615
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141758
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141901
F__inference_lstm_202_layer_call_and_return_conditional_losses_24142044Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zgtrace_0zhtrace_1zitrace_2zjtrace_3
"
_generic_user_object
ø
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
q_random_generator
r
state_size

Akernel
Brecurrent_kernel
Cbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ì
xtrace_0
ytrace_12
-__inference_dropout_75_layer_call_fn_24142049
-__inference_dropout_75_layer_call_fn_24142054´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zxtrace_0zytrace_1

ztrace_0
{trace_12Ë
H__inference_dropout_75_layer_call_and_return_conditional_losses_24142059
H__inference_dropout_75_layer_call_and_return_conditional_losses_24142071´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zztrace_0z{trace_1
"
_generic_user_object
5
D0
E1
F2"
trackable_list_wrapper
5
D0
E1
F2"
trackable_list_wrapper
 "
trackable_list_wrapper
»

|states
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
ÿ
trace_0
trace_1
trace_2
trace_32
+__inference_lstm_203_layer_call_fn_24142082
+__inference_lstm_203_layer_call_fn_24142093
+__inference_lstm_203_layer_call_fn_24142104
+__inference_lstm_203_layer_call_fn_24142115Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
ë
trace_0
trace_1
trace_2
trace_32ø
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142258
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142401
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142544
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142687Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
"
_generic_user_object

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

state_size

Dkernel
Erecurrent_kernel
Fbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ð
trace_0
trace_12
-__inference_dropout_76_layer_call_fn_24142692
-__inference_dropout_76_layer_call_fn_24142697´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1

trace_0
trace_12Ë
H__inference_dropout_76_layer_call_and_return_conditional_losses_24142702
H__inference_dropout_76_layer_call_and_return_conditional_losses_24142714´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1
"
_generic_user_object
5
G0
H1
I2"
trackable_list_wrapper
5
G0
H1
I2"
trackable_list_wrapper
 "
trackable_list_wrapper
¿
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ÿ
¡trace_0
¢trace_1
£trace_2
¤trace_32
+__inference_lstm_204_layer_call_fn_24142725
+__inference_lstm_204_layer_call_fn_24142736
+__inference_lstm_204_layer_call_fn_24142747
+__inference_lstm_204_layer_call_fn_24142758Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z¡trace_0z¢trace_1z£trace_2z¤trace_3
ë
¥trace_0
¦trace_1
§trace_2
¨trace_32ø
F__inference_lstm_204_layer_call_and_return_conditional_losses_24142903
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143048
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143193
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143338Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z¥trace_0z¦trace_1z§trace_2z¨trace_3
"
_generic_user_object

©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses
¯_random_generator
°
state_size

Gkernel
Hrecurrent_kernel
Ibias"
_tf_keras_layer
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
ò
¶trace_02Ó
,__inference_dense_194_layer_call_fn_24143347¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¶trace_0

·trace_02î
G__inference_dense_194_layer_call_and_return_conditional_losses_24143357¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z·trace_0
": 2dense_194/kernel
:2dense_194/bias
0:.	2lstm_202/lstm_cell_202/kernel
;:9
2'lstm_202/lstm_cell_202/recurrent_kernel
*:(2lstm_202/lstm_cell_202/bias
1:/
2lstm_203/lstm_cell_203/kernel
;:9
2'lstm_203/lstm_cell_203/recurrent_kernel
*:(2lstm_203/lstm_cell_203/bias
0:.	@2lstm_204/lstm_cell_204/kernel
9:7@2'lstm_204/lstm_cell_204/recurrent_kernel
):'@2lstm_204/lstm_cell_204/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
(
¸0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
1__inference_sequential_116_layer_call_fn_24139733lstm_202_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
1__inference_sequential_116_layer_call_fn_24140525inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
1__inference_sequential_116_layer_call_fn_24140552inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
1__inference_sequential_116_layer_call_fn_24140399lstm_202_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140983inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
L__inference_sequential_116_layer_call_and_return_conditional_losses_24141428inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¦B£
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140431lstm_202_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¦B£
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140463lstm_202_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÔBÑ
&__inference_signature_wrapper_24140498lstm_202_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
+__inference_lstm_202_layer_call_fn_24141439inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lstm_202_layer_call_fn_24141450inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lstm_202_layer_call_fn_24141461inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lstm_202_layer_call_fn_24141472inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141615inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141758inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
­Bª
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141901inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
­Bª
F__inference_lstm_202_layer_call_and_return_conditional_losses_24142044inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
5
A0
B1
C2"
trackable_list_wrapper
5
A0
B1
C2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
à
¾trace_0
¿trace_12¥
0__inference_lstm_cell_202_layer_call_fn_24143374
0__inference_lstm_cell_202_layer_call_fn_24143391¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z¾trace_0z¿trace_1

Àtrace_0
Átrace_12Û
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24143423
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24143455¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÀtrace_0zÁtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
óBð
-__inference_dropout_75_layer_call_fn_24142049inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_75_layer_call_fn_24142054inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_75_layer_call_and_return_conditional_losses_24142059inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_75_layer_call_and_return_conditional_losses_24142071inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
+__inference_lstm_203_layer_call_fn_24142082inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lstm_203_layer_call_fn_24142093inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lstm_203_layer_call_fn_24142104inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lstm_203_layer_call_fn_24142115inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142258inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142401inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
­Bª
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142544inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
­Bª
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142687inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
5
D0
E1
F2"
trackable_list_wrapper
5
D0
E1
F2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
à
Çtrace_0
Ètrace_12¥
0__inference_lstm_cell_203_layer_call_fn_24143472
0__inference_lstm_cell_203_layer_call_fn_24143489¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÇtrace_0zÈtrace_1

Étrace_0
Êtrace_12Û
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24143521
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24143553¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÉtrace_0zÊtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
óBð
-__inference_dropout_76_layer_call_fn_24142692inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_76_layer_call_fn_24142697inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_76_layer_call_and_return_conditional_losses_24142702inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_76_layer_call_and_return_conditional_losses_24142714inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
70"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
+__inference_lstm_204_layer_call_fn_24142725inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lstm_204_layer_call_fn_24142736inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lstm_204_layer_call_fn_24142747inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
+__inference_lstm_204_layer_call_fn_24142758inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
F__inference_lstm_204_layer_call_and_return_conditional_losses_24142903inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143048inputs/0"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
­Bª
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143193inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
­Bª
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143338inputs"Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
5
G0
H1
I2"
trackable_list_wrapper
5
G0
H1
I2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
à
Ðtrace_0
Ñtrace_12¥
0__inference_lstm_cell_204_layer_call_fn_24143570
0__inference_lstm_cell_204_layer_call_fn_24143587¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÐtrace_0zÑtrace_1

Òtrace_0
Ótrace_12Û
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24143619
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24143651¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÒtrace_0zÓtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_dense_194_layer_call_fn_24143347inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_dense_194_layer_call_and_return_conditional_losses_24143357inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
Ô	variables
Õ	keras_api

Ötotal

×count"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_lstm_cell_202_layer_call_fn_24143374inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
0__inference_lstm_cell_202_layer_call_fn_24143391inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24143423inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24143455inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_lstm_cell_203_layer_call_fn_24143472inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
0__inference_lstm_cell_203_layer_call_fn_24143489inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24143521inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24143553inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_lstm_cell_204_layer_call_fn_24143570inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
0__inference_lstm_cell_204_layer_call_fn_24143587inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24143619inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¯B¬
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24143651inputsstates/0states/1"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
0
Ö0
×1"
trackable_list_wrapper
.
Ô	variables"
_generic_user_object
:  (2total
:  (2count
':%2Adam/dense_194/kernel/m
!:2Adam/dense_194/bias/m
5:3	2$Adam/lstm_202/lstm_cell_202/kernel/m
@:>
2.Adam/lstm_202/lstm_cell_202/recurrent_kernel/m
/:-2"Adam/lstm_202/lstm_cell_202/bias/m
6:4
2$Adam/lstm_203/lstm_cell_203/kernel/m
@:>
2.Adam/lstm_203/lstm_cell_203/recurrent_kernel/m
/:-2"Adam/lstm_203/lstm_cell_203/bias/m
5:3	@2$Adam/lstm_204/lstm_cell_204/kernel/m
>:<@2.Adam/lstm_204/lstm_cell_204/recurrent_kernel/m
.:,@2"Adam/lstm_204/lstm_cell_204/bias/m
':%2Adam/dense_194/kernel/v
!:2Adam/dense_194/bias/v
5:3	2$Adam/lstm_202/lstm_cell_202/kernel/v
@:>
2.Adam/lstm_202/lstm_cell_202/recurrent_kernel/v
/:-2"Adam/lstm_202/lstm_cell_202/bias/v
6:4
2$Adam/lstm_203/lstm_cell_203/kernel/v
@:>
2.Adam/lstm_203/lstm_cell_203/recurrent_kernel/v
/:-2"Adam/lstm_203/lstm_cell_203/bias/v
5:3	@2$Adam/lstm_204/lstm_cell_204/kernel/v
>:<@2.Adam/lstm_204/lstm_cell_204/recurrent_kernel/v
.:,@2"Adam/lstm_204/lstm_cell_204/bias/v©
#__inference__wrapped_model_24138164ABCDEFGHI?@;¢8
1¢.
,)
lstm_202_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_194# 
	dense_194ÿÿÿÿÿÿÿÿÿ§
G__inference_dense_194_layer_call_and_return_conditional_losses_24143357\?@/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_194_layer_call_fn_24143347O?@/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ²
H__inference_dropout_75_layer_call_and_return_conditional_losses_24142059f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ²
H__inference_dropout_75_layer_call_and_return_conditional_losses_24142071f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_75_layer_call_fn_24142049Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_75_layer_call_fn_24142054Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ²
H__inference_dropout_76_layer_call_and_return_conditional_losses_24142702f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ²
H__inference_dropout_76_layer_call_and_return_conditional_losses_24142714f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_76_layer_call_fn_24142692Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_76_layer_call_fn_24142697Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÖ
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141615ABCO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ö
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141758ABCO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¼
F__inference_lstm_202_layer_call_and_return_conditional_losses_24141901rABC?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ¼
F__inference_lstm_202_layer_call_and_return_conditional_losses_24142044rABC?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ­
+__inference_lstm_202_layer_call_fn_24141439~ABCO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ­
+__inference_lstm_202_layer_call_fn_24141450~ABCO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
+__inference_lstm_202_layer_call_fn_24141461eABC?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_lstm_202_layer_call_fn_24141472eABC?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ×
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142258DEFP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ×
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142401DEFP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ½
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142544sDEF@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ½
F__inference_lstm_203_layer_call_and_return_conditional_losses_24142687sDEF@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ®
+__inference_lstm_203_layer_call_fn_24142082DEFP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ®
+__inference_lstm_203_layer_call_fn_24142093DEFP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
+__inference_lstm_203_layer_call_fn_24142104fDEF@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_lstm_203_layer_call_fn_24142115fDEF@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
F__inference_lstm_204_layer_call_and_return_conditional_losses_24142903~GHIP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 È
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143048~GHIP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143193nGHI@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
F__inference_lstm_204_layer_call_and_return_conditional_losses_24143338nGHI@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
  
+__inference_lstm_204_layer_call_fn_24142725qGHIP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
+__inference_lstm_204_layer_call_fn_24142736qGHIP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_lstm_204_layer_call_fn_24142747aGHI@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_lstm_204_layer_call_fn_24142758aGHI@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÒ
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24143423ABC¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 Ò
K__inference_lstm_cell_202_layer_call_and_return_conditional_losses_24143455ABC¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 §
0__inference_lstm_cell_202_layer_call_fn_24143374òABC¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ§
0__inference_lstm_cell_202_layer_call_fn_24143391òABC¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÔ
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24143521DEF¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 Ô
K__inference_lstm_cell_203_layer_call_and_return_conditional_losses_24143553DEF¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 ©
0__inference_lstm_cell_203_layer_call_fn_24143472ôDEF¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ©
0__inference_lstm_cell_203_layer_call_fn_24143489ôDEF¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÎ
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24143619þGHI¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 Î
K__inference_lstm_cell_204_layer_call_and_return_conditional_losses_24143651þGHI¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ
EB

0/1/0ÿÿÿÿÿÿÿÿÿ

0/1/1ÿÿÿÿÿÿÿÿÿ
 £
0__inference_lstm_cell_204_layer_call_fn_24143570îGHI¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ£
0__inference_lstm_cell_204_layer_call_fn_24143587îGHI¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ
"
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ
A>

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÉ
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140431yABCDEFGHI?@C¢@
9¢6
,)
lstm_202_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 É
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140463yABCDEFGHI?@C¢@
9¢6
,)
lstm_202_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
L__inference_sequential_116_layer_call_and_return_conditional_losses_24140983qABCDEFGHI?@;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
L__inference_sequential_116_layer_call_and_return_conditional_losses_24141428qABCDEFGHI?@;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¡
1__inference_sequential_116_layer_call_fn_24139733lABCDEFGHI?@C¢@
9¢6
,)
lstm_202_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¡
1__inference_sequential_116_layer_call_fn_24140399lABCDEFGHI?@C¢@
9¢6
,)
lstm_202_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
1__inference_sequential_116_layer_call_fn_24140525dABCDEFGHI?@;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
1__inference_sequential_116_layer_call_fn_24140552dABCDEFGHI?@;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¾
&__inference_signature_wrapper_24140498ABCDEFGHI?@M¢J
¢ 
Cª@
>
lstm_202_input,)
lstm_202_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_194# 
	dense_194ÿÿÿÿÿÿÿÿÿ