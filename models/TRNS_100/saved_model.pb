і 
Ц
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
і
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
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
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8љ
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

: *
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
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
П
1token_and_position_embedding/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш^ *B
shared_name31token_and_position_embedding/embedding/embeddings
И
Etoken_and_position_embedding/embedding/embeddings/Read/ReadVariableOpReadVariableOp1token_and_position_embedding/embedding/embeddings*
_output_shapes
:	ш^ *
dtype0
Т
3token_and_position_embedding/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *D
shared_name53token_and_position_embedding/embedding_1/embeddings
Л
Gtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp3token_and_position_embedding/embedding_1/embeddings*
_output_shapes

:d *
dtype0
Ц
3transformer_block/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *D
shared_name53transformer_block/multi_head_attention/query/kernel
П
Gtransformer_block/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp3transformer_block/multi_head_attention/query/kernel*"
_output_shapes
:  *
dtype0
О
1transformer_block/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *B
shared_name31transformer_block/multi_head_attention/query/bias
З
Etransformer_block/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp1transformer_block/multi_head_attention/query/bias*
_output_shapes

: *
dtype0
Т
1transformer_block/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *B
shared_name31transformer_block/multi_head_attention/key/kernel
Л
Etransformer_block/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp1transformer_block/multi_head_attention/key/kernel*"
_output_shapes
:  *
dtype0
К
/transformer_block/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *@
shared_name1/transformer_block/multi_head_attention/key/bias
Г
Ctransformer_block/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp/transformer_block/multi_head_attention/key/bias*
_output_shapes

: *
dtype0
Ц
3transformer_block/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *D
shared_name53transformer_block/multi_head_attention/value/kernel
П
Gtransformer_block/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp3transformer_block/multi_head_attention/value/kernel*"
_output_shapes
:  *
dtype0
О
1transformer_block/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *B
shared_name31transformer_block/multi_head_attention/value/bias
З
Etransformer_block/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp1transformer_block/multi_head_attention/value/bias*
_output_shapes

: *
dtype0
м
>transformer_block/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>transformer_block/multi_head_attention/attention_output/kernel
е
Rtransformer_block/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp>transformer_block/multi_head_attention/attention_output/kernel*"
_output_shapes
:  *
dtype0
а
<transformer_block/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *M
shared_name><transformer_block/multi_head_attention/attention_output/bias
Щ
Ptransformer_block/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp<transformer_block/multi_head_attention/attention_output/bias*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:  *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:  *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
: *
dtype0
Ў
+transformer_block/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+transformer_block/layer_normalization/gamma
Ї
?transformer_block/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp+transformer_block/layer_normalization/gamma*
_output_shapes
: *
dtype0
Ќ
*transformer_block/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*transformer_block/layer_normalization/beta
Ѕ
>transformer_block/layer_normalization/beta/Read/ReadVariableOpReadVariableOp*transformer_block/layer_normalization/beta*
_output_shapes
: *
dtype0
В
-transformer_block/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-transformer_block/layer_normalization_1/gamma
Ћ
Atransformer_block/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp-transformer_block/layer_normalization_1/gamma*
_output_shapes
: *
dtype0
А
,transformer_block/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,transformer_block/layer_normalization_1/beta
Љ
@transformer_block/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp,transformer_block/layer_normalization_1/beta*
_output_shapes
: *
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
Э
8Adam/token_and_position_embedding/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш^ *I
shared_name:8Adam/token_and_position_embedding/embedding/embeddings/m
Ц
LAdam/token_and_position_embedding/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp8Adam/token_and_position_embedding/embedding/embeddings/m*
_output_shapes
:	ш^ *
dtype0
а
:Adam/token_and_position_embedding/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *K
shared_name<:Adam/token_and_position_embedding/embedding_1/embeddings/m
Щ
NAdam/token_and_position_embedding/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_1/embeddings/m*
_output_shapes

:d *
dtype0
д
:Adam/transformer_block/multi_head_attention/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *K
shared_name<:Adam/transformer_block/multi_head_attention/query/kernel/m
Э
NAdam/transformer_block/multi_head_attention/query/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/query/kernel/m*"
_output_shapes
:  *
dtype0
Ь
8Adam/transformer_block/multi_head_attention/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *I
shared_name:8Adam/transformer_block/multi_head_attention/query/bias/m
Х
LAdam/transformer_block/multi_head_attention/query/bias/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/query/bias/m*
_output_shapes

: *
dtype0
а
8Adam/transformer_block/multi_head_attention/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *I
shared_name:8Adam/transformer_block/multi_head_attention/key/kernel/m
Щ
LAdam/transformer_block/multi_head_attention/key/kernel/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/key/kernel/m*"
_output_shapes
:  *
dtype0
Ш
6Adam/transformer_block/multi_head_attention/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *G
shared_name86Adam/transformer_block/multi_head_attention/key/bias/m
С
JAdam/transformer_block/multi_head_attention/key/bias/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block/multi_head_attention/key/bias/m*
_output_shapes

: *
dtype0
д
:Adam/transformer_block/multi_head_attention/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *K
shared_name<:Adam/transformer_block/multi_head_attention/value/kernel/m
Э
NAdam/transformer_block/multi_head_attention/value/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/value/kernel/m*"
_output_shapes
:  *
dtype0
Ь
8Adam/transformer_block/multi_head_attention/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *I
shared_name:8Adam/transformer_block/multi_head_attention/value/bias/m
Х
LAdam/transformer_block/multi_head_attention/value/bias/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/value/bias/m*
_output_shapes

: *
dtype0
ъ
EAdam/transformer_block/multi_head_attention/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *V
shared_nameGEAdam/transformer_block/multi_head_attention/attention_output/kernel/m
у
YAdam/transformer_block/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpEAdam/transformer_block/multi_head_attention/attention_output/kernel/m*"
_output_shapes
:  *
dtype0
о
CAdam/transformer_block/multi_head_attention/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *T
shared_nameECAdam/transformer_block/multi_head_attention/attention_output/bias/m
з
WAdam/transformer_block/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpReadVariableOpCAdam/transformer_block/multi_head_attention/attention_output/bias/m*
_output_shapes
: *
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:  *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
: *
dtype0
М
2Adam/transformer_block/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42Adam/transformer_block/layer_normalization/gamma/m
Е
FAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/m*
_output_shapes
: *
dtype0
К
1Adam/transformer_block/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31Adam/transformer_block/layer_normalization/beta/m
Г
EAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/m*
_output_shapes
: *
dtype0
Р
4Adam/transformer_block/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/m
Й
HAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/m*
_output_shapes
: *
dtype0
О
3Adam/transformer_block/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *D
shared_name53Adam/transformer_block/layer_normalization_1/beta/m
З
GAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/m*
_output_shapes
: *
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
Э
8Adam/token_and_position_embedding/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ш^ *I
shared_name:8Adam/token_and_position_embedding/embedding/embeddings/v
Ц
LAdam/token_and_position_embedding/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp8Adam/token_and_position_embedding/embedding/embeddings/v*
_output_shapes
:	ш^ *
dtype0
а
:Adam/token_and_position_embedding/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d *K
shared_name<:Adam/token_and_position_embedding/embedding_1/embeddings/v
Щ
NAdam/token_and_position_embedding/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_1/embeddings/v*
_output_shapes

:d *
dtype0
д
:Adam/transformer_block/multi_head_attention/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *K
shared_name<:Adam/transformer_block/multi_head_attention/query/kernel/v
Э
NAdam/transformer_block/multi_head_attention/query/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/query/kernel/v*"
_output_shapes
:  *
dtype0
Ь
8Adam/transformer_block/multi_head_attention/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *I
shared_name:8Adam/transformer_block/multi_head_attention/query/bias/v
Х
LAdam/transformer_block/multi_head_attention/query/bias/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/query/bias/v*
_output_shapes

: *
dtype0
а
8Adam/transformer_block/multi_head_attention/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *I
shared_name:8Adam/transformer_block/multi_head_attention/key/kernel/v
Щ
LAdam/transformer_block/multi_head_attention/key/kernel/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/key/kernel/v*"
_output_shapes
:  *
dtype0
Ш
6Adam/transformer_block/multi_head_attention/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *G
shared_name86Adam/transformer_block/multi_head_attention/key/bias/v
С
JAdam/transformer_block/multi_head_attention/key/bias/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block/multi_head_attention/key/bias/v*
_output_shapes

: *
dtype0
д
:Adam/transformer_block/multi_head_attention/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *K
shared_name<:Adam/transformer_block/multi_head_attention/value/kernel/v
Э
NAdam/transformer_block/multi_head_attention/value/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block/multi_head_attention/value/kernel/v*"
_output_shapes
:  *
dtype0
Ь
8Adam/transformer_block/multi_head_attention/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *I
shared_name:8Adam/transformer_block/multi_head_attention/value/bias/v
Х
LAdam/transformer_block/multi_head_attention/value/bias/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_block/multi_head_attention/value/bias/v*
_output_shapes

: *
dtype0
ъ
EAdam/transformer_block/multi_head_attention/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *V
shared_nameGEAdam/transformer_block/multi_head_attention/attention_output/kernel/v
у
YAdam/transformer_block/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpEAdam/transformer_block/multi_head_attention/attention_output/kernel/v*"
_output_shapes
:  *
dtype0
о
CAdam/transformer_block/multi_head_attention/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *T
shared_nameECAdam/transformer_block/multi_head_attention/attention_output/bias/v
з
WAdam/transformer_block/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpReadVariableOpCAdam/transformer_block/multi_head_attention/attention_output/bias/v*
_output_shapes
: *
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:  *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
: *
dtype0
М
2Adam/transformer_block/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42Adam/transformer_block/layer_normalization/gamma/v
Е
FAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/v*
_output_shapes
: *
dtype0
К
1Adam/transformer_block/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31Adam/transformer_block/layer_normalization/beta/v
Г
EAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/v*
_output_shapes
: *
dtype0
Р
4Adam/transformer_block/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/v
Й
HAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/v*
_output_shapes
: *
dtype0
О
3Adam/transformer_block/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *D
shared_name53Adam/transformer_block/layer_normalization_1/beta/v
З
GAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/v*
_output_shapes
: *
dtype0

NoOpNoOp
ц
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* 
valueB B
С
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
n
	token_emb
pos_emb
trainable_variables
regularization_losses
	variables
	keras_api
 
att
ffn

layernorm1

layernorm2
dropout1
dropout2
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
 regularization_losses
!	variables
"	keras_api
R
#trainable_variables
$regularization_losses
%	variables
&	keras_api
h

'kernel
(bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
R
-trainable_variables
.regularization_losses
/	variables
0	keras_api
h

1kernel
2bias
3trainable_variables
4regularization_losses
5	variables
6	keras_api
ј
7iter

8beta_1

9beta_2
	:decay
;learning_rate'mЃ(mЄ1mЅ2mІ<mЇ=mЈ>mЉ?mЊ@mЋAmЌBm­CmЎDmЏEmАFmБGmВHmГImДJmЕKmЖLmЗMmИ'vЙ(vК1vЛ2vМ<vН=vО>vП?vР@vСAvТBvУCvФDvХEvЦFvЧGvШHvЩIvЪJvЫKvЬLvЭMvЮ
І
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221
 
І
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221
­
Nnon_trainable_variables
Olayer_regularization_losses

trainable_variables

Players
Qmetrics
regularization_losses
Rlayer_metrics
	variables
 
b
<
embeddings
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
b
=
embeddings
Wtrainable_variables
Xregularization_losses
Y	variables
Z	keras_api

<0
=1
 

<0
=1
­
[non_trainable_variables
\layer_regularization_losses

]layers
trainable_variables
^metrics
regularization_losses
_layer_metrics
	variables
Л
`_query_dense
a
_key_dense
b_value_dense
c_softmax
d_dropout_layer
e_output_dense
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
 
jlayer_with_weights-0
jlayer-0
klayer_with_weights-1
klayer-1
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
q
paxis
	Jgamma
Kbeta
qtrainable_variables
rregularization_losses
s	variables
t	keras_api
q
uaxis
	Lgamma
Mbeta
vtrainable_variables
wregularization_losses
x	variables
y	keras_api
R
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
T
~trainable_variables
regularization_losses
	variables
	keras_api
v
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
 
v
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
В
non_trainable_variables
 layer_regularization_losses
layers
trainable_variables
metrics
regularization_losses
layer_metrics
	variables
 
 
 
В
non_trainable_variables
 layer_regularization_losses
layers
trainable_variables
metrics
 regularization_losses
layer_metrics
!	variables
 
 
 
В
non_trainable_variables
 layer_regularization_losses
layers
#trainable_variables
metrics
$regularization_losses
layer_metrics
%	variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 

'0
(1
В
non_trainable_variables
 layer_regularization_losses
layers
)trainable_variables
metrics
*regularization_losses
layer_metrics
+	variables
 
 
 
В
non_trainable_variables
 layer_regularization_losses
layers
-trainable_variables
metrics
.regularization_losses
layer_metrics
/	variables
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
В
non_trainable_variables
 layer_regularization_losses
layers
3trainable_variables
metrics
4regularization_losses
layer_metrics
5	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE1token_and_position_embedding/embedding/embeddings0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE3token_and_position_embedding/embedding_1/embeddings0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE3transformer_block/multi_head_attention/query/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE1transformer_block/multi_head_attention/query/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE1transformer_block/multi_head_attention/key/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE/transformer_block/multi_head_attention/key/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE3transformer_block/multi_head_attention/value/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE1transformer_block/multi_head_attention/value/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE>transformer_block/multi_head_attention/attention_output/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE<transformer_block/multi_head_attention/attention_output/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUE
dense/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_1/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_1/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE+transformer_block/layer_normalization/gamma1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE*transformer_block/layer_normalization/beta1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE-transformer_block/layer_normalization_1/gamma1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE,transformer_block/layer_normalization_1/beta1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
 
 
8
0
1
2
3
4
5
6
7

 0
Ё1
 

<0
 

<0
В
Ђnon_trainable_variables
 Ѓlayer_regularization_losses
Єlayers
Strainable_variables
Ѕmetrics
Tregularization_losses
Іlayer_metrics
U	variables

=0
 

=0
В
Їnon_trainable_variables
 Јlayer_regularization_losses
Љlayers
Wtrainable_variables
Њmetrics
Xregularization_losses
Ћlayer_metrics
Y	variables
 
 

0
1
 
 

Ќpartial_output_shape
­full_output_shape

>kernel
?bias
Ўtrainable_variables
Џregularization_losses
А	variables
Б	keras_api

Вpartial_output_shape
Гfull_output_shape

@kernel
Abias
Дtrainable_variables
Еregularization_losses
Ж	variables
З	keras_api

Иpartial_output_shape
Йfull_output_shape

Bkernel
Cbias
Кtrainable_variables
Лregularization_losses
М	variables
Н	keras_api
V
Оtrainable_variables
Пregularization_losses
Р	variables
С	keras_api
V
Тtrainable_variables
Уregularization_losses
Ф	variables
Х	keras_api

Цpartial_output_shape
Чfull_output_shape

Dkernel
Ebias
Шtrainable_variables
Щregularization_losses
Ъ	variables
Ы	keras_api
8
>0
?1
@2
A3
B4
C5
D6
E7
 
8
>0
?1
@2
A3
B4
C5
D6
E7
В
Ьnon_trainable_variables
 Эlayer_regularization_losses
Юlayers
ftrainable_variables
Яmetrics
gregularization_losses
аlayer_metrics
h	variables
l

Fkernel
Gbias
бtrainable_variables
вregularization_losses
г	variables
д	keras_api
l

Hkernel
Ibias
еtrainable_variables
жregularization_losses
з	variables
и	keras_api

F0
G1
H2
I3
 

F0
G1
H2
I3
В
йnon_trainable_variables
 кlayer_regularization_losses
ltrainable_variables
лlayers
мmetrics
mregularization_losses
нlayer_metrics
n	variables
 

J0
K1
 

J0
K1
В
оnon_trainable_variables
 пlayer_regularization_losses
рlayers
qtrainable_variables
сmetrics
rregularization_losses
тlayer_metrics
s	variables
 

L0
M1
 

L0
M1
В
уnon_trainable_variables
 фlayer_regularization_losses
хlayers
vtrainable_variables
цmetrics
wregularization_losses
чlayer_metrics
x	variables
 
 
 
В
шnon_trainable_variables
 щlayer_regularization_losses
ъlayers
ztrainable_variables
ыmetrics
{regularization_losses
ьlayer_metrics
|	variables
 
 
 
Г
эnon_trainable_variables
 юlayer_regularization_losses
яlayers
~trainable_variables
№metrics
regularization_losses
ёlayer_metrics
	variables
 
 
*
0
1
2
3
4
5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

ђtotal

ѓcount
є	variables
ѕ	keras_api
I

іtotal

їcount
ј
_fn_kwargs
љ	variables
њ	keras_api
 
 
 
 
 
 
 
 
 
 
 
 

>0
?1
 

>0
?1
Е
ћnon_trainable_variables
 ќlayer_regularization_losses
§layers
Ўtrainable_variables
ўmetrics
Џregularization_losses
џlayer_metrics
А	variables
 
 

@0
A1
 

@0
A1
Е
non_trainable_variables
 layer_regularization_losses
layers
Дtrainable_variables
metrics
Еregularization_losses
layer_metrics
Ж	variables
 
 

B0
C1
 

B0
C1
Е
non_trainable_variables
 layer_regularization_losses
layers
Кtrainable_variables
metrics
Лregularization_losses
layer_metrics
М	variables
 
 
 
Е
non_trainable_variables
 layer_regularization_losses
layers
Оtrainable_variables
metrics
Пregularization_losses
layer_metrics
Р	variables
 
 
 
Е
non_trainable_variables
 layer_regularization_losses
layers
Тtrainable_variables
metrics
Уregularization_losses
layer_metrics
Ф	variables
 
 

D0
E1
 

D0
E1
Е
non_trainable_variables
 layer_regularization_losses
layers
Шtrainable_variables
metrics
Щregularization_losses
layer_metrics
Ъ	variables
 
 
*
`0
a1
b2
c3
d4
e5
 
 

F0
G1
 

F0
G1
Е
non_trainable_variables
 layer_regularization_losses
layers
бtrainable_variables
metrics
вregularization_losses
layer_metrics
г	variables

H0
I1
 

H0
I1
Е
non_trainable_variables
 layer_regularization_losses
 layers
еtrainable_variables
Ёmetrics
жregularization_losses
Ђlayer_metrics
з	variables
 
 

j0
k1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ђ0
ѓ1

є	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

і0
ї1

љ	variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/token_and_position_embedding/embedding/embeddings/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_1/embeddings/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/query/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/query/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/key/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE6Adam/transformer_block/multi_head_attention/key/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/value/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/value/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЈЅ
VARIABLE_VALUEEAdam/transformer_block/multi_head_attention/attention_output/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ІЃ
VARIABLE_VALUECAdam/transformer_block/multi_head_attention/attention_output/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/dense/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_1/kernel/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_1/bias/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/mMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/mMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/token_and_position_embedding/embedding/embeddings/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_1/embeddings/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/query/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/query/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/key/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE6Adam/transformer_block/multi_head_attention/key/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE:Adam/transformer_block/multi_head_attention/value/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE8Adam/transformer_block/multi_head_attention/value/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЈЅ
VARIABLE_VALUEEAdam/transformer_block/multi_head_attention/attention_output/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ІЃ
VARIABLE_VALUECAdam/transformer_block/multi_head_attention/attention_output/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/dense/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_1/kernel/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_1/bias/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/vMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/vMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:џџџџџџџџџd*
dtype0*
shape:џџџџџџџџџd
І	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13token_and_position_embedding/embedding_1/embeddings1token_and_position_embedding/embedding/embeddings3transformer_block/multi_head_attention/query/kernel1transformer_block/multi_head_attention/query/bias1transformer_block/multi_head_attention/key/kernel/transformer_block/multi_head_attention/key/bias3transformer_block/multi_head_attention/value/kernel1transformer_block/multi_head_attention/value/bias>transformer_block/multi_head_attention/attention_output/kernel<transformer_block/multi_head_attention/attention_output/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/betadense/kernel
dense/biasdense_1/kerneldense_1/bias-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/betadense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *,
f'R%
#__inference_signature_wrapper_85818
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ћ%
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpEtoken_and_position_embedding/embedding/embeddings/Read/ReadVariableOpGtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpGtransformer_block/multi_head_attention/query/kernel/Read/ReadVariableOpEtransformer_block/multi_head_attention/query/bias/Read/ReadVariableOpEtransformer_block/multi_head_attention/key/kernel/Read/ReadVariableOpCtransformer_block/multi_head_attention/key/bias/Read/ReadVariableOpGtransformer_block/multi_head_attention/value/kernel/Read/ReadVariableOpEtransformer_block/multi_head_attention/value/bias/Read/ReadVariableOpRtransformer_block/multi_head_attention/attention_output/kernel/Read/ReadVariableOpPtransformer_block/multi_head_attention/attention_output/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp?transformer_block/layer_normalization/gamma/Read/ReadVariableOp>transformer_block/layer_normalization/beta/Read/ReadVariableOpAtransformer_block/layer_normalization_1/gamma/Read/ReadVariableOp@transformer_block/layer_normalization_1/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOpLAdam/token_and_position_embedding/embedding/embeddings/m/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_1/embeddings/m/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/query/kernel/m/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/query/bias/m/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/key/kernel/m/Read/ReadVariableOpJAdam/transformer_block/multi_head_attention/key/bias/m/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/value/kernel/m/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/value/bias/m/Read/ReadVariableOpYAdam/transformer_block/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpWAdam/transformer_block/multi_head_attention/attention_output/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpLAdam/token_and_position_embedding/embedding/embeddings/v/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_1/embeddings/v/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/query/kernel/v/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/query/bias/v/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/key/kernel/v/Read/ReadVariableOpJAdam/transformer_block/multi_head_attention/key/bias/v/Read/ReadVariableOpNAdam/transformer_block/multi_head_attention/value/kernel/v/Read/ReadVariableOpLAdam/transformer_block/multi_head_attention/value/bias/v/Read/ReadVariableOpYAdam/transformer_block/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpWAdam/transformer_block/multi_head_attention/attention_output/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpConst*X
TinQ
O2M	*
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
GPU2 *0J 8 *'
f"R 
__inference__traced_save_87230
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate1token_and_position_embedding/embedding/embeddings3token_and_position_embedding/embedding_1/embeddings3transformer_block/multi_head_attention/query/kernel1transformer_block/multi_head_attention/query/bias1transformer_block/multi_head_attention/key/kernel/transformer_block/multi_head_attention/key/bias3transformer_block/multi_head_attention/value/kernel1transformer_block/multi_head_attention/value/bias>transformer_block/multi_head_attention/attention_output/kernel<transformer_block/multi_head_attention/attention_output/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/beta-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/betatotalcounttotal_1count_1Adam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/m8Adam/token_and_position_embedding/embedding/embeddings/m:Adam/token_and_position_embedding/embedding_1/embeddings/m:Adam/transformer_block/multi_head_attention/query/kernel/m8Adam/transformer_block/multi_head_attention/query/bias/m8Adam/transformer_block/multi_head_attention/key/kernel/m6Adam/transformer_block/multi_head_attention/key/bias/m:Adam/transformer_block/multi_head_attention/value/kernel/m8Adam/transformer_block/multi_head_attention/value/bias/mEAdam/transformer_block/multi_head_attention/attention_output/kernel/mCAdam/transformer_block/multi_head_attention/attention_output/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/m2Adam/transformer_block/layer_normalization/gamma/m1Adam/transformer_block/layer_normalization/beta/m4Adam/transformer_block/layer_normalization_1/gamma/m3Adam/transformer_block/layer_normalization_1/beta/mAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v8Adam/token_and_position_embedding/embedding/embeddings/v:Adam/token_and_position_embedding/embedding_1/embeddings/v:Adam/transformer_block/multi_head_attention/query/kernel/v8Adam/transformer_block/multi_head_attention/query/bias/v8Adam/transformer_block/multi_head_attention/key/kernel/v6Adam/transformer_block/multi_head_attention/key/bias/v:Adam/transformer_block/multi_head_attention/value/kernel/v8Adam/transformer_block/multi_head_attention/value/bias/vEAdam/transformer_block/multi_head_attention/attention_output/kernel/vCAdam/transformer_block/multi_head_attention/attention_output/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v2Adam/transformer_block/layer_normalization/gamma/v1Adam/transformer_block/layer_normalization/beta/v4Adam/transformer_block/layer_normalization_1/gamma/v3Adam/transformer_block/layer_normalization_1/beta/v*W
TinP
N2L*
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
GPU2 *0J 8 **
f%R#
!__inference__traced_restore_87465јз
С
E
)__inference_dropout_2_layer_call_fn_86674

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_850622
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ьд
Ј9
!__inference__traced_restore_87465
file_prefix1
assignvariableop_dense_2_kernel: -
assignvariableop_1_dense_2_bias:3
!assignvariableop_2_dense_3_kernel:-
assignvariableop_3_dense_3_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: W
Dassignvariableop_9_token_and_position_embedding_embedding_embeddings:	ш^ Y
Gassignvariableop_10_token_and_position_embedding_embedding_1_embeddings:d ]
Gassignvariableop_11_transformer_block_multi_head_attention_query_kernel:  W
Eassignvariableop_12_transformer_block_multi_head_attention_query_bias: [
Eassignvariableop_13_transformer_block_multi_head_attention_key_kernel:  U
Cassignvariableop_14_transformer_block_multi_head_attention_key_bias: ]
Gassignvariableop_15_transformer_block_multi_head_attention_value_kernel:  W
Eassignvariableop_16_transformer_block_multi_head_attention_value_bias: h
Rassignvariableop_17_transformer_block_multi_head_attention_attention_output_kernel:  ^
Passignvariableop_18_transformer_block_multi_head_attention_attention_output_bias: 2
 assignvariableop_19_dense_kernel:  ,
assignvariableop_20_dense_bias: 4
"assignvariableop_21_dense_1_kernel:  .
 assignvariableop_22_dense_1_bias: M
?assignvariableop_23_transformer_block_layer_normalization_gamma: L
>assignvariableop_24_transformer_block_layer_normalization_beta: O
Aassignvariableop_25_transformer_block_layer_normalization_1_gamma: N
@assignvariableop_26_transformer_block_layer_normalization_1_beta: #
assignvariableop_27_total: #
assignvariableop_28_count: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: ;
)assignvariableop_31_adam_dense_2_kernel_m: 5
'assignvariableop_32_adam_dense_2_bias_m:;
)assignvariableop_33_adam_dense_3_kernel_m:5
'assignvariableop_34_adam_dense_3_bias_m:_
Lassignvariableop_35_adam_token_and_position_embedding_embedding_embeddings_m:	ш^ `
Nassignvariableop_36_adam_token_and_position_embedding_embedding_1_embeddings_m:d d
Nassignvariableop_37_adam_transformer_block_multi_head_attention_query_kernel_m:  ^
Lassignvariableop_38_adam_transformer_block_multi_head_attention_query_bias_m: b
Lassignvariableop_39_adam_transformer_block_multi_head_attention_key_kernel_m:  \
Jassignvariableop_40_adam_transformer_block_multi_head_attention_key_bias_m: d
Nassignvariableop_41_adam_transformer_block_multi_head_attention_value_kernel_m:  ^
Lassignvariableop_42_adam_transformer_block_multi_head_attention_value_bias_m: o
Yassignvariableop_43_adam_transformer_block_multi_head_attention_attention_output_kernel_m:  e
Wassignvariableop_44_adam_transformer_block_multi_head_attention_attention_output_bias_m: 9
'assignvariableop_45_adam_dense_kernel_m:  3
%assignvariableop_46_adam_dense_bias_m: ;
)assignvariableop_47_adam_dense_1_kernel_m:  5
'assignvariableop_48_adam_dense_1_bias_m: T
Fassignvariableop_49_adam_transformer_block_layer_normalization_gamma_m: S
Eassignvariableop_50_adam_transformer_block_layer_normalization_beta_m: V
Hassignvariableop_51_adam_transformer_block_layer_normalization_1_gamma_m: U
Gassignvariableop_52_adam_transformer_block_layer_normalization_1_beta_m: ;
)assignvariableop_53_adam_dense_2_kernel_v: 5
'assignvariableop_54_adam_dense_2_bias_v:;
)assignvariableop_55_adam_dense_3_kernel_v:5
'assignvariableop_56_adam_dense_3_bias_v:_
Lassignvariableop_57_adam_token_and_position_embedding_embedding_embeddings_v:	ш^ `
Nassignvariableop_58_adam_token_and_position_embedding_embedding_1_embeddings_v:d d
Nassignvariableop_59_adam_transformer_block_multi_head_attention_query_kernel_v:  ^
Lassignvariableop_60_adam_transformer_block_multi_head_attention_query_bias_v: b
Lassignvariableop_61_adam_transformer_block_multi_head_attention_key_kernel_v:  \
Jassignvariableop_62_adam_transformer_block_multi_head_attention_key_bias_v: d
Nassignvariableop_63_adam_transformer_block_multi_head_attention_value_kernel_v:  ^
Lassignvariableop_64_adam_transformer_block_multi_head_attention_value_bias_v: o
Yassignvariableop_65_adam_transformer_block_multi_head_attention_attention_output_kernel_v:  e
Wassignvariableop_66_adam_transformer_block_multi_head_attention_attention_output_bias_v: 9
'assignvariableop_67_adam_dense_kernel_v:  3
%assignvariableop_68_adam_dense_bias_v: ;
)assignvariableop_69_adam_dense_1_kernel_v:  5
'assignvariableop_70_adam_dense_1_bias_v: T
Fassignvariableop_71_adam_transformer_block_layer_normalization_gamma_v: S
Eassignvariableop_72_adam_transformer_block_layer_normalization_beta_v: V
Hassignvariableop_73_adam_transformer_block_layer_normalization_1_gamma_v: U
Gassignvariableop_74_adam_transformer_block_layer_normalization_1_beta_v: 
identity_76ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_74ЂAssignVariableOp_8ЂAssignVariableOp_9ь(
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*ј'
valueю'Bы'LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЉ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*­
valueЃB LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЊ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Є
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Є
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4Ё
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѓ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ѓ
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ђ
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Њ
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Щ
AssignVariableOp_9AssignVariableOpDassignvariableop_9_token_and_position_embedding_embedding_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Я
AssignVariableOp_10AssignVariableOpGassignvariableop_10_token_and_position_embedding_embedding_1_embeddingsIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Я
AssignVariableOp_11AssignVariableOpGassignvariableop_11_transformer_block_multi_head_attention_query_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Э
AssignVariableOp_12AssignVariableOpEassignvariableop_12_transformer_block_multi_head_attention_query_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Э
AssignVariableOp_13AssignVariableOpEassignvariableop_13_transformer_block_multi_head_attention_key_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ы
AssignVariableOp_14AssignVariableOpCassignvariableop_14_transformer_block_multi_head_attention_key_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Я
AssignVariableOp_15AssignVariableOpGassignvariableop_15_transformer_block_multi_head_attention_value_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Э
AssignVariableOp_16AssignVariableOpEassignvariableop_16_transformer_block_multi_head_attention_value_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17к
AssignVariableOp_17AssignVariableOpRassignvariableop_17_transformer_block_multi_head_attention_attention_output_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18и
AssignVariableOp_18AssignVariableOpPassignvariableop_18_transformer_block_multi_head_attention_attention_output_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ј
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20І
AssignVariableOp_20AssignVariableOpassignvariableop_20_dense_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Њ
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_1_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ј
AssignVariableOp_22AssignVariableOp assignvariableop_22_dense_1_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ч
AssignVariableOp_23AssignVariableOp?assignvariableop_23_transformer_block_layer_normalization_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ц
AssignVariableOp_24AssignVariableOp>assignvariableop_24_transformer_block_layer_normalization_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Щ
AssignVariableOp_25AssignVariableOpAassignvariableop_25_transformer_block_layer_normalization_1_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ш
AssignVariableOp_26AssignVariableOp@assignvariableop_26_transformer_block_layer_normalization_1_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ё
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ё
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Ѓ
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ѓ
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Б
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Џ
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Б
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_3_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Џ
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_3_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35д
AssignVariableOp_35AssignVariableOpLassignvariableop_35_adam_token_and_position_embedding_embedding_embeddings_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36ж
AssignVariableOp_36AssignVariableOpNassignvariableop_36_adam_token_and_position_embedding_embedding_1_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37ж
AssignVariableOp_37AssignVariableOpNassignvariableop_37_adam_transformer_block_multi_head_attention_query_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38д
AssignVariableOp_38AssignVariableOpLassignvariableop_38_adam_transformer_block_multi_head_attention_query_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39д
AssignVariableOp_39AssignVariableOpLassignvariableop_39_adam_transformer_block_multi_head_attention_key_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40в
AssignVariableOp_40AssignVariableOpJassignvariableop_40_adam_transformer_block_multi_head_attention_key_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41ж
AssignVariableOp_41AssignVariableOpNassignvariableop_41_adam_transformer_block_multi_head_attention_value_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42д
AssignVariableOp_42AssignVariableOpLassignvariableop_42_adam_transformer_block_multi_head_attention_value_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43с
AssignVariableOp_43AssignVariableOpYassignvariableop_43_adam_transformer_block_multi_head_attention_attention_output_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44п
AssignVariableOp_44AssignVariableOpWassignvariableop_44_adam_transformer_block_multi_head_attention_attention_output_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Џ
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_dense_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46­
AssignVariableOp_46AssignVariableOp%assignvariableop_46_adam_dense_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Б
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_1_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Џ
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_1_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49Ю
AssignVariableOp_49AssignVariableOpFassignvariableop_49_adam_transformer_block_layer_normalization_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Э
AssignVariableOp_50AssignVariableOpEassignvariableop_50_adam_transformer_block_layer_normalization_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51а
AssignVariableOp_51AssignVariableOpHassignvariableop_51_adam_transformer_block_layer_normalization_1_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Я
AssignVariableOp_52AssignVariableOpGassignvariableop_52_adam_transformer_block_layer_normalization_1_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53Б
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_dense_2_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54Џ
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_dense_2_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55Б
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_3_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56Џ
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_3_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57д
AssignVariableOp_57AssignVariableOpLassignvariableop_57_adam_token_and_position_embedding_embedding_embeddings_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58ж
AssignVariableOp_58AssignVariableOpNassignvariableop_58_adam_token_and_position_embedding_embedding_1_embeddings_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59ж
AssignVariableOp_59AssignVariableOpNassignvariableop_59_adam_transformer_block_multi_head_attention_query_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60д
AssignVariableOp_60AssignVariableOpLassignvariableop_60_adam_transformer_block_multi_head_attention_query_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61д
AssignVariableOp_61AssignVariableOpLassignvariableop_61_adam_transformer_block_multi_head_attention_key_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62в
AssignVariableOp_62AssignVariableOpJassignvariableop_62_adam_transformer_block_multi_head_attention_key_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63ж
AssignVariableOp_63AssignVariableOpNassignvariableop_63_adam_transformer_block_multi_head_attention_value_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64д
AssignVariableOp_64AssignVariableOpLassignvariableop_64_adam_transformer_block_multi_head_attention_value_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65с
AssignVariableOp_65AssignVariableOpYassignvariableop_65_adam_transformer_block_multi_head_attention_attention_output_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66п
AssignVariableOp_66AssignVariableOpWassignvariableop_66_adam_transformer_block_multi_head_attention_attention_output_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67Џ
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_dense_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68­
AssignVariableOp_68AssignVariableOp%assignvariableop_68_adam_dense_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69Б
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_dense_1_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70Џ
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_dense_1_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71Ю
AssignVariableOp_71AssignVariableOpFassignvariableop_71_adam_transformer_block_layer_normalization_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72Э
AssignVariableOp_72AssignVariableOpEassignvariableop_72_adam_transformer_block_layer_normalization_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73а
AssignVariableOp_73AssignVariableOpHassignvariableop_73_adam_transformer_block_layer_normalization_1_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74Я
AssignVariableOp_74AssignVariableOpGassignvariableop_74_adam_transformer_block_layer_normalization_1_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_749
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpа
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_75f
Identity_76IdentityIdentity_75:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_76И
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_76Identity_76:output:0*­
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


'__inference_dense_1_layer_call_fn_86952

inputs
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџd : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
Й
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_86663

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ю
ж
(__inference_TRNS_100_layer_call_fn_85651
input_1
unknown:d 
	unknown_0:	ш^ 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *L
fGRE
C__inference_TRNS_100_layer_call_and_return_conditional_losses_855552
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџd
!
_user_specified_name	input_1
ё
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_85086

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ч
T
8__inference_global_average_pooling1d_layer_call_fn_86657

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_850552
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd :S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
Й
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_84838

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
м
Э
*__inference_sequential_layer_call_fn_86789

inputs
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_847762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
пћ

 __inference__wrapped_model_84635
input_1Z
Htrns_100_token_and_position_embedding_embedding_1_embedding_lookup_84481:d Y
Ftrns_100_token_and_position_embedding_embedding_embedding_lookup_84487:	ш^ q
[trns_100_transformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource:  c
Qtrns_100_transformer_block_multi_head_attention_query_add_readvariableop_resource: o
Ytrns_100_transformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource:  a
Otrns_100_transformer_block_multi_head_attention_key_add_readvariableop_resource: q
[trns_100_transformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource:  c
Qtrns_100_transformer_block_multi_head_attention_value_add_readvariableop_resource: |
ftrns_100_transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:  j
\trns_100_transformer_block_multi_head_attention_attention_output_add_readvariableop_resource: b
Ttrns_100_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource: ^
Ptrns_100_transformer_block_layer_normalization_batchnorm_readvariableop_resource: _
Mtrns_100_transformer_block_sequential_dense_tensordot_readvariableop_resource:  Y
Ktrns_100_transformer_block_sequential_dense_biasadd_readvariableop_resource: a
Otrns_100_transformer_block_sequential_dense_1_tensordot_readvariableop_resource:  [
Mtrns_100_transformer_block_sequential_dense_1_biasadd_readvariableop_resource: d
Vtrns_100_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource: `
Rtrns_100_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource: A
/trns_100_dense_2_matmul_readvariableop_resource: >
0trns_100_dense_2_biasadd_readvariableop_resource:A
/trns_100_dense_3_matmul_readvariableop_resource:>
0trns_100_dense_3_biasadd_readvariableop_resource:
identityЂ'TRNS_100/dense_2/BiasAdd/ReadVariableOpЂ&TRNS_100/dense_2/MatMul/ReadVariableOpЂ'TRNS_100/dense_3/BiasAdd/ReadVariableOpЂ&TRNS_100/dense_3/MatMul/ReadVariableOpЂ@TRNS_100/token_and_position_embedding/embedding/embedding_lookupЂBTRNS_100/token_and_position_embedding/embedding_1/embedding_lookupЂGTRNS_100/transformer_block/layer_normalization/batchnorm/ReadVariableOpЂKTRNS_100/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpЂITRNS_100/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpЂMTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpЂSTRNS_100/transformer_block/multi_head_attention/attention_output/add/ReadVariableOpЂ]TRNS_100/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpЂFTRNS_100/transformer_block/multi_head_attention/key/add/ReadVariableOpЂPTRNS_100/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpЂHTRNS_100/transformer_block/multi_head_attention/query/add/ReadVariableOpЂRTRNS_100/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpЂHTRNS_100/transformer_block/multi_head_attention/value/add/ReadVariableOpЂRTRNS_100/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpЂBTRNS_100/transformer_block/sequential/dense/BiasAdd/ReadVariableOpЂDTRNS_100/transformer_block/sequential/dense/Tensordot/ReadVariableOpЂDTRNS_100/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpЂFTRNS_100/transformer_block/sequential/dense_1/Tensordot/ReadVariableOp
+TRNS_100/token_and_position_embedding/ShapeShapeinput_1*
T0*
_output_shapes
:2-
+TRNS_100/token_and_position_embedding/ShapeЩ
9TRNS_100/token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2;
9TRNS_100/token_and_position_embedding/strided_slice/stackФ
;TRNS_100/token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;TRNS_100/token_and_position_embedding/strided_slice/stack_1Ф
;TRNS_100/token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;TRNS_100/token_and_position_embedding/strided_slice/stack_2Ц
3TRNS_100/token_and_position_embedding/strided_sliceStridedSlice4TRNS_100/token_and_position_embedding/Shape:output:0BTRNS_100/token_and_position_embedding/strided_slice/stack:output:0DTRNS_100/token_and_position_embedding/strided_slice/stack_1:output:0DTRNS_100/token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3TRNS_100/token_and_position_embedding/strided_sliceЈ
1TRNS_100/token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : 23
1TRNS_100/token_and_position_embedding/range/startЈ
1TRNS_100/token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :23
1TRNS_100/token_and_position_embedding/range/deltaО
+TRNS_100/token_and_position_embedding/rangeRange:TRNS_100/token_and_position_embedding/range/start:output:0<TRNS_100/token_and_position_embedding/strided_slice:output:0:TRNS_100/token_and_position_embedding/range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2-
+TRNS_100/token_and_position_embedding/rangeы
BTRNS_100/token_and_position_embedding/embedding_1/embedding_lookupResourceGatherHtrns_100_token_and_position_embedding_embedding_1_embedding_lookup_844814TRNS_100/token_and_position_embedding/range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*[
_classQ
OMloc:@TRNS_100/token_and_position_embedding/embedding_1/embedding_lookup/84481*'
_output_shapes
:џџџџџџџџџ *
dtype02D
BTRNS_100/token_and_position_embedding/embedding_1/embedding_lookupА
KTRNS_100/token_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityKTRNS_100/token_and_position_embedding/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*[
_classQ
OMloc:@TRNS_100/token_and_position_embedding/embedding_1/embedding_lookup/84481*'
_output_shapes
:џџџџџџџџџ 2M
KTRNS_100/token_and_position_embedding/embedding_1/embedding_lookup/IdentityВ
MTRNS_100/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityTTRNS_100/token_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2O
MTRNS_100/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1О
4TRNS_100/token_and_position_embedding/embedding/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџd26
4TRNS_100/token_and_position_embedding/embedding/Castы
@TRNS_100/token_and_position_embedding/embedding/embedding_lookupResourceGatherFtrns_100_token_and_position_embedding_embedding_embedding_lookup_844878TRNS_100/token_and_position_embedding/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*Y
_classO
MKloc:@TRNS_100/token_and_position_embedding/embedding/embedding_lookup/84487*+
_output_shapes
:џџџџџџџџџd *
dtype02B
@TRNS_100/token_and_position_embedding/embedding/embedding_lookupЌ
ITRNS_100/token_and_position_embedding/embedding/embedding_lookup/IdentityIdentityITRNS_100/token_and_position_embedding/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*Y
_classO
MKloc:@TRNS_100/token_and_position_embedding/embedding/embedding_lookup/84487*+
_output_shapes
:џџџџџџџџџd 2K
ITRNS_100/token_and_position_embedding/embedding/embedding_lookup/IdentityА
KTRNS_100/token_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityRTRNS_100/token_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2M
KTRNS_100/token_and_position_embedding/embedding/embedding_lookup/Identity_1У
)TRNS_100/token_and_position_embedding/addAddV2TTRNS_100/token_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0VTRNS_100/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2+
)TRNS_100/token_and_position_embedding/addШ
RTRNS_100/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp[trns_100_transformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02T
RTRNS_100/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpџ
CTRNS_100/transformer_block/multi_head_attention/query/einsum/EinsumEinsum-TRNS_100/token_and_position_embedding/add:z:0ZTRNS_100/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2E
CTRNS_100/transformer_block/multi_head_attention/query/einsum/EinsumІ
HTRNS_100/transformer_block/multi_head_attention/query/add/ReadVariableOpReadVariableOpQtrns_100_transformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype02J
HTRNS_100/transformer_block/multi_head_attention/query/add/ReadVariableOpй
9TRNS_100/transformer_block/multi_head_attention/query/addAddV2LTRNS_100/transformer_block/multi_head_attention/query/einsum/Einsum:output:0PTRNS_100/transformer_block/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2;
9TRNS_100/transformer_block/multi_head_attention/query/addТ
PTRNS_100/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpYtrns_100_transformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02R
PTRNS_100/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpљ
ATRNS_100/transformer_block/multi_head_attention/key/einsum/EinsumEinsum-TRNS_100/token_and_position_embedding/add:z:0XTRNS_100/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2C
ATRNS_100/transformer_block/multi_head_attention/key/einsum/Einsum 
FTRNS_100/transformer_block/multi_head_attention/key/add/ReadVariableOpReadVariableOpOtrns_100_transformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype02H
FTRNS_100/transformer_block/multi_head_attention/key/add/ReadVariableOpб
7TRNS_100/transformer_block/multi_head_attention/key/addAddV2JTRNS_100/transformer_block/multi_head_attention/key/einsum/Einsum:output:0NTRNS_100/transformer_block/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 29
7TRNS_100/transformer_block/multi_head_attention/key/addШ
RTRNS_100/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp[trns_100_transformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02T
RTRNS_100/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpџ
CTRNS_100/transformer_block/multi_head_attention/value/einsum/EinsumEinsum-TRNS_100/token_and_position_embedding/add:z:0ZTRNS_100/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2E
CTRNS_100/transformer_block/multi_head_attention/value/einsum/EinsumІ
HTRNS_100/transformer_block/multi_head_attention/value/add/ReadVariableOpReadVariableOpQtrns_100_transformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype02J
HTRNS_100/transformer_block/multi_head_attention/value/add/ReadVariableOpй
9TRNS_100/transformer_block/multi_head_attention/value/addAddV2LTRNS_100/transformer_block/multi_head_attention/value/einsum/Einsum:output:0PTRNS_100/transformer_block/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2;
9TRNS_100/transformer_block/multi_head_attention/value/addГ
5TRNS_100/transformer_block/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>27
5TRNS_100/transformer_block/multi_head_attention/Mul/yЊ
3TRNS_100/transformer_block/multi_head_attention/MulMul=TRNS_100/transformer_block/multi_head_attention/query/add:z:0>TRNS_100/transformer_block/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџd 25
3TRNS_100/transformer_block/multi_head_attention/Mulр
=TRNS_100/transformer_block/multi_head_attention/einsum/EinsumEinsum;TRNS_100/transformer_block/multi_head_attention/key/add:z:07TRNS_100/transformer_block/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџdd*
equationaecd,abcd->acbe2?
=TRNS_100/transformer_block/multi_head_attention/einsum/Einsum
?TRNS_100/transformer_block/multi_head_attention/softmax/SoftmaxSoftmaxFTRNS_100/transformer_block/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџdd2A
?TRNS_100/transformer_block/multi_head_attention/softmax/Softmax
@TRNS_100/transformer_block/multi_head_attention/dropout/IdentityIdentityITRNS_100/transformer_block/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџdd2B
@TRNS_100/transformer_block/multi_head_attention/dropout/Identityј
?TRNS_100/transformer_block/multi_head_attention/einsum_1/EinsumEinsumITRNS_100/transformer_block/multi_head_attention/dropout/Identity:output:0=TRNS_100/transformer_block/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationacbe,aecd->abcd2A
?TRNS_100/transformer_block/multi_head_attention/einsum_1/Einsumщ
]TRNS_100/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpftrns_100_transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02_
]TRNS_100/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpЗ
NTRNS_100/transformer_block/multi_head_attention/attention_output/einsum/EinsumEinsumHTRNS_100/transformer_block/multi_head_attention/einsum_1/Einsum:output:0eTRNS_100/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџd *
equationabcd,cde->abe2P
NTRNS_100/transformer_block/multi_head_attention/attention_output/einsum/EinsumУ
STRNS_100/transformer_block/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOp\trns_100_transformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02U
STRNS_100/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp
DTRNS_100/transformer_block/multi_head_attention/attention_output/addAddV2WTRNS_100/transformer_block/multi_head_attention/attention_output/einsum/Einsum:output:0[TRNS_100/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2F
DTRNS_100/transformer_block/multi_head_attention/attention_output/addц
+TRNS_100/transformer_block/dropout/IdentityIdentityHTRNS_100/transformer_block/multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2-
+TRNS_100/transformer_block/dropout/Identityф
TRNS_100/transformer_block/addAddV2-TRNS_100/token_and_position_embedding/add:z:04TRNS_100/transformer_block/dropout/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2 
TRNS_100/transformer_block/addш
MTRNS_100/transformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2O
MTRNS_100/transformer_block/layer_normalization/moments/mean/reduction_indicesХ
;TRNS_100/transformer_block/layer_normalization/moments/meanMean"TRNS_100/transformer_block/add:z:0VTRNS_100/transformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2=
;TRNS_100/transformer_block/layer_normalization/moments/mean
CTRNS_100/transformer_block/layer_normalization/moments/StopGradientStopGradientDTRNS_100/transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2E
CTRNS_100/transformer_block/layer_normalization/moments/StopGradientб
HTRNS_100/transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifference"TRNS_100/transformer_block/add:z:0LTRNS_100/transformer_block/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2J
HTRNS_100/transformer_block/layer_normalization/moments/SquaredDifference№
QTRNS_100/transformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2S
QTRNS_100/transformer_block/layer_normalization/moments/variance/reduction_indicesћ
?TRNS_100/transformer_block/layer_normalization/moments/varianceMeanLTRNS_100/transformer_block/layer_normalization/moments/SquaredDifference:z:0ZTRNS_100/transformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2A
?TRNS_100/transformer_block/layer_normalization/moments/varianceХ
>TRNS_100/transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752@
>TRNS_100/transformer_block/layer_normalization/batchnorm/add/yЮ
<TRNS_100/transformer_block/layer_normalization/batchnorm/addAddV2HTRNS_100/transformer_block/layer_normalization/moments/variance:output:0GTRNS_100/transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2>
<TRNS_100/transformer_block/layer_normalization/batchnorm/add
>TRNS_100/transformer_block/layer_normalization/batchnorm/RsqrtRsqrt@TRNS_100/transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2@
>TRNS_100/transformer_block/layer_normalization/batchnorm/RsqrtЋ
KTRNS_100/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpTtrns_100_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02M
KTRNS_100/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpв
<TRNS_100/transformer_block/layer_normalization/batchnorm/mulMulBTRNS_100/transformer_block/layer_normalization/batchnorm/Rsqrt:y:0STRNS_100/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2>
<TRNS_100/transformer_block/layer_normalization/batchnorm/mulЃ
>TRNS_100/transformer_block/layer_normalization/batchnorm/mul_1Mul"TRNS_100/transformer_block/add:z:0@TRNS_100/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2@
>TRNS_100/transformer_block/layer_normalization/batchnorm/mul_1Х
>TRNS_100/transformer_block/layer_normalization/batchnorm/mul_2MulDTRNS_100/transformer_block/layer_normalization/moments/mean:output:0@TRNS_100/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2@
>TRNS_100/transformer_block/layer_normalization/batchnorm/mul_2
GTRNS_100/transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpPtrns_100_transformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02I
GTRNS_100/transformer_block/layer_normalization/batchnorm/ReadVariableOpЮ
<TRNS_100/transformer_block/layer_normalization/batchnorm/subSubOTRNS_100/transformer_block/layer_normalization/batchnorm/ReadVariableOp:value:0BTRNS_100/transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2>
<TRNS_100/transformer_block/layer_normalization/batchnorm/subХ
>TRNS_100/transformer_block/layer_normalization/batchnorm/add_1AddV2BTRNS_100/transformer_block/layer_normalization/batchnorm/mul_1:z:0@TRNS_100/transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2@
>TRNS_100/transformer_block/layer_normalization/batchnorm/add_1
DTRNS_100/transformer_block/sequential/dense/Tensordot/ReadVariableOpReadVariableOpMtrns_100_transformer_block_sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02F
DTRNS_100/transformer_block/sequential/dense/Tensordot/ReadVariableOpТ
:TRNS_100/transformer_block/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2<
:TRNS_100/transformer_block/sequential/dense/Tensordot/axesЩ
:TRNS_100/transformer_block/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2<
:TRNS_100/transformer_block/sequential/dense/Tensordot/freeь
;TRNS_100/transformer_block/sequential/dense/Tensordot/ShapeShapeBTRNS_100/transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2=
;TRNS_100/transformer_block/sequential/dense/Tensordot/ShapeЬ
CTRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
CTRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2/axis­
>TRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2GatherV2DTRNS_100/transformer_block/sequential/dense/Tensordot/Shape:output:0CTRNS_100/transformer_block/sequential/dense/Tensordot/free:output:0LTRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>TRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2а
ETRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2G
ETRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2_1/axisГ
@TRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2_1GatherV2DTRNS_100/transformer_block/sequential/dense/Tensordot/Shape:output:0CTRNS_100/transformer_block/sequential/dense/Tensordot/axes:output:0NTRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2B
@TRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2_1Ф
;TRNS_100/transformer_block/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2=
;TRNS_100/transformer_block/sequential/dense/Tensordot/ConstА
:TRNS_100/transformer_block/sequential/dense/Tensordot/ProdProdGTRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2:output:0DTRNS_100/transformer_block/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2<
:TRNS_100/transformer_block/sequential/dense/Tensordot/ProdШ
=TRNS_100/transformer_block/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
=TRNS_100/transformer_block/sequential/dense/Tensordot/Const_1И
<TRNS_100/transformer_block/sequential/dense/Tensordot/Prod_1ProdITRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2_1:output:0FTRNS_100/transformer_block/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2>
<TRNS_100/transformer_block/sequential/dense/Tensordot/Prod_1Ш
ATRNS_100/transformer_block/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
ATRNS_100/transformer_block/sequential/dense/Tensordot/concat/axis
<TRNS_100/transformer_block/sequential/dense/Tensordot/concatConcatV2CTRNS_100/transformer_block/sequential/dense/Tensordot/free:output:0CTRNS_100/transformer_block/sequential/dense/Tensordot/axes:output:0JTRNS_100/transformer_block/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2>
<TRNS_100/transformer_block/sequential/dense/Tensordot/concatМ
;TRNS_100/transformer_block/sequential/dense/Tensordot/stackPackCTRNS_100/transformer_block/sequential/dense/Tensordot/Prod:output:0ETRNS_100/transformer_block/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2=
;TRNS_100/transformer_block/sequential/dense/Tensordot/stackа
?TRNS_100/transformer_block/sequential/dense/Tensordot/transpose	TransposeBTRNS_100/transformer_block/layer_normalization/batchnorm/add_1:z:0ETRNS_100/transformer_block/sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2A
?TRNS_100/transformer_block/sequential/dense/Tensordot/transposeЯ
=TRNS_100/transformer_block/sequential/dense/Tensordot/ReshapeReshapeCTRNS_100/transformer_block/sequential/dense/Tensordot/transpose:y:0DTRNS_100/transformer_block/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2?
=TRNS_100/transformer_block/sequential/dense/Tensordot/ReshapeЮ
<TRNS_100/transformer_block/sequential/dense/Tensordot/MatMulMatMulFTRNS_100/transformer_block/sequential/dense/Tensordot/Reshape:output:0LTRNS_100/transformer_block/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2>
<TRNS_100/transformer_block/sequential/dense/Tensordot/MatMulШ
=TRNS_100/transformer_block/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2?
=TRNS_100/transformer_block/sequential/dense/Tensordot/Const_2Ь
CTRNS_100/transformer_block/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
CTRNS_100/transformer_block/sequential/dense/Tensordot/concat_1/axis
>TRNS_100/transformer_block/sequential/dense/Tensordot/concat_1ConcatV2GTRNS_100/transformer_block/sequential/dense/Tensordot/GatherV2:output:0FTRNS_100/transformer_block/sequential/dense/Tensordot/Const_2:output:0LTRNS_100/transformer_block/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2@
>TRNS_100/transformer_block/sequential/dense/Tensordot/concat_1Р
5TRNS_100/transformer_block/sequential/dense/TensordotReshapeFTRNS_100/transformer_block/sequential/dense/Tensordot/MatMul:product:0GTRNS_100/transformer_block/sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5TRNS_100/transformer_block/sequential/dense/Tensordot
BTRNS_100/transformer_block/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpKtrns_100_transformer_block_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02D
BTRNS_100/transformer_block/sequential/dense/BiasAdd/ReadVariableOpЗ
3TRNS_100/transformer_block/sequential/dense/BiasAddBiasAdd>TRNS_100/transformer_block/sequential/dense/Tensordot:output:0JTRNS_100/transformer_block/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 25
3TRNS_100/transformer_block/sequential/dense/BiasAddр
0TRNS_100/transformer_block/sequential/dense/ReluRelu<TRNS_100/transformer_block/sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 22
0TRNS_100/transformer_block/sequential/dense/Relu 
FTRNS_100/transformer_block/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOpOtrns_100_transformer_block_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02H
FTRNS_100/transformer_block/sequential/dense_1/Tensordot/ReadVariableOpЦ
<TRNS_100/transformer_block/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2>
<TRNS_100/transformer_block/sequential/dense_1/Tensordot/axesЭ
<TRNS_100/transformer_block/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2>
<TRNS_100/transformer_block/sequential/dense_1/Tensordot/freeь
=TRNS_100/transformer_block/sequential/dense_1/Tensordot/ShapeShape>TRNS_100/transformer_block/sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2?
=TRNS_100/transformer_block/sequential/dense_1/Tensordot/Shapeа
ETRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2G
ETRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2/axisЗ
@TRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2GatherV2FTRNS_100/transformer_block/sequential/dense_1/Tensordot/Shape:output:0ETRNS_100/transformer_block/sequential/dense_1/Tensordot/free:output:0NTRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2B
@TRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2д
GTRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2I
GTRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axisН
BTRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2_1GatherV2FTRNS_100/transformer_block/sequential/dense_1/Tensordot/Shape:output:0ETRNS_100/transformer_block/sequential/dense_1/Tensordot/axes:output:0PTRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2D
BTRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2_1Ш
=TRNS_100/transformer_block/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2?
=TRNS_100/transformer_block/sequential/dense_1/Tensordot/ConstИ
<TRNS_100/transformer_block/sequential/dense_1/Tensordot/ProdProdITRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0FTRNS_100/transformer_block/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2>
<TRNS_100/transformer_block/sequential/dense_1/Tensordot/ProdЬ
?TRNS_100/transformer_block/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2A
?TRNS_100/transformer_block/sequential/dense_1/Tensordot/Const_1Р
>TRNS_100/transformer_block/sequential/dense_1/Tensordot/Prod_1ProdKTRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2_1:output:0HTRNS_100/transformer_block/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2@
>TRNS_100/transformer_block/sequential/dense_1/Tensordot/Prod_1Ь
CTRNS_100/transformer_block/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
CTRNS_100/transformer_block/sequential/dense_1/Tensordot/concat/axis
>TRNS_100/transformer_block/sequential/dense_1/Tensordot/concatConcatV2ETRNS_100/transformer_block/sequential/dense_1/Tensordot/free:output:0ETRNS_100/transformer_block/sequential/dense_1/Tensordot/axes:output:0LTRNS_100/transformer_block/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2@
>TRNS_100/transformer_block/sequential/dense_1/Tensordot/concatФ
=TRNS_100/transformer_block/sequential/dense_1/Tensordot/stackPackETRNS_100/transformer_block/sequential/dense_1/Tensordot/Prod:output:0GTRNS_100/transformer_block/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2?
=TRNS_100/transformer_block/sequential/dense_1/Tensordot/stackв
ATRNS_100/transformer_block/sequential/dense_1/Tensordot/transpose	Transpose>TRNS_100/transformer_block/sequential/dense/Relu:activations:0GTRNS_100/transformer_block/sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2C
ATRNS_100/transformer_block/sequential/dense_1/Tensordot/transposeз
?TRNS_100/transformer_block/sequential/dense_1/Tensordot/ReshapeReshapeETRNS_100/transformer_block/sequential/dense_1/Tensordot/transpose:y:0FTRNS_100/transformer_block/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2A
?TRNS_100/transformer_block/sequential/dense_1/Tensordot/Reshapeж
>TRNS_100/transformer_block/sequential/dense_1/Tensordot/MatMulMatMulHTRNS_100/transformer_block/sequential/dense_1/Tensordot/Reshape:output:0NTRNS_100/transformer_block/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2@
>TRNS_100/transformer_block/sequential/dense_1/Tensordot/MatMulЬ
?TRNS_100/transformer_block/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2A
?TRNS_100/transformer_block/sequential/dense_1/Tensordot/Const_2а
ETRNS_100/transformer_block/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2G
ETRNS_100/transformer_block/sequential/dense_1/Tensordot/concat_1/axisЃ
@TRNS_100/transformer_block/sequential/dense_1/Tensordot/concat_1ConcatV2ITRNS_100/transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0HTRNS_100/transformer_block/sequential/dense_1/Tensordot/Const_2:output:0NTRNS_100/transformer_block/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2B
@TRNS_100/transformer_block/sequential/dense_1/Tensordot/concat_1Ш
7TRNS_100/transformer_block/sequential/dense_1/TensordotReshapeHTRNS_100/transformer_block/sequential/dense_1/Tensordot/MatMul:product:0ITRNS_100/transformer_block/sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 29
7TRNS_100/transformer_block/sequential/dense_1/Tensordot
DTRNS_100/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpMtrns_100_transformer_block_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02F
DTRNS_100/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpП
5TRNS_100/transformer_block/sequential/dense_1/BiasAddBiasAdd@TRNS_100/transformer_block/sequential/dense_1/Tensordot:output:0LTRNS_100/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5TRNS_100/transformer_block/sequential/dense_1/BiasAddр
-TRNS_100/transformer_block/dropout_1/IdentityIdentity>TRNS_100/transformer_block/sequential/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2/
-TRNS_100/transformer_block/dropout_1/Identityџ
 TRNS_100/transformer_block/add_1AddV2BTRNS_100/transformer_block/layer_normalization/batchnorm/add_1:z:06TRNS_100/transformer_block/dropout_1/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2"
 TRNS_100/transformer_block/add_1ь
OTRNS_100/transformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2Q
OTRNS_100/transformer_block/layer_normalization_1/moments/mean/reduction_indicesЭ
=TRNS_100/transformer_block/layer_normalization_1/moments/meanMean$TRNS_100/transformer_block/add_1:z:0XTRNS_100/transformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2?
=TRNS_100/transformer_block/layer_normalization_1/moments/mean
ETRNS_100/transformer_block/layer_normalization_1/moments/StopGradientStopGradientFTRNS_100/transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2G
ETRNS_100/transformer_block/layer_normalization_1/moments/StopGradientй
JTRNS_100/transformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifference$TRNS_100/transformer_block/add_1:z:0NTRNS_100/transformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2L
JTRNS_100/transformer_block/layer_normalization_1/moments/SquaredDifferenceє
STRNS_100/transformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2U
STRNS_100/transformer_block/layer_normalization_1/moments/variance/reduction_indices
ATRNS_100/transformer_block/layer_normalization_1/moments/varianceMeanNTRNS_100/transformer_block/layer_normalization_1/moments/SquaredDifference:z:0\TRNS_100/transformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2C
ATRNS_100/transformer_block/layer_normalization_1/moments/varianceЩ
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752B
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/add/yж
>TRNS_100/transformer_block/layer_normalization_1/batchnorm/addAddV2JTRNS_100/transformer_block/layer_normalization_1/moments/variance:output:0ITRNS_100/transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2@
>TRNS_100/transformer_block/layer_normalization_1/batchnorm/add
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrtBTRNS_100/transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2B
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/RsqrtБ
MTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpVtrns_100_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02O
MTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpк
>TRNS_100/transformer_block/layer_normalization_1/batchnorm/mulMulDTRNS_100/transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0UTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2@
>TRNS_100/transformer_block/layer_normalization_1/batchnorm/mulЋ
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/mul_1Mul$TRNS_100/transformer_block/add_1:z:0BTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2B
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/mul_1Э
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/mul_2MulFTRNS_100/transformer_block/layer_normalization_1/moments/mean:output:0BTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2B
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/mul_2Ѕ
ITRNS_100/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpRtrns_100_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02K
ITRNS_100/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpж
>TRNS_100/transformer_block/layer_normalization_1/batchnorm/subSubQTRNS_100/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0DTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2@
>TRNS_100/transformer_block/layer_normalization_1/batchnorm/subЭ
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/add_1AddV2DTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul_1:z:0BTRNS_100/transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2B
@TRNS_100/transformer_block/layer_normalization_1/batchnorm/add_1Ж
8TRNS_100/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2:
8TRNS_100/global_average_pooling1d/Mean/reduction_indices
&TRNS_100/global_average_pooling1d/MeanMeanDTRNS_100/transformer_block/layer_normalization_1/batchnorm/add_1:z:0ATRNS_100/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2(
&TRNS_100/global_average_pooling1d/MeanЉ
TRNS_100/dropout_2/IdentityIdentity/TRNS_100/global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
TRNS_100/dropout_2/IdentityР
&TRNS_100/dense_2/MatMul/ReadVariableOpReadVariableOp/trns_100_dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&TRNS_100/dense_2/MatMul/ReadVariableOpФ
TRNS_100/dense_2/MatMulMatMul$TRNS_100/dropout_2/Identity:output:0.TRNS_100/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
TRNS_100/dense_2/MatMulП
'TRNS_100/dense_2/BiasAdd/ReadVariableOpReadVariableOp0trns_100_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'TRNS_100/dense_2/BiasAdd/ReadVariableOpХ
TRNS_100/dense_2/BiasAddBiasAdd!TRNS_100/dense_2/MatMul:product:0/TRNS_100/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
TRNS_100/dense_2/BiasAdd
TRNS_100/dense_2/ReluRelu!TRNS_100/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
TRNS_100/dense_2/Relu
TRNS_100/dropout_3/IdentityIdentity#TRNS_100/dense_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
TRNS_100/dropout_3/IdentityР
&TRNS_100/dense_3/MatMul/ReadVariableOpReadVariableOp/trns_100_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&TRNS_100/dense_3/MatMul/ReadVariableOpФ
TRNS_100/dense_3/MatMulMatMul$TRNS_100/dropout_3/Identity:output:0.TRNS_100/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
TRNS_100/dense_3/MatMulП
'TRNS_100/dense_3/BiasAdd/ReadVariableOpReadVariableOp0trns_100_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'TRNS_100/dense_3/BiasAdd/ReadVariableOpХ
TRNS_100/dense_3/BiasAddBiasAdd!TRNS_100/dense_3/MatMul:product:0/TRNS_100/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
TRNS_100/dense_3/BiasAdd
TRNS_100/dense_3/SoftmaxSoftmax!TRNS_100/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
TRNS_100/dense_3/Softmax}
IdentityIdentity"TRNS_100/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityо
NoOpNoOp(^TRNS_100/dense_2/BiasAdd/ReadVariableOp'^TRNS_100/dense_2/MatMul/ReadVariableOp(^TRNS_100/dense_3/BiasAdd/ReadVariableOp'^TRNS_100/dense_3/MatMul/ReadVariableOpA^TRNS_100/token_and_position_embedding/embedding/embedding_lookupC^TRNS_100/token_and_position_embedding/embedding_1/embedding_lookupH^TRNS_100/transformer_block/layer_normalization/batchnorm/ReadVariableOpL^TRNS_100/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpJ^TRNS_100/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpN^TRNS_100/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpT^TRNS_100/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp^^TRNS_100/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpG^TRNS_100/transformer_block/multi_head_attention/key/add/ReadVariableOpQ^TRNS_100/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpI^TRNS_100/transformer_block/multi_head_attention/query/add/ReadVariableOpS^TRNS_100/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpI^TRNS_100/transformer_block/multi_head_attention/value/add/ReadVariableOpS^TRNS_100/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpC^TRNS_100/transformer_block/sequential/dense/BiasAdd/ReadVariableOpE^TRNS_100/transformer_block/sequential/dense/Tensordot/ReadVariableOpE^TRNS_100/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpG^TRNS_100/transformer_block/sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 2R
'TRNS_100/dense_2/BiasAdd/ReadVariableOp'TRNS_100/dense_2/BiasAdd/ReadVariableOp2P
&TRNS_100/dense_2/MatMul/ReadVariableOp&TRNS_100/dense_2/MatMul/ReadVariableOp2R
'TRNS_100/dense_3/BiasAdd/ReadVariableOp'TRNS_100/dense_3/BiasAdd/ReadVariableOp2P
&TRNS_100/dense_3/MatMul/ReadVariableOp&TRNS_100/dense_3/MatMul/ReadVariableOp2
@TRNS_100/token_and_position_embedding/embedding/embedding_lookup@TRNS_100/token_and_position_embedding/embedding/embedding_lookup2
BTRNS_100/token_and_position_embedding/embedding_1/embedding_lookupBTRNS_100/token_and_position_embedding/embedding_1/embedding_lookup2
GTRNS_100/transformer_block/layer_normalization/batchnorm/ReadVariableOpGTRNS_100/transformer_block/layer_normalization/batchnorm/ReadVariableOp2
KTRNS_100/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpKTRNS_100/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2
ITRNS_100/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpITRNS_100/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2
MTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpMTRNS_100/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2Њ
STRNS_100/transformer_block/multi_head_attention/attention_output/add/ReadVariableOpSTRNS_100/transformer_block/multi_head_attention/attention_output/add/ReadVariableOp2О
]TRNS_100/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp]TRNS_100/transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2
FTRNS_100/transformer_block/multi_head_attention/key/add/ReadVariableOpFTRNS_100/transformer_block/multi_head_attention/key/add/ReadVariableOp2Є
PTRNS_100/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpPTRNS_100/transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp2
HTRNS_100/transformer_block/multi_head_attention/query/add/ReadVariableOpHTRNS_100/transformer_block/multi_head_attention/query/add/ReadVariableOp2Ј
RTRNS_100/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpRTRNS_100/transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp2
HTRNS_100/transformer_block/multi_head_attention/value/add/ReadVariableOpHTRNS_100/transformer_block/multi_head_attention/value/add/ReadVariableOp2Ј
RTRNS_100/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpRTRNS_100/transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp2
BTRNS_100/transformer_block/sequential/dense/BiasAdd/ReadVariableOpBTRNS_100/transformer_block/sequential/dense/BiasAdd/ReadVariableOp2
DTRNS_100/transformer_block/sequential/dense/Tensordot/ReadVariableOpDTRNS_100/transformer_block/sequential/dense/Tensordot/ReadVariableOp2
DTRNS_100/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpDTRNS_100/transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp2
FTRNS_100/transformer_block/sequential/dense_1/Tensordot/ReadVariableOpFTRNS_100/transformer_block/sequential/dense_1/Tensordot/ReadVariableOp:P L
'
_output_shapes
:џџџџџџџџџd
!
_user_specified_name	input_1
к

E__inference_sequential_layer_call_and_return_conditional_losses_84716

inputs
dense_84674:  
dense_84676: 
dense_1_84710:  
dense_1_84712: 
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_84674dense_84676*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_846732
dense/StatefulPartitionedCallЕ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_84710dense_1_84712*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847092!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
ю
ж
(__inference_TRNS_100_layer_call_fn_85153
input_1
unknown:d 
	unknown_0:	ш^ 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *L
fGRE
C__inference_TRNS_100_layer_call_and_return_conditional_losses_851062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџd
!
_user_specified_name	input_1

T
8__inference_global_average_pooling1d_layer_call_fn_86652

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_848382
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к

E__inference_sequential_layer_call_and_return_conditional_losses_84776

inputs
dense_84765:  
dense_84767: 
dense_1_84770:  
dense_1_84772: 
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_84765dense_84767*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_846732
dense/StatefulPartitionedCallЕ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_84770dense_1_84772*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847092!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
я+
	
C__inference_TRNS_100_layer_call_and_return_conditional_losses_85106

inputs4
"token_and_position_embedding_84884:d 5
"token_and_position_embedding_84886:	ш^ -
transformer_block_85017:  )
transformer_block_85019: -
transformer_block_85021:  )
transformer_block_85023: -
transformer_block_85025:  )
transformer_block_85027: -
transformer_block_85029:  %
transformer_block_85031: %
transformer_block_85033: %
transformer_block_85035: )
transformer_block_85037:  %
transformer_block_85039: )
transformer_block_85041:  %
transformer_block_85043: %
transformer_block_85045: %
transformer_block_85047: 
dense_2_85076: 
dense_2_85078:
dense_3_85100:
dense_3_85102:
identityЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ4token_and_position_embedding/StatefulPartitionedCallЂ)transformer_block/StatefulPartitionedCallў
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs"token_and_position_embedding_84884"token_and_position_embedding_84886*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_8488326
4token_and_position_embedding/StatefulPartitionedCallј
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_85017transformer_block_85019transformer_block_85021transformer_block_85023transformer_block_85025transformer_block_85027transformer_block_85029transformer_block_85031transformer_block_85033transformer_block_85035transformer_block_85037transformer_block_85039transformer_block_85041transformer_block_85043transformer_block_85045transformer_block_85047*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_850162+
)transformer_block/StatefulPartitionedCallД
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_850552*
(global_average_pooling1d/PartitionedCall
dropout_2/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_850622
dropout_2/PartitionedCall­
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_2_85076dense_2_85078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_850752!
dense_2/StatefulPartitionedCall§
dropout_3/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_850862
dropout_3/PartitionedCall­
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_85100dense_3_85102*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_850992!
dense_3/StatefulPartitionedCall
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityѕ
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs

o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_86669

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd :S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs

Љ
<__inference_token_and_position_embedding_layer_call_fn_86282
x
unknown:d 
	unknown_0:	ш^ 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_848832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:џџџџџџџџџd

_user_specified_namex
Њ
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_86696

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Шш
у
L__inference_transformer_block_layer_call_and_return_conditional_losses_85404

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_query_add_readvariableop_resource: T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:  F
4multi_head_attention_key_add_readvariableop_resource: V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_value_add_readvariableop_resource: a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:  O
Amulti_head_attention_attention_output_add_readvariableop_resource: G
9layer_normalization_batchnorm_mul_readvariableop_resource: C
5layer_normalization_batchnorm_readvariableop_resource: D
2sequential_dense_tensordot_readvariableop_resource:  >
0sequential_dense_biasadd_readvariableop_resource: F
4sequential_dense_1_tensordot_readvariableop_resource:  @
2sequential_dense_1_biasadd_readvariableop_resource: I
;layer_normalization_1_batchnorm_mul_readvariableop_resource: E
7layer_normalization_1_batchnorm_readvariableop_resource: 
identityЂ,layer_normalization/batchnorm/ReadVariableOpЂ0layer_normalization/batchnorm/mul/ReadVariableOpЂ.layer_normalization_1/batchnorm/ReadVariableOpЂ2layer_normalization_1/batchnorm/mul/ReadVariableOpЂ8multi_head_attention/attention_output/add/ReadVariableOpЂBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpЂ+multi_head_attention/key/add/ReadVariableOpЂ5multi_head_attention/key/einsum/Einsum/ReadVariableOpЂ-multi_head_attention/query/add/ReadVariableOpЂ7multi_head_attention/query/einsum/Einsum/ReadVariableOpЂ-multi_head_attention/value/add/ReadVariableOpЂ7multi_head_attention/value/einsum/Einsum/ReadVariableOpЂ'sequential/dense/BiasAdd/ReadVariableOpЂ)sequential/dense/Tensordot/ReadVariableOpЂ)sequential/dense_1/BiasAdd/ReadVariableOpЂ+sequential/dense_1/Tensordot/ReadVariableOpї
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention/query/einsum/Einsum/ReadVariableOp
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2*
(multi_head_attention/query/einsum/Einsumе
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention/query/add/ReadVariableOpэ
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2 
multi_head_attention/query/addё
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype027
5multi_head_attention/key/einsum/Einsum/ReadVariableOp
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2(
&multi_head_attention/key/einsum/EinsumЯ
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype02-
+multi_head_attention/key/add/ReadVariableOpх
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2
multi_head_attention/key/addї
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention/value/einsum/Einsum/ReadVariableOp
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2*
(multi_head_attention/value/einsum/Einsumе
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention/value/add/ReadVariableOpэ
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2 
multi_head_attention/value/add}
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2
multi_head_attention/Mul/yО
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџd 2
multi_head_attention/Mulє
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџdd*
equationaecd,abcd->acbe2$
"multi_head_attention/einsum/EinsumО
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџdd2&
$multi_head_attention/softmax/Softmax
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationacbe,aecd->abcd2&
$multi_head_attention/einsum_1/Einsum
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02D
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpЫ
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџd *
equationabcd,cde->abe25
3multi_head_attention/attention_output/einsum/Einsumђ
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02:
8multi_head_attention/attention_output/add/ReadVariableOp
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2+
)multi_head_attention/attention_output/adds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/dropout/ConstЖ
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout/dropout/Mul
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeа
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd *
dtype02.
,dropout/dropout/random_uniform/RandomUniform
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2 
dropout/dropout/GreaterEqual/yт
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout/dropout/GreaterEqual
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџd 2
dropout/dropout/Cast
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout/dropout/Mul_1l
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
addВ
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:24
2layer_normalization/moments/mean/reduction_indicesй
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2"
 layer_normalization/moments/meanХ
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2*
(layer_normalization/moments/StopGradientх
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2/
-layer_normalization/moments/SquaredDifferenceК
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:28
6layer_normalization/moments/variance/reduction_indices
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2&
$layer_normalization/moments/variance
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752%
#layer_normalization/batchnorm/add/yт
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2#
!layer_normalization/batchnorm/addА
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2%
#layer_normalization/batchnorm/Rsqrtк
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype022
0layer_normalization/batchnorm/mul/ReadVariableOpц
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2#
!layer_normalization/batchnorm/mulЗ
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/mul_1й
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/mul_2Ю
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02.
,layer_normalization/batchnorm/ReadVariableOpт
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2#
!layer_normalization/batchnorm/subй
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/add_1Щ
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02+
)sequential/dense/Tensordot/ReadVariableOp
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axes
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/free
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/Shape
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axisІ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axisЌ
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/ConstФ
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/Prod
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1Ь
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axis
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concatа
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stackф
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2&
$sequential/dense/Tensordot/transposeу
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2$
"sequential/dense/Tensordot/Reshapeт
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2#
!sequential/dense/Tensordot/MatMul
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_2
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axis
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1д
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/TensordotП
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpЫ
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/BiasAdd
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/ReluЯ
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02-
+sequential/dense_1/Tensordot/ReadVariableOp
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!sequential/dense_1/Tensordot/axes
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!sequential/dense_1/Tensordot/free
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/Shape
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/GatherV2/axisА
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/GatherV2
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential/dense_1/Tensordot/GatherV2_1/axisЖ
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential/dense_1/Tensordot/GatherV2_1
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense_1/Tensordot/ConstЬ
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!sequential/dense_1/Tensordot/Prod
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_1д
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#sequential/dense_1/Tensordot/Prod_1
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense_1/Tensordot/concat/axis
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense_1/Tensordot/concatи
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/stackц
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2(
&sequential/dense_1/Tensordot/transposeы
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2&
$sequential/dense_1/Tensordot/Reshapeъ
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2%
#sequential/dense_1/Tensordot/MatMul
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_2
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/concat_1/axis
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/concat_1м
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense_1/TensordotХ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpг
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense_1/BiasAddw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_1/dropout/ConstВ
dropout_1/dropout/MulMul#sequential/dense_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout_1/dropout/Mul
dropout_1/dropout/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeж
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd *
dtype020
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_1/dropout/GreaterEqual/yъ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2 
dropout_1/dropout/GreaterEqualЁ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџd 2
dropout_1/dropout/CastІ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout_1/dropout/Mul_1
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
add_1Ж
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_1/moments/mean/reduction_indicesс
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2$
"layer_normalization_1/moments/meanЫ
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2,
*layer_normalization_1/moments/StopGradientэ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 21
/layer_normalization_1/moments/SquaredDifferenceО
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_1/moments/variance/reduction_indices
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2(
&layer_normalization_1/moments/variance
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_1/batchnorm/add/yъ
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2%
#layer_normalization_1/batchnorm/addЖ
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2'
%layer_normalization_1/batchnorm/Rsqrtр
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_1/batchnorm/mul/ReadVariableOpю
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization_1/batchnorm/mulП
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/mul_1с
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/mul_2д
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_1/batchnorm/ReadVariableOpъ
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization_1/batchnorm/subс
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/add_1
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџd : : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
ђ

'__inference_dense_3_layer_call_fn_86752

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_850992
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Т!
ї
@__inference_dense_layer_call_and_return_conditional_losses_86943

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisб
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisз
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџd : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
Ѓ
b
)__inference_dropout_3_layer_call_fn_86726

inputs
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_851832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ
b
)__inference_dropout_2_layer_call_fn_86679

inputs
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_852162
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Њ
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_86743

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Т!
ї
@__inference_dense_layer_call_and_return_conditional_losses_84673

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisб
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisз
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџd : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
Њ
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_85216

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ё
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_86684

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
е§

C__inference_TRNS_100_layer_call_and_return_conditional_losses_86273

inputsQ
?token_and_position_embedding_embedding_1_embedding_lookup_86092:d P
=token_and_position_embedding_embedding_embedding_lookup_86098:	ш^ h
Rtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource:  Z
Htransformer_block_multi_head_attention_query_add_readvariableop_resource: f
Ptransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource:  X
Ftransformer_block_multi_head_attention_key_add_readvariableop_resource: h
Rtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource:  Z
Htransformer_block_multi_head_attention_value_add_readvariableop_resource: s
]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:  a
Stransformer_block_multi_head_attention_attention_output_add_readvariableop_resource: Y
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource: U
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource: V
Dtransformer_block_sequential_dense_tensordot_readvariableop_resource:  P
Btransformer_block_sequential_dense_biasadd_readvariableop_resource: X
Ftransformer_block_sequential_dense_1_tensordot_readvariableop_resource:  R
Dtransformer_block_sequential_dense_1_biasadd_readvariableop_resource: [
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource: W
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:8
&dense_3_matmul_readvariableop_resource:5
'dense_3_biasadd_readvariableop_resource:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂ7token_and_position_embedding/embedding/embedding_lookupЂ9token_and_position_embedding/embedding_1/embedding_lookupЂ>transformer_block/layer_normalization/batchnorm/ReadVariableOpЂBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpЂ@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpЂDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpЂJtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpЂTtransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpЂ=transformer_block/multi_head_attention/key/add/ReadVariableOpЂGtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpЂ?transformer_block/multi_head_attention/query/add/ReadVariableOpЂItransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpЂ?transformer_block/multi_head_attention/value/add/ReadVariableOpЂItransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpЂ9transformer_block/sequential/dense/BiasAdd/ReadVariableOpЂ;transformer_block/sequential/dense/Tensordot/ReadVariableOpЂ;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpЂ=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp~
"token_and_position_embedding/ShapeShapeinputs*
T0*
_output_shapes
:2$
"token_and_position_embedding/ShapeЗ
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ22
0token_and_position_embedding/strided_slice/stackВ
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2token_and_position_embedding/strided_slice/stack_1В
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2token_and_position_embedding/strided_slice/stack_2
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*token_and_position_embedding/strided_slice
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(token_and_position_embedding/range/start
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(token_and_position_embedding/range/delta
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2$
"token_and_position_embedding/rangeО
9token_and_position_embedding/embedding_1/embedding_lookupResourceGather?token_and_position_embedding_embedding_1_embedding_lookup_86092+token_and_position_embedding/range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/86092*'
_output_shapes
:џџџџџџџџџ *
dtype02;
9token_and_position_embedding/embedding_1/embedding_lookup
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/86092*'
_output_shapes
:џџџџџџџџџ 2D
Btoken_and_position_embedding/embedding_1/embedding_lookup/Identity
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2F
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1Ћ
+token_and_position_embedding/embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџd2-
+token_and_position_embedding/embedding/CastО
7token_and_position_embedding/embedding/embedding_lookupResourceGather=token_and_position_embedding_embedding_embedding_lookup_86098/token_and_position_embedding/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*P
_classF
DBloc:@token_and_position_embedding/embedding/embedding_lookup/86098*+
_output_shapes
:џџџџџџџџџd *
dtype029
7token_and_position_embedding/embedding/embedding_lookup
@token_and_position_embedding/embedding/embedding_lookup/IdentityIdentity@token_and_position_embedding/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*P
_classF
DBloc:@token_and_position_embedding/embedding/embedding_lookup/86098*+
_output_shapes
:џџџџџџџџџd 2B
@token_and_position_embedding/embedding/embedding_lookup/Identity
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityItoken_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2D
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1
 token_and_position_embedding/addAddV2Ktoken_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2"
 token_and_position_embedding/add­
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02K
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpл
:transformer_block/multi_head_attention/query/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2<
:transformer_block/multi_head_attention/query/einsum/Einsum
?transformer_block/multi_head_attention/query/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype02A
?transformer_block/multi_head_attention/query/add/ReadVariableOpЕ
0transformer_block/multi_head_attention/query/addAddV2Ctransformer_block/multi_head_attention/query/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 22
0transformer_block/multi_head_attention/query/addЇ
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpPtransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02I
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpе
8transformer_block/multi_head_attention/key/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Otransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2:
8transformer_block/multi_head_attention/key/einsum/Einsum
=transformer_block/multi_head_attention/key/add/ReadVariableOpReadVariableOpFtransformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype02?
=transformer_block/multi_head_attention/key/add/ReadVariableOp­
.transformer_block/multi_head_attention/key/addAddV2Atransformer_block/multi_head_attention/key/einsum/Einsum:output:0Etransformer_block/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 20
.transformer_block/multi_head_attention/key/add­
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02K
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpл
:transformer_block/multi_head_attention/value/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2<
:transformer_block/multi_head_attention/value/einsum/Einsum
?transformer_block/multi_head_attention/value/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype02A
?transformer_block/multi_head_attention/value/add/ReadVariableOpЕ
0transformer_block/multi_head_attention/value/addAddV2Ctransformer_block/multi_head_attention/value/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 22
0transformer_block/multi_head_attention/value/addЁ
,transformer_block/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2.
,transformer_block/multi_head_attention/Mul/y
*transformer_block/multi_head_attention/MulMul4transformer_block/multi_head_attention/query/add:z:05transformer_block/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџd 2,
*transformer_block/multi_head_attention/MulМ
4transformer_block/multi_head_attention/einsum/EinsumEinsum2transformer_block/multi_head_attention/key/add:z:0.transformer_block/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџdd*
equationaecd,abcd->acbe26
4transformer_block/multi_head_attention/einsum/Einsumє
6transformer_block/multi_head_attention/softmax/SoftmaxSoftmax=transformer_block/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџdd28
6transformer_block/multi_head_attention/softmax/Softmaxд
6transformer_block/multi_head_attention/einsum_1/EinsumEinsum@transformer_block/multi_head_attention/softmax/Softmax:softmax:04transformer_block/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationacbe,aecd->abcd28
6transformer_block/multi_head_attention/einsum_1/EinsumЮ
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02V
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp
Etransformer_block/multi_head_attention/attention_output/einsum/EinsumEinsum?transformer_block/multi_head_attention/einsum_1/Einsum:output:0\transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџd *
equationabcd,cde->abe2G
Etransformer_block/multi_head_attention/attention_output/einsum/EinsumЈ
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpStransformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02L
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpн
;transformer_block/multi_head_attention/attention_output/addAddV2Ntransformer_block/multi_head_attention/attention_output/einsum/Einsum:output:0Rtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2=
;transformer_block/multi_head_attention/attention_output/add
'transformer_block/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2)
'transformer_block/dropout/dropout/Constў
%transformer_block/dropout/dropout/MulMul?transformer_block/multi_head_attention/attention_output/add:z:00transformer_block/dropout/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%transformer_block/dropout/dropout/MulС
'transformer_block/dropout/dropout/ShapeShape?transformer_block/multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:2)
'transformer_block/dropout/dropout/Shape
>transformer_block/dropout/dropout/random_uniform/RandomUniformRandomUniform0transformer_block/dropout/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd *
dtype02@
>transformer_block/dropout/dropout/random_uniform/RandomUniformЉ
0transformer_block/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=22
0transformer_block/dropout/dropout/GreaterEqual/yЊ
.transformer_block/dropout/dropout/GreaterEqualGreaterEqualGtransformer_block/dropout/dropout/random_uniform/RandomUniform:output:09transformer_block/dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 20
.transformer_block/dropout/dropout/GreaterEqualб
&transformer_block/dropout/dropout/CastCast2transformer_block/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџd 2(
&transformer_block/dropout/dropout/Castц
'transformer_block/dropout/dropout/Mul_1Mul)transformer_block/dropout/dropout/Mul:z:0*transformer_block/dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџd 2)
'transformer_block/dropout/dropout/Mul_1Р
transformer_block/addAddV2$token_and_position_embedding/add:z:0+transformer_block/dropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
transformer_block/addж
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2F
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesЁ
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(24
2transformer_block/layer_normalization/moments/meanћ
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2<
:transformer_block/layer_normalization/moments/StopGradient­
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2A
?transformer_block/layer_normalization/moments/SquaredDifferenceо
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block/layer_normalization/moments/variance/reduction_indicesз
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(28
6transformer_block/layer_normalization/moments/varianceГ
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н7527
5transformer_block/layer_normalization/batchnorm/add/yЊ
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd25
3transformer_block/layer_normalization/batchnorm/addц
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd27
5transformer_block/layer_normalization/batchnorm/Rsqrt
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpЎ
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 25
3transformer_block/layer_normalization/batchnorm/mulџ
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization/batchnorm/mul_1Ё
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization/batchnorm/mul_2
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02@
>transformer_block/layer_normalization/batchnorm/ReadVariableOpЊ
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 25
3transformer_block/layer_normalization/batchnorm/subЁ
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization/batchnorm/add_1џ
;transformer_block/sequential/dense/Tensordot/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02=
;transformer_block/sequential/dense/Tensordot/ReadVariableOpА
1transformer_block/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:23
1transformer_block/sequential/dense/Tensordot/axesЗ
1transformer_block/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       23
1transformer_block/sequential/dense/Tensordot/freeб
2transformer_block/sequential/dense/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:24
2transformer_block/sequential/dense/Tensordot/ShapeК
:transformer_block/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense/Tensordot/GatherV2/axis
5transformer_block/sequential/dense/Tensordot/GatherV2GatherV2;transformer_block/sequential/dense/Tensordot/Shape:output:0:transformer_block/sequential/dense/Tensordot/free:output:0Ctransformer_block/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:27
5transformer_block/sequential/dense/Tensordot/GatherV2О
<transformer_block/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense/Tensordot/GatherV2_1/axis
7transformer_block/sequential/dense/Tensordot/GatherV2_1GatherV2;transformer_block/sequential/dense/Tensordot/Shape:output:0:transformer_block/sequential/dense/Tensordot/axes:output:0Etransformer_block/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:29
7transformer_block/sequential/dense/Tensordot/GatherV2_1В
2transformer_block/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 24
2transformer_block/sequential/dense/Tensordot/Const
1transformer_block/sequential/dense/Tensordot/ProdProd>transformer_block/sequential/dense/Tensordot/GatherV2:output:0;transformer_block/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 23
1transformer_block/sequential/dense/Tensordot/ProdЖ
4transformer_block/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense/Tensordot/Const_1
3transformer_block/sequential/dense/Tensordot/Prod_1Prod@transformer_block/sequential/dense/Tensordot/GatherV2_1:output:0=transformer_block/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 25
3transformer_block/sequential/dense/Tensordot/Prod_1Ж
8transformer_block/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2:
8transformer_block/sequential/dense/Tensordot/concat/axisп
3transformer_block/sequential/dense/Tensordot/concatConcatV2:transformer_block/sequential/dense/Tensordot/free:output:0:transformer_block/sequential/dense/Tensordot/axes:output:0Atransformer_block/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:25
3transformer_block/sequential/dense/Tensordot/concat
2transformer_block/sequential/dense/Tensordot/stackPack:transformer_block/sequential/dense/Tensordot/Prod:output:0<transformer_block/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:24
2transformer_block/sequential/dense/Tensordot/stackЌ
6transformer_block/sequential/dense/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0<transformer_block/sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 28
6transformer_block/sequential/dense/Tensordot/transposeЋ
4transformer_block/sequential/dense/Tensordot/ReshapeReshape:transformer_block/sequential/dense/Tensordot/transpose:y:0;transformer_block/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ26
4transformer_block/sequential/dense/Tensordot/ReshapeЊ
3transformer_block/sequential/dense/Tensordot/MatMulMatMul=transformer_block/sequential/dense/Tensordot/Reshape:output:0Ctransformer_block/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 25
3transformer_block/sequential/dense/Tensordot/MatMulЖ
4transformer_block/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense/Tensordot/Const_2К
:transformer_block/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense/Tensordot/concat_1/axisь
5transformer_block/sequential/dense/Tensordot/concat_1ConcatV2>transformer_block/sequential/dense/Tensordot/GatherV2:output:0=transformer_block/sequential/dense/Tensordot/Const_2:output:0Ctransformer_block/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:27
5transformer_block/sequential/dense/Tensordot/concat_1
,transformer_block/sequential/dense/TensordotReshape=transformer_block/sequential/dense/Tensordot/MatMul:product:0>transformer_block/sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2.
,transformer_block/sequential/dense/Tensordotѕ
9transformer_block/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpBtransformer_block_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9transformer_block/sequential/dense/BiasAdd/ReadVariableOp
*transformer_block/sequential/dense/BiasAddBiasAdd5transformer_block/sequential/dense/Tensordot:output:0Atransformer_block/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2,
*transformer_block/sequential/dense/BiasAddХ
'transformer_block/sequential/dense/ReluRelu3transformer_block/sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2)
'transformer_block/sequential/dense/Relu
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02?
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOpД
3transformer_block/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:25
3transformer_block/sequential/dense_1/Tensordot/axesЛ
3transformer_block/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       25
3transformer_block/sequential/dense_1/Tensordot/freeб
4transformer_block/sequential/dense_1/Tensordot/ShapeShape5transformer_block/sequential/dense/Relu:activations:0*
T0*
_output_shapes
:26
4transformer_block/sequential/dense_1/Tensordot/ShapeО
<transformer_block/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense_1/Tensordot/GatherV2/axis
7transformer_block/sequential/dense_1/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_1/Tensordot/Shape:output:0<transformer_block/sequential/dense_1/Tensordot/free:output:0Etransformer_block/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:29
7transformer_block/sequential/dense_1/Tensordot/GatherV2Т
>transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis
9transformer_block/sequential/dense_1/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_1/Tensordot/Shape:output:0<transformer_block/sequential/dense_1/Tensordot/axes:output:0Gtransformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2;
9transformer_block/sequential/dense_1/Tensordot/GatherV2_1Ж
4transformer_block/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense_1/Tensordot/Const
3transformer_block/sequential/dense_1/Tensordot/ProdProd@transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 25
3transformer_block/sequential/dense_1/Tensordot/ProdК
6transformer_block/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 28
6transformer_block/sequential/dense_1/Tensordot/Const_1
5transformer_block/sequential/dense_1/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_1/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 27
5transformer_block/sequential/dense_1/Tensordot/Prod_1К
:transformer_block/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense_1/Tensordot/concat/axisщ
5transformer_block/sequential/dense_1/Tensordot/concatConcatV2<transformer_block/sequential/dense_1/Tensordot/free:output:0<transformer_block/sequential/dense_1/Tensordot/axes:output:0Ctransformer_block/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:27
5transformer_block/sequential/dense_1/Tensordot/concat 
4transformer_block/sequential/dense_1/Tensordot/stackPack<transformer_block/sequential/dense_1/Tensordot/Prod:output:0>transformer_block/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:26
4transformer_block/sequential/dense_1/Tensordot/stackЎ
8transformer_block/sequential/dense_1/Tensordot/transpose	Transpose5transformer_block/sequential/dense/Relu:activations:0>transformer_block/sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2:
8transformer_block/sequential/dense_1/Tensordot/transposeГ
6transformer_block/sequential/dense_1/Tensordot/ReshapeReshape<transformer_block/sequential/dense_1/Tensordot/transpose:y:0=transformer_block/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ28
6transformer_block/sequential/dense_1/Tensordot/ReshapeВ
5transformer_block/sequential/dense_1/Tensordot/MatMulMatMul?transformer_block/sequential/dense_1/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 27
5transformer_block/sequential/dense_1/Tensordot/MatMulК
6transformer_block/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 28
6transformer_block/sequential/dense_1/Tensordot/Const_2О
<transformer_block/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense_1/Tensordot/concat_1/axisі
7transformer_block/sequential/dense_1/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_1/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:29
7transformer_block/sequential/dense_1/Tensordot/concat_1Є
.transformer_block/sequential/dense_1/TensordotReshape?transformer_block/sequential/dense_1/Tensordot/MatMul:product:0@transformer_block/sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 20
.transformer_block/sequential/dense_1/Tensordotћ
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02=
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp
,transformer_block/sequential/dense_1/BiasAddBiasAdd7transformer_block/sequential/dense_1/Tensordot:output:0Ctransformer_block/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2.
,transformer_block/sequential/dense_1/BiasAdd
)transformer_block/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2+
)transformer_block/dropout_1/dropout/Constњ
'transformer_block/dropout_1/dropout/MulMul5transformer_block/sequential/dense_1/BiasAdd:output:02transformer_block/dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2)
'transformer_block/dropout_1/dropout/MulЛ
)transformer_block/dropout_1/dropout/ShapeShape5transformer_block/sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2+
)transformer_block/dropout_1/dropout/Shape
@transformer_block/dropout_1/dropout/random_uniform/RandomUniformRandomUniform2transformer_block/dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd *
dtype02B
@transformer_block/dropout_1/dropout/random_uniform/RandomUniform­
2transformer_block/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=24
2transformer_block/dropout_1/dropout/GreaterEqual/yВ
0transformer_block/dropout_1/dropout/GreaterEqualGreaterEqualItransformer_block/dropout_1/dropout/random_uniform/RandomUniform:output:0;transformer_block/dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 22
0transformer_block/dropout_1/dropout/GreaterEqualз
(transformer_block/dropout_1/dropout/CastCast4transformer_block/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџd 2*
(transformer_block/dropout_1/dropout/Castю
)transformer_block/dropout_1/dropout/Mul_1Mul+transformer_block/dropout_1/dropout/Mul:z:0,transformer_block/dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџd 2+
)transformer_block/dropout_1/dropout/Mul_1л
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
transformer_block/add_1к
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2H
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesЉ
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(26
4transformer_block/layer_normalization_1/moments/mean
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2>
<transformer_block/layer_normalization_1/moments/StopGradientЕ
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2C
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceт
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2L
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesп
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2:
8transformer_block/layer_normalization_1/moments/varianceЗ
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н7529
7transformer_block/layer_normalization_1/batchnorm/add/yВ
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd27
5transformer_block/layer_normalization_1/batchnorm/addь
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd29
7transformer_block/layer_normalization_1/batchnorm/Rsqrt
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02F
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpЖ
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization_1/batchnorm/mul
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 29
7transformer_block/layer_normalization_1/batchnorm/mul_1Љ
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 29
7transformer_block/layer_normalization_1/batchnorm/mul_2
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02B
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpВ
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization_1/batchnorm/subЉ
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 29
7transformer_block/layer_normalization_1/batchnorm/add_1Є
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indicesя
global_average_pooling1d/MeanMean;transformer_block/layer_normalization_1/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
global_average_pooling1d/Meanw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_2/dropout/ConstБ
dropout_2/dropout/MulMul&global_average_pooling1d/Mean:output:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dropout_2/dropout/Mul
dropout_2/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shapeв
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_2/dropout/GreaterEqual/yц
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2 
dropout_2/dropout/GreaterEqual
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ 2
dropout_2/dropout/CastЂ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dropout_2/dropout/Mul_1Ѕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAddp
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_3/dropout/ConstЅ
dropout_3/dropout/MulMuldense_2/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dropout_3/dropout/Mul|
dropout_3/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shapeв
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_3/dropout/GreaterEqual/yц
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
dropout_3/dropout/GreaterEqual
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2
dropout_3/dropout/CastЂ
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dropout_3/dropout/Mul_1Ѕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/MatMulЄ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOpЁ
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/Softmaxt
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp8^token_and_position_embedding/embedding/embedding_lookup:^token_and_position_embedding/embedding_1/embedding_lookup?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpK^transformer_block/multi_head_attention/attention_output/add/ReadVariableOpU^transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp>^transformer_block/multi_head_attention/key/add/ReadVariableOpH^transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/query/add/ReadVariableOpJ^transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/value/add/ReadVariableOpJ^transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:^transformer_block/sequential/dense/BiasAdd/ReadVariableOp<^transformer_block/sequential/dense/Tensordot/ReadVariableOp<^transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2r
7token_and_position_embedding/embedding/embedding_lookup7token_and_position_embedding/embedding/embedding_lookup2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpJtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp2Ќ
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpTtransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2~
=transformer_block/multi_head_attention/key/add/ReadVariableOp=transformer_block/multi_head_attention/key/add/ReadVariableOp2
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpGtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp2
?transformer_block/multi_head_attention/query/add/ReadVariableOp?transformer_block/multi_head_attention/query/add/ReadVariableOp2
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp2
?transformer_block/multi_head_attention/value/add/ReadVariableOp?transformer_block/multi_head_attention/value/add/ReadVariableOp2
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp2v
9transformer_block/sequential/dense/BiasAdd/ReadVariableOp9transformer_block/sequential/dense/BiasAdd/ReadVariableOp2z
;transformer_block/sequential/dense/Tensordot/ReadVariableOp;transformer_block/sequential/dense/Tensordot/ReadVariableOp2z
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ђ+
	
C__inference_TRNS_100_layer_call_and_return_conditional_losses_85706
input_14
"token_and_position_embedding_85654:d 5
"token_and_position_embedding_85656:	ш^ -
transformer_block_85659:  )
transformer_block_85661: -
transformer_block_85663:  )
transformer_block_85665: -
transformer_block_85667:  )
transformer_block_85669: -
transformer_block_85671:  %
transformer_block_85673: %
transformer_block_85675: %
transformer_block_85677: )
transformer_block_85679:  %
transformer_block_85681: )
transformer_block_85683:  %
transformer_block_85685: %
transformer_block_85687: %
transformer_block_85689: 
dense_2_85694: 
dense_2_85696:
dense_3_85700:
dense_3_85702:
identityЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ4token_and_position_embedding/StatefulPartitionedCallЂ)transformer_block/StatefulPartitionedCallџ
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1"token_and_position_embedding_85654"token_and_position_embedding_85656*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_8488326
4token_and_position_embedding/StatefulPartitionedCallј
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_85659transformer_block_85661transformer_block_85663transformer_block_85665transformer_block_85667transformer_block_85669transformer_block_85671transformer_block_85673transformer_block_85675transformer_block_85677transformer_block_85679transformer_block_85681transformer_block_85683transformer_block_85685transformer_block_85687transformer_block_85689*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_850162+
)transformer_block/StatefulPartitionedCallД
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_850552*
(global_average_pooling1d/PartitionedCall
dropout_2/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_850622
dropout_2/PartitionedCall­
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_2_85694dense_2_85696*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_850752!
dense_2/StatefulPartitionedCall§
dropout_3/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_850862
dropout_3/PartitionedCall­
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_85700dense_3_85702*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_850992!
dense_3/StatefulPartitionedCall
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityѕ
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџd
!
_user_specified_name	input_1
Шш
у
L__inference_transformer_block_layer_call_and_return_conditional_losses_86647

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_query_add_readvariableop_resource: T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:  F
4multi_head_attention_key_add_readvariableop_resource: V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_value_add_readvariableop_resource: a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:  O
Amulti_head_attention_attention_output_add_readvariableop_resource: G
9layer_normalization_batchnorm_mul_readvariableop_resource: C
5layer_normalization_batchnorm_readvariableop_resource: D
2sequential_dense_tensordot_readvariableop_resource:  >
0sequential_dense_biasadd_readvariableop_resource: F
4sequential_dense_1_tensordot_readvariableop_resource:  @
2sequential_dense_1_biasadd_readvariableop_resource: I
;layer_normalization_1_batchnorm_mul_readvariableop_resource: E
7layer_normalization_1_batchnorm_readvariableop_resource: 
identityЂ,layer_normalization/batchnorm/ReadVariableOpЂ0layer_normalization/batchnorm/mul/ReadVariableOpЂ.layer_normalization_1/batchnorm/ReadVariableOpЂ2layer_normalization_1/batchnorm/mul/ReadVariableOpЂ8multi_head_attention/attention_output/add/ReadVariableOpЂBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpЂ+multi_head_attention/key/add/ReadVariableOpЂ5multi_head_attention/key/einsum/Einsum/ReadVariableOpЂ-multi_head_attention/query/add/ReadVariableOpЂ7multi_head_attention/query/einsum/Einsum/ReadVariableOpЂ-multi_head_attention/value/add/ReadVariableOpЂ7multi_head_attention/value/einsum/Einsum/ReadVariableOpЂ'sequential/dense/BiasAdd/ReadVariableOpЂ)sequential/dense/Tensordot/ReadVariableOpЂ)sequential/dense_1/BiasAdd/ReadVariableOpЂ+sequential/dense_1/Tensordot/ReadVariableOpї
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention/query/einsum/Einsum/ReadVariableOp
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2*
(multi_head_attention/query/einsum/Einsumе
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention/query/add/ReadVariableOpэ
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2 
multi_head_attention/query/addё
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype027
5multi_head_attention/key/einsum/Einsum/ReadVariableOp
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2(
&multi_head_attention/key/einsum/EinsumЯ
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype02-
+multi_head_attention/key/add/ReadVariableOpх
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2
multi_head_attention/key/addї
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention/value/einsum/Einsum/ReadVariableOp
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2*
(multi_head_attention/value/einsum/Einsumе
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention/value/add/ReadVariableOpэ
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2 
multi_head_attention/value/add}
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2
multi_head_attention/Mul/yО
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџd 2
multi_head_attention/Mulє
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџdd*
equationaecd,abcd->acbe2$
"multi_head_attention/einsum/EinsumО
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџdd2&
$multi_head_attention/softmax/Softmax
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationacbe,aecd->abcd2&
$multi_head_attention/einsum_1/Einsum
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02D
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpЫ
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџd *
equationabcd,cde->abe25
3multi_head_attention/attention_output/einsum/Einsumђ
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02:
8multi_head_attention/attention_output/add/ReadVariableOp
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2+
)multi_head_attention/attention_output/adds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/dropout/ConstЖ
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout/dropout/Mul
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeа
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd *
dtype02.
,dropout/dropout/random_uniform/RandomUniform
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2 
dropout/dropout/GreaterEqual/yт
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout/dropout/GreaterEqual
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџd 2
dropout/dropout/Cast
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout/dropout/Mul_1l
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
addВ
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:24
2layer_normalization/moments/mean/reduction_indicesй
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2"
 layer_normalization/moments/meanХ
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2*
(layer_normalization/moments/StopGradientх
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2/
-layer_normalization/moments/SquaredDifferenceК
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:28
6layer_normalization/moments/variance/reduction_indices
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2&
$layer_normalization/moments/variance
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752%
#layer_normalization/batchnorm/add/yт
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2#
!layer_normalization/batchnorm/addА
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2%
#layer_normalization/batchnorm/Rsqrtк
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype022
0layer_normalization/batchnorm/mul/ReadVariableOpц
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2#
!layer_normalization/batchnorm/mulЗ
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/mul_1й
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/mul_2Ю
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02.
,layer_normalization/batchnorm/ReadVariableOpт
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2#
!layer_normalization/batchnorm/subй
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/add_1Щ
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02+
)sequential/dense/Tensordot/ReadVariableOp
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axes
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/free
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/Shape
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axisІ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axisЌ
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/ConstФ
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/Prod
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1Ь
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axis
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concatа
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stackф
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2&
$sequential/dense/Tensordot/transposeу
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2$
"sequential/dense/Tensordot/Reshapeт
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2#
!sequential/dense/Tensordot/MatMul
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_2
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axis
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1д
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/TensordotП
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpЫ
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/BiasAdd
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/ReluЯ
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02-
+sequential/dense_1/Tensordot/ReadVariableOp
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!sequential/dense_1/Tensordot/axes
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!sequential/dense_1/Tensordot/free
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/Shape
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/GatherV2/axisА
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/GatherV2
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential/dense_1/Tensordot/GatherV2_1/axisЖ
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential/dense_1/Tensordot/GatherV2_1
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense_1/Tensordot/ConstЬ
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!sequential/dense_1/Tensordot/Prod
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_1д
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#sequential/dense_1/Tensordot/Prod_1
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense_1/Tensordot/concat/axis
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense_1/Tensordot/concatи
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/stackц
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2(
&sequential/dense_1/Tensordot/transposeы
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2&
$sequential/dense_1/Tensordot/Reshapeъ
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2%
#sequential/dense_1/Tensordot/MatMul
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_2
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/concat_1/axis
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/concat_1м
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense_1/TensordotХ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpг
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense_1/BiasAddw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout_1/dropout/ConstВ
dropout_1/dropout/MulMul#sequential/dense_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout_1/dropout/Mul
dropout_1/dropout/ShapeShape#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeж
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџd *
dtype020
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2"
 dropout_1/dropout/GreaterEqual/yъ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2 
dropout_1/dropout/GreaterEqualЁ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:џџџџџџџџџd 2
dropout_1/dropout/CastІ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout_1/dropout/Mul_1
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
add_1Ж
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_1/moments/mean/reduction_indicesс
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2$
"layer_normalization_1/moments/meanЫ
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2,
*layer_normalization_1/moments/StopGradientэ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 21
/layer_normalization_1/moments/SquaredDifferenceО
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_1/moments/variance/reduction_indices
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2(
&layer_normalization_1/moments/variance
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_1/batchnorm/add/yъ
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2%
#layer_normalization_1/batchnorm/addЖ
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2'
%layer_normalization_1/batchnorm/Rsqrtр
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_1/batchnorm/mul/ReadVariableOpю
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization_1/batchnorm/mulП
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/mul_1с
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/mul_2д
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_1/batchnorm/ReadVariableOpъ
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization_1/batchnorm/subс
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/add_1
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџd : : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
Ц
б
#__inference_signature_wrapper_85818
input_1
unknown:d 
	unknown_0:	ш^ 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *)
f$R"
 __inference__wrapped_model_846352
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџd
!
_user_specified_name	input_1
ы
в
*__inference_sequential_layer_call_fn_84800
dense_input
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_847762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:џџџџџџџџџd 
%
_user_specified_namedense_input

ѓ
B__inference_dense_2_layer_call_and_return_conditional_losses_85075

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ѓ.
о	
C__inference_TRNS_100_layer_call_and_return_conditional_losses_85555

inputs4
"token_and_position_embedding_85503:d 5
"token_and_position_embedding_85505:	ш^ -
transformer_block_85508:  )
transformer_block_85510: -
transformer_block_85512:  )
transformer_block_85514: -
transformer_block_85516:  )
transformer_block_85518: -
transformer_block_85520:  %
transformer_block_85522: %
transformer_block_85524: %
transformer_block_85526: )
transformer_block_85528:  %
transformer_block_85530: )
transformer_block_85532:  %
transformer_block_85534: %
transformer_block_85536: %
transformer_block_85538: 
dense_2_85543: 
dense_2_85545:
dense_3_85549:
dense_3_85551:
identityЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂ4token_and_position_embedding/StatefulPartitionedCallЂ)transformer_block/StatefulPartitionedCallў
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs"token_and_position_embedding_85503"token_and_position_embedding_85505*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_8488326
4token_and_position_embedding/StatefulPartitionedCallј
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_85508transformer_block_85510transformer_block_85512transformer_block_85514transformer_block_85516transformer_block_85518transformer_block_85520transformer_block_85522transformer_block_85524transformer_block_85526transformer_block_85528transformer_block_85530transformer_block_85532transformer_block_85534transformer_block_85536transformer_block_85538*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_854042+
)transformer_block/StatefulPartitionedCallД
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_850552*
(global_average_pooling1d/PartitionedCall
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_852162#
!dropout_2/StatefulPartitionedCallЕ
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_2_85543dense_2_85545*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_850752!
dense_2/StatefulPartitionedCallЙ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_851832#
!dropout_3/StatefulPartitionedCallЕ
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_85549dense_3_85551*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_850992!
dense_3/StatefulPartitionedCall
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityН
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
щ
Ѓ
E__inference_sequential_layer_call_and_return_conditional_losses_84828
dense_input
dense_84817:  
dense_84819: 
dense_1_84822:  
dense_1_84824: 
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_84817dense_84819*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_846732
dense/StatefulPartitionedCallЕ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_84822dense_1_84824*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847092!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
+
_output_shapes
:џџџџџџџџџd 
%
_user_specified_namedense_input
ф 
љ
B__inference_dense_1_layer_call_and_return_conditional_losses_84709

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisб
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisз
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџd : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
ы
е
(__inference_TRNS_100_layer_call_fn_85867

inputs
unknown:d 
	unknown_0:	ш^ 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *L
fGRE
C__inference_TRNS_100_layer_call_and_return_conditional_losses_851062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
ё
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_86731

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ѓ
B__inference_dense_3_layer_call_and_return_conditional_losses_86763

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љз
у
L__inference_transformer_block_layer_call_and_return_conditional_losses_85016

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_query_add_readvariableop_resource: T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:  F
4multi_head_attention_key_add_readvariableop_resource: V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_value_add_readvariableop_resource: a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:  O
Amulti_head_attention_attention_output_add_readvariableop_resource: G
9layer_normalization_batchnorm_mul_readvariableop_resource: C
5layer_normalization_batchnorm_readvariableop_resource: D
2sequential_dense_tensordot_readvariableop_resource:  >
0sequential_dense_biasadd_readvariableop_resource: F
4sequential_dense_1_tensordot_readvariableop_resource:  @
2sequential_dense_1_biasadd_readvariableop_resource: I
;layer_normalization_1_batchnorm_mul_readvariableop_resource: E
7layer_normalization_1_batchnorm_readvariableop_resource: 
identityЂ,layer_normalization/batchnorm/ReadVariableOpЂ0layer_normalization/batchnorm/mul/ReadVariableOpЂ.layer_normalization_1/batchnorm/ReadVariableOpЂ2layer_normalization_1/batchnorm/mul/ReadVariableOpЂ8multi_head_attention/attention_output/add/ReadVariableOpЂBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpЂ+multi_head_attention/key/add/ReadVariableOpЂ5multi_head_attention/key/einsum/Einsum/ReadVariableOpЂ-multi_head_attention/query/add/ReadVariableOpЂ7multi_head_attention/query/einsum/Einsum/ReadVariableOpЂ-multi_head_attention/value/add/ReadVariableOpЂ7multi_head_attention/value/einsum/Einsum/ReadVariableOpЂ'sequential/dense/BiasAdd/ReadVariableOpЂ)sequential/dense/Tensordot/ReadVariableOpЂ)sequential/dense_1/BiasAdd/ReadVariableOpЂ+sequential/dense_1/Tensordot/ReadVariableOpї
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention/query/einsum/Einsum/ReadVariableOp
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2*
(multi_head_attention/query/einsum/Einsumе
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention/query/add/ReadVariableOpэ
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2 
multi_head_attention/query/addё
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype027
5multi_head_attention/key/einsum/Einsum/ReadVariableOp
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2(
&multi_head_attention/key/einsum/EinsumЯ
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype02-
+multi_head_attention/key/add/ReadVariableOpх
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2
multi_head_attention/key/addї
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention/value/einsum/Einsum/ReadVariableOp
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2*
(multi_head_attention/value/einsum/Einsumе
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention/value/add/ReadVariableOpэ
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2 
multi_head_attention/value/add}
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2
multi_head_attention/Mul/yО
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџd 2
multi_head_attention/Mulє
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџdd*
equationaecd,abcd->acbe2$
"multi_head_attention/einsum/EinsumО
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџdd2&
$multi_head_attention/softmax/SoftmaxФ
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџdd2'
%multi_head_attention/dropout/Identity
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationacbe,aecd->abcd2&
$multi_head_attention/einsum_1/Einsum
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02D
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpЫ
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџd *
equationabcd,cde->abe25
3multi_head_attention/attention_output/einsum/Einsumђ
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02:
8multi_head_attention/attention_output/add/ReadVariableOp
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2+
)multi_head_attention/attention_output/add
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout/Identityl
addAddV2inputsdropout/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
addВ
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:24
2layer_normalization/moments/mean/reduction_indicesй
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2"
 layer_normalization/moments/meanХ
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2*
(layer_normalization/moments/StopGradientх
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2/
-layer_normalization/moments/SquaredDifferenceК
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:28
6layer_normalization/moments/variance/reduction_indices
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2&
$layer_normalization/moments/variance
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752%
#layer_normalization/batchnorm/add/yт
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2#
!layer_normalization/batchnorm/addА
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2%
#layer_normalization/batchnorm/Rsqrtк
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype022
0layer_normalization/batchnorm/mul/ReadVariableOpц
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2#
!layer_normalization/batchnorm/mulЗ
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/mul_1й
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/mul_2Ю
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02.
,layer_normalization/batchnorm/ReadVariableOpт
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2#
!layer_normalization/batchnorm/subй
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/add_1Щ
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02+
)sequential/dense/Tensordot/ReadVariableOp
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axes
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/free
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/Shape
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axisІ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axisЌ
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/ConstФ
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/Prod
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1Ь
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axis
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concatа
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stackф
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2&
$sequential/dense/Tensordot/transposeу
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2$
"sequential/dense/Tensordot/Reshapeт
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2#
!sequential/dense/Tensordot/MatMul
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_2
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axis
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1д
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/TensordotП
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpЫ
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/BiasAdd
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/ReluЯ
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02-
+sequential/dense_1/Tensordot/ReadVariableOp
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!sequential/dense_1/Tensordot/axes
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!sequential/dense_1/Tensordot/free
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/Shape
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/GatherV2/axisА
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/GatherV2
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential/dense_1/Tensordot/GatherV2_1/axisЖ
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential/dense_1/Tensordot/GatherV2_1
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense_1/Tensordot/ConstЬ
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!sequential/dense_1/Tensordot/Prod
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_1д
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#sequential/dense_1/Tensordot/Prod_1
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense_1/Tensordot/concat/axis
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense_1/Tensordot/concatи
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/stackц
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2(
&sequential/dense_1/Tensordot/transposeы
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2&
$sequential/dense_1/Tensordot/Reshapeъ
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2%
#sequential/dense_1/Tensordot/MatMul
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_2
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/concat_1/axis
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/concat_1м
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense_1/TensordotХ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpг
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense_1/BiasAdd
dropout_1/IdentityIdentity#sequential/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout_1/Identity
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
add_1Ж
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_1/moments/mean/reduction_indicesс
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2$
"layer_normalization_1/moments/meanЫ
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2,
*layer_normalization_1/moments/StopGradientэ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 21
/layer_normalization_1/moments/SquaredDifferenceО
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_1/moments/variance/reduction_indices
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2(
&layer_normalization_1/moments/variance
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_1/batchnorm/add/yъ
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2%
#layer_normalization_1/batchnorm/addЖ
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2'
%layer_normalization_1/batchnorm/Rsqrtр
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_1/batchnorm/mul/ReadVariableOpю
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization_1/batchnorm/mulП
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/mul_1с
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/mul_2д
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_1/batchnorm/ReadVariableOpъ
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization_1/batchnorm/subс
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/add_1
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџd : : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
Њ
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_85183

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeД
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ=2
dropout/GreaterEqual/yО
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
м
Э
*__inference_sequential_layer_call_fn_86776

inputs
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_847162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
ё
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_85062

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ф 
љ
B__inference_dense_1_layer_call_and_return_conditional_losses_86982

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisб
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axisз
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axisА
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisН
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџd : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
ы
в
*__inference_sequential_layer_call_fn_84727
dense_input
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_847162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:џџџџџџџџџd 
%
_user_specified_namedense_input
БІ
х)
__inference__traced_save_87230
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopP
Lsavev2_token_and_position_embedding_embedding_embeddings_read_readvariableopR
Nsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopR
Nsavev2_transformer_block_multi_head_attention_query_kernel_read_readvariableopP
Lsavev2_transformer_block_multi_head_attention_query_bias_read_readvariableopP
Lsavev2_transformer_block_multi_head_attention_key_kernel_read_readvariableopN
Jsavev2_transformer_block_multi_head_attention_key_bias_read_readvariableopR
Nsavev2_transformer_block_multi_head_attention_value_kernel_read_readvariableopP
Lsavev2_transformer_block_multi_head_attention_value_bias_read_readvariableop]
Ysavev2_transformer_block_multi_head_attention_attention_output_kernel_read_readvariableop[
Wsavev2_transformer_block_multi_head_attention_attention_output_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableopJ
Fsavev2_transformer_block_layer_normalization_gamma_read_readvariableopI
Esavev2_transformer_block_layer_normalization_beta_read_readvariableopL
Hsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopK
Gsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopW
Ssavev2_adam_token_and_position_embedding_embedding_embeddings_m_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_1_embeddings_m_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_query_kernel_m_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_query_bias_m_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_key_kernel_m_read_readvariableopU
Qsavev2_adam_transformer_block_multi_head_attention_key_bias_m_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_value_kernel_m_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_value_bias_m_read_readvariableopd
`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_m_read_readvariableopb
^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopW
Ssavev2_adam_token_and_position_embedding_embedding_embeddings_v_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_1_embeddings_v_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_query_kernel_v_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_query_bias_v_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_key_kernel_v_read_readvariableopU
Qsavev2_adam_transformer_block_multi_head_attention_key_bias_v_read_readvariableopY
Usavev2_adam_transformer_block_multi_head_attention_value_kernel_v_read_readvariableopW
Ssavev2_adam_transformer_block_multi_head_attention_value_bias_v_read_readvariableopd
`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_v_read_readvariableopb
^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameц(
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*ј'
valueю'Bы'LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЃ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*­
valueЃB LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesг(
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopLsavev2_token_and_position_embedding_embedding_embeddings_read_readvariableopNsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopNsavev2_transformer_block_multi_head_attention_query_kernel_read_readvariableopLsavev2_transformer_block_multi_head_attention_query_bias_read_readvariableopLsavev2_transformer_block_multi_head_attention_key_kernel_read_readvariableopJsavev2_transformer_block_multi_head_attention_key_bias_read_readvariableopNsavev2_transformer_block_multi_head_attention_value_kernel_read_readvariableopLsavev2_transformer_block_multi_head_attention_value_bias_read_readvariableopYsavev2_transformer_block_multi_head_attention_attention_output_kernel_read_readvariableopWsavev2_transformer_block_multi_head_attention_attention_output_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopFsavev2_transformer_block_layer_normalization_gamma_read_readvariableopEsavev2_transformer_block_layer_normalization_beta_read_readvariableopHsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopGsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableopSsavev2_adam_token_and_position_embedding_embedding_embeddings_m_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_1_embeddings_m_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_query_kernel_m_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_query_bias_m_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_key_kernel_m_read_readvariableopQsavev2_adam_transformer_block_multi_head_attention_key_bias_m_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_value_kernel_m_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_value_bias_m_read_readvariableop`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_m_read_readvariableop^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopSsavev2_adam_token_and_position_embedding_embedding_embeddings_v_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_1_embeddings_v_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_query_kernel_v_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_query_bias_v_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_key_kernel_v_read_readvariableopQsavev2_adam_transformer_block_multi_head_attention_key_bias_v_read_readvariableopUsavev2_adam_transformer_block_multi_head_attention_value_kernel_v_read_readvariableopSsavev2_adam_transformer_block_multi_head_attention_value_bias_v_read_readvariableop`savev2_adam_transformer_block_multi_head_attention_attention_output_kernel_v_read_readvariableop^savev2_adam_transformer_block_multi_head_attention_attention_output_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*
_input_shapesє
ё: : :::: : : : : :	ш^ :d :  : :  : :  : :  : :  : :  : : : : : : : : : : ::::	ш^ :d :  : :  : :  : :  : :  : :  : : : : : : ::::	ш^ :d :  : :  : :  : :  : :  : :  : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	ш^ :$ 

_output_shapes

:d :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::%$!

_output_shapes
:	ш^ :$% 

_output_shapes

:d :(&$
"
_output_shapes
:  :$' 

_output_shapes

: :(($
"
_output_shapes
:  :$) 

_output_shapes

: :(*$
"
_output_shapes
:  :$+ 

_output_shapes

: :(,$
"
_output_shapes
:  : -

_output_shapes
: :$. 

_output_shapes

:  : /

_output_shapes
: :$0 

_output_shapes

:  : 1

_output_shapes
: : 2

_output_shapes
: : 3

_output_shapes
: : 4

_output_shapes
: : 5

_output_shapes
: :$6 

_output_shapes

: : 7

_output_shapes
::$8 

_output_shapes

:: 9

_output_shapes
::%:!

_output_shapes
:	ш^ :$; 

_output_shapes

:d :(<$
"
_output_shapes
:  :$= 

_output_shapes

: :(>$
"
_output_shapes
:  :$? 

_output_shapes

: :(@$
"
_output_shapes
:  :$A 

_output_shapes

: :(B$
"
_output_shapes
:  : C

_output_shapes
: :$D 

_output_shapes

:  : E

_output_shapes
: :$F 

_output_shapes

:  : G

_output_shapes
: : H

_output_shapes
: : I

_output_shapes
: : J

_output_shapes
: : K

_output_shapes
: :L

_output_shapes
: 
і.
п	
C__inference_TRNS_100_layer_call_and_return_conditional_losses_85761
input_14
"token_and_position_embedding_85709:d 5
"token_and_position_embedding_85711:	ш^ -
transformer_block_85714:  )
transformer_block_85716: -
transformer_block_85718:  )
transformer_block_85720: -
transformer_block_85722:  )
transformer_block_85724: -
transformer_block_85726:  %
transformer_block_85728: %
transformer_block_85730: %
transformer_block_85732: )
transformer_block_85734:  %
transformer_block_85736: )
transformer_block_85738:  %
transformer_block_85740: %
transformer_block_85742: %
transformer_block_85744: 
dense_2_85749: 
dense_2_85751:
dense_3_85755:
dense_3_85757:
identityЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂ4token_and_position_embedding/StatefulPartitionedCallЂ)transformer_block/StatefulPartitionedCallџ
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1"token_and_position_embedding_85709"token_and_position_embedding_85711*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_8488326
4token_and_position_embedding/StatefulPartitionedCallј
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_85714transformer_block_85716transformer_block_85718transformer_block_85720transformer_block_85722transformer_block_85724transformer_block_85726transformer_block_85728transformer_block_85730transformer_block_85732transformer_block_85734transformer_block_85736transformer_block_85738transformer_block_85740transformer_block_85742transformer_block_85744*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_854042+
)transformer_block/StatefulPartitionedCallД
(global_average_pooling1d/PartitionedCallPartitionedCall2transformer_block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_850552*
(global_average_pooling1d/PartitionedCall
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_852162#
!dropout_2/StatefulPartitionedCallЕ
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_2_85749dense_2_85751*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_850752!
dense_2/StatefulPartitionedCallЙ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_851832#
!dropout_3/StatefulPartitionedCallЕ
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_85755dense_3_85757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_850992!
dense_3/StatefulPartitionedCall
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityН
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall:P L
'
_output_shapes
:џџџџџџџџџd
!
_user_specified_name	input_1

ѓ
B__inference_dense_2_layer_call_and_return_conditional_losses_86716

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ѓг

C__inference_TRNS_100_layer_call_and_return_conditional_losses_86081

inputsQ
?token_and_position_embedding_embedding_1_embedding_lookup_85927:d P
=token_and_position_embedding_embedding_embedding_lookup_85933:	ш^ h
Rtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource:  Z
Htransformer_block_multi_head_attention_query_add_readvariableop_resource: f
Ptransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource:  X
Ftransformer_block_multi_head_attention_key_add_readvariableop_resource: h
Rtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource:  Z
Htransformer_block_multi_head_attention_value_add_readvariableop_resource: s
]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:  a
Stransformer_block_multi_head_attention_attention_output_add_readvariableop_resource: Y
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource: U
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource: V
Dtransformer_block_sequential_dense_tensordot_readvariableop_resource:  P
Btransformer_block_sequential_dense_biasadd_readvariableop_resource: X
Ftransformer_block_sequential_dense_1_tensordot_readvariableop_resource:  R
Dtransformer_block_sequential_dense_1_biasadd_readvariableop_resource: [
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource: W
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:8
&dense_3_matmul_readvariableop_resource:5
'dense_3_biasadd_readvariableop_resource:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂ7token_and_position_embedding/embedding/embedding_lookupЂ9token_and_position_embedding/embedding_1/embedding_lookupЂ>transformer_block/layer_normalization/batchnorm/ReadVariableOpЂBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpЂ@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpЂDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpЂJtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpЂTtransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpЂ=transformer_block/multi_head_attention/key/add/ReadVariableOpЂGtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpЂ?transformer_block/multi_head_attention/query/add/ReadVariableOpЂItransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpЂ?transformer_block/multi_head_attention/value/add/ReadVariableOpЂItransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpЂ9transformer_block/sequential/dense/BiasAdd/ReadVariableOpЂ;transformer_block/sequential/dense/Tensordot/ReadVariableOpЂ;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpЂ=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp~
"token_and_position_embedding/ShapeShapeinputs*
T0*
_output_shapes
:2$
"token_and_position_embedding/ShapeЗ
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ22
0token_and_position_embedding/strided_slice/stackВ
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2token_and_position_embedding/strided_slice/stack_1В
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2token_and_position_embedding/strided_slice/stack_2
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*token_and_position_embedding/strided_slice
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(token_and_position_embedding/range/start
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(token_and_position_embedding/range/delta
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2$
"token_and_position_embedding/rangeО
9token_and_position_embedding/embedding_1/embedding_lookupResourceGather?token_and_position_embedding_embedding_1_embedding_lookup_85927+token_and_position_embedding/range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/85927*'
_output_shapes
:џџџџџџџџџ *
dtype02;
9token_and_position_embedding/embedding_1/embedding_lookup
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/85927*'
_output_shapes
:џџџџџџџџџ 2D
Btoken_and_position_embedding/embedding_1/embedding_lookup/Identity
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2F
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1Ћ
+token_and_position_embedding/embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџd2-
+token_and_position_embedding/embedding/CastО
7token_and_position_embedding/embedding/embedding_lookupResourceGather=token_and_position_embedding_embedding_embedding_lookup_85933/token_and_position_embedding/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*P
_classF
DBloc:@token_and_position_embedding/embedding/embedding_lookup/85933*+
_output_shapes
:џџџџџџџџџd *
dtype029
7token_and_position_embedding/embedding/embedding_lookup
@token_and_position_embedding/embedding/embedding_lookup/IdentityIdentity@token_and_position_embedding/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*P
_classF
DBloc:@token_and_position_embedding/embedding/embedding_lookup/85933*+
_output_shapes
:џџџџџџџџџd 2B
@token_and_position_embedding/embedding/embedding_lookup/Identity
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityItoken_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2D
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1
 token_and_position_embedding/addAddV2Ktoken_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2"
 token_and_position_embedding/add­
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02K
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpл
:transformer_block/multi_head_attention/query/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2<
:transformer_block/multi_head_attention/query/einsum/Einsum
?transformer_block/multi_head_attention/query/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype02A
?transformer_block/multi_head_attention/query/add/ReadVariableOpЕ
0transformer_block/multi_head_attention/query/addAddV2Ctransformer_block/multi_head_attention/query/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 22
0transformer_block/multi_head_attention/query/addЇ
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpPtransformer_block_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02I
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpе
8transformer_block/multi_head_attention/key/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Otransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2:
8transformer_block/multi_head_attention/key/einsum/Einsum
=transformer_block/multi_head_attention/key/add/ReadVariableOpReadVariableOpFtransformer_block_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype02?
=transformer_block/multi_head_attention/key/add/ReadVariableOp­
.transformer_block/multi_head_attention/key/addAddV2Atransformer_block/multi_head_attention/key/einsum/Einsum:output:0Etransformer_block/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 20
.transformer_block/multi_head_attention/key/add­
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_block_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02K
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpл
:transformer_block/multi_head_attention/value/einsum/EinsumEinsum$token_and_position_embedding/add:z:0Qtransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2<
:transformer_block/multi_head_attention/value/einsum/Einsum
?transformer_block/multi_head_attention/value/add/ReadVariableOpReadVariableOpHtransformer_block_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype02A
?transformer_block/multi_head_attention/value/add/ReadVariableOpЕ
0transformer_block/multi_head_attention/value/addAddV2Ctransformer_block/multi_head_attention/value/einsum/Einsum:output:0Gtransformer_block/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 22
0transformer_block/multi_head_attention/value/addЁ
,transformer_block/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2.
,transformer_block/multi_head_attention/Mul/y
*transformer_block/multi_head_attention/MulMul4transformer_block/multi_head_attention/query/add:z:05transformer_block/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџd 2,
*transformer_block/multi_head_attention/MulМ
4transformer_block/multi_head_attention/einsum/EinsumEinsum2transformer_block/multi_head_attention/key/add:z:0.transformer_block/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџdd*
equationaecd,abcd->acbe26
4transformer_block/multi_head_attention/einsum/Einsumє
6transformer_block/multi_head_attention/softmax/SoftmaxSoftmax=transformer_block/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџdd28
6transformer_block/multi_head_attention/softmax/Softmaxњ
7transformer_block/multi_head_attention/dropout/IdentityIdentity@transformer_block/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџdd29
7transformer_block/multi_head_attention/dropout/Identityд
6transformer_block/multi_head_attention/einsum_1/EinsumEinsum@transformer_block/multi_head_attention/dropout/Identity:output:04transformer_block/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationacbe,aecd->abcd28
6transformer_block/multi_head_attention/einsum_1/EinsumЮ
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp]transformer_block_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02V
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp
Etransformer_block/multi_head_attention/attention_output/einsum/EinsumEinsum?transformer_block/multi_head_attention/einsum_1/Einsum:output:0\transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџd *
equationabcd,cde->abe2G
Etransformer_block/multi_head_attention/attention_output/einsum/EinsumЈ
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpStransformer_block_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02L
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpн
;transformer_block/multi_head_attention/attention_output/addAddV2Ntransformer_block/multi_head_attention/attention_output/einsum/Einsum:output:0Rtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2=
;transformer_block/multi_head_attention/attention_output/addЫ
"transformer_block/dropout/IdentityIdentity?transformer_block/multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2$
"transformer_block/dropout/IdentityР
transformer_block/addAddV2$token_and_position_embedding/add:z:0+transformer_block/dropout/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
transformer_block/addж
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2F
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesЁ
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(24
2transformer_block/layer_normalization/moments/meanћ
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2<
:transformer_block/layer_normalization/moments/StopGradient­
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2A
?transformer_block/layer_normalization/moments/SquaredDifferenceо
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block/layer_normalization/moments/variance/reduction_indicesз
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(28
6transformer_block/layer_normalization/moments/varianceГ
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н7527
5transformer_block/layer_normalization/batchnorm/add/yЊ
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd25
3transformer_block/layer_normalization/batchnorm/addц
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd27
5transformer_block/layer_normalization/batchnorm/Rsqrt
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpЎ
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 25
3transformer_block/layer_normalization/batchnorm/mulџ
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization/batchnorm/mul_1Ё
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization/batchnorm/mul_2
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02@
>transformer_block/layer_normalization/batchnorm/ReadVariableOpЊ
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 25
3transformer_block/layer_normalization/batchnorm/subЁ
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization/batchnorm/add_1џ
;transformer_block/sequential/dense/Tensordot/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02=
;transformer_block/sequential/dense/Tensordot/ReadVariableOpА
1transformer_block/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:23
1transformer_block/sequential/dense/Tensordot/axesЗ
1transformer_block/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       23
1transformer_block/sequential/dense/Tensordot/freeб
2transformer_block/sequential/dense/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:24
2transformer_block/sequential/dense/Tensordot/ShapeК
:transformer_block/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense/Tensordot/GatherV2/axis
5transformer_block/sequential/dense/Tensordot/GatherV2GatherV2;transformer_block/sequential/dense/Tensordot/Shape:output:0:transformer_block/sequential/dense/Tensordot/free:output:0Ctransformer_block/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:27
5transformer_block/sequential/dense/Tensordot/GatherV2О
<transformer_block/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense/Tensordot/GatherV2_1/axis
7transformer_block/sequential/dense/Tensordot/GatherV2_1GatherV2;transformer_block/sequential/dense/Tensordot/Shape:output:0:transformer_block/sequential/dense/Tensordot/axes:output:0Etransformer_block/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:29
7transformer_block/sequential/dense/Tensordot/GatherV2_1В
2transformer_block/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 24
2transformer_block/sequential/dense/Tensordot/Const
1transformer_block/sequential/dense/Tensordot/ProdProd>transformer_block/sequential/dense/Tensordot/GatherV2:output:0;transformer_block/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 23
1transformer_block/sequential/dense/Tensordot/ProdЖ
4transformer_block/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense/Tensordot/Const_1
3transformer_block/sequential/dense/Tensordot/Prod_1Prod@transformer_block/sequential/dense/Tensordot/GatherV2_1:output:0=transformer_block/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 25
3transformer_block/sequential/dense/Tensordot/Prod_1Ж
8transformer_block/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2:
8transformer_block/sequential/dense/Tensordot/concat/axisп
3transformer_block/sequential/dense/Tensordot/concatConcatV2:transformer_block/sequential/dense/Tensordot/free:output:0:transformer_block/sequential/dense/Tensordot/axes:output:0Atransformer_block/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:25
3transformer_block/sequential/dense/Tensordot/concat
2transformer_block/sequential/dense/Tensordot/stackPack:transformer_block/sequential/dense/Tensordot/Prod:output:0<transformer_block/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:24
2transformer_block/sequential/dense/Tensordot/stackЌ
6transformer_block/sequential/dense/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0<transformer_block/sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 28
6transformer_block/sequential/dense/Tensordot/transposeЋ
4transformer_block/sequential/dense/Tensordot/ReshapeReshape:transformer_block/sequential/dense/Tensordot/transpose:y:0;transformer_block/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ26
4transformer_block/sequential/dense/Tensordot/ReshapeЊ
3transformer_block/sequential/dense/Tensordot/MatMulMatMul=transformer_block/sequential/dense/Tensordot/Reshape:output:0Ctransformer_block/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 25
3transformer_block/sequential/dense/Tensordot/MatMulЖ
4transformer_block/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense/Tensordot/Const_2К
:transformer_block/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense/Tensordot/concat_1/axisь
5transformer_block/sequential/dense/Tensordot/concat_1ConcatV2>transformer_block/sequential/dense/Tensordot/GatherV2:output:0=transformer_block/sequential/dense/Tensordot/Const_2:output:0Ctransformer_block/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:27
5transformer_block/sequential/dense/Tensordot/concat_1
,transformer_block/sequential/dense/TensordotReshape=transformer_block/sequential/dense/Tensordot/MatMul:product:0>transformer_block/sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2.
,transformer_block/sequential/dense/Tensordotѕ
9transformer_block/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpBtransformer_block_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9transformer_block/sequential/dense/BiasAdd/ReadVariableOp
*transformer_block/sequential/dense/BiasAddBiasAdd5transformer_block/sequential/dense/Tensordot:output:0Atransformer_block/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2,
*transformer_block/sequential/dense/BiasAddХ
'transformer_block/sequential/dense/ReluRelu3transformer_block/sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2)
'transformer_block/sequential/dense/Relu
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02?
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOpД
3transformer_block/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:25
3transformer_block/sequential/dense_1/Tensordot/axesЛ
3transformer_block/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       25
3transformer_block/sequential/dense_1/Tensordot/freeб
4transformer_block/sequential/dense_1/Tensordot/ShapeShape5transformer_block/sequential/dense/Relu:activations:0*
T0*
_output_shapes
:26
4transformer_block/sequential/dense_1/Tensordot/ShapeО
<transformer_block/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense_1/Tensordot/GatherV2/axis
7transformer_block/sequential/dense_1/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_1/Tensordot/Shape:output:0<transformer_block/sequential/dense_1/Tensordot/free:output:0Etransformer_block/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:29
7transformer_block/sequential/dense_1/Tensordot/GatherV2Т
>transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis
9transformer_block/sequential/dense_1/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_1/Tensordot/Shape:output:0<transformer_block/sequential/dense_1/Tensordot/axes:output:0Gtransformer_block/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2;
9transformer_block/sequential/dense_1/Tensordot/GatherV2_1Ж
4transformer_block/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 26
4transformer_block/sequential/dense_1/Tensordot/Const
3transformer_block/sequential/dense_1/Tensordot/ProdProd@transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 25
3transformer_block/sequential/dense_1/Tensordot/ProdК
6transformer_block/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 28
6transformer_block/sequential/dense_1/Tensordot/Const_1
5transformer_block/sequential/dense_1/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_1/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 27
5transformer_block/sequential/dense_1/Tensordot/Prod_1К
:transformer_block/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2<
:transformer_block/sequential/dense_1/Tensordot/concat/axisщ
5transformer_block/sequential/dense_1/Tensordot/concatConcatV2<transformer_block/sequential/dense_1/Tensordot/free:output:0<transformer_block/sequential/dense_1/Tensordot/axes:output:0Ctransformer_block/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:27
5transformer_block/sequential/dense_1/Tensordot/concat 
4transformer_block/sequential/dense_1/Tensordot/stackPack<transformer_block/sequential/dense_1/Tensordot/Prod:output:0>transformer_block/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:26
4transformer_block/sequential/dense_1/Tensordot/stackЎ
8transformer_block/sequential/dense_1/Tensordot/transpose	Transpose5transformer_block/sequential/dense/Relu:activations:0>transformer_block/sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2:
8transformer_block/sequential/dense_1/Tensordot/transposeГ
6transformer_block/sequential/dense_1/Tensordot/ReshapeReshape<transformer_block/sequential/dense_1/Tensordot/transpose:y:0=transformer_block/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ28
6transformer_block/sequential/dense_1/Tensordot/ReshapeВ
5transformer_block/sequential/dense_1/Tensordot/MatMulMatMul?transformer_block/sequential/dense_1/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 27
5transformer_block/sequential/dense_1/Tensordot/MatMulК
6transformer_block/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 28
6transformer_block/sequential/dense_1/Tensordot/Const_2О
<transformer_block/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2>
<transformer_block/sequential/dense_1/Tensordot/concat_1/axisі
7transformer_block/sequential/dense_1/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_1/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_1/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:29
7transformer_block/sequential/dense_1/Tensordot/concat_1Є
.transformer_block/sequential/dense_1/TensordotReshape?transformer_block/sequential/dense_1/Tensordot/MatMul:product:0@transformer_block/sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 20
.transformer_block/sequential/dense_1/Tensordotћ
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02=
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp
,transformer_block/sequential/dense_1/BiasAddBiasAdd7transformer_block/sequential/dense_1/Tensordot:output:0Ctransformer_block/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2.
,transformer_block/sequential/dense_1/BiasAddХ
$transformer_block/dropout_1/IdentityIdentity5transformer_block/sequential/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2&
$transformer_block/dropout_1/Identityл
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_1/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
transformer_block/add_1к
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2H
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesЉ
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(26
4transformer_block/layer_normalization_1/moments/mean
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2>
<transformer_block/layer_normalization_1/moments/StopGradientЕ
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2C
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceт
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2L
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesп
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2:
8transformer_block/layer_normalization_1/moments/varianceЗ
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н7529
7transformer_block/layer_normalization_1/batchnorm/add/yВ
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd27
5transformer_block/layer_normalization_1/batchnorm/addь
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd29
7transformer_block/layer_normalization_1/batchnorm/Rsqrt
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02F
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpЖ
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization_1/batchnorm/mul
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 29
7transformer_block/layer_normalization_1/batchnorm/mul_1Љ
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 29
7transformer_block/layer_normalization_1/batchnorm/mul_2
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02B
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpВ
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 27
5transformer_block/layer_normalization_1/batchnorm/subЉ
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 29
7transformer_block/layer_normalization_1/batchnorm/add_1Є
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indicesя
global_average_pooling1d/MeanMean;transformer_block/layer_normalization_1/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
global_average_pooling1d/Mean
dropout_2/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dropout_2/IdentityЅ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMuldropout_2/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAddp
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/Relu
dropout_3/IdentityIdentitydense_2/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dropout_3/IdentityЅ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_3/MatMul/ReadVariableOp 
dense_3/MatMulMatMuldropout_3/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/MatMulЄ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOpЁ
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/Softmaxt
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp8^token_and_position_embedding/embedding/embedding_lookup:^token_and_position_embedding/embedding_1/embedding_lookup?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpK^transformer_block/multi_head_attention/attention_output/add/ReadVariableOpU^transformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp>^transformer_block/multi_head_attention/key/add/ReadVariableOpH^transformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/query/add/ReadVariableOpJ^transformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp@^transformer_block/multi_head_attention/value/add/ReadVariableOpJ^transformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp:^transformer_block/sequential/dense/BiasAdd/ReadVariableOp<^transformer_block/sequential/dense/Tensordot/ReadVariableOp<^transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2r
7token_and_position_embedding/embedding/embedding_lookup7token_and_position_embedding/embedding/embedding_lookup2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2
Jtransformer_block/multi_head_attention/attention_output/add/ReadVariableOpJtransformer_block/multi_head_attention/attention_output/add/ReadVariableOp2Ќ
Ttransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpTtransformer_block/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2~
=transformer_block/multi_head_attention/key/add/ReadVariableOp=transformer_block/multi_head_attention/key/add/ReadVariableOp2
Gtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOpGtransformer_block/multi_head_attention/key/einsum/Einsum/ReadVariableOp2
?transformer_block/multi_head_attention/query/add/ReadVariableOp?transformer_block/multi_head_attention/query/add/ReadVariableOp2
Itransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/query/einsum/Einsum/ReadVariableOp2
?transformer_block/multi_head_attention/value/add/ReadVariableOp?transformer_block/multi_head_attention/value/add/ReadVariableOp2
Itransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOpItransformer_block/multi_head_attention/value/einsum/Einsum/ReadVariableOp2v
9transformer_block/sequential/dense/BiasAdd/ReadVariableOp9transformer_block/sequential/dense/BiasAdd/ReadVariableOp2z
;transformer_block/sequential/dense/Tensordot/ReadVariableOp;transformer_block/sequential/dense/Tensordot/ReadVariableOp2z
;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_1/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp=transformer_block/sequential/dense_1/Tensordot/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
УH
Ь
E__inference_sequential_layer_call_and_return_conditional_losses_86903

inputs9
'dense_tensordot_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: ;
)dense_1_tensordot_readvariableop_resource:  5
'dense_1_biasadd_readvariableop_resource: 
identityЂdense/BiasAdd/ReadVariableOpЂdense/Tensordot/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂ dense_1/Tensordot/ReadVariableOpЈ
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freed
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense/Tensordot/Shape
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axisя
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axisѕ
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axisЮ
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concatЄ
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stackЂ
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense/Tensordot/transposeЗ
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
dense/Tensordot/ReshapeЖ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_2
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axisл
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1Ј
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense/Tensordot
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense/BiasAddn

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2

dense/ReluЎ
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freez
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axisљ
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axisџ
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1Ј
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axisи
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concatЌ
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stackК
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense_1/Tensordot/transposeП
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
dense_1/Tensordot/ReshapeО
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_1/Tensordot/MatMul
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_2
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axisх
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1А
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense_1/TensordotЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_1/BiasAdd/ReadVariableOpЇ
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense_1/BiasAddw
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityв
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs

Б
1__inference_transformer_block_layer_call_fn_86343

inputs
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:  

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 
identityЂStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_850162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџd : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
С
E
)__inference_dropout_3_layer_call_fn_86721

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_850862
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
УH
Ь
E__inference_sequential_layer_call_and_return_conditional_losses_86846

inputs9
'dense_tensordot_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: ;
)dense_1_tensordot_readvariableop_resource:  5
'dense_1_biasadd_readvariableop_resource: 
identityЂdense/BiasAdd/ReadVariableOpЂdense/Tensordot/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂ dense_1/Tensordot/ReadVariableOpЈ
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freed
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense/Tensordot/Shape
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axisя
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axisѕ
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axisЮ
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concatЄ
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stackЂ
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense/Tensordot/transposeЗ
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
dense/Tensordot/ReshapeЖ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense/Tensordot/MatMul|
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_2
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axisл
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1Ј
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense/Tensordot
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense/BiasAddn

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2

dense/ReluЎ
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freez
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axisљ
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axisџ
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1Ј
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axisи
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concatЌ
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stackК
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense_1/Tensordot/transposeП
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2
dense_1/Tensordot/ReshapeО
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
dense_1/Tensordot/MatMul
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_2
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axisх
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1А
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense_1/TensordotЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_1/BiasAdd/ReadVariableOpЇ
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dense_1/BiasAddw
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityв
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs

Б
1__inference_transformer_block_layer_call_fn_86380

inputs
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9:  

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 
identityЂStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_854042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџd : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
ђ

'__inference_dense_2_layer_call_fn_86705

inputs
unknown: 
	unknown_0:
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_850752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

ѓ
B__inference_dense_3_layer_call_and_return_conditional_losses_85099

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_85055

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd :S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
г

W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_86306
x4
"embedding_1_embedding_lookup_86293:d 3
 embedding_embedding_lookup_86299:	ш^ 
identityЂembedding/embedding_lookupЂembedding_1/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2
range­
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_86293range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/86293*'
_output_shapes
:џџџџџџџџџ *
dtype02
embedding_1/embedding_lookup
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/86293*'
_output_shapes
:џџџџџџџџџ 2'
%embedding_1/embedding_lookup/IdentityР
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2)
'embedding_1/embedding_lookup/Identity_1l
embedding/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџd2
embedding/Cast­
embedding/embedding_lookupResourceGather embedding_embedding_lookup_86299embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/86299*+
_output_shapes
:џџџџџџџџџd *
dtype02
embedding/embedding_lookup
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/86299*+
_output_shapes
:џџџџџџџџџd 2%
#embedding/embedding_lookup/IdentityО
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%embedding/embedding_lookup/Identity_1Ћ
addAddV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
addf
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:J F
'
_output_shapes
:џџџџџџџџџd

_user_specified_namex
щ
Ѓ
E__inference_sequential_layer_call_and_return_conditional_losses_84814
dense_input
dense_84803:  
dense_84805: 
dense_1_84808:  
dense_1_84810: 
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_84803dense_84805*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_846732
dense/StatefulPartitionedCallЕ
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_84808dense_1_84810*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_847092!
dense_1/StatefulPartitionedCall
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџd : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
+
_output_shapes
:џџџџџџџџџd 
%
_user_specified_namedense_input
Љз
у
L__inference_transformer_block_layer_call_and_return_conditional_losses_86507

inputsV
@multi_head_attention_query_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_query_add_readvariableop_resource: T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:  F
4multi_head_attention_key_add_readvariableop_resource: V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_value_add_readvariableop_resource: a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:  O
Amulti_head_attention_attention_output_add_readvariableop_resource: G
9layer_normalization_batchnorm_mul_readvariableop_resource: C
5layer_normalization_batchnorm_readvariableop_resource: D
2sequential_dense_tensordot_readvariableop_resource:  >
0sequential_dense_biasadd_readvariableop_resource: F
4sequential_dense_1_tensordot_readvariableop_resource:  @
2sequential_dense_1_biasadd_readvariableop_resource: I
;layer_normalization_1_batchnorm_mul_readvariableop_resource: E
7layer_normalization_1_batchnorm_readvariableop_resource: 
identityЂ,layer_normalization/batchnorm/ReadVariableOpЂ0layer_normalization/batchnorm/mul/ReadVariableOpЂ.layer_normalization_1/batchnorm/ReadVariableOpЂ2layer_normalization_1/batchnorm/mul/ReadVariableOpЂ8multi_head_attention/attention_output/add/ReadVariableOpЂBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpЂ+multi_head_attention/key/add/ReadVariableOpЂ5multi_head_attention/key/einsum/Einsum/ReadVariableOpЂ-multi_head_attention/query/add/ReadVariableOpЂ7multi_head_attention/query/einsum/Einsum/ReadVariableOpЂ-multi_head_attention/value/add/ReadVariableOpЂ7multi_head_attention/value/einsum/Einsum/ReadVariableOpЂ'sequential/dense/BiasAdd/ReadVariableOpЂ)sequential/dense/Tensordot/ReadVariableOpЂ)sequential/dense_1/BiasAdd/ReadVariableOpЂ+sequential/dense_1/Tensordot/ReadVariableOpї
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention/query/einsum/Einsum/ReadVariableOp
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2*
(multi_head_attention/query/einsum/Einsumе
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention/query/add/ReadVariableOpэ
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2 
multi_head_attention/query/addё
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype027
5multi_head_attention/key/einsum/Einsum/ReadVariableOp
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2(
&multi_head_attention/key/einsum/EinsumЯ
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype02-
+multi_head_attention/key/add/ReadVariableOpх
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2
multi_head_attention/key/addї
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention/value/einsum/Einsum/ReadVariableOp
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationabc,cde->abde2*
(multi_head_attention/value/einsum/Einsumе
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention/value/add/ReadVariableOpэ
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџd 2 
multi_head_attention/value/add}
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>2
multi_head_attention/Mul/yО
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџd 2
multi_head_attention/Mulє
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџdd*
equationaecd,abcd->acbe2$
"multi_head_attention/einsum/EinsumО
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:џџџџџџџџџdd2&
$multi_head_attention/softmax/SoftmaxФ
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:џџџџџџџџџdd2'
%multi_head_attention/dropout/Identity
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:џџџџџџџџџd *
equationacbe,aecd->abcd2&
$multi_head_attention/einsum_1/Einsum
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02D
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpЫ
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:џџџџџџџџџd *
equationabcd,cde->abe25
3multi_head_attention/attention_output/einsum/Einsumђ
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02:
8multi_head_attention/attention_output/add/ReadVariableOp
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2+
)multi_head_attention/attention_output/add
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout/Identityl
addAddV2inputsdropout/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
addВ
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:24
2layer_normalization/moments/mean/reduction_indicesй
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2"
 layer_normalization/moments/meanХ
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2*
(layer_normalization/moments/StopGradientх
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2/
-layer_normalization/moments/SquaredDifferenceК
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:28
6layer_normalization/moments/variance/reduction_indices
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2&
$layer_normalization/moments/variance
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752%
#layer_normalization/batchnorm/add/yт
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2#
!layer_normalization/batchnorm/addА
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2%
#layer_normalization/batchnorm/Rsqrtк
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype022
0layer_normalization/batchnorm/mul/ReadVariableOpц
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2#
!layer_normalization/batchnorm/mulЗ
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/mul_1й
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/mul_2Ю
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02.
,layer_normalization/batchnorm/ReadVariableOpт
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2#
!layer_normalization/batchnorm/subй
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization/batchnorm/add_1Щ
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02+
)sequential/dense/Tensordot/ReadVariableOp
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axes
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/free
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/Shape
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axisІ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axisЌ
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/ConstФ
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/Prod
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1Ь
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axis
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concatа
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stackф
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2&
$sequential/dense/Tensordot/transposeу
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2$
"sequential/dense/Tensordot/Reshapeт
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2#
!sequential/dense/Tensordot/MatMul
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_2
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axis
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1д
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/TensordotП
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpЫ
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/BiasAdd
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense/ReluЯ
+sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02-
+sequential/dense_1/Tensordot/ReadVariableOp
!sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2#
!sequential/dense_1/Tensordot/axes
!sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2#
!sequential/dense_1/Tensordot/free
"sequential/dense_1/Tensordot/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/Shape
*sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/GatherV2/axisА
%sequential/dense_1/Tensordot/GatherV2GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/free:output:03sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/GatherV2
,sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential/dense_1/Tensordot/GatherV2_1/axisЖ
'sequential/dense_1/Tensordot/GatherV2_1GatherV2+sequential/dense_1/Tensordot/Shape:output:0*sequential/dense_1/Tensordot/axes:output:05sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential/dense_1/Tensordot/GatherV2_1
"sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense_1/Tensordot/ConstЬ
!sequential/dense_1/Tensordot/ProdProd.sequential/dense_1/Tensordot/GatherV2:output:0+sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2#
!sequential/dense_1/Tensordot/Prod
$sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_1д
#sequential/dense_1/Tensordot/Prod_1Prod0sequential/dense_1/Tensordot/GatherV2_1:output:0-sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2%
#sequential/dense_1/Tensordot/Prod_1
(sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense_1/Tensordot/concat/axis
#sequential/dense_1/Tensordot/concatConcatV2*sequential/dense_1/Tensordot/free:output:0*sequential/dense_1/Tensordot/axes:output:01sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense_1/Tensordot/concatи
"sequential/dense_1/Tensordot/stackPack*sequential/dense_1/Tensordot/Prod:output:0,sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/dense_1/Tensordot/stackц
&sequential/dense_1/Tensordot/transpose	Transpose#sequential/dense/Relu:activations:0,sequential/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2(
&sequential/dense_1/Tensordot/transposeы
$sequential/dense_1/Tensordot/ReshapeReshape*sequential/dense_1/Tensordot/transpose:y:0+sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ2&
$sequential/dense_1/Tensordot/Reshapeъ
#sequential/dense_1/Tensordot/MatMulMatMul-sequential/dense_1/Tensordot/Reshape:output:03sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 2%
#sequential/dense_1/Tensordot/MatMul
$sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential/dense_1/Tensordot/Const_2
*sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense_1/Tensordot/concat_1/axis
%sequential/dense_1/Tensordot/concat_1ConcatV2.sequential/dense_1/Tensordot/GatherV2:output:0-sequential/dense_1/Tensordot/Const_2:output:03sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential/dense_1/Tensordot/concat_1м
sequential/dense_1/TensordotReshape-sequential/dense_1/Tensordot/MatMul:product:0.sequential/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense_1/TensordotХ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpг
sequential/dense_1/BiasAddBiasAdd%sequential/dense_1/Tensordot:output:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
sequential/dense_1/BiasAdd
dropout_1/IdentityIdentity#sequential/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
dropout_1/Identity
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
add_1Ж
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_1/moments/mean/reduction_indicesс
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2$
"layer_normalization_1/moments/meanЫ
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2,
*layer_normalization_1/moments/StopGradientэ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 21
/layer_normalization_1/moments/SquaredDifferenceО
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_1/moments/variance/reduction_indices
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:џџџџџџџџџd*
	keep_dims(2(
&layer_normalization_1/moments/variance
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н752'
%layer_normalization_1/batchnorm/add/yъ
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџd2%
#layer_normalization_1/batchnorm/addЖ
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:џџџџџџџџџd2'
%layer_normalization_1/batchnorm/Rsqrtр
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_1/batchnorm/mul/ReadVariableOpю
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization_1/batchnorm/mulП
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/mul_1с
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/mul_2д
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_1/batchnorm/ReadVariableOpъ
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2%
#layer_normalization_1/batchnorm/subс
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%layer_normalization_1/batchnorm/add_1
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:џџџџџџџџџd : : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/Tensordot/ReadVariableOp+sequential/dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs
ы
е
(__inference_TRNS_100_layer_call_fn_85916

inputs
unknown:d 
	unknown_0:	ш^ 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13:  

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18:

unknown_19:

unknown_20:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *L
fGRE
C__inference_TRNS_100_layer_call_and_return_conditional_losses_855552
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџd: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџd
 
_user_specified_nameinputs
г

W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_84883
x4
"embedding_1_embedding_lookup_84870:d 3
 embedding_embedding_lookup_84876:	ш^ 
identityЂembedding/embedding_lookupЂembedding_1/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2
range­
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_84870range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/84870*'
_output_shapes
:џџџџџџџџџ *
dtype02
embedding_1/embedding_lookup
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/84870*'
_output_shapes
:џџџџџџџџџ 2'
%embedding_1/embedding_lookup/IdentityР
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 2)
'embedding_1/embedding_lookup/Identity_1l
embedding/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџd2
embedding/Cast­
embedding/embedding_lookupResourceGather embedding_embedding_lookup_84876embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/84876*+
_output_shapes
:џџџџџџџџџd *
dtype02
embedding/embedding_lookup
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/84876*+
_output_shapes
:џџџџџџџџџd 2%
#embedding/embedding_lookup/IdentityО
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2'
%embedding/embedding_lookup/Identity_1Ћ
addAddV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџd 2
addf
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identity
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџd: : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:J F
'
_output_shapes
:џџџџџџџџџd

_user_specified_namex
ў

%__inference_dense_layer_call_fn_86912

inputs
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџd *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_846732
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџd 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџd : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџd 
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Њ
serving_default
;
input_10
serving_default_input_1:0џџџџџџџџџd;
dense_30
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:жн
Ж
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
Я_default_save_signature
а__call__
+б&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
У
	token_emb
pos_emb
trainable_variables
regularization_losses
	variables
	keras_api
в__call__
+г&call_and_return_all_conditional_losses"
_tf_keras_layer
ѕ
att
ffn

layernorm1

layernorm2
dropout1
dropout2
trainable_variables
regularization_losses
	variables
	keras_api
д__call__
+е&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
trainable_variables
 regularization_losses
!	variables
"	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
#trainable_variables
$regularization_losses
%	variables
&	keras_api
и__call__
+й&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

'kernel
(bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
к__call__
+л&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
-trainable_variables
.regularization_losses
/	variables
0	keras_api
м__call__
+н&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

1kernel
2bias
3trainable_variables
4regularization_losses
5	variables
6	keras_api
о__call__
+п&call_and_return_all_conditional_losses"
_tf_keras_layer

7iter

8beta_1

9beta_2
	:decay
;learning_rate'mЃ(mЄ1mЅ2mІ<mЇ=mЈ>mЉ?mЊ@mЋAmЌBm­CmЎDmЏEmАFmБGmВHmГImДJmЕKmЖLmЗMmИ'vЙ(vК1vЛ2vМ<vН=vО>vП?vР@vСAvТBvУCvФDvХEvЦFvЧGvШHvЩIvЪJvЫKvЬLvЭMvЮ"
	optimizer
Ц
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221"
trackable_list_wrapper
 "
trackable_list_wrapper
Ц
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221"
trackable_list_wrapper
Ю
Nnon_trainable_variables
Olayer_regularization_losses

trainable_variables

Players
Qmetrics
regularization_losses
Rlayer_metrics
	variables
а__call__
Я_default_save_signature
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
-
рserving_default"
signature_map
З
<
embeddings
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
с__call__
+т&call_and_return_all_conditional_losses"
_tf_keras_layer
З
=
embeddings
Wtrainable_variables
Xregularization_losses
Y	variables
Z	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"
_tf_keras_layer
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
А
[non_trainable_variables
\layer_regularization_losses

]layers
trainable_variables
^metrics
regularization_losses
_layer_metrics
	variables
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object

`_query_dense
a
_key_dense
b_value_dense
c_softmax
d_dropout_layer
e_output_dense
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
х__call__
+ц&call_and_return_all_conditional_losses"
_tf_keras_layer
њ
jlayer_with_weights-0
jlayer-0
klayer_with_weights-1
klayer-1
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ц
paxis
	Jgamma
Kbeta
qtrainable_variables
rregularization_losses
s	variables
t	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
uaxis
	Lgamma
Mbeta
vtrainable_variables
wregularization_losses
x	variables
y	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
э__call__
+ю&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
~trainable_variables
regularization_losses
	variables
	keras_api
я__call__
+№&call_and_return_all_conditional_losses"
_tf_keras_layer

>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
 "
trackable_list_wrapper

>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
Е
non_trainable_variables
 layer_regularization_losses
layers
trainable_variables
metrics
regularization_losses
layer_metrics
	variables
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
 layer_regularization_losses
layers
trainable_variables
metrics
 regularization_losses
layer_metrics
!	variables
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
 layer_regularization_losses
layers
#trainable_variables
metrics
$regularization_losses
layer_metrics
%	variables
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_2/kernel
:2dense_2/bias
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
Е
non_trainable_variables
 layer_regularization_losses
layers
)trainable_variables
metrics
*regularization_losses
layer_metrics
+	variables
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
 layer_regularization_losses
layers
-trainable_variables
metrics
.regularization_losses
layer_metrics
/	variables
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
 :2dense_3/kernel
:2dense_3/bias
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
Е
non_trainable_variables
 layer_regularization_losses
layers
3trainable_variables
metrics
4regularization_losses
layer_metrics
5	variables
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
D:B	ш^ 21token_and_position_embedding/embedding/embeddings
E:Cd 23token_and_position_embedding/embedding_1/embeddings
I:G  23transformer_block/multi_head_attention/query/kernel
C:A 21transformer_block/multi_head_attention/query/bias
G:E  21transformer_block/multi_head_attention/key/kernel
A:? 2/transformer_block/multi_head_attention/key/bias
I:G  23transformer_block/multi_head_attention/value/kernel
C:A 21transformer_block/multi_head_attention/value/bias
T:R  2>transformer_block/multi_head_attention/attention_output/kernel
J:H 2<transformer_block/multi_head_attention/attention_output/bias
:  2dense/kernel
: 2
dense/bias
 :  2dense_1/kernel
: 2dense_1/bias
9:7 2+transformer_block/layer_normalization/gamma
8:6 2*transformer_block/layer_normalization/beta
;:9 2-transformer_block/layer_normalization_1/gamma
::8 2,transformer_block/layer_normalization_1/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
 0
Ё1"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
<0"
trackable_list_wrapper
Е
Ђnon_trainable_variables
 Ѓlayer_regularization_losses
Єlayers
Strainable_variables
Ѕmetrics
Tregularization_losses
Іlayer_metrics
U	variables
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
Е
Їnon_trainable_variables
 Јlayer_regularization_losses
Љlayers
Wtrainable_variables
Њmetrics
Xregularization_losses
Ћlayer_metrics
Y	variables
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
є
Ќpartial_output_shape
­full_output_shape

>kernel
?bias
Ўtrainable_variables
Џregularization_losses
А	variables
Б	keras_api
ё__call__
+ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
є
Вpartial_output_shape
Гfull_output_shape

@kernel
Abias
Дtrainable_variables
Еregularization_losses
Ж	variables
З	keras_api
ѓ__call__
+є&call_and_return_all_conditional_losses"
_tf_keras_layer
є
Иpartial_output_shape
Йfull_output_shape

Bkernel
Cbias
Кtrainable_variables
Лregularization_losses
М	variables
Н	keras_api
ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
Оtrainable_variables
Пregularization_losses
Р	variables
С	keras_api
ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
Тtrainable_variables
Уregularization_losses
Ф	variables
Х	keras_api
љ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_layer
є
Цpartial_output_shape
Чfull_output_shape

Dkernel
Ebias
Шtrainable_variables
Щregularization_losses
Ъ	variables
Ы	keras_api
ћ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
Е
Ьnon_trainable_variables
 Эlayer_regularization_losses
Юlayers
ftrainable_variables
Яmetrics
gregularization_losses
аlayer_metrics
h	variables
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
С

Fkernel
Gbias
бtrainable_variables
вregularization_losses
г	variables
д	keras_api
§__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
С

Hkernel
Ibias
еtrainable_variables
жregularization_losses
з	variables
и	keras_api
џ__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
<
F0
G1
H2
I3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
F0
G1
H2
I3"
trackable_list_wrapper
Е
йnon_trainable_variables
 кlayer_regularization_losses
ltrainable_variables
лlayers
мmetrics
mregularization_losses
нlayer_metrics
n	variables
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
Е
оnon_trainable_variables
 пlayer_regularization_losses
рlayers
qtrainable_variables
сmetrics
rregularization_losses
тlayer_metrics
s	variables
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
Е
уnon_trainable_variables
 фlayer_regularization_losses
хlayers
vtrainable_variables
цmetrics
wregularization_losses
чlayer_metrics
x	variables
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
шnon_trainable_variables
 щlayer_regularization_losses
ъlayers
ztrainable_variables
ыmetrics
{regularization_losses
ьlayer_metrics
|	variables
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ж
эnon_trainable_variables
 юlayer_regularization_losses
яlayers
~trainable_variables
№metrics
regularization_losses
ёlayer_metrics
	variables
я__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

ђtotal

ѓcount
є	variables
ѕ	keras_api"
_tf_keras_metric
c

іtotal

їcount
ј
_fn_kwargs
љ	variables
њ	keras_api"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
И
ћnon_trainable_variables
 ќlayer_regularization_losses
§layers
Ўtrainable_variables
ўmetrics
Џregularization_losses
џlayer_metrics
А	variables
ё__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
И
non_trainable_variables
 layer_regularization_losses
layers
Дtrainable_variables
metrics
Еregularization_losses
layer_metrics
Ж	variables
ѓ__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
И
non_trainable_variables
 layer_regularization_losses
layers
Кtrainable_variables
metrics
Лregularization_losses
layer_metrics
М	variables
ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
 layer_regularization_losses
layers
Оtrainable_variables
metrics
Пregularization_losses
layer_metrics
Р	variables
ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
 layer_regularization_losses
layers
Тtrainable_variables
metrics
Уregularization_losses
layer_metrics
Ф	variables
љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
И
non_trainable_variables
 layer_regularization_losses
layers
Шtrainable_variables
metrics
Щregularization_losses
layer_metrics
Ъ	variables
ћ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
`0
a1
b2
c3
d4
e5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
И
non_trainable_variables
 layer_regularization_losses
layers
бtrainable_variables
metrics
вregularization_losses
layer_metrics
г	variables
§__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
И
non_trainable_variables
 layer_regularization_losses
 layers
еtrainable_variables
Ёmetrics
жregularization_losses
Ђlayer_metrics
з	variables
џ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
:  (2total
:  (2count
0
ђ0
ѓ1"
trackable_list_wrapper
.
є	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
і0
ї1"
trackable_list_wrapper
.
љ	variables"
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
trackable_dict_wrapper
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
%:# 2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
%:#2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
I:G	ш^ 28Adam/token_and_position_embedding/embedding/embeddings/m
J:Hd 2:Adam/token_and_position_embedding/embedding_1/embeddings/m
N:L  2:Adam/transformer_block/multi_head_attention/query/kernel/m
H:F 28Adam/transformer_block/multi_head_attention/query/bias/m
L:J  28Adam/transformer_block/multi_head_attention/key/kernel/m
F:D 26Adam/transformer_block/multi_head_attention/key/bias/m
N:L  2:Adam/transformer_block/multi_head_attention/value/kernel/m
H:F 28Adam/transformer_block/multi_head_attention/value/bias/m
Y:W  2EAdam/transformer_block/multi_head_attention/attention_output/kernel/m
O:M 2CAdam/transformer_block/multi_head_attention/attention_output/bias/m
#:!  2Adam/dense/kernel/m
: 2Adam/dense/bias/m
%:#  2Adam/dense_1/kernel/m
: 2Adam/dense_1/bias/m
>:< 22Adam/transformer_block/layer_normalization/gamma/m
=:; 21Adam/transformer_block/layer_normalization/beta/m
@:> 24Adam/transformer_block/layer_normalization_1/gamma/m
?:= 23Adam/transformer_block/layer_normalization_1/beta/m
%:# 2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
%:#2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
I:G	ш^ 28Adam/token_and_position_embedding/embedding/embeddings/v
J:Hd 2:Adam/token_and_position_embedding/embedding_1/embeddings/v
N:L  2:Adam/transformer_block/multi_head_attention/query/kernel/v
H:F 28Adam/transformer_block/multi_head_attention/query/bias/v
L:J  28Adam/transformer_block/multi_head_attention/key/kernel/v
F:D 26Adam/transformer_block/multi_head_attention/key/bias/v
N:L  2:Adam/transformer_block/multi_head_attention/value/kernel/v
H:F 28Adam/transformer_block/multi_head_attention/value/bias/v
Y:W  2EAdam/transformer_block/multi_head_attention/attention_output/kernel/v
O:M 2CAdam/transformer_block/multi_head_attention/attention_output/bias/v
#:!  2Adam/dense/kernel/v
: 2Adam/dense/bias/v
%:#  2Adam/dense_1/kernel/v
: 2Adam/dense_1/bias/v
>:< 22Adam/transformer_block/layer_normalization/gamma/v
=:; 21Adam/transformer_block/layer_normalization/beta/v
@:> 24Adam/transformer_block/layer_normalization_1/gamma/v
?:= 23Adam/transformer_block/layer_normalization_1/beta/v
ЫBШ
 __inference__wrapped_model_84635input_1"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
(__inference_TRNS_100_layer_call_fn_85153
(__inference_TRNS_100_layer_call_fn_85867
(__inference_TRNS_100_layer_call_fn_85916
(__inference_TRNS_100_layer_call_fn_85651Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
к2з
C__inference_TRNS_100_layer_call_and_return_conditional_losses_86081
C__inference_TRNS_100_layer_call_and_return_conditional_losses_86273
C__inference_TRNS_100_layer_call_and_return_conditional_losses_85706
C__inference_TRNS_100_layer_call_and_return_conditional_losses_85761Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
с2о
<__inference_token_and_position_embedding_layer_call_fn_86282
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќ2љ
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_86306
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
1__inference_transformer_block_layer_call_fn_86343
1__inference_transformer_block_layer_call_fn_86380А
ЇВЃ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
в2Я
L__inference_transformer_block_layer_call_and_return_conditional_losses_86507
L__inference_transformer_block_layer_call_and_return_conditional_losses_86647А
ЇВЃ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Љ2І
8__inference_global_average_pooling1d_layer_call_fn_86652
8__inference_global_average_pooling1d_layer_call_fn_86657Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
п2м
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_86663
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_86669Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
)__inference_dropout_2_layer_call_fn_86674
)__inference_dropout_2_layer_call_fn_86679Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
Ц2У
D__inference_dropout_2_layer_call_and_return_conditional_losses_86684
D__inference_dropout_2_layer_call_and_return_conditional_losses_86696Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
б2Ю
'__inference_dense_2_layer_call_fn_86705Ђ
В
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
annotationsЊ *
 
ь2щ
B__inference_dense_2_layer_call_and_return_conditional_losses_86716Ђ
В
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
annotationsЊ *
 
2
)__inference_dropout_3_layer_call_fn_86721
)__inference_dropout_3_layer_call_fn_86726Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
Ц2У
D__inference_dropout_3_layer_call_and_return_conditional_losses_86731
D__inference_dropout_3_layer_call_and_return_conditional_losses_86743Д
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
б2Ю
'__inference_dense_3_layer_call_fn_86752Ђ
В
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
annotationsЊ *
 
ь2щ
B__inference_dense_3_layer_call_and_return_conditional_losses_86763Ђ
В
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
annotationsЊ *
 
ЪBЧ
#__inference_signature_wrapper_85818input_1"
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
2џќ
ѓВя
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2џќ
ѓВя
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
і2ѓ
*__inference_sequential_layer_call_fn_84727
*__inference_sequential_layer_call_fn_86776
*__inference_sequential_layer_call_fn_86789
*__inference_sequential_layer_call_fn_84800Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
т2п
E__inference_sequential_layer_call_and_return_conditional_losses_86846
E__inference_sequential_layer_call_and_return_conditional_losses_86903
E__inference_sequential_layer_call_and_return_conditional_losses_84814
E__inference_sequential_layer_call_and_return_conditional_losses_84828Р
ЗВГ
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
kwonlydefaultsЊ 
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
К2ЗД
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
К2ЗД
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
К2ЗД
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
К2ЗД
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Е2ВЏ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Е2ВЏ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
К2ЗД
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
К2ЗД
ЋВЇ
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
kwonlydefaultsЊ 
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Ј2ЅЂ
В
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
annotationsЊ *
 
Я2Ь
%__inference_dense_layer_call_fn_86912Ђ
В
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
annotationsЊ *
 
ъ2ч
@__inference_dense_layer_call_and_return_conditional_losses_86943Ђ
В
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
annotationsЊ *
 
б2Ю
'__inference_dense_1_layer_call_fn_86952Ђ
В
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
annotationsЊ *
 
ь2щ
B__inference_dense_1_layer_call_and_return_conditional_losses_86982Ђ
В
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
annotationsЊ *
 Р
C__inference_TRNS_100_layer_call_and_return_conditional_losses_85706y=<>?@ABCDEJKFGHILM'(128Ђ5
.Ђ+
!
input_1џџџџџџџџџd
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Р
C__inference_TRNS_100_layer_call_and_return_conditional_losses_85761y=<>?@ABCDEJKFGHILM'(128Ђ5
.Ђ+
!
input_1џџџџџџџџџd
p

 
Њ "%Ђ"

0џџџџџџџџџ
 П
C__inference_TRNS_100_layer_call_and_return_conditional_losses_86081x=<>?@ABCDEJKFGHILM'(127Ђ4
-Ђ*
 
inputsџџџџџџџџџd
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 П
C__inference_TRNS_100_layer_call_and_return_conditional_losses_86273x=<>?@ABCDEJKFGHILM'(127Ђ4
-Ђ*
 
inputsџџџџџџџџџd
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
(__inference_TRNS_100_layer_call_fn_85153l=<>?@ABCDEJKFGHILM'(128Ђ5
.Ђ+
!
input_1џџџџџџџџџd
p 

 
Њ "џџџџџџџџџ
(__inference_TRNS_100_layer_call_fn_85651l=<>?@ABCDEJKFGHILM'(128Ђ5
.Ђ+
!
input_1џџџџџџџџџd
p

 
Њ "џџџџџџџџџ
(__inference_TRNS_100_layer_call_fn_85867k=<>?@ABCDEJKFGHILM'(127Ђ4
-Ђ*
 
inputsџџџџџџџџџd
p 

 
Њ "џџџџџџџџџ
(__inference_TRNS_100_layer_call_fn_85916k=<>?@ABCDEJKFGHILM'(127Ђ4
-Ђ*
 
inputsџџџџџџџџџd
p

 
Њ "џџџџџџџџџЁ
 __inference__wrapped_model_84635}=<>?@ABCDEJKFGHILM'(120Ђ-
&Ђ#
!
input_1џџџџџџџџџd
Њ "1Њ.
,
dense_3!
dense_3џџџџџџџџџЊ
B__inference_dense_1_layer_call_and_return_conditional_losses_86982dHI3Ђ0
)Ђ&
$!
inputsџџџџџџџџџd 
Њ ")Ђ&

0џџџџџџџџџd 
 
'__inference_dense_1_layer_call_fn_86952WHI3Ђ0
)Ђ&
$!
inputsџџџџџџџџџd 
Њ "џџџџџџџџџd Ђ
B__inference_dense_2_layer_call_and_return_conditional_losses_86716\'(/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "%Ђ"

0џџџџџџџџџ
 z
'__inference_dense_2_layer_call_fn_86705O'(/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "џџџџџџџџџЂ
B__inference_dense_3_layer_call_and_return_conditional_losses_86763\12/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 z
'__inference_dense_3_layer_call_fn_86752O12/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЈ
@__inference_dense_layer_call_and_return_conditional_losses_86943dFG3Ђ0
)Ђ&
$!
inputsџџџџџџџџџd 
Њ ")Ђ&

0џџџџџџџџџd 
 
%__inference_dense_layer_call_fn_86912WFG3Ђ0
)Ђ&
$!
inputsџџџџџџџџџd 
Њ "џџџџџџџџџd Є
D__inference_dropout_2_layer_call_and_return_conditional_losses_86684\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p 
Њ "%Ђ"

0џџџџџџџџџ 
 Є
D__inference_dropout_2_layer_call_and_return_conditional_losses_86696\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p
Њ "%Ђ"

0џџџџџџџџџ 
 |
)__inference_dropout_2_layer_call_fn_86674O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p 
Њ "џџџџџџџџџ |
)__inference_dropout_2_layer_call_fn_86679O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p
Њ "џџџџџџџџџ Є
D__inference_dropout_3_layer_call_and_return_conditional_losses_86731\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "%Ђ"

0џџџџџџџџџ
 Є
D__inference_dropout_3_layer_call_and_return_conditional_losses_86743\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dropout_3_layer_call_fn_86721O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ|
)__inference_dropout_3_layer_call_fn_86726O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџв
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_86663{IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
Њ ".Ђ+
$!
0џџџџџџџџџџџџџџџџџџ
 З
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_86669`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџd 

 
Њ "%Ђ"

0џџџџџџџџџ 
 Њ
8__inference_global_average_pooling1d_layer_call_fn_86652nIЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
Њ "!џџџџџџџџџџџџџџџџџџ
8__inference_global_average_pooling1d_layer_call_fn_86657S7Ђ4
-Ђ*
$!
inputsџџџџџџџџџd 

 
Њ "џџџџџџџџџ М
E__inference_sequential_layer_call_and_return_conditional_losses_84814sFGHI@Ђ=
6Ђ3
)&
dense_inputџџџџџџџџџd 
p 

 
Њ ")Ђ&

0џџџџџџџџџd 
 М
E__inference_sequential_layer_call_and_return_conditional_losses_84828sFGHI@Ђ=
6Ђ3
)&
dense_inputџџџџџџџџџd 
p

 
Њ ")Ђ&

0џџџџџџџџџd 
 З
E__inference_sequential_layer_call_and_return_conditional_losses_86846nFGHI;Ђ8
1Ђ.
$!
inputsџџџџџџџџџd 
p 

 
Њ ")Ђ&

0џџџџџџџџџd 
 З
E__inference_sequential_layer_call_and_return_conditional_losses_86903nFGHI;Ђ8
1Ђ.
$!
inputsџџџџџџџџџd 
p

 
Њ ")Ђ&

0џџџџџџџџџd 
 
*__inference_sequential_layer_call_fn_84727fFGHI@Ђ=
6Ђ3
)&
dense_inputџџџџџџџџџd 
p 

 
Њ "џџџџџџџџџd 
*__inference_sequential_layer_call_fn_84800fFGHI@Ђ=
6Ђ3
)&
dense_inputџџџџџџџџџd 
p

 
Њ "џџџџџџџџџd 
*__inference_sequential_layer_call_fn_86776aFGHI;Ђ8
1Ђ.
$!
inputsџџџџџџџџџd 
p 

 
Њ "џџџџџџџџџd 
*__inference_sequential_layer_call_fn_86789aFGHI;Ђ8
1Ђ.
$!
inputsџџџџџџџџџd 
p

 
Њ "џџџџџџџџџd А
#__inference_signature_wrapper_85818=<>?@ABCDEJKFGHILM'(12;Ђ8
Ђ 
1Њ.
,
input_1!
input_1џџџџџџџџџd"1Њ.
,
dense_3!
dense_3џџџџџџџџџЖ
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_86306[=<*Ђ'
 Ђ

xџџџџџџџџџd
Њ ")Ђ&

0џџџџџџџџџd 
 
<__inference_token_and_position_embedding_layer_call_fn_86282N=<*Ђ'
 Ђ

xџџџџџџџџџd
Њ "џџџџџџџџџd Ц
L__inference_transformer_block_layer_call_and_return_conditional_losses_86507v>?@ABCDEJKFGHILM7Ђ4
-Ђ*
$!
inputsџџџџџџџџџd 
p 
Њ ")Ђ&

0џџџџџџџџџd 
 Ц
L__inference_transformer_block_layer_call_and_return_conditional_losses_86647v>?@ABCDEJKFGHILM7Ђ4
-Ђ*
$!
inputsџџџџџџџџџd 
p
Њ ")Ђ&

0џџџџџџџџџd 
 
1__inference_transformer_block_layer_call_fn_86343i>?@ABCDEJKFGHILM7Ђ4
-Ђ*
$!
inputsџџџџџџџџџd 
p 
Њ "џџџџџџџџџd 
1__inference_transformer_block_layer_call_fn_86380i>?@ABCDEJKFGHILM7Ђ4
-Ђ*
$!
inputsџџџџџџџџџd 
p
Њ "џџџџџџџџџd 