ю÷!
∆Ч
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
≠
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
Н
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Н
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
dtypetypeИ
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
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
list(type)(0И
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

2	Р
Њ
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
executor_typestring И
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
ц
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.02v2.6.0-rc2-32-g919f693420e8я„
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

: *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
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
«
5token_and_position_embedding_1/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	и^ *F
shared_name75token_and_position_embedding_1/embedding_2/embeddings
ј
Itoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_2/embeddings*
_output_shapes
:	и^ *
dtype0
∆
5token_and_position_embedding_1/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75token_and_position_embedding_1/embedding_3/embeddings
њ
Itoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_3/embeddings*
_output_shapes

: *
dtype0
ќ
7transformer_block_1/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_1/multi_head_attention_1/query/kernel
«
Ktransformer_block_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_1/multi_head_attention_1/query/kernel*"
_output_shapes
:  *
dtype0
∆
5transformer_block_1/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_1/multi_head_attention_1/query/bias
њ
Itransformer_block_1/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp5transformer_block_1/multi_head_attention_1/query/bias*
_output_shapes

: *
dtype0
 
5transformer_block_1/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *F
shared_name75transformer_block_1/multi_head_attention_1/key/kernel
√
Itransformer_block_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_block_1/multi_head_attention_1/key/kernel*"
_output_shapes
:  *
dtype0
¬
3transformer_block_1/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *D
shared_name53transformer_block_1/multi_head_attention_1/key/bias
ї
Gtransformer_block_1/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp3transformer_block_1/multi_head_attention_1/key/bias*
_output_shapes

: *
dtype0
ќ
7transformer_block_1/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_1/multi_head_attention_1/value/kernel
«
Ktransformer_block_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_1/multi_head_attention_1/value/kernel*"
_output_shapes
:  *
dtype0
∆
5transformer_block_1/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_1/multi_head_attention_1/value/bias
њ
Itransformer_block_1/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp5transformer_block_1/multi_head_attention_1/value/bias*
_output_shapes

: *
dtype0
д
Btransformer_block_1/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *S
shared_nameDBtransformer_block_1/multi_head_attention_1/attention_output/kernel
Ё
Vtransformer_block_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_block_1/multi_head_attention_1/attention_output/kernel*"
_output_shapes
:  *
dtype0
Ў
@transformer_block_1/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *Q
shared_nameB@transformer_block_1/multi_head_attention_1/attention_output/bias
—
Ttransformer_block_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_block_1/multi_head_attention_1/attention_output/bias*
_output_shapes
: *
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:  *
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
: *
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:  *
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
: *
dtype0
ґ
/transformer_block_1/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_1/layer_normalization_2/gamma
ѓ
Ctransformer_block_1/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_1/layer_normalization_2/gamma*
_output_shapes
: *
dtype0
і
.transformer_block_1/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.transformer_block_1/layer_normalization_2/beta
≠
Btransformer_block_1/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp.transformer_block_1/layer_normalization_2/beta*
_output_shapes
: *
dtype0
ґ
/transformer_block_1/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_1/layer_normalization_3/gamma
ѓ
Ctransformer_block_1/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_1/layer_normalization_3/gamma*
_output_shapes
: *
dtype0
і
.transformer_block_1/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.transformer_block_1/layer_normalization_3/beta
≠
Btransformer_block_1/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp.transformer_block_1/layer_normalization_3/beta*
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
Ж
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:*
dtype0
Ж
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
’
<Adam/token_and_position_embedding_1/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	и^ *M
shared_name><Adam/token_and_position_embedding_1/embedding_2/embeddings/m
ќ
PAdam/token_and_position_embedding_1/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_2/embeddings/m*
_output_shapes
:	и^ *
dtype0
‘
<Adam/token_and_position_embedding_1/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/token_and_position_embedding_1/embedding_3/embeddings/m
Ќ
PAdam/token_and_position_embedding_1/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_3/embeddings/m*
_output_shapes

: *
dtype0
№
>Adam/transformer_block_1/multi_head_attention_1/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_1/multi_head_attention_1/query/kernel/m
’
RAdam/transformer_block_1/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_1/multi_head_attention_1/query/kernel/m*"
_output_shapes
:  *
dtype0
‘
<Adam/transformer_block_1/multi_head_attention_1/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_1/multi_head_attention_1/query/bias/m
Ќ
PAdam/transformer_block_1/multi_head_attention_1/query/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_1/multi_head_attention_1/query/bias/m*
_output_shapes

: *
dtype0
Ў
<Adam/transformer_block_1/multi_head_attention_1/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *M
shared_name><Adam/transformer_block_1/multi_head_attention_1/key/kernel/m
—
PAdam/transformer_block_1/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_1/multi_head_attention_1/key/kernel/m*"
_output_shapes
:  *
dtype0
–
:Adam/transformer_block_1/multi_head_attention_1/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *K
shared_name<:Adam/transformer_block_1/multi_head_attention_1/key/bias/m
…
NAdam/transformer_block_1/multi_head_attention_1/key/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_1/multi_head_attention_1/key/bias/m*
_output_shapes

: *
dtype0
№
>Adam/transformer_block_1/multi_head_attention_1/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_1/multi_head_attention_1/value/kernel/m
’
RAdam/transformer_block_1/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_1/multi_head_attention_1/value/kernel/m*"
_output_shapes
:  *
dtype0
‘
<Adam/transformer_block_1/multi_head_attention_1/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_1/multi_head_attention_1/value/bias/m
Ќ
PAdam/transformer_block_1/multi_head_attention_1/value/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_1/multi_head_attention_1/value/bias/m*
_output_shapes

: *
dtype0
т
IAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *Z
shared_nameKIAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/m
л
]Adam/transformer_block_1/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/m*"
_output_shapes
:  *
dtype0
ж
GAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *X
shared_nameIGAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/m
я
[Adam/transformer_block_1/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/m*
_output_shapes
: *
dtype0
Ж
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
: *
dtype0
Ж
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
: *
dtype0
ƒ
6Adam/transformer_block_1/layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_1/layer_normalization_2/gamma/m
љ
JAdam/transformer_block_1/layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_1/layer_normalization_2/gamma/m*
_output_shapes
: *
dtype0
¬
5Adam/transformer_block_1/layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/transformer_block_1/layer_normalization_2/beta/m
ї
IAdam/transformer_block_1/layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_1/layer_normalization_2/beta/m*
_output_shapes
: *
dtype0
ƒ
6Adam/transformer_block_1/layer_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_1/layer_normalization_3/gamma/m
љ
JAdam/transformer_block_1/layer_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_1/layer_normalization_3/gamma/m*
_output_shapes
: *
dtype0
¬
5Adam/transformer_block_1/layer_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/transformer_block_1/layer_normalization_3/beta/m
ї
IAdam/transformer_block_1/layer_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_1/layer_normalization_3/beta/m*
_output_shapes
: *
dtype0
Ж
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:*
dtype0
Ж
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
’
<Adam/token_and_position_embedding_1/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	и^ *M
shared_name><Adam/token_and_position_embedding_1/embedding_2/embeddings/v
ќ
PAdam/token_and_position_embedding_1/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_2/embeddings/v*
_output_shapes
:	и^ *
dtype0
‘
<Adam/token_and_position_embedding_1/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/token_and_position_embedding_1/embedding_3/embeddings/v
Ќ
PAdam/token_and_position_embedding_1/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_3/embeddings/v*
_output_shapes

: *
dtype0
№
>Adam/transformer_block_1/multi_head_attention_1/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_1/multi_head_attention_1/query/kernel/v
’
RAdam/transformer_block_1/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_1/multi_head_attention_1/query/kernel/v*"
_output_shapes
:  *
dtype0
‘
<Adam/transformer_block_1/multi_head_attention_1/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_1/multi_head_attention_1/query/bias/v
Ќ
PAdam/transformer_block_1/multi_head_attention_1/query/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_1/multi_head_attention_1/query/bias/v*
_output_shapes

: *
dtype0
Ў
<Adam/transformer_block_1/multi_head_attention_1/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *M
shared_name><Adam/transformer_block_1/multi_head_attention_1/key/kernel/v
—
PAdam/transformer_block_1/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_1/multi_head_attention_1/key/kernel/v*"
_output_shapes
:  *
dtype0
–
:Adam/transformer_block_1/multi_head_attention_1/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *K
shared_name<:Adam/transformer_block_1/multi_head_attention_1/key/bias/v
…
NAdam/transformer_block_1/multi_head_attention_1/key/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_1/multi_head_attention_1/key/bias/v*
_output_shapes

: *
dtype0
№
>Adam/transformer_block_1/multi_head_attention_1/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *O
shared_name@>Adam/transformer_block_1/multi_head_attention_1/value/kernel/v
’
RAdam/transformer_block_1/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_1/multi_head_attention_1/value/kernel/v*"
_output_shapes
:  *
dtype0
‘
<Adam/transformer_block_1/multi_head_attention_1/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *M
shared_name><Adam/transformer_block_1/multi_head_attention_1/value/bias/v
Ќ
PAdam/transformer_block_1/multi_head_attention_1/value/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_1/multi_head_attention_1/value/bias/v*
_output_shapes

: *
dtype0
т
IAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *Z
shared_nameKIAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/v
л
]Adam/transformer_block_1/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/v*"
_output_shapes
:  *
dtype0
ж
GAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *X
shared_nameIGAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/v
я
[Adam/transformer_block_1/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/v*
_output_shapes
: *
dtype0
Ж
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
: *
dtype0
Ж
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
: *
dtype0
ƒ
6Adam/transformer_block_1/layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_1/layer_normalization_2/gamma/v
љ
JAdam/transformer_block_1/layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_1/layer_normalization_2/gamma/v*
_output_shapes
: *
dtype0
¬
5Adam/transformer_block_1/layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/transformer_block_1/layer_normalization_2/beta/v
ї
IAdam/transformer_block_1/layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_1/layer_normalization_2/beta/v*
_output_shapes
: *
dtype0
ƒ
6Adam/transformer_block_1/layer_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *G
shared_name86Adam/transformer_block_1/layer_normalization_3/gamma/v
љ
JAdam/transformer_block_1/layer_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_1/layer_normalization_3/gamma/v*
_output_shapes
: *
dtype0
¬
5Adam/transformer_block_1/layer_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *F
shared_name75Adam/transformer_block_1/layer_normalization_3/beta/v
ї
IAdam/transformer_block_1/layer_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_1/layer_normalization_3/beta/v*
_output_shapes
: *
dtype0

NoOpNoOp
ИЩ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¬Ш
valueЈШB≥Ш BЂШ
Ѕ
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
†
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
ш
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm£(m§1m•2m¶<mІ=m®>m©?m™@mЂAmђBm≠CmЃDmѓEm∞Fm±Gm≤Hm≥ImіJmµKmґLmЈMmЄ'vє(vЇ1vї2vЉ<vљ=vЊ>vњ?vј@vЅAv¬Bv√CvƒDv≈Ev∆Fv«Gv»Hv…Iv JvЋKvћLvЌMvќ
¶
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
¶
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
≠
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
≠
[non_trainable_variables
\layer_regularization_losses

]layers
trainable_variables
^metrics
regularization_losses
_layer_metrics
	variables
ї
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
†
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
А	variables
Б	keras_api
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
≤
Вnon_trainable_variables
 Гlayer_regularization_losses
Дlayers
trainable_variables
Еmetrics
regularization_losses
Жlayer_metrics
	variables
 
 
 
≤
Зnon_trainable_variables
 Иlayer_regularization_losses
Йlayers
trainable_variables
Кmetrics
 regularization_losses
Лlayer_metrics
!	variables
 
 
 
≤
Мnon_trainable_variables
 Нlayer_regularization_losses
Оlayers
#trainable_variables
Пmetrics
$regularization_losses
Рlayer_metrics
%	variables
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 

'0
(1
≤
Сnon_trainable_variables
 Тlayer_regularization_losses
Уlayers
)trainable_variables
Фmetrics
*regularization_losses
Хlayer_metrics
+	variables
 
 
 
≤
Цnon_trainable_variables
 Чlayer_regularization_losses
Шlayers
-trainable_variables
Щmetrics
.regularization_losses
Ъlayer_metrics
/	variables
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
≤
Ыnon_trainable_variables
 Ьlayer_regularization_losses
Эlayers
3trainable_variables
Юmetrics
4regularization_losses
Яlayer_metrics
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
{y
VARIABLE_VALUE5token_and_position_embedding_1/embedding_2/embeddings0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE5token_and_position_embedding_1/embedding_3/embeddings0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE7transformer_block_1/multi_head_attention_1/query/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE5transformer_block_1/multi_head_attention_1/query/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE5transformer_block_1/multi_head_attention_1/key/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE3transformer_block_1/multi_head_attention_1/key/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE7transformer_block_1/multi_head_attention_1/value/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE5transformer_block_1/multi_head_attention_1/value/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUEBtransformer_block_1/multi_head_attention_1/attention_output/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUE@transformer_block_1/multi_head_attention_1/attention_output/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_4/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_4/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_5/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_5/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE/transformer_block_1/layer_normalization_2/gamma1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE.transformer_block_1/layer_normalization_2/beta1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE/transformer_block_1/layer_normalization_3/gamma1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE.transformer_block_1/layer_normalization_3/beta1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
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
†0
°1
 

<0
 

<0
≤
Ґnon_trainable_variables
 £layer_regularization_losses
§layers
Strainable_variables
•metrics
Tregularization_losses
¶layer_metrics
U	variables

=0
 

=0
≤
Іnon_trainable_variables
 ®layer_regularization_losses
©layers
Wtrainable_variables
™metrics
Xregularization_losses
Ђlayer_metrics
Y	variables
 
 

0
1
 
 
Я
ђpartial_output_shape
≠full_output_shape

>kernel
?bias
Ѓtrainable_variables
ѓregularization_losses
∞	variables
±	keras_api
Я
≤partial_output_shape
≥full_output_shape

@kernel
Abias
іtrainable_variables
µregularization_losses
ґ	variables
Ј	keras_api
Я
Єpartial_output_shape
єfull_output_shape

Bkernel
Cbias
Їtrainable_variables
їregularization_losses
Љ	variables
љ	keras_api
V
Њtrainable_variables
њregularization_losses
ј	variables
Ѕ	keras_api
V
¬trainable_variables
√regularization_losses
ƒ	variables
≈	keras_api
Я
∆partial_output_shape
«full_output_shape

Dkernel
Ebias
»trainable_variables
…regularization_losses
 	variables
Ћ	keras_api
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
≤
ћnon_trainable_variables
 Ќlayer_regularization_losses
ќlayers
ftrainable_variables
ѕmetrics
gregularization_losses
–layer_metrics
h	variables
l

Fkernel
Gbias
—trainable_variables
“regularization_losses
”	variables
‘	keras_api
l

Hkernel
Ibias
’trainable_variables
÷regularization_losses
„	variables
Ў	keras_api

F0
G1
H2
I3
 

F0
G1
H2
I3
≤
ўnon_trainable_variables
 Џlayer_regularization_losses
ltrainable_variables
џlayers
№metrics
mregularization_losses
Ёlayer_metrics
n	variables
 

J0
K1
 

J0
K1
≤
ёnon_trainable_variables
 яlayer_regularization_losses
аlayers
qtrainable_variables
бmetrics
rregularization_losses
вlayer_metrics
s	variables
 

L0
M1
 

L0
M1
≤
гnon_trainable_variables
 дlayer_regularization_losses
еlayers
vtrainable_variables
жmetrics
wregularization_losses
зlayer_metrics
x	variables
 
 
 
≤
иnon_trainable_variables
 йlayer_regularization_losses
кlayers
ztrainable_variables
лmetrics
{regularization_losses
мlayer_metrics
|	variables
 
 
 
≥
нnon_trainable_variables
 оlayer_regularization_losses
пlayers
~trainable_variables
рmetrics
regularization_losses
сlayer_metrics
А	variables
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

тtotal

уcount
ф	variables
х	keras_api
I

цtotal

чcount
ш
_fn_kwargs
щ	variables
ъ	keras_api
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
µ
ыnon_trainable_variables
 ьlayer_regularization_losses
эlayers
Ѓtrainable_variables
юmetrics
ѓregularization_losses
€layer_metrics
∞	variables
 
 

@0
A1
 

@0
A1
µ
Аnon_trainable_variables
 Бlayer_regularization_losses
Вlayers
іtrainable_variables
Гmetrics
µregularization_losses
Дlayer_metrics
ґ	variables
 
 

B0
C1
 

B0
C1
µ
Еnon_trainable_variables
 Жlayer_regularization_losses
Зlayers
Їtrainable_variables
Иmetrics
їregularization_losses
Йlayer_metrics
Љ	variables
 
 
 
µ
Кnon_trainable_variables
 Лlayer_regularization_losses
Мlayers
Њtrainable_variables
Нmetrics
њregularization_losses
Оlayer_metrics
ј	variables
 
 
 
µ
Пnon_trainable_variables
 Рlayer_regularization_losses
Сlayers
¬trainable_variables
Тmetrics
√regularization_losses
Уlayer_metrics
ƒ	variables
 
 

D0
E1
 

D0
E1
µ
Фnon_trainable_variables
 Хlayer_regularization_losses
Цlayers
»trainable_variables
Чmetrics
…regularization_losses
Шlayer_metrics
 	variables
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
µ
Щnon_trainable_variables
 Ъlayer_regularization_losses
Ыlayers
—trainable_variables
Ьmetrics
“regularization_losses
Эlayer_metrics
”	variables

H0
I1
 

H0
I1
µ
Юnon_trainable_variables
 Яlayer_regularization_losses
†layers
’trainable_variables
°metrics
÷regularization_losses
Ґlayer_metrics
„	variables
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
т0
у1

ф	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

ц0
ч1

щ	variables
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
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_2/embeddings/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_3/embeddings/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
°Ю
VARIABLE_VALUE>Adam/transformer_block_1/multi_head_attention_1/query/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/transformer_block_1/multi_head_attention_1/query/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/transformer_block_1/multi_head_attention_1/key/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЭЪ
VARIABLE_VALUE:Adam/transformer_block_1/multi_head_attention_1/key/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
°Ю
VARIABLE_VALUE>Adam/transformer_block_1/multi_head_attention_1/value/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/transformer_block_1/multi_head_attention_1/value/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ђ©
VARIABLE_VALUEIAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
™І
VARIABLE_VALUEGAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_4/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_4/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_5/kernel/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_5/bias/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE6Adam/transformer_block_1/layer_normalization_2/gamma/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE5Adam/transformer_block_1/layer_normalization_2/beta/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE6Adam/transformer_block_1/layer_normalization_3/gamma/mMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE5Adam/transformer_block_1/layer_normalization_3/beta/mMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_2/embeddings/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_3/embeddings/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
°Ю
VARIABLE_VALUE>Adam/transformer_block_1/multi_head_attention_1/query/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/transformer_block_1/multi_head_attention_1/query/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/transformer_block_1/multi_head_attention_1/key/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЭЪ
VARIABLE_VALUE:Adam/transformer_block_1/multi_head_attention_1/key/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
°Ю
VARIABLE_VALUE>Adam/transformer_block_1/multi_head_attention_1/value/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<Adam/transformer_block_1/multi_head_attention_1/value/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ђ©
VARIABLE_VALUEIAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
™І
VARIABLE_VALUEGAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_4/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_4/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_5/kernel/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_5/bias/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE6Adam/transformer_block_1/layer_normalization_2/gamma/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE5Adam/transformer_block_1/layer_normalization_2/beta/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE6Adam/transformer_block_1/layer_normalization_3/gamma/vMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE5Adam/transformer_block_1/layer_normalization_3/beta/vMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_2Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
№	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_25token_and_position_embedding_1/embedding_3/embeddings5token_and_position_embedding_1/embedding_2/embeddings7transformer_block_1/multi_head_attention_1/query/kernel5transformer_block_1/multi_head_attention_1/query/bias5transformer_block_1/multi_head_attention_1/key/kernel3transformer_block_1/multi_head_attention_1/key/bias7transformer_block_1/multi_head_attention_1/value/kernel5transformer_block_1/multi_head_attention_1/value/biasBtransformer_block_1/multi_head_attention_1/attention_output/kernel@transformer_block_1/multi_head_attention_1/attention_output/bias/transformer_block_1/layer_normalization_2/gamma.transformer_block_1/layer_normalization_2/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias/transformer_block_1/layer_normalization_3/gamma.transformer_block_1/layer_normalization_3/betadense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *,
f'R%
#__inference_signature_wrapper_99188
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ќ&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpKtransformer_block_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpItransformer_block_1/multi_head_attention_1/query/bias/Read/ReadVariableOpItransformer_block_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpGtransformer_block_1/multi_head_attention_1/key/bias/Read/ReadVariableOpKtransformer_block_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpItransformer_block_1/multi_head_attention_1/value/bias/Read/ReadVariableOpVtransformer_block_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpTtransformer_block_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpCtransformer_block_1/layer_normalization_2/gamma/Read/ReadVariableOpBtransformer_block_1/layer_normalization_2/beta/Read/ReadVariableOpCtransformer_block_1/layer_normalization_3/gamma/Read/ReadVariableOpBtransformer_block_1/layer_normalization_3/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_2/embeddings/m/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_3/embeddings/m/Read/ReadVariableOpRAdam/transformer_block_1/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpPAdam/transformer_block_1/multi_head_attention_1/query/bias/m/Read/ReadVariableOpPAdam/transformer_block_1/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpNAdam/transformer_block_1/multi_head_attention_1/key/bias/m/Read/ReadVariableOpRAdam/transformer_block_1/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpPAdam/transformer_block_1/multi_head_attention_1/value/bias/m/Read/ReadVariableOp]Adam/transformer_block_1/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOp[Adam/transformer_block_1/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOpJAdam/transformer_block_1/layer_normalization_2/gamma/m/Read/ReadVariableOpIAdam/transformer_block_1/layer_normalization_2/beta/m/Read/ReadVariableOpJAdam/transformer_block_1/layer_normalization_3/gamma/m/Read/ReadVariableOpIAdam/transformer_block_1/layer_normalization_3/beta/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_2/embeddings/v/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_3/embeddings/v/Read/ReadVariableOpRAdam/transformer_block_1/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpPAdam/transformer_block_1/multi_head_attention_1/query/bias/v/Read/ReadVariableOpPAdam/transformer_block_1/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpNAdam/transformer_block_1/multi_head_attention_1/key/bias/v/Read/ReadVariableOpRAdam/transformer_block_1/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpPAdam/transformer_block_1/multi_head_attention_1/value/bias/v/Read/ReadVariableOp]Adam/transformer_block_1/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOp[Adam/transformer_block_1/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpJAdam/transformer_block_1/layer_normalization_2/gamma/v/Read/ReadVariableOpIAdam/transformer_block_1/layer_normalization_2/beta/v/Read/ReadVariableOpJAdam/transformer_block_1/layer_normalization_3/gamma/v/Read/ReadVariableOpIAdam/transformer_block_1/layer_normalization_3/beta/v/Read/ReadVariableOpConst*X
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
GPU2 *0J 8В *(
f#R!
__inference__traced_save_100600
н
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate5token_and_position_embedding_1/embedding_2/embeddings5token_and_position_embedding_1/embedding_3/embeddings7transformer_block_1/multi_head_attention_1/query/kernel5transformer_block_1/multi_head_attention_1/query/bias5transformer_block_1/multi_head_attention_1/key/kernel3transformer_block_1/multi_head_attention_1/key/bias7transformer_block_1/multi_head_attention_1/value/kernel5transformer_block_1/multi_head_attention_1/value/biasBtransformer_block_1/multi_head_attention_1/attention_output/kernel@transformer_block_1/multi_head_attention_1/attention_output/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias/transformer_block_1/layer_normalization_2/gamma.transformer_block_1/layer_normalization_2/beta/transformer_block_1/layer_normalization_3/gamma.transformer_block_1/layer_normalization_3/betatotalcounttotal_1count_1Adam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/m<Adam/token_and_position_embedding_1/embedding_2/embeddings/m<Adam/token_and_position_embedding_1/embedding_3/embeddings/m>Adam/transformer_block_1/multi_head_attention_1/query/kernel/m<Adam/transformer_block_1/multi_head_attention_1/query/bias/m<Adam/transformer_block_1/multi_head_attention_1/key/kernel/m:Adam/transformer_block_1/multi_head_attention_1/key/bias/m>Adam/transformer_block_1/multi_head_attention_1/value/kernel/m<Adam/transformer_block_1/multi_head_attention_1/value/bias/mIAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/mGAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/m6Adam/transformer_block_1/layer_normalization_2/gamma/m5Adam/transformer_block_1/layer_normalization_2/beta/m6Adam/transformer_block_1/layer_normalization_3/gamma/m5Adam/transformer_block_1/layer_normalization_3/beta/mAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v<Adam/token_and_position_embedding_1/embedding_2/embeddings/v<Adam/token_and_position_embedding_1/embedding_3/embeddings/v>Adam/transformer_block_1/multi_head_attention_1/query/kernel/v<Adam/transformer_block_1/multi_head_attention_1/query/bias/v<Adam/transformer_block_1/multi_head_attention_1/key/kernel/v:Adam/transformer_block_1/multi_head_attention_1/key/bias/v>Adam/transformer_block_1/multi_head_attention_1/value/kernel/v<Adam/transformer_block_1/multi_head_attention_1/value/bias/vIAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/vGAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v6Adam/transformer_block_1/layer_normalization_2/gamma/v5Adam/transformer_block_1/layer_normalization_2/beta/v6Adam/transformer_block_1/layer_normalization_3/gamma/v5Adam/transformer_block_1/layer_normalization_3/beta/v*W
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
GPU2 *0J 8В *+
f&R$
"__inference__traced_restore_100835®≠
е/
Ж

B__inference_TRNS_20_layer_call_and_return_conditional_losses_99131
input_26
$token_and_position_embedding_1_99079: 7
$token_and_position_embedding_1_99081:	и^ /
transformer_block_1_99084:  +
transformer_block_1_99086: /
transformer_block_1_99088:  +
transformer_block_1_99090: /
transformer_block_1_99092:  +
transformer_block_1_99094: /
transformer_block_1_99096:  '
transformer_block_1_99098: '
transformer_block_1_99100: '
transformer_block_1_99102: +
transformer_block_1_99104:  '
transformer_block_1_99106: +
transformer_block_1_99108:  '
transformer_block_1_99110: '
transformer_block_1_99112: '
transformer_block_1_99114: 
dense_6_99119: 
dense_6_99121:
dense_7_99125:
dense_7_99127:
identityИҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallҐ!dropout_6/StatefulPartitionedCallҐ!dropout_7/StatefulPartitionedCallҐ6token_and_position_embedding_1/StatefulPartitionedCallҐ+transformer_block_1/StatefulPartitionedCallЙ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2$token_and_position_embedding_1_99079$token_and_position_embedding_1_99081*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_9825328
6token_and_position_embedding_1/StatefulPartitionedCall†
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_block_1_99084transformer_block_1_99086transformer_block_1_99088transformer_block_1_99090transformer_block_1_99092transformer_block_1_99094transformer_block_1_99096transformer_block_1_99098transformer_block_1_99100transformer_block_1_99102transformer_block_1_99104transformer_block_1_99106transformer_block_1_99108transformer_block_1_99110transformer_block_1_99112transformer_block_1_99114*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_987742-
+transformer_block_1/StatefulPartitionedCallЉ
*global_average_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_984252,
*global_average_pooling1d_1/PartitionedCall†
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_985862#
!dropout_6/StatefulPartitionedCallµ
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_6_99119dense_6_99121*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_984452!
dense_6/StatefulPartitionedCallє
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_985532#
!dropout_7/StatefulPartitionedCallµ
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_7_99125dense_7_99127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_984692!
dense_7/StatefulPartitionedCallГ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЅ
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
Љ
r
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_100033

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
:€€€€€€€€€€€€€€€€€€2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ђ
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_100113

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
§
c
*__inference_dropout_7_layer_call_fn_100096

inputs
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_985532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
у
Х
(__inference_dense_7_layer_call_fn_100122

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_984692
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
й
‘
'__inference_TRNS_20_layer_call_fn_99286

inputs
unknown: 
	unknown_0:	и^ 
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
identityИҐStatefulPartitionedCallЖ
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
:€€€€€€€€€*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_TRNS_20_layer_call_and_return_conditional_losses_989252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
й
‘
'__inference_TRNS_20_layer_call_fn_99237

inputs
unknown: 
	unknown_0:	и^ 
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
identityИҐStatefulPartitionedCallЖ
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
:€€€€€€€€€*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_TRNS_20_layer_call_and_return_conditional_losses_984762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ю
Ђ
>__inference_token_and_position_embedding_1_layer_call_fn_99652
x
unknown: 
	unknown_0:	и^ 
identityИҐStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_982532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:€€€€€€€€€

_user_specified_namex
≈!
ъ
C__inference_dense_4_layer_call_and_return_conditional_losses_100313

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
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
Tensordot/GatherV2/axis—
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
Tensordot/GatherV2_1/axis„
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
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityВ
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
д 
щ
B__inference_dense_5_layer_call_and_return_conditional_losses_98079

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
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
Tensordot/GatherV2/axis—
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
Tensordot/GatherV2_1/axis„
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
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityВ
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ґё
•
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_99877

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_1_query_add_readvariableop_resource: V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_1_key_add_readvariableop_resource: X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_1_value_add_readvariableop_resource: c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:  Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource: I
;layer_normalization_2_batchnorm_mul_readvariableop_resource: E
7layer_normalization_2_batchnorm_readvariableop_resource: H
6sequential_1_dense_4_tensordot_readvariableop_resource:  B
4sequential_1_dense_4_biasadd_readvariableop_resource: H
6sequential_1_dense_5_tensordot_readvariableop_resource:  B
4sequential_1_dense_5_biasadd_readvariableop_resource: I
;layer_normalization_3_batchnorm_mul_readvariableop_resource: E
7layer_normalization_3_batchnorm_readvariableop_resource: 
identityИҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ+sequential_1/dense_4/BiasAdd/ReadVariableOpҐ-sequential_1/dense_4/Tensordot/ReadVariableOpҐ+sequential_1/dense_5/BiasAdd/ReadVariableOpҐ-sequential_1/dense_5/Tensordot/ReadVariableOpэ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2,
*multi_head_attention_1/query/einsum/Einsumџ
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/query/add/ReadVariableOpх
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2"
 multi_head_attention_1/query/addч
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpЗ
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2*
(multi_head_attention_1/key/einsum/Einsum’
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_1/key/add/ReadVariableOpн
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2 
multi_head_attention_1/key/addэ
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2,
*multi_head_attention_1/value/einsum/Einsumџ
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/value/add/ReadVariableOpх
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2"
 multi_head_attention_1/value/addБ
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>2
multi_head_attention_1/Mul/y∆
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
multi_head_attention_1/Mulь
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€*
equationaecd,abcd->acbe2&
$multi_head_attention_1/einsum/Einsumƒ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€2(
&multi_head_attention_1/softmax/Softmax 
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'multi_head_attention_1/dropout/IdentityФ
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationacbe,aecd->abcd2(
&multi_head_attention_1/einsum_1/EinsumЮ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp”
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€ *
equationabcd,cde->abe27
5multi_head_attention_1/attention_output/einsum/Einsumш
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_1/attention_output/add/ReadVariableOpЭ
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2-
+multi_head_attention_1/attention_output/addЫ
dropout_4/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_4/Identityn
addAddV2inputsdropout_4/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
addґ
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_2/moments/mean/reduction_indicesя
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2$
"layer_normalization_2/moments/meanЋ
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2,
*layer_normalization_2/moments/StopGradientл
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 21
/layer_normalization_2/moments/SquaredDifferenceЊ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_2/moments/variance/reduction_indicesЧ
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2(
&layer_normalization_2/moments/varianceУ
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_2/batchnorm/add/yк
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2%
#layer_normalization_2/batchnorm/addґ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%layer_normalization_2/batchnorm/Rsqrtа
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_2/batchnorm/mul/ReadVariableOpо
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_2/batchnorm/mulљ
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/mul_1б
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/mul_2‘
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_2/batchnorm/ReadVariableOpк
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_2/batchnorm/subб
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/add_1’
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_1/dense_4/Tensordot/ReadVariableOpФ
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_4/Tensordot/axesЫ
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_4/Tensordot/free•
$sequential_1/dense_4/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_1/dense_4/Tensordot/ShapeЮ
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_4/Tensordot/GatherV2/axisЇ
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_4/Tensordot/GatherV2Ґ
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_4/Tensordot/GatherV2_1/axisј
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_4/Tensordot/GatherV2_1Ц
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_4/Tensordot/Const‘
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_4/Tensordot/ProdЪ
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_4/Tensordot/Const_1№
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_4/Tensordot/Prod_1Ъ
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_4/Tensordot/concat/axisЩ
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_4/Tensordot/concatа
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_4/Tensordot/stackт
(sequential_1/dense_4/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2*
(sequential_1/dense_4/Tensordot/transposeу
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_4/Tensordot/Reshapeт
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_4/Tensordot/MatMulЪ
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_4/Tensordot/Const_2Ю
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_4/Tensordot/concat_1/axis¶
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_4/Tensordot/concat_1д
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
sequential_1/dense_4/TensordotЋ
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_4/BiasAdd/ReadVariableOpџ
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_4/BiasAddЫ
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_4/Relu’
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_1/dense_5/Tensordot/ReadVariableOpФ
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_5/Tensordot/axesЫ
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_5/Tensordot/free£
$sequential_1/dense_5/Tensordot/ShapeShape'sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dense_5/Tensordot/ShapeЮ
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_5/Tensordot/GatherV2/axisЇ
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_5/Tensordot/GatherV2Ґ
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_5/Tensordot/GatherV2_1/axisј
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_5/Tensordot/GatherV2_1Ц
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_5/Tensordot/Const‘
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_5/Tensordot/ProdЪ
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_5/Tensordot/Const_1№
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_5/Tensordot/Prod_1Ъ
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_5/Tensordot/concat/axisЩ
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_5/Tensordot/concatа
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_5/Tensordot/stackр
(sequential_1/dense_5/Tensordot/transpose	Transpose'sequential_1/dense_4/Relu:activations:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2*
(sequential_1/dense_5/Tensordot/transposeу
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_5/Tensordot/Reshapeт
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_5/Tensordot/MatMulЪ
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_5/Tensordot/Const_2Ю
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_5/Tensordot/concat_1/axis¶
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_5/Tensordot/concat_1д
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
sequential_1/dense_5/TensordotЋ
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_5/BiasAdd/ReadVariableOpџ
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_5/BiasAddС
dropout_5/IdentityIdentity%sequential_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_5/IdentityХ
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_5/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
add_1ґ
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_3/moments/mean/reduction_indicesб
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2$
"layer_normalization_3/moments/meanЋ
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2,
*layer_normalization_3/moments/StopGradientн
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 21
/layer_normalization_3/moments/SquaredDifferenceЊ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_3/moments/variance/reduction_indicesЧ
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2(
&layer_normalization_3/moments/varianceУ
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_3/batchnorm/add/yк
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2%
#layer_normalization_3/batchnorm/addґ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%layer_normalization_3/batchnorm/Rsqrtа
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_3/batchnorm/mul/ReadVariableOpо
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_3/batchnorm/mulњ
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/mul_1б
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/mul_2‘
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_3/batchnorm/ReadVariableOpк
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_3/batchnorm/subб
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/add_1И
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity†
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€ : : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
§г
§
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99451

inputsS
Atoken_and_position_embedding_1_embedding_3_embedding_lookup_99297: T
Atoken_and_position_embedding_1_embedding_2_embedding_lookup_99303:	и^ l
Vtransformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:  ^
Ltransformer_block_1_multi_head_attention_1_query_add_readvariableop_resource: j
Ttransformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:  \
Jtransformer_block_1_multi_head_attention_1_key_add_readvariableop_resource: l
Vtransformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:  ^
Ltransformer_block_1_multi_head_attention_1_value_add_readvariableop_resource: w
atransformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:  e
Wtransformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource: ]
Otransformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource: Y
Ktransformer_block_1_layer_normalization_2_batchnorm_readvariableop_resource: \
Jtransformer_block_1_sequential_1_dense_4_tensordot_readvariableop_resource:  V
Htransformer_block_1_sequential_1_dense_4_biasadd_readvariableop_resource: \
Jtransformer_block_1_sequential_1_dense_5_tensordot_readvariableop_resource:  V
Htransformer_block_1_sequential_1_dense_5_biasadd_readvariableop_resource: ]
Otransformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource: Y
Ktransformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource: 8
&dense_6_matmul_readvariableop_resource: 5
'dense_6_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identityИҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOpҐ;token_and_position_embedding_1/embedding_2/embedding_lookupҐ;token_and_position_embedding_1/embedding_3/embedding_lookupҐBtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpҐFtransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpҐBtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpҐFtransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpҐNtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpҐXtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐAtransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpҐKtransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐCtransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpҐMtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐCtransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpҐMtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpҐAtransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpҐ?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpҐAtransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpВ
$token_and_position_embedding_1/ShapeShapeinputs*
T0*
_output_shapes
:2&
$token_and_position_embedding_1/Shapeї
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€24
2token_and_position_embedding_1/strided_slice/stackґ
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_1/strided_slice/stack_1ґ
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_1/strided_slice/stack_2Ь
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_1/strided_sliceЪ
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_1/range/startЪ
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_1/range/deltaЫ
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*#
_output_shapes
:€€€€€€€€€2&
$token_and_position_embedding_1/range»
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherAtoken_and_position_embedding_1_embedding_3_embedding_lookup_99297-token_and_position_embedding_1/range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/99297*'
_output_shapes
:€€€€€€€€€ *
dtype02=
;token_and_position_embedding_1/embedding_3/embedding_lookupФ
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/99297*'
_output_shapes
:€€€€€€€€€ 2F
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityЭ
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2H
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1≥
/token_and_position_embedding_1/embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€21
/token_and_position_embedding_1/embedding_2/Cast“
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherAtoken_and_position_embedding_1_embedding_2_embedding_lookup_993033token_and_position_embedding_1/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/99303*+
_output_shapes
:€€€€€€€€€ *
dtype02=
;token_and_position_embedding_1/embedding_2/embedding_lookupШ
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/99303*+
_output_shapes
:€€€€€€€€€ 2F
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity°
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2H
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1©
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2$
"token_and_position_embedding_1/addє
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpй
>transformer_block_1/multi_head_attention_1/query/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Utransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2@
>transformer_block_1/multi_head_attention_1/query/einsum/EinsumЧ
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpLtransformer_block_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp≈
4transformer_block_1/multi_head_attention_1/query/addAddV2Gtransformer_block_1/multi_head_attention_1/query/einsum/Einsum:output:0Ktransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 26
4transformer_block_1/multi_head_attention_1/query/add≥
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02M
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpг
<transformer_block_1/multi_head_attention_1/key/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Stransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2>
<transformer_block_1/multi_head_attention_1/key/einsum/EinsumС
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpJtransformer_block_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02C
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpљ
2transformer_block_1/multi_head_attention_1/key/addAddV2Etransformer_block_1/multi_head_attention_1/key/einsum/Einsum:output:0Itransformer_block_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 24
2transformer_block_1/multi_head_attention_1/key/addє
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpй
>transformer_block_1/multi_head_attention_1/value/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Utransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2@
>transformer_block_1/multi_head_attention_1/value/einsum/EinsumЧ
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpLtransformer_block_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp≈
4transformer_block_1/multi_head_attention_1/value/addAddV2Gtransformer_block_1/multi_head_attention_1/value/einsum/Einsum:output:0Ktransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 26
4transformer_block_1/multi_head_attention_1/value/add©
0transformer_block_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>22
0transformer_block_1/multi_head_attention_1/Mul/yЦ
.transformer_block_1/multi_head_attention_1/MulMul8transformer_block_1/multi_head_attention_1/query/add:z:09transformer_block_1/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 20
.transformer_block_1/multi_head_attention_1/Mulћ
8transformer_block_1/multi_head_attention_1/einsum/EinsumEinsum6transformer_block_1/multi_head_attention_1/key/add:z:02transformer_block_1/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€*
equationaecd,abcd->acbe2:
8transformer_block_1/multi_head_attention_1/einsum/EinsumА
:transformer_block_1/multi_head_attention_1/softmax/SoftmaxSoftmaxAtransformer_block_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€2<
:transformer_block_1/multi_head_attention_1/softmax/SoftmaxЖ
;transformer_block_1/multi_head_attention_1/dropout/IdentityIdentityDtransformer_block_1/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€2=
;transformer_block_1/multi_head_attention_1/dropout/Identityд
:transformer_block_1/multi_head_attention_1/einsum_1/EinsumEinsumDtransformer_block_1/multi_head_attention_1/dropout/Identity:output:08transformer_block_1/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationacbe,aecd->abcd2<
:transformer_block_1/multi_head_attention_1/einsum_1/EinsumЏ
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02Z
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp£
Itransformer_block_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumCtransformer_block_1/multi_head_attention_1/einsum_1/Einsum:output:0`transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€ *
equationabcd,cde->abe2K
Itransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsumі
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02P
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpн
?transformer_block_1/multi_head_attention_1/attention_output/addAddV2Rtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Vtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2A
?transformer_block_1/multi_head_attention_1/attention_output/add„
&transformer_block_1/dropout_4/IdentityIdentityCtransformer_block_1/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2(
&transformer_block_1/dropout_4/Identity 
transformer_block_1/addAddV2&token_and_position_embedding_1/add:z:0/transformer_block_1/dropout_4/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transformer_block_1/addё
Htransformer_block_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_1/layer_normalization_2/moments/mean/reduction_indicesѓ
6transformer_block_1/layer_normalization_2/moments/meanMeantransformer_block_1/add:z:0Qtransformer_block_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(28
6transformer_block_1/layer_normalization_2/moments/meanЗ
>transformer_block_1/layer_normalization_2/moments/StopGradientStopGradient?transformer_block_1/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2@
>transformer_block_1/layer_normalization_2/moments/StopGradientї
Ctransformer_block_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencetransformer_block_1/add:z:0Gtransformer_block_1/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2E
Ctransformer_block_1/layer_normalization_2/moments/SquaredDifferenceж
Ltransformer_block_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_1/layer_normalization_2/moments/variance/reduction_indicesз
:transformer_block_1/layer_normalization_2/moments/varianceMeanGtransformer_block_1/layer_normalization_2/moments/SquaredDifference:z:0Utransformer_block_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2<
:transformer_block_1/layer_normalization_2/moments/varianceї
9transformer_block_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52;
9transformer_block_1/layer_normalization_2/batchnorm/add/yЇ
7transformer_block_1/layer_normalization_2/batchnorm/addAddV2Ctransformer_block_1/layer_normalization_2/moments/variance:output:0Btransformer_block_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€29
7transformer_block_1/layer_normalization_2/batchnorm/addт
9transformer_block_1/layer_normalization_2/batchnorm/RsqrtRsqrt;transformer_block_1/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2;
9transformer_block_1/layer_normalization_2/batchnorm/RsqrtЬ
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpЊ
7transformer_block_1/layer_normalization_2/batchnorm/mulMul=transformer_block_1/layer_normalization_2/batchnorm/Rsqrt:y:0Ntransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 29
7transformer_block_1/layer_normalization_2/batchnorm/mulН
9transformer_block_1/layer_normalization_2/batchnorm/mul_1Multransformer_block_1/add:z:0;transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_2/batchnorm/mul_1±
9transformer_block_1/layer_normalization_2/batchnorm/mul_2Mul?transformer_block_1/layer_normalization_2/moments/mean:output:0;transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_2/batchnorm/mul_2Р
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpЇ
7transformer_block_1/layer_normalization_2/batchnorm/subSubJtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0=transformer_block_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 29
7transformer_block_1/layer_normalization_2/batchnorm/sub±
9transformer_block_1/layer_normalization_2/batchnorm/add_1AddV2=transformer_block_1/layer_normalization_2/batchnorm/mul_1:z:0;transformer_block_1/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_2/batchnorm/add_1С
Atransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_1_sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02C
Atransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpЉ
7transformer_block_1/sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_1/sequential_1/dense_4/Tensordot/axes√
7transformer_block_1/sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_1/sequential_1/dense_4/Tensordot/freeб
8transformer_block_1/sequential_1/dense_4/Tensordot/ShapeShape=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_4/Tensordot/Shape∆
@transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2/axisЮ
;transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2GatherV2Atransformer_block_1/sequential_1/dense_4/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_4/Tensordot/free:output:0Itransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2 
Btransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1/axis§
=transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1GatherV2Atransformer_block_1/sequential_1/dense_4/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_4/Tensordot/axes:output:0Ktransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1Њ
8transformer_block_1/sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_1/sequential_1/dense_4/Tensordot/Const§
7transformer_block_1/sequential_1/dense_4/Tensordot/ProdProdDtransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Atransformer_block_1/sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_1/sequential_1/dense_4/Tensordot/Prod¬
:transformer_block_1/sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_4/Tensordot/Const_1ђ
9transformer_block_1/sequential_1/dense_4/Tensordot/Prod_1ProdFtransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1:output:0Ctransformer_block_1/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_1/sequential_1/dense_4/Tensordot/Prod_1¬
>transformer_block_1/sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_1/sequential_1/dense_4/Tensordot/concat/axisэ
9transformer_block_1/sequential_1/dense_4/Tensordot/concatConcatV2@transformer_block_1/sequential_1/dense_4/Tensordot/free:output:0@transformer_block_1/sequential_1/dense_4/Tensordot/axes:output:0Gtransformer_block_1/sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_1/sequential_1/dense_4/Tensordot/concat∞
8transformer_block_1/sequential_1/dense_4/Tensordot/stackPack@transformer_block_1/sequential_1/dense_4/Tensordot/Prod:output:0Btransformer_block_1/sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_4/Tensordot/stack¬
<transformer_block_1/sequential_1/dense_4/Tensordot/transpose	Transpose=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0Btransformer_block_1/sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2>
<transformer_block_1/sequential_1/dense_4/Tensordot/transpose√
:transformer_block_1/sequential_1/dense_4/Tensordot/ReshapeReshape@transformer_block_1/sequential_1/dense_4/Tensordot/transpose:y:0Atransformer_block_1/sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2<
:transformer_block_1/sequential_1/dense_4/Tensordot/Reshape¬
9transformer_block_1/sequential_1/dense_4/Tensordot/MatMulMatMulCtransformer_block_1/sequential_1/dense_4/Tensordot/Reshape:output:0Itransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/sequential_1/dense_4/Tensordot/MatMul¬
:transformer_block_1/sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_4/Tensordot/Const_2∆
@transformer_block_1/sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_4/Tensordot/concat_1/axisК
;transformer_block_1/sequential_1/dense_4/Tensordot/concat_1ConcatV2Dtransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Ctransformer_block_1/sequential_1/dense_4/Tensordot/Const_2:output:0Itransformer_block_1/sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_4/Tensordot/concat_1і
2transformer_block_1/sequential_1/dense_4/TensordotReshapeCtransformer_block_1/sequential_1/dense_4/Tensordot/MatMul:product:0Dtransformer_block_1/sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 24
2transformer_block_1/sequential_1/dense_4/TensordotЗ
?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_1_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpЂ
0transformer_block_1/sequential_1/dense_4/BiasAddBiasAdd;transformer_block_1/sequential_1/dense_4/Tensordot:output:0Gtransformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 22
0transformer_block_1/sequential_1/dense_4/BiasAdd„
-transformer_block_1/sequential_1/dense_4/ReluRelu9transformer_block_1/sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2/
-transformer_block_1/sequential_1/dense_4/ReluС
Atransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_1_sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02C
Atransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpЉ
7transformer_block_1/sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_1/sequential_1/dense_5/Tensordot/axes√
7transformer_block_1/sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_1/sequential_1/dense_5/Tensordot/freeя
8transformer_block_1/sequential_1/dense_5/Tensordot/ShapeShape;transformer_block_1/sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_5/Tensordot/Shape∆
@transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2/axisЮ
;transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2GatherV2Atransformer_block_1/sequential_1/dense_5/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_5/Tensordot/free:output:0Itransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2 
Btransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis§
=transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1GatherV2Atransformer_block_1/sequential_1/dense_5/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_5/Tensordot/axes:output:0Ktransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1Њ
8transformer_block_1/sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_1/sequential_1/dense_5/Tensordot/Const§
7transformer_block_1/sequential_1/dense_5/Tensordot/ProdProdDtransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Atransformer_block_1/sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_1/sequential_1/dense_5/Tensordot/Prod¬
:transformer_block_1/sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_5/Tensordot/Const_1ђ
9transformer_block_1/sequential_1/dense_5/Tensordot/Prod_1ProdFtransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1:output:0Ctransformer_block_1/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_1/sequential_1/dense_5/Tensordot/Prod_1¬
>transformer_block_1/sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_1/sequential_1/dense_5/Tensordot/concat/axisэ
9transformer_block_1/sequential_1/dense_5/Tensordot/concatConcatV2@transformer_block_1/sequential_1/dense_5/Tensordot/free:output:0@transformer_block_1/sequential_1/dense_5/Tensordot/axes:output:0Gtransformer_block_1/sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_1/sequential_1/dense_5/Tensordot/concat∞
8transformer_block_1/sequential_1/dense_5/Tensordot/stackPack@transformer_block_1/sequential_1/dense_5/Tensordot/Prod:output:0Btransformer_block_1/sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_5/Tensordot/stackј
<transformer_block_1/sequential_1/dense_5/Tensordot/transpose	Transpose;transformer_block_1/sequential_1/dense_4/Relu:activations:0Btransformer_block_1/sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2>
<transformer_block_1/sequential_1/dense_5/Tensordot/transpose√
:transformer_block_1/sequential_1/dense_5/Tensordot/ReshapeReshape@transformer_block_1/sequential_1/dense_5/Tensordot/transpose:y:0Atransformer_block_1/sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2<
:transformer_block_1/sequential_1/dense_5/Tensordot/Reshape¬
9transformer_block_1/sequential_1/dense_5/Tensordot/MatMulMatMulCtransformer_block_1/sequential_1/dense_5/Tensordot/Reshape:output:0Itransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/sequential_1/dense_5/Tensordot/MatMul¬
:transformer_block_1/sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_5/Tensordot/Const_2∆
@transformer_block_1/sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_5/Tensordot/concat_1/axisК
;transformer_block_1/sequential_1/dense_5/Tensordot/concat_1ConcatV2Dtransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Ctransformer_block_1/sequential_1/dense_5/Tensordot/Const_2:output:0Itransformer_block_1/sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_5/Tensordot/concat_1і
2transformer_block_1/sequential_1/dense_5/TensordotReshapeCtransformer_block_1/sequential_1/dense_5/Tensordot/MatMul:product:0Dtransformer_block_1/sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 24
2transformer_block_1/sequential_1/dense_5/TensordotЗ
?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_1_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpЂ
0transformer_block_1/sequential_1/dense_5/BiasAddBiasAdd;transformer_block_1/sequential_1/dense_5/Tensordot:output:0Gtransformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 22
0transformer_block_1/sequential_1/dense_5/BiasAddЌ
&transformer_block_1/dropout_5/IdentityIdentity9transformer_block_1/sequential_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2(
&transformer_block_1/dropout_5/Identityе
transformer_block_1/add_1AddV2=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0/transformer_block_1/dropout_5/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transformer_block_1/add_1ё
Htransformer_block_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_1/layer_normalization_3/moments/mean/reduction_indices±
6transformer_block_1/layer_normalization_3/moments/meanMeantransformer_block_1/add_1:z:0Qtransformer_block_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(28
6transformer_block_1/layer_normalization_3/moments/meanЗ
>transformer_block_1/layer_normalization_3/moments/StopGradientStopGradient?transformer_block_1/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2@
>transformer_block_1/layer_normalization_3/moments/StopGradientљ
Ctransformer_block_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferencetransformer_block_1/add_1:z:0Gtransformer_block_1/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2E
Ctransformer_block_1/layer_normalization_3/moments/SquaredDifferenceж
Ltransformer_block_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_1/layer_normalization_3/moments/variance/reduction_indicesз
:transformer_block_1/layer_normalization_3/moments/varianceMeanGtransformer_block_1/layer_normalization_3/moments/SquaredDifference:z:0Utransformer_block_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2<
:transformer_block_1/layer_normalization_3/moments/varianceї
9transformer_block_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52;
9transformer_block_1/layer_normalization_3/batchnorm/add/yЇ
7transformer_block_1/layer_normalization_3/batchnorm/addAddV2Ctransformer_block_1/layer_normalization_3/moments/variance:output:0Btransformer_block_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€29
7transformer_block_1/layer_normalization_3/batchnorm/addт
9transformer_block_1/layer_normalization_3/batchnorm/RsqrtRsqrt;transformer_block_1/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2;
9transformer_block_1/layer_normalization_3/batchnorm/RsqrtЬ
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpЊ
7transformer_block_1/layer_normalization_3/batchnorm/mulMul=transformer_block_1/layer_normalization_3/batchnorm/Rsqrt:y:0Ntransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 29
7transformer_block_1/layer_normalization_3/batchnorm/mulП
9transformer_block_1/layer_normalization_3/batchnorm/mul_1Multransformer_block_1/add_1:z:0;transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_3/batchnorm/mul_1±
9transformer_block_1/layer_normalization_3/batchnorm/mul_2Mul?transformer_block_1/layer_normalization_3/moments/mean:output:0;transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_3/batchnorm/mul_2Р
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpЇ
7transformer_block_1/layer_normalization_3/batchnorm/subSubJtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0=transformer_block_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 29
7transformer_block_1/layer_normalization_3/batchnorm/sub±
9transformer_block_1/layer_normalization_3/batchnorm/add_1AddV2=transformer_block_1/layer_normalization_3/batchnorm/mul_1:z:0;transformer_block_1/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_3/batchnorm/add_1®
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_1/Mean/reduction_indicesч
global_average_pooling1d_1/MeanMean=transformer_block_1/layer_normalization_3/batchnorm/add_1:z:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
global_average_pooling1d_1/MeanР
dropout_6/IdentityIdentity(global_average_pooling1d_1/Mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/Identity•
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_6/MatMul/ReadVariableOp†
dense_6/MatMulMatMuldropout_6/Identity:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/MatMul§
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp°
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/ReluВ
dropout_7/IdentityIdentitydense_6/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_7/Identity•
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_7/MatMul/ReadVariableOp†
dense_7/MatMulMatMuldropout_7/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/MatMul§
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp°
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/Softmaxt
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityё
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookupC^transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpG^transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpC^transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpG^transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpO^transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpY^transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpL^transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpD^transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpN^transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpD^transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpN^transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp@^transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpB^transformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOp@^transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpB^transformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2И
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpBtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp2Р
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpFtransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2И
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpBtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp2Р
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpFtransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2†
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpNtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp2і
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2Ж
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpAtransformer_block_1/multi_head_attention_1/key/add/ReadVariableOp2Ъ
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpKtransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpCtransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp2Ю
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpMtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpCtransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp2Ю
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpMtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2В
?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOp?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOp2Ж
Atransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpAtransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOp2В
?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp2Ж
Atransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpAtransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ƒ!
щ
B__inference_dense_4_layer_call_and_return_conditional_losses_98043

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
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
Tensordot/GatherV2/axis—
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
Tensordot/GatherV2_1/axis„
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
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityВ
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Й
≠
G__inference_sequential_1_layer_call_and_return_conditional_losses_98198
dense_4_input
dense_4_98187:  
dense_4_98189: 
dense_5_98192:  
dense_5_98194: 
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallЬ
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_98187dense_4_98189*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_980432!
dense_4/StatefulPartitionedCallЈ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_98192dense_5_98194*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_980792!
dense_5/StatefulPartitionedCallЗ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityТ
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€ 
'
_user_specified_namedense_4_input
∆
—
#__inference_signature_wrapper_99188
input_2
unknown: 
	unknown_0:	и^ 
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
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *)
f$R"
 __inference__wrapped_model_980052
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
ц®
И+
__inference__traced_save_100600
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopT
Psavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopV
Rsavev2_transformer_block_1_multi_head_attention_1_query_kernel_read_readvariableopT
Psavev2_transformer_block_1_multi_head_attention_1_query_bias_read_readvariableopT
Psavev2_transformer_block_1_multi_head_attention_1_key_kernel_read_readvariableopR
Nsavev2_transformer_block_1_multi_head_attention_1_key_bias_read_readvariableopV
Rsavev2_transformer_block_1_multi_head_attention_1_value_kernel_read_readvariableopT
Psavev2_transformer_block_1_multi_head_attention_1_value_bias_read_readvariableopa
]savev2_transformer_block_1_multi_head_attention_1_attention_output_kernel_read_readvariableop_
[savev2_transformer_block_1_multi_head_attention_1_attention_output_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableopN
Jsavev2_transformer_block_1_layer_normalization_2_gamma_read_readvariableopM
Isavev2_transformer_block_1_layer_normalization_2_beta_read_readvariableopN
Jsavev2_transformer_block_1_layer_normalization_3_gamma_read_readvariableopM
Isavev2_transformer_block_1_layer_normalization_3_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_m_read_readvariableop]
Ysavev2_adam_transformer_block_1_multi_head_attention_1_query_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_1_multi_head_attention_1_query_bias_m_read_readvariableop[
Wsavev2_adam_transformer_block_1_multi_head_attention_1_key_kernel_m_read_readvariableopY
Usavev2_adam_transformer_block_1_multi_head_attention_1_key_bias_m_read_readvariableop]
Ysavev2_adam_transformer_block_1_multi_head_attention_1_value_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_1_multi_head_attention_1_value_bias_m_read_readvariableoph
dsavev2_adam_transformer_block_1_multi_head_attention_1_attention_output_kernel_m_read_readvariableopf
bsavev2_adam_transformer_block_1_multi_head_attention_1_attention_output_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopU
Qsavev2_adam_transformer_block_1_layer_normalization_2_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_1_layer_normalization_2_beta_m_read_readvariableopU
Qsavev2_adam_transformer_block_1_layer_normalization_3_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_1_layer_normalization_3_beta_m_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_v_read_readvariableop]
Ysavev2_adam_transformer_block_1_multi_head_attention_1_query_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_1_multi_head_attention_1_query_bias_v_read_readvariableop[
Wsavev2_adam_transformer_block_1_multi_head_attention_1_key_kernel_v_read_readvariableopY
Usavev2_adam_transformer_block_1_multi_head_attention_1_key_bias_v_read_readvariableop]
Ysavev2_adam_transformer_block_1_multi_head_attention_1_value_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_1_multi_head_attention_1_value_bias_v_read_readvariableoph
dsavev2_adam_transformer_block_1_multi_head_attention_1_attention_output_kernel_v_read_readvariableopf
bsavev2_adam_transformer_block_1_multi_head_attention_1_attention_output_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopU
Qsavev2_adam_transformer_block_1_layer_normalization_2_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_1_layer_normalization_2_beta_v_read_readvariableopU
Qsavev2_adam_transformer_block_1_layer_normalization_3_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_1_layer_normalization_3_beta_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameж(
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*ш'
valueо'Bл'LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names£
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*≠
value£B†LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesх)
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopRsavev2_transformer_block_1_multi_head_attention_1_query_kernel_read_readvariableopPsavev2_transformer_block_1_multi_head_attention_1_query_bias_read_readvariableopPsavev2_transformer_block_1_multi_head_attention_1_key_kernel_read_readvariableopNsavev2_transformer_block_1_multi_head_attention_1_key_bias_read_readvariableopRsavev2_transformer_block_1_multi_head_attention_1_value_kernel_read_readvariableopPsavev2_transformer_block_1_multi_head_attention_1_value_bias_read_readvariableop]savev2_transformer_block_1_multi_head_attention_1_attention_output_kernel_read_readvariableop[savev2_transformer_block_1_multi_head_attention_1_attention_output_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableopJsavev2_transformer_block_1_layer_normalization_2_gamma_read_readvariableopIsavev2_transformer_block_1_layer_normalization_2_beta_read_readvariableopJsavev2_transformer_block_1_layer_normalization_3_gamma_read_readvariableopIsavev2_transformer_block_1_layer_normalization_3_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_m_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_m_read_readvariableopYsavev2_adam_transformer_block_1_multi_head_attention_1_query_kernel_m_read_readvariableopWsavev2_adam_transformer_block_1_multi_head_attention_1_query_bias_m_read_readvariableopWsavev2_adam_transformer_block_1_multi_head_attention_1_key_kernel_m_read_readvariableopUsavev2_adam_transformer_block_1_multi_head_attention_1_key_bias_m_read_readvariableopYsavev2_adam_transformer_block_1_multi_head_attention_1_value_kernel_m_read_readvariableopWsavev2_adam_transformer_block_1_multi_head_attention_1_value_bias_m_read_readvariableopdsavev2_adam_transformer_block_1_multi_head_attention_1_attention_output_kernel_m_read_readvariableopbsavev2_adam_transformer_block_1_multi_head_attention_1_attention_output_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableopQsavev2_adam_transformer_block_1_layer_normalization_2_gamma_m_read_readvariableopPsavev2_adam_transformer_block_1_layer_normalization_2_beta_m_read_readvariableopQsavev2_adam_transformer_block_1_layer_normalization_3_gamma_m_read_readvariableopPsavev2_adam_transformer_block_1_layer_normalization_3_beta_m_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_v_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_v_read_readvariableopYsavev2_adam_transformer_block_1_multi_head_attention_1_query_kernel_v_read_readvariableopWsavev2_adam_transformer_block_1_multi_head_attention_1_query_bias_v_read_readvariableopWsavev2_adam_transformer_block_1_multi_head_attention_1_key_kernel_v_read_readvariableopUsavev2_adam_transformer_block_1_multi_head_attention_1_key_bias_v_read_readvariableopYsavev2_adam_transformer_block_1_multi_head_attention_1_value_kernel_v_read_readvariableopWsavev2_adam_transformer_block_1_multi_head_attention_1_value_bias_v_read_readvariableopdsavev2_adam_transformer_block_1_multi_head_attention_1_attention_output_kernel_v_read_readvariableopbsavev2_adam_transformer_block_1_multi_head_attention_1_attention_output_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopQsavev2_adam_transformer_block_1_layer_normalization_2_gamma_v_read_readvariableopPsavev2_adam_transformer_block_1_layer_normalization_2_beta_v_read_readvariableopQsavev2_adam_transformer_block_1_layer_normalization_3_gamma_v_read_readvariableopPsavev2_adam_transformer_block_1_layer_normalization_3_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*Ж
_input_shapesф
с: : :::: : : : : :	и^ : :  : :  : :  : :  : :  : :  : : : : : : : : : : ::::	и^ : :  : :  : :  : :  : :  : :  : : : : : : ::::	и^ : :  : :  : :  : :  : :  : :  : : : : : : 2(
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
:	и^ :$ 

_output_shapes

: :($
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
:	и^ :$% 

_output_shapes

: :(&$
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
:	и^ :$; 

_output_shapes

: :(<$
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
§
c
*__inference_dropout_6_layer_call_fn_100049

inputs
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_985862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
с
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_98432

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Д
≥
3__inference_transformer_block_1_layer_call_fn_99750

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
identityИҐStatefulPartitionedCall¬
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
:€€€€€€€€€ *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_987742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€ : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Й
ф
C__inference_dense_7_layer_call_and_return_conditional_losses_100133

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
эп
•
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_98774

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_1_query_add_readvariableop_resource: V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_1_key_add_readvariableop_resource: X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_1_value_add_readvariableop_resource: c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:  Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource: I
;layer_normalization_2_batchnorm_mul_readvariableop_resource: E
7layer_normalization_2_batchnorm_readvariableop_resource: H
6sequential_1_dense_4_tensordot_readvariableop_resource:  B
4sequential_1_dense_4_biasadd_readvariableop_resource: H
6sequential_1_dense_5_tensordot_readvariableop_resource:  B
4sequential_1_dense_5_biasadd_readvariableop_resource: I
;layer_normalization_3_batchnorm_mul_readvariableop_resource: E
7layer_normalization_3_batchnorm_readvariableop_resource: 
identityИҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ+sequential_1/dense_4/BiasAdd/ReadVariableOpҐ-sequential_1/dense_4/Tensordot/ReadVariableOpҐ+sequential_1/dense_5/BiasAdd/ReadVariableOpҐ-sequential_1/dense_5/Tensordot/ReadVariableOpэ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2,
*multi_head_attention_1/query/einsum/Einsumџ
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/query/add/ReadVariableOpх
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2"
 multi_head_attention_1/query/addч
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpЗ
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2*
(multi_head_attention_1/key/einsum/Einsum’
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_1/key/add/ReadVariableOpн
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2 
multi_head_attention_1/key/addэ
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2,
*multi_head_attention_1/value/einsum/Einsumџ
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/value/add/ReadVariableOpх
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2"
 multi_head_attention_1/value/addБ
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>2
multi_head_attention_1/Mul/y∆
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
multi_head_attention_1/Mulь
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€*
equationaecd,abcd->acbe2&
$multi_head_attention_1/einsum/Einsumƒ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€2(
&multi_head_attention_1/softmax/SoftmaxФ
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/softmax/Softmax:softmax:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationacbe,aecd->abcd2(
&multi_head_attention_1/einsum_1/EinsumЮ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp”
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€ *
equationabcd,cde->abe27
5multi_head_attention_1/attention_output/einsum/Einsumш
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_1/attention_output/add/ReadVariableOpЭ
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2-
+multi_head_attention_1/attention_output/addw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_4/dropout/ConstЊ
dropout_4/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_4/dropout/MulС
dropout_4/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape÷
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ *
dtype020
.dropout_4/dropout/random_uniform/RandomUniformЙ
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_4/dropout/GreaterEqual/yк
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
dropout_4/dropout/GreaterEqual°
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€ 2
dropout_4/dropout/Cast¶
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_4/dropout/Mul_1n
addAddV2inputsdropout_4/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
addґ
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_2/moments/mean/reduction_indicesя
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2$
"layer_normalization_2/moments/meanЋ
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2,
*layer_normalization_2/moments/StopGradientл
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 21
/layer_normalization_2/moments/SquaredDifferenceЊ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_2/moments/variance/reduction_indicesЧ
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2(
&layer_normalization_2/moments/varianceУ
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_2/batchnorm/add/yк
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2%
#layer_normalization_2/batchnorm/addґ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%layer_normalization_2/batchnorm/Rsqrtа
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_2/batchnorm/mul/ReadVariableOpо
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_2/batchnorm/mulљ
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/mul_1б
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/mul_2‘
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_2/batchnorm/ReadVariableOpк
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_2/batchnorm/subб
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/add_1’
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_1/dense_4/Tensordot/ReadVariableOpФ
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_4/Tensordot/axesЫ
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_4/Tensordot/free•
$sequential_1/dense_4/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_1/dense_4/Tensordot/ShapeЮ
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_4/Tensordot/GatherV2/axisЇ
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_4/Tensordot/GatherV2Ґ
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_4/Tensordot/GatherV2_1/axisј
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_4/Tensordot/GatherV2_1Ц
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_4/Tensordot/Const‘
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_4/Tensordot/ProdЪ
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_4/Tensordot/Const_1№
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_4/Tensordot/Prod_1Ъ
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_4/Tensordot/concat/axisЩ
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_4/Tensordot/concatа
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_4/Tensordot/stackт
(sequential_1/dense_4/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2*
(sequential_1/dense_4/Tensordot/transposeу
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_4/Tensordot/Reshapeт
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_4/Tensordot/MatMulЪ
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_4/Tensordot/Const_2Ю
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_4/Tensordot/concat_1/axis¶
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_4/Tensordot/concat_1д
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
sequential_1/dense_4/TensordotЋ
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_4/BiasAdd/ReadVariableOpџ
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_4/BiasAddЫ
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_4/Relu’
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_1/dense_5/Tensordot/ReadVariableOpФ
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_5/Tensordot/axesЫ
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_5/Tensordot/free£
$sequential_1/dense_5/Tensordot/ShapeShape'sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dense_5/Tensordot/ShapeЮ
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_5/Tensordot/GatherV2/axisЇ
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_5/Tensordot/GatherV2Ґ
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_5/Tensordot/GatherV2_1/axisј
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_5/Tensordot/GatherV2_1Ц
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_5/Tensordot/Const‘
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_5/Tensordot/ProdЪ
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_5/Tensordot/Const_1№
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_5/Tensordot/Prod_1Ъ
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_5/Tensordot/concat/axisЩ
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_5/Tensordot/concatа
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_5/Tensordot/stackр
(sequential_1/dense_5/Tensordot/transpose	Transpose'sequential_1/dense_4/Relu:activations:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2*
(sequential_1/dense_5/Tensordot/transposeу
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_5/Tensordot/Reshapeт
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_5/Tensordot/MatMulЪ
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_5/Tensordot/Const_2Ю
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_5/Tensordot/concat_1/axis¶
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_5/Tensordot/concat_1д
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
sequential_1/dense_5/TensordotЋ
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_5/BiasAdd/ReadVariableOpџ
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_5/BiasAddw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_5/dropout/Constі
dropout_5/dropout/MulMul%sequential_1/dense_5/BiasAdd:output:0 dropout_5/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_5/dropout/MulЗ
dropout_5/dropout/ShapeShape%sequential_1/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape÷
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ *
dtype020
.dropout_5/dropout/random_uniform/RandomUniformЙ
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_5/dropout/GreaterEqual/yк
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
dropout_5/dropout/GreaterEqual°
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€ 2
dropout_5/dropout/Cast¶
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_5/dropout/Mul_1Х
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_5/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
add_1ґ
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_3/moments/mean/reduction_indicesб
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2$
"layer_normalization_3/moments/meanЋ
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2,
*layer_normalization_3/moments/StopGradientн
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 21
/layer_normalization_3/moments/SquaredDifferenceЊ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_3/moments/variance/reduction_indicesЧ
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2(
&layer_normalization_3/moments/varianceУ
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_3/batchnorm/add/yк
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2%
#layer_normalization_3/batchnorm/addґ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%layer_normalization_3/batchnorm/Rsqrtа
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_3/batchnorm/mul/ReadVariableOpо
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_3/batchnorm/mulњ
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/mul_1б
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/mul_2‘
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_3/batchnorm/ReadVariableOpк
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_3/batchnorm/subб
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/add_1И
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity†
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€ : : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ё,
љ	
B__inference_TRNS_20_layer_call_and_return_conditional_losses_98476

inputs6
$token_and_position_embedding_1_98254: 7
$token_and_position_embedding_1_98256:	и^ /
transformer_block_1_98387:  +
transformer_block_1_98389: /
transformer_block_1_98391:  +
transformer_block_1_98393: /
transformer_block_1_98395:  +
transformer_block_1_98397: /
transformer_block_1_98399:  '
transformer_block_1_98401: '
transformer_block_1_98403: '
transformer_block_1_98405: +
transformer_block_1_98407:  '
transformer_block_1_98409: +
transformer_block_1_98411:  '
transformer_block_1_98413: '
transformer_block_1_98415: '
transformer_block_1_98417: 
dense_6_98446: 
dense_6_98448:
dense_7_98470:
dense_7_98472:
identityИҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallҐ6token_and_position_embedding_1/StatefulPartitionedCallҐ+transformer_block_1/StatefulPartitionedCallИ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs$token_and_position_embedding_1_98254$token_and_position_embedding_1_98256*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_9825328
6token_and_position_embedding_1/StatefulPartitionedCall†
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_block_1_98387transformer_block_1_98389transformer_block_1_98391transformer_block_1_98393transformer_block_1_98395transformer_block_1_98397transformer_block_1_98399transformer_block_1_98401transformer_block_1_98403transformer_block_1_98405transformer_block_1_98407transformer_block_1_98409transformer_block_1_98411transformer_block_1_98413transformer_block_1_98415transformer_block_1_98417*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_983862-
+transformer_block_1/StatefulPartitionedCallЉ
*global_average_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_984252,
*global_average_pooling1d_1/PartitionedCallИ
dropout_6/PartitionedCallPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_984322
dropout_6/PartitionedCall≠
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_6_98446dense_6_98448*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_984452!
dense_6/StatefulPartitionedCallэ
dropout_7/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_984562
dropout_7/PartitionedCall≠
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_7_98470dense_7_98472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_984692!
dense_7/StatefulPartitionedCallГ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityщ
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ґ
W
;__inference_global_average_pooling1d_1_layer_call_fn_100022

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_982082
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
™
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_98586

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
¬
F
*__inference_dropout_6_layer_call_fn_100044

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_984322
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Б
ф
C__inference_dense_6_layer_call_and_return_conditional_losses_100086

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
с
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_98456

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
м
’
'__inference_TRNS_20_layer_call_fn_99021
input_2
unknown: 
	unknown_0:	и^ 
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
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_TRNS_20_layer_call_and_return_conditional_losses_989252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
э
Ю
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_98253
x4
"embedding_3_embedding_lookup_98240: 5
"embedding_2_embedding_lookup_98246:	и^ 
identityИҐembedding_2/embedding_lookupҐembedding_3/embedding_lookup?
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
€€€€€€€€€2
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
strided_slice/stack_2в
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
range/deltaА
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
range≠
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_98240range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/98240*'
_output_shapes
:€€€€€€€€€ *
dtype02
embedding_3/embedding_lookupШ
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/98240*'
_output_shapes
:€€€€€€€€€ 2'
%embedding_3/embedding_lookup/Identityј
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'embedding_3/embedding_lookup/Identity_1p
embedding_2/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
embedding_2/CastЈ
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_98246embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/98246*+
_output_shapes
:€€€€€€€€€ *
dtype02
embedding_2/embedding_lookupЬ
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/98246*+
_output_shapes
:€€€€€€€€€ 2'
%embedding_2/embedding_lookup/Identityƒ
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2)
'embedding_2/embedding_lookup/Identity_1≠
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
addf
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityМ
NoOpNoOp^embedding_2/embedding_lookup^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:J F
'
_output_shapes
:€€€€€€€€€

_user_specified_namex
ВJ
„
H__inference_sequential_1_layer_call_and_return_conditional_losses_100273

inputs;
)dense_4_tensordot_readvariableop_resource:  5
'dense_4_biasadd_readvariableop_resource: ;
)dense_5_tensordot_readvariableop_resource:  5
'dense_5_biasadd_readvariableop_resource: 
identityИҐdense_4/BiasAdd/ReadVariableOpҐ dense_4/Tensordot/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐ dense_5/Tensordot/ReadVariableOpЃ
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axesБ
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/freeh
dense_4/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_4/Tensordot/ShapeД
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axisщ
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2И
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis€
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const†
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/ProdА
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1®
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1А
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axisЎ
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concatђ
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack®
dense_4/Tensordot/transpose	Transposeinputs!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_4/Tensordot/transposeњ
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_4/Tensordot/ReshapeЊ
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_4/Tensordot/MatMulА
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_2Д
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axisе
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1∞
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_4/Tensordot§
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_4/BiasAdd/ReadVariableOpІ
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_4/BiasAddt
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_4/ReluЃ
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_5/Tensordot/ReadVariableOpz
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_5/Tensordot/axesБ
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_5/Tensordot/free|
dense_5/Tensordot/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:2
dense_5/Tensordot/ShapeД
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_5/Tensordot/GatherV2/axisщ
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_5/Tensordot/GatherV2И
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_5/Tensordot/GatherV2_1/axis€
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_5/Tensordot/GatherV2_1|
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const†
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_5/Tensordot/ProdА
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const_1®
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_5/Tensordot/Prod_1А
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_5/Tensordot/concat/axisЎ
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/concatђ
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/stackЉ
dense_5/Tensordot/transpose	Transposedense_4/Relu:activations:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_5/Tensordot/transposeњ
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_5/Tensordot/ReshapeЊ
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_5/Tensordot/MatMulА
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const_2Д
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_5/Tensordot/concat_1/axisе
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/concat_1∞
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_5/Tensordot§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_5/BiasAdd/ReadVariableOpІ
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_5/BiasAddw
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity÷
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
м
W
;__inference_global_average_pooling1d_1_layer_call_fn_100027

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_984252
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ф
¶
G__inference_sequential_1_layer_call_and_return_conditional_losses_98146

inputs
dense_4_98135:  
dense_4_98137: 
dense_5_98140:  
dense_5_98142: 
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallХ
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_98135dense_4_98137*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_980432!
dense_4/StatefulPartitionedCallЈ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_98140dense_5_98142*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_980792!
dense_5/StatefulPartitionedCallЗ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityТ
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
т
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_100101

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ґё
•
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_98386

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_1_query_add_readvariableop_resource: V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_1_key_add_readvariableop_resource: X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_1_value_add_readvariableop_resource: c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:  Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource: I
;layer_normalization_2_batchnorm_mul_readvariableop_resource: E
7layer_normalization_2_batchnorm_readvariableop_resource: H
6sequential_1_dense_4_tensordot_readvariableop_resource:  B
4sequential_1_dense_4_biasadd_readvariableop_resource: H
6sequential_1_dense_5_tensordot_readvariableop_resource:  B
4sequential_1_dense_5_biasadd_readvariableop_resource: I
;layer_normalization_3_batchnorm_mul_readvariableop_resource: E
7layer_normalization_3_batchnorm_readvariableop_resource: 
identityИҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ+sequential_1/dense_4/BiasAdd/ReadVariableOpҐ-sequential_1/dense_4/Tensordot/ReadVariableOpҐ+sequential_1/dense_5/BiasAdd/ReadVariableOpҐ-sequential_1/dense_5/Tensordot/ReadVariableOpэ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2,
*multi_head_attention_1/query/einsum/Einsumџ
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/query/add/ReadVariableOpх
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2"
 multi_head_attention_1/query/addч
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpЗ
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2*
(multi_head_attention_1/key/einsum/Einsum’
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_1/key/add/ReadVariableOpн
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2 
multi_head_attention_1/key/addэ
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2,
*multi_head_attention_1/value/einsum/Einsumџ
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/value/add/ReadVariableOpх
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2"
 multi_head_attention_1/value/addБ
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>2
multi_head_attention_1/Mul/y∆
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
multi_head_attention_1/Mulь
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€*
equationaecd,abcd->acbe2&
$multi_head_attention_1/einsum/Einsumƒ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€2(
&multi_head_attention_1/softmax/Softmax 
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€2)
'multi_head_attention_1/dropout/IdentityФ
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationacbe,aecd->abcd2(
&multi_head_attention_1/einsum_1/EinsumЮ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp”
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€ *
equationabcd,cde->abe27
5multi_head_attention_1/attention_output/einsum/Einsumш
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_1/attention_output/add/ReadVariableOpЭ
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2-
+multi_head_attention_1/attention_output/addЫ
dropout_4/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_4/Identityn
addAddV2inputsdropout_4/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
addґ
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_2/moments/mean/reduction_indicesя
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2$
"layer_normalization_2/moments/meanЋ
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2,
*layer_normalization_2/moments/StopGradientл
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 21
/layer_normalization_2/moments/SquaredDifferenceЊ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_2/moments/variance/reduction_indicesЧ
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2(
&layer_normalization_2/moments/varianceУ
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_2/batchnorm/add/yк
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2%
#layer_normalization_2/batchnorm/addґ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%layer_normalization_2/batchnorm/Rsqrtа
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_2/batchnorm/mul/ReadVariableOpо
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_2/batchnorm/mulљ
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/mul_1б
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/mul_2‘
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_2/batchnorm/ReadVariableOpк
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_2/batchnorm/subб
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/add_1’
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_1/dense_4/Tensordot/ReadVariableOpФ
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_4/Tensordot/axesЫ
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_4/Tensordot/free•
$sequential_1/dense_4/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_1/dense_4/Tensordot/ShapeЮ
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_4/Tensordot/GatherV2/axisЇ
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_4/Tensordot/GatherV2Ґ
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_4/Tensordot/GatherV2_1/axisј
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_4/Tensordot/GatherV2_1Ц
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_4/Tensordot/Const‘
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_4/Tensordot/ProdЪ
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_4/Tensordot/Const_1№
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_4/Tensordot/Prod_1Ъ
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_4/Tensordot/concat/axisЩ
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_4/Tensordot/concatа
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_4/Tensordot/stackт
(sequential_1/dense_4/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2*
(sequential_1/dense_4/Tensordot/transposeу
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_4/Tensordot/Reshapeт
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_4/Tensordot/MatMulЪ
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_4/Tensordot/Const_2Ю
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_4/Tensordot/concat_1/axis¶
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_4/Tensordot/concat_1д
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
sequential_1/dense_4/TensordotЋ
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_4/BiasAdd/ReadVariableOpџ
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_4/BiasAddЫ
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_4/Relu’
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_1/dense_5/Tensordot/ReadVariableOpФ
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_5/Tensordot/axesЫ
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_5/Tensordot/free£
$sequential_1/dense_5/Tensordot/ShapeShape'sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dense_5/Tensordot/ShapeЮ
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_5/Tensordot/GatherV2/axisЇ
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_5/Tensordot/GatherV2Ґ
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_5/Tensordot/GatherV2_1/axisј
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_5/Tensordot/GatherV2_1Ц
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_5/Tensordot/Const‘
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_5/Tensordot/ProdЪ
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_5/Tensordot/Const_1№
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_5/Tensordot/Prod_1Ъ
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_5/Tensordot/concat/axisЩ
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_5/Tensordot/concatа
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_5/Tensordot/stackр
(sequential_1/dense_5/Tensordot/transpose	Transpose'sequential_1/dense_4/Relu:activations:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2*
(sequential_1/dense_5/Tensordot/transposeу
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_5/Tensordot/Reshapeт
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_5/Tensordot/MatMulЪ
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_5/Tensordot/Const_2Ю
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_5/Tensordot/concat_1/axis¶
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_5/Tensordot/concat_1д
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
sequential_1/dense_5/TensordotЋ
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_5/BiasAdd/ReadVariableOpџ
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_5/BiasAddС
dropout_5/IdentityIdentity%sequential_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_5/IdentityХ
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_5/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
add_1ґ
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_3/moments/mean/reduction_indicesб
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2$
"layer_normalization_3/moments/meanЋ
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2,
*layer_normalization_3/moments/StopGradientн
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 21
/layer_normalization_3/moments/SquaredDifferenceЊ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_3/moments/variance/reduction_indicesЧ
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2(
&layer_normalization_3/moments/varianceУ
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_3/batchnorm/add/yк
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2%
#layer_normalization_3/batchnorm/addґ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%layer_normalization_3/batchnorm/Rsqrtа
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_3/batchnorm/mul/ReadVariableOpо
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_3/batchnorm/mulњ
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/mul_1б
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/mul_2‘
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_3/batchnorm/ReadVariableOpк
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_3/batchnorm/subб
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/add_1И
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity†
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€ : : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
“Ж
г
 __inference__wrapped_model_98005
input_2[
Itrns_20_token_and_position_embedding_1_embedding_3_embedding_lookup_97851: \
Itrns_20_token_and_position_embedding_1_embedding_2_embedding_lookup_97857:	и^ t
^trns_20_transformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:  f
Ttrns_20_transformer_block_1_multi_head_attention_1_query_add_readvariableop_resource: r
\trns_20_transformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:  d
Rtrns_20_transformer_block_1_multi_head_attention_1_key_add_readvariableop_resource: t
^trns_20_transformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:  f
Ttrns_20_transformer_block_1_multi_head_attention_1_value_add_readvariableop_resource: 
itrns_20_transformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:  m
_trns_20_transformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource: e
Wtrns_20_transformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource: a
Strns_20_transformer_block_1_layer_normalization_2_batchnorm_readvariableop_resource: d
Rtrns_20_transformer_block_1_sequential_1_dense_4_tensordot_readvariableop_resource:  ^
Ptrns_20_transformer_block_1_sequential_1_dense_4_biasadd_readvariableop_resource: d
Rtrns_20_transformer_block_1_sequential_1_dense_5_tensordot_readvariableop_resource:  ^
Ptrns_20_transformer_block_1_sequential_1_dense_5_biasadd_readvariableop_resource: e
Wtrns_20_transformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource: a
Strns_20_transformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource: @
.trns_20_dense_6_matmul_readvariableop_resource: =
/trns_20_dense_6_biasadd_readvariableop_resource:@
.trns_20_dense_7_matmul_readvariableop_resource:=
/trns_20_dense_7_biasadd_readvariableop_resource:
identityИҐ&TRNS_20/dense_6/BiasAdd/ReadVariableOpҐ%TRNS_20/dense_6/MatMul/ReadVariableOpҐ&TRNS_20/dense_7/BiasAdd/ReadVariableOpҐ%TRNS_20/dense_7/MatMul/ReadVariableOpҐCTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookupҐCTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookupҐJTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpҐNTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpҐJTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpҐNTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpҐVTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpҐ`TRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐITRNS_20/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpҐSTRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐKTRNS_20/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpҐUTRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐKTRNS_20/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpҐUTRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐGTRNS_20/transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpҐITRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpҐGTRNS_20/transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpҐITRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpУ
,TRNS_20/token_and_position_embedding_1/ShapeShapeinput_2*
T0*
_output_shapes
:2.
,TRNS_20/token_and_position_embedding_1/ShapeЋ
:TRNS_20/token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2<
:TRNS_20/token_and_position_embedding_1/strided_slice/stack∆
<TRNS_20/token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<TRNS_20/token_and_position_embedding_1/strided_slice/stack_1∆
<TRNS_20/token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<TRNS_20/token_and_position_embedding_1/strided_slice/stack_2ћ
4TRNS_20/token_and_position_embedding_1/strided_sliceStridedSlice5TRNS_20/token_and_position_embedding_1/Shape:output:0CTRNS_20/token_and_position_embedding_1/strided_slice/stack:output:0ETRNS_20/token_and_position_embedding_1/strided_slice/stack_1:output:0ETRNS_20/token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4TRNS_20/token_and_position_embedding_1/strided_slice™
2TRNS_20/token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2TRNS_20/token_and_position_embedding_1/range/start™
2TRNS_20/token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2TRNS_20/token_and_position_embedding_1/range/delta√
,TRNS_20/token_and_position_embedding_1/rangeRange;TRNS_20/token_and_position_embedding_1/range/start:output:0=TRNS_20/token_and_position_embedding_1/strided_slice:output:0;TRNS_20/token_and_position_embedding_1/range/delta:output:0*#
_output_shapes
:€€€€€€€€€2.
,TRNS_20/token_and_position_embedding_1/rangeр
CTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherItrns_20_token_and_position_embedding_1_embedding_3_embedding_lookup_978515TRNS_20/token_and_position_embedding_1/range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*\
_classR
PNloc:@TRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup/97851*'
_output_shapes
:€€€€€€€€€ *
dtype02E
CTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookupі
LTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityLTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*\
_classR
PNloc:@TRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup/97851*'
_output_shapes
:€€€€€€€€€ 2N
LTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup/Identityµ
NTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityUTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2P
NTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1ƒ
7TRNS_20/token_and_position_embedding_1/embedding_2/CastCastinput_2*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€29
7TRNS_20/token_and_position_embedding_1/embedding_2/Castъ
CTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherItrns_20_token_and_position_embedding_1_embedding_2_embedding_lookup_97857;TRNS_20/token_and_position_embedding_1/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*\
_classR
PNloc:@TRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup/97857*+
_output_shapes
:€€€€€€€€€ *
dtype02E
CTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookupЄ
LTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityLTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*\
_classR
PNloc:@TRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup/97857*+
_output_shapes
:€€€€€€€€€ 2N
LTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup/Identityє
NTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityUTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2P
NTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1…
*TRNS_20/token_and_position_embedding_1/addAddV2WTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0WTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2,
*TRNS_20/token_and_position_embedding_1/add—
UTRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOp^trns_20_transformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02W
UTRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpЙ
FTRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/EinsumEinsum.TRNS_20/token_and_position_embedding_1/add:z:0]TRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2H
FTRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/Einsumѓ
KTRNS_20/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpTtrns_20_transformer_block_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype02M
KTRNS_20/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpе
<TRNS_20/transformer_block_1/multi_head_attention_1/query/addAddV2OTRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/Einsum:output:0STRNS_20/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2>
<TRNS_20/transformer_block_1/multi_head_attention_1/query/addЋ
STRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp\trns_20_transformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02U
STRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpГ
DTRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/EinsumEinsum.TRNS_20/token_and_position_embedding_1/add:z:0[TRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2F
DTRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/Einsum©
ITRNS_20/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpRtrns_20_transformer_block_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02K
ITRNS_20/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpЁ
:TRNS_20/transformer_block_1/multi_head_attention_1/key/addAddV2MTRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/Einsum:output:0QTRNS_20/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2<
:TRNS_20/transformer_block_1/multi_head_attention_1/key/add—
UTRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOp^trns_20_transformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02W
UTRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpЙ
FTRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/EinsumEinsum.TRNS_20/token_and_position_embedding_1/add:z:0]TRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2H
FTRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/Einsumѓ
KTRNS_20/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpTtrns_20_transformer_block_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype02M
KTRNS_20/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpе
<TRNS_20/transformer_block_1/multi_head_attention_1/value/addAddV2OTRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/Einsum:output:0STRNS_20/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2>
<TRNS_20/transformer_block_1/multi_head_attention_1/value/addє
8TRNS_20/transformer_block_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>2:
8TRNS_20/transformer_block_1/multi_head_attention_1/Mul/yґ
6TRNS_20/transformer_block_1/multi_head_attention_1/MulMul@TRNS_20/transformer_block_1/multi_head_attention_1/query/add:z:0ATRNS_20/transformer_block_1/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 28
6TRNS_20/transformer_block_1/multi_head_attention_1/Mulм
@TRNS_20/transformer_block_1/multi_head_attention_1/einsum/EinsumEinsum>TRNS_20/transformer_block_1/multi_head_attention_1/key/add:z:0:TRNS_20/transformer_block_1/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€*
equationaecd,abcd->acbe2B
@TRNS_20/transformer_block_1/multi_head_attention_1/einsum/EinsumШ
BTRNS_20/transformer_block_1/multi_head_attention_1/softmax/SoftmaxSoftmaxITRNS_20/transformer_block_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€2D
BTRNS_20/transformer_block_1/multi_head_attention_1/softmax/SoftmaxЮ
CTRNS_20/transformer_block_1/multi_head_attention_1/dropout/IdentityIdentityLTRNS_20/transformer_block_1/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€2E
CTRNS_20/transformer_block_1/multi_head_attention_1/dropout/IdentityД
BTRNS_20/transformer_block_1/multi_head_attention_1/einsum_1/EinsumEinsumLTRNS_20/transformer_block_1/multi_head_attention_1/dropout/Identity:output:0@TRNS_20/transformer_block_1/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationacbe,aecd->abcd2D
BTRNS_20/transformer_block_1/multi_head_attention_1/einsum_1/Einsumт
`TRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpitrns_20_transformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02b
`TRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp√
QTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumKTRNS_20/transformer_block_1/multi_head_attention_1/einsum_1/Einsum:output:0hTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€ *
equationabcd,cde->abe2S
QTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsumћ
VTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOp_trns_20_transformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02X
VTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpН
GTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/addAddV2ZTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0^TRNS_20/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2I
GTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/addп
.TRNS_20/transformer_block_1/dropout_4/IdentityIdentityKTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 20
.TRNS_20/transformer_block_1/dropout_4/Identityк
TRNS_20/transformer_block_1/addAddV2.TRNS_20/token_and_position_embedding_1/add:z:07TRNS_20/transformer_block_1/dropout_4/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2!
TRNS_20/transformer_block_1/addо
PTRNS_20/transformer_block_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
PTRNS_20/transformer_block_1/layer_normalization_2/moments/mean/reduction_indicesѕ
>TRNS_20/transformer_block_1/layer_normalization_2/moments/meanMean#TRNS_20/transformer_block_1/add:z:0YTRNS_20/transformer_block_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2@
>TRNS_20/transformer_block_1/layer_normalization_2/moments/meanЯ
FTRNS_20/transformer_block_1/layer_normalization_2/moments/StopGradientStopGradientGTRNS_20/transformer_block_1/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2H
FTRNS_20/transformer_block_1/layer_normalization_2/moments/StopGradientџ
KTRNS_20/transformer_block_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifference#TRNS_20/transformer_block_1/add:z:0OTRNS_20/transformer_block_1/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2M
KTRNS_20/transformer_block_1/layer_normalization_2/moments/SquaredDifferenceц
TTRNS_20/transformer_block_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
TTRNS_20/transformer_block_1/layer_normalization_2/moments/variance/reduction_indicesЗ
BTRNS_20/transformer_block_1/layer_normalization_2/moments/varianceMeanOTRNS_20/transformer_block_1/layer_normalization_2/moments/SquaredDifference:z:0]TRNS_20/transformer_block_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2D
BTRNS_20/transformer_block_1/layer_normalization_2/moments/varianceЋ
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52C
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/add/yЏ
?TRNS_20/transformer_block_1/layer_normalization_2/batchnorm/addAddV2KTRNS_20/transformer_block_1/layer_normalization_2/moments/variance:output:0JTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2A
?TRNS_20/transformer_block_1/layer_normalization_2/batchnorm/addК
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/RsqrtRsqrtCTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2C
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/Rsqrtі
NTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpWtrns_20_transformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02P
NTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpё
?TRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mulMulETRNS_20/transformer_block_1/layer_normalization_2/batchnorm/Rsqrt:y:0VTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2A
?TRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul≠
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul_1Mul#TRNS_20/transformer_block_1/add:z:0CTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2C
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul_1—
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul_2MulGTRNS_20/transformer_block_1/layer_normalization_2/moments/mean:output:0CTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2C
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul_2®
JTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpStrns_20_transformer_block_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02L
JTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpЏ
?TRNS_20/transformer_block_1/layer_normalization_2/batchnorm/subSubRTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0ETRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2A
?TRNS_20/transformer_block_1/layer_normalization_2/batchnorm/sub—
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/add_1AddV2ETRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul_1:z:0CTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2C
ATRNS_20/transformer_block_1/layer_normalization_2/batchnorm/add_1©
ITRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOpRtrns_20_transformer_block_1_sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02K
ITRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpћ
?TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2A
?TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/axes”
?TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2A
?TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/freeщ
@TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ShapeShapeETRNS_20/transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2B
@TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Shape÷
HTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
HTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2/axis∆
CTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2GatherV2ITRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Shape:output:0HTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/free:output:0QTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2E
CTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2Џ
JTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
JTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1/axisћ
ETRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1GatherV2ITRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Shape:output:0HTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/axes:output:0STRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2G
ETRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1ќ
@TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Constƒ
?TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ProdProdLTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2:output:0ITRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2A
?TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Prod“
BTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2D
BTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Const_1ћ
ATRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Prod_1ProdNTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1:output:0KTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2C
ATRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Prod_1“
FTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
FTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat/axis•
ATRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concatConcatV2HTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/free:output:0HTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/axes:output:0OTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
ATRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat–
@TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/stackPackHTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Prod:output:0JTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2B
@TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/stackв
DTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/transpose	TransposeETRNS_20/transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0JTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2F
DTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/transposeг
BTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ReshapeReshapeHTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/transpose:y:0ITRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2D
BTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Reshapeв
ATRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/MatMulMatMulKTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Reshape:output:0QTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2C
ATRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/MatMul“
BTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2D
BTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Const_2÷
HTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
HTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat_1/axis≤
CTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat_1ConcatV2LTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2:output:0KTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/Const_2:output:0QTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
CTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat_1‘
:TRNS_20/transformer_block_1/sequential_1/dense_4/TensordotReshapeKTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/MatMul:product:0LTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2<
:TRNS_20/transformer_block_1/sequential_1/dense_4/TensordotЯ
GTRNS_20/transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOpPtrns_20_transformer_block_1_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02I
GTRNS_20/transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpЋ
8TRNS_20/transformer_block_1/sequential_1/dense_4/BiasAddBiasAddCTRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot:output:0OTRNS_20/transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2:
8TRNS_20/transformer_block_1/sequential_1/dense_4/BiasAddп
5TRNS_20/transformer_block_1/sequential_1/dense_4/ReluReluATRNS_20/transformer_block_1/sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 27
5TRNS_20/transformer_block_1/sequential_1/dense_4/Relu©
ITRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOpRtrns_20_transformer_block_1_sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02K
ITRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpћ
?TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2A
?TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/axes”
?TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2A
?TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/freeч
@TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ShapeShapeCTRNS_20/transformer_block_1/sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:2B
@TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Shape÷
HTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
HTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2/axis∆
CTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2GatherV2ITRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Shape:output:0HTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/free:output:0QTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2E
CTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2Џ
JTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2L
JTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisћ
ETRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1GatherV2ITRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Shape:output:0HTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/axes:output:0STRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2G
ETRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1ќ
@TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2B
@TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Constƒ
?TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ProdProdLTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0ITRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2A
?TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Prod“
BTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2D
BTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Const_1ћ
ATRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Prod_1ProdNTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1:output:0KTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2C
ATRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Prod_1“
FTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
FTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat/axis•
ATRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concatConcatV2HTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/free:output:0HTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/axes:output:0OTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2C
ATRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat–
@TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/stackPackHTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Prod:output:0JTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2B
@TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/stackа
DTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/transpose	TransposeCTRNS_20/transformer_block_1/sequential_1/dense_4/Relu:activations:0JTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2F
DTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/transposeг
BTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ReshapeReshapeHTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/transpose:y:0ITRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2D
BTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Reshapeв
ATRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/MatMulMatMulKTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Reshape:output:0QTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2C
ATRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/MatMul“
BTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2D
BTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Const_2÷
HTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
HTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat_1/axis≤
CTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat_1ConcatV2LTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0KTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/Const_2:output:0QTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2E
CTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat_1‘
:TRNS_20/transformer_block_1/sequential_1/dense_5/TensordotReshapeKTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/MatMul:product:0LTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2<
:TRNS_20/transformer_block_1/sequential_1/dense_5/TensordotЯ
GTRNS_20/transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOpPtrns_20_transformer_block_1_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02I
GTRNS_20/transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpЋ
8TRNS_20/transformer_block_1/sequential_1/dense_5/BiasAddBiasAddCTRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot:output:0OTRNS_20/transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2:
8TRNS_20/transformer_block_1/sequential_1/dense_5/BiasAddе
.TRNS_20/transformer_block_1/dropout_5/IdentityIdentityATRNS_20/transformer_block_1/sequential_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 20
.TRNS_20/transformer_block_1/dropout_5/IdentityЕ
!TRNS_20/transformer_block_1/add_1AddV2ETRNS_20/transformer_block_1/layer_normalization_2/batchnorm/add_1:z:07TRNS_20/transformer_block_1/dropout_5/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2#
!TRNS_20/transformer_block_1/add_1о
PTRNS_20/transformer_block_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
PTRNS_20/transformer_block_1/layer_normalization_3/moments/mean/reduction_indices—
>TRNS_20/transformer_block_1/layer_normalization_3/moments/meanMean%TRNS_20/transformer_block_1/add_1:z:0YTRNS_20/transformer_block_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2@
>TRNS_20/transformer_block_1/layer_normalization_3/moments/meanЯ
FTRNS_20/transformer_block_1/layer_normalization_3/moments/StopGradientStopGradientGTRNS_20/transformer_block_1/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2H
FTRNS_20/transformer_block_1/layer_normalization_3/moments/StopGradientЁ
KTRNS_20/transformer_block_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifference%TRNS_20/transformer_block_1/add_1:z:0OTRNS_20/transformer_block_1/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2M
KTRNS_20/transformer_block_1/layer_normalization_3/moments/SquaredDifferenceц
TTRNS_20/transformer_block_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
TTRNS_20/transformer_block_1/layer_normalization_3/moments/variance/reduction_indicesЗ
BTRNS_20/transformer_block_1/layer_normalization_3/moments/varianceMeanOTRNS_20/transformer_block_1/layer_normalization_3/moments/SquaredDifference:z:0]TRNS_20/transformer_block_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2D
BTRNS_20/transformer_block_1/layer_normalization_3/moments/varianceЋ
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52C
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/add/yЏ
?TRNS_20/transformer_block_1/layer_normalization_3/batchnorm/addAddV2KTRNS_20/transformer_block_1/layer_normalization_3/moments/variance:output:0JTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2A
?TRNS_20/transformer_block_1/layer_normalization_3/batchnorm/addК
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/RsqrtRsqrtCTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2C
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/Rsqrtі
NTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpWtrns_20_transformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02P
NTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpё
?TRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mulMulETRNS_20/transformer_block_1/layer_normalization_3/batchnorm/Rsqrt:y:0VTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2A
?TRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mulѓ
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul_1Mul%TRNS_20/transformer_block_1/add_1:z:0CTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2C
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul_1—
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul_2MulGTRNS_20/transformer_block_1/layer_normalization_3/moments/mean:output:0CTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2C
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul_2®
JTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpStrns_20_transformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02L
JTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpЏ
?TRNS_20/transformer_block_1/layer_normalization_3/batchnorm/subSubRTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0ETRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2A
?TRNS_20/transformer_block_1/layer_normalization_3/batchnorm/sub—
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/add_1AddV2ETRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul_1:z:0CTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2C
ATRNS_20/transformer_block_1/layer_normalization_3/batchnorm/add_1Є
9TRNS_20/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2;
9TRNS_20/global_average_pooling1d_1/Mean/reduction_indicesЧ
'TRNS_20/global_average_pooling1d_1/MeanMeanETRNS_20/transformer_block_1/layer_normalization_3/batchnorm/add_1:z:0BTRNS_20/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'TRNS_20/global_average_pooling1d_1/Mean®
TRNS_20/dropout_6/IdentityIdentity0TRNS_20/global_average_pooling1d_1/Mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
TRNS_20/dropout_6/Identityљ
%TRNS_20/dense_6/MatMul/ReadVariableOpReadVariableOp.trns_20_dense_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype02'
%TRNS_20/dense_6/MatMul/ReadVariableOpј
TRNS_20/dense_6/MatMulMatMul#TRNS_20/dropout_6/Identity:output:0-TRNS_20/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
TRNS_20/dense_6/MatMulЉ
&TRNS_20/dense_6/BiasAdd/ReadVariableOpReadVariableOp/trns_20_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&TRNS_20/dense_6/BiasAdd/ReadVariableOpЅ
TRNS_20/dense_6/BiasAddBiasAdd TRNS_20/dense_6/MatMul:product:0.TRNS_20/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
TRNS_20/dense_6/BiasAddИ
TRNS_20/dense_6/ReluRelu TRNS_20/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
TRNS_20/dense_6/ReluЪ
TRNS_20/dropout_7/IdentityIdentity"TRNS_20/dense_6/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
TRNS_20/dropout_7/Identityљ
%TRNS_20/dense_7/MatMul/ReadVariableOpReadVariableOp.trns_20_dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%TRNS_20/dense_7/MatMul/ReadVariableOpј
TRNS_20/dense_7/MatMulMatMul#TRNS_20/dropout_7/Identity:output:0-TRNS_20/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
TRNS_20/dense_7/MatMulЉ
&TRNS_20/dense_7/BiasAdd/ReadVariableOpReadVariableOp/trns_20_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&TRNS_20/dense_7/BiasAdd/ReadVariableOpЅ
TRNS_20/dense_7/BiasAddBiasAdd TRNS_20/dense_7/MatMul:product:0.TRNS_20/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
TRNS_20/dense_7/BiasAddС
TRNS_20/dense_7/SoftmaxSoftmax TRNS_20/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
TRNS_20/dense_7/Softmax|
IdentityIdentity!TRNS_20/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityО
NoOpNoOp'^TRNS_20/dense_6/BiasAdd/ReadVariableOp&^TRNS_20/dense_6/MatMul/ReadVariableOp'^TRNS_20/dense_7/BiasAdd/ReadVariableOp&^TRNS_20/dense_7/MatMul/ReadVariableOpD^TRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookupD^TRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookupK^TRNS_20/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpO^TRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpK^TRNS_20/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpO^TRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpW^TRNS_20/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpa^TRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpJ^TRNS_20/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpT^TRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpL^TRNS_20/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpV^TRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpL^TRNS_20/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpV^TRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpH^TRNS_20/transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpJ^TRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpH^TRNS_20/transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpJ^TRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2P
&TRNS_20/dense_6/BiasAdd/ReadVariableOp&TRNS_20/dense_6/BiasAdd/ReadVariableOp2N
%TRNS_20/dense_6/MatMul/ReadVariableOp%TRNS_20/dense_6/MatMul/ReadVariableOp2P
&TRNS_20/dense_7/BiasAdd/ReadVariableOp&TRNS_20/dense_7/BiasAdd/ReadVariableOp2N
%TRNS_20/dense_7/MatMul/ReadVariableOp%TRNS_20/dense_7/MatMul/ReadVariableOp2К
CTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookupCTRNS_20/token_and_position_embedding_1/embedding_2/embedding_lookup2К
CTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookupCTRNS_20/token_and_position_embedding_1/embedding_3/embedding_lookup2Ш
JTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpJTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp2†
NTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpNTRNS_20/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2Ш
JTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpJTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp2†
NTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpNTRNS_20/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2∞
VTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpVTRNS_20/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp2ƒ
`TRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp`TRNS_20/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2Ц
ITRNS_20/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpITRNS_20/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOp2™
STRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpSTRNS_20/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2Ъ
KTRNS_20/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpKTRNS_20/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOp2Ѓ
UTRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpUTRNS_20/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2Ъ
KTRNS_20/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpKTRNS_20/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOp2Ѓ
UTRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpUTRNS_20/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Т
GTRNS_20/transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpGTRNS_20/transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOp2Ц
ITRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpITRNS_20/transformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOp2Т
GTRNS_20/transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpGTRNS_20/transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp2Ц
ITRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpITRNS_20/transformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
Ж
r
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_100039

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
:€€€€€€€€€ 2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Г
Х
(__inference_dense_5_layer_call_fn_100322

inputs
unknown:  
	unknown_0: 
identityИҐStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_980792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ї
q
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_98208

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
:€€€€€€€€€€€€€€€€€€2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ф
¶
G__inference_sequential_1_layer_call_and_return_conditional_losses_98086

inputs
dense_4_98044:  
dense_4_98046: 
dense_5_98080:  
dense_5_98082: 
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallХ
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_98044dense_4_98046*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_980432!
dense_4/StatefulPartitionedCallЈ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_98080dense_5_98082*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_980792!
dense_5/StatefulPartitionedCallЗ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityТ
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
э
Ю
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_99676
x4
"embedding_3_embedding_lookup_99663: 5
"embedding_2_embedding_lookup_99669:	и^ 
identityИҐembedding_2/embedding_lookupҐembedding_3/embedding_lookup?
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
€€€€€€€€€2
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
strided_slice/stack_2в
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
range/deltaА
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
range≠
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_99663range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/99663*'
_output_shapes
:€€€€€€€€€ *
dtype02
embedding_3/embedding_lookupШ
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/99663*'
_output_shapes
:€€€€€€€€€ 2'
%embedding_3/embedding_lookup/Identityј
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'embedding_3/embedding_lookup/Identity_1p
embedding_2/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
embedding_2/CastЈ
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_99669embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding_2/embedding_lookup/99669*+
_output_shapes
:€€€€€€€€€ *
dtype02
embedding_2/embedding_lookupЬ
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/99669*+
_output_shapes
:€€€€€€€€€ 2'
%embedding_2/embedding_lookup/Identityƒ
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2)
'embedding_2/embedding_lookup/Identity_1≠
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
addf
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityМ
NoOpNoOp^embedding_2/embedding_lookup^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:J F
'
_output_shapes
:€€€€€€€€€

_user_specified_namex
в/
Е

B__inference_TRNS_20_layer_call_and_return_conditional_losses_98925

inputs6
$token_and_position_embedding_1_98873: 7
$token_and_position_embedding_1_98875:	и^ /
transformer_block_1_98878:  +
transformer_block_1_98880: /
transformer_block_1_98882:  +
transformer_block_1_98884: /
transformer_block_1_98886:  +
transformer_block_1_98888: /
transformer_block_1_98890:  '
transformer_block_1_98892: '
transformer_block_1_98894: '
transformer_block_1_98896: +
transformer_block_1_98898:  '
transformer_block_1_98900: +
transformer_block_1_98902:  '
transformer_block_1_98904: '
transformer_block_1_98906: '
transformer_block_1_98908: 
dense_6_98913: 
dense_6_98915:
dense_7_98919:
dense_7_98921:
identityИҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallҐ!dropout_6/StatefulPartitionedCallҐ!dropout_7/StatefulPartitionedCallҐ6token_and_position_embedding_1/StatefulPartitionedCallҐ+transformer_block_1/StatefulPartitionedCallИ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs$token_and_position_embedding_1_98873$token_and_position_embedding_1_98875*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_9825328
6token_and_position_embedding_1/StatefulPartitionedCall†
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_block_1_98878transformer_block_1_98880transformer_block_1_98882transformer_block_1_98884transformer_block_1_98886transformer_block_1_98888transformer_block_1_98890transformer_block_1_98892transformer_block_1_98894transformer_block_1_98896transformer_block_1_98898transformer_block_1_98900transformer_block_1_98902transformer_block_1_98904transformer_block_1_98906transformer_block_1_98908*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_987742-
+transformer_block_1/StatefulPartitionedCallЉ
*global_average_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_984252,
*global_average_pooling1d_1/PartitionedCall†
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_985862#
!dropout_6/StatefulPartitionedCallµ
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_6_98913dense_6_98915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_984452!
dense_6/StatefulPartitionedCallє
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_985532#
!dropout_7/StatefulPartitionedCallµ
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0dense_7_98919dense_7_98921*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_984692!
dense_7/StatefulPartitionedCallГ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЅ
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ђ
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_100066

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
б
–
-__inference_sequential_1_layer_call_fn_100159

inputs
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_981462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Г
Х
(__inference_dense_4_layer_call_fn_100282

inputs
unknown:  
	unknown_0: 
identityИҐStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_980432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
±„
Ћ:
"__inference__traced_restore_100835
file_prefix1
assignvariableop_dense_6_kernel: -
assignvariableop_1_dense_6_bias:3
!assignvariableop_2_dense_7_kernel:-
assignvariableop_3_dense_7_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: [
Hassignvariableop_9_token_and_position_embedding_1_embedding_2_embeddings:	и^ [
Iassignvariableop_10_token_and_position_embedding_1_embedding_3_embeddings: a
Kassignvariableop_11_transformer_block_1_multi_head_attention_1_query_kernel:  [
Iassignvariableop_12_transformer_block_1_multi_head_attention_1_query_bias: _
Iassignvariableop_13_transformer_block_1_multi_head_attention_1_key_kernel:  Y
Gassignvariableop_14_transformer_block_1_multi_head_attention_1_key_bias: a
Kassignvariableop_15_transformer_block_1_multi_head_attention_1_value_kernel:  [
Iassignvariableop_16_transformer_block_1_multi_head_attention_1_value_bias: l
Vassignvariableop_17_transformer_block_1_multi_head_attention_1_attention_output_kernel:  b
Tassignvariableop_18_transformer_block_1_multi_head_attention_1_attention_output_bias: 4
"assignvariableop_19_dense_4_kernel:  .
 assignvariableop_20_dense_4_bias: 4
"assignvariableop_21_dense_5_kernel:  .
 assignvariableop_22_dense_5_bias: Q
Cassignvariableop_23_transformer_block_1_layer_normalization_2_gamma: P
Bassignvariableop_24_transformer_block_1_layer_normalization_2_beta: Q
Cassignvariableop_25_transformer_block_1_layer_normalization_3_gamma: P
Bassignvariableop_26_transformer_block_1_layer_normalization_3_beta: #
assignvariableop_27_total: #
assignvariableop_28_count: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: ;
)assignvariableop_31_adam_dense_6_kernel_m: 5
'assignvariableop_32_adam_dense_6_bias_m:;
)assignvariableop_33_adam_dense_7_kernel_m:5
'assignvariableop_34_adam_dense_7_bias_m:c
Passignvariableop_35_adam_token_and_position_embedding_1_embedding_2_embeddings_m:	и^ b
Passignvariableop_36_adam_token_and_position_embedding_1_embedding_3_embeddings_m: h
Rassignvariableop_37_adam_transformer_block_1_multi_head_attention_1_query_kernel_m:  b
Passignvariableop_38_adam_transformer_block_1_multi_head_attention_1_query_bias_m: f
Passignvariableop_39_adam_transformer_block_1_multi_head_attention_1_key_kernel_m:  `
Nassignvariableop_40_adam_transformer_block_1_multi_head_attention_1_key_bias_m: h
Rassignvariableop_41_adam_transformer_block_1_multi_head_attention_1_value_kernel_m:  b
Passignvariableop_42_adam_transformer_block_1_multi_head_attention_1_value_bias_m: s
]assignvariableop_43_adam_transformer_block_1_multi_head_attention_1_attention_output_kernel_m:  i
[assignvariableop_44_adam_transformer_block_1_multi_head_attention_1_attention_output_bias_m: ;
)assignvariableop_45_adam_dense_4_kernel_m:  5
'assignvariableop_46_adam_dense_4_bias_m: ;
)assignvariableop_47_adam_dense_5_kernel_m:  5
'assignvariableop_48_adam_dense_5_bias_m: X
Jassignvariableop_49_adam_transformer_block_1_layer_normalization_2_gamma_m: W
Iassignvariableop_50_adam_transformer_block_1_layer_normalization_2_beta_m: X
Jassignvariableop_51_adam_transformer_block_1_layer_normalization_3_gamma_m: W
Iassignvariableop_52_adam_transformer_block_1_layer_normalization_3_beta_m: ;
)assignvariableop_53_adam_dense_6_kernel_v: 5
'assignvariableop_54_adam_dense_6_bias_v:;
)assignvariableop_55_adam_dense_7_kernel_v:5
'assignvariableop_56_adam_dense_7_bias_v:c
Passignvariableop_57_adam_token_and_position_embedding_1_embedding_2_embeddings_v:	и^ b
Passignvariableop_58_adam_token_and_position_embedding_1_embedding_3_embeddings_v: h
Rassignvariableop_59_adam_transformer_block_1_multi_head_attention_1_query_kernel_v:  b
Passignvariableop_60_adam_transformer_block_1_multi_head_attention_1_query_bias_v: f
Passignvariableop_61_adam_transformer_block_1_multi_head_attention_1_key_kernel_v:  `
Nassignvariableop_62_adam_transformer_block_1_multi_head_attention_1_key_bias_v: h
Rassignvariableop_63_adam_transformer_block_1_multi_head_attention_1_value_kernel_v:  b
Passignvariableop_64_adam_transformer_block_1_multi_head_attention_1_value_bias_v: s
]assignvariableop_65_adam_transformer_block_1_multi_head_attention_1_attention_output_kernel_v:  i
[assignvariableop_66_adam_transformer_block_1_multi_head_attention_1_attention_output_bias_v: ;
)assignvariableop_67_adam_dense_4_kernel_v:  5
'assignvariableop_68_adam_dense_4_bias_v: ;
)assignvariableop_69_adam_dense_5_kernel_v:  5
'assignvariableop_70_adam_dense_5_bias_v: X
Jassignvariableop_71_adam_transformer_block_1_layer_normalization_2_gamma_v: W
Iassignvariableop_72_adam_transformer_block_1_layer_normalization_2_beta_v: X
Jassignvariableop_73_adam_transformer_block_1_layer_normalization_3_gamma_v: W
Iassignvariableop_74_adam_transformer_block_1_layer_normalization_3_beta_v: 
identity_76ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_74ҐAssignVariableOp_8ҐAssignVariableOp_9м(
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*ш'
valueо'Bл'LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names©
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*≠
value£B†LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices™
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*∆
_output_shapes≥
∞::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЮ
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¶
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4°
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ґ
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8™
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ќ
AssignVariableOp_9AssignVariableOpHassignvariableop_9_token_and_position_embedding_1_embedding_2_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10—
AssignVariableOp_10AssignVariableOpIassignvariableop_10_token_and_position_embedding_1_embedding_3_embeddingsIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11”
AssignVariableOp_11AssignVariableOpKassignvariableop_11_transformer_block_1_multi_head_attention_1_query_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12—
AssignVariableOp_12AssignVariableOpIassignvariableop_12_transformer_block_1_multi_head_attention_1_query_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13—
AssignVariableOp_13AssignVariableOpIassignvariableop_13_transformer_block_1_multi_head_attention_1_key_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14ѕ
AssignVariableOp_14AssignVariableOpGassignvariableop_14_transformer_block_1_multi_head_attention_1_key_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15”
AssignVariableOp_15AssignVariableOpKassignvariableop_15_transformer_block_1_multi_head_attention_1_value_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16—
AssignVariableOp_16AssignVariableOpIassignvariableop_16_transformer_block_1_multi_head_attention_1_value_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17ё
AssignVariableOp_17AssignVariableOpVassignvariableop_17_transformer_block_1_multi_head_attention_1_attention_output_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18№
AssignVariableOp_18AssignVariableOpTassignvariableop_18_transformer_block_1_multi_head_attention_1_attention_output_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19™
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_4_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20®
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_4_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21™
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_5_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22®
AssignVariableOp_22AssignVariableOp assignvariableop_22_dense_5_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ћ
AssignVariableOp_23AssignVariableOpCassignvariableop_23_transformer_block_1_layer_normalization_2_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24 
AssignVariableOp_24AssignVariableOpBassignvariableop_24_transformer_block_1_layer_normalization_2_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ћ
AssignVariableOp_25AssignVariableOpCassignvariableop_25_transformer_block_1_layer_normalization_3_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26 
AssignVariableOp_26AssignVariableOpBassignvariableop_26_transformer_block_1_layer_normalization_3_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27°
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29£
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30£
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31±
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_6_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32ѓ
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_6_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33±
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_7_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34ѓ
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_7_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Ў
AssignVariableOp_35AssignVariableOpPassignvariableop_35_adam_token_and_position_embedding_1_embedding_2_embeddings_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ў
AssignVariableOp_36AssignVariableOpPassignvariableop_36_adam_token_and_position_embedding_1_embedding_3_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Џ
AssignVariableOp_37AssignVariableOpRassignvariableop_37_adam_transformer_block_1_multi_head_attention_1_query_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ў
AssignVariableOp_38AssignVariableOpPassignvariableop_38_adam_transformer_block_1_multi_head_attention_1_query_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Ў
AssignVariableOp_39AssignVariableOpPassignvariableop_39_adam_transformer_block_1_multi_head_attention_1_key_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40÷
AssignVariableOp_40AssignVariableOpNassignvariableop_40_adam_transformer_block_1_multi_head_attention_1_key_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Џ
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_block_1_multi_head_attention_1_value_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Ў
AssignVariableOp_42AssignVariableOpPassignvariableop_42_adam_transformer_block_1_multi_head_attention_1_value_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43е
AssignVariableOp_43AssignVariableOp]assignvariableop_43_adam_transformer_block_1_multi_head_attention_1_attention_output_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44г
AssignVariableOp_44AssignVariableOp[assignvariableop_44_adam_transformer_block_1_multi_head_attention_1_attention_output_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45±
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_4_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46ѓ
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_4_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47±
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_5_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48ѓ
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_5_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49“
AssignVariableOp_49AssignVariableOpJassignvariableop_49_adam_transformer_block_1_layer_normalization_2_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50—
AssignVariableOp_50AssignVariableOpIassignvariableop_50_adam_transformer_block_1_layer_normalization_2_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51“
AssignVariableOp_51AssignVariableOpJassignvariableop_51_adam_transformer_block_1_layer_normalization_3_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52—
AssignVariableOp_52AssignVariableOpIassignvariableop_52_adam_transformer_block_1_layer_normalization_3_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53±
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_dense_6_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54ѓ
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_dense_6_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55±
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_7_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56ѓ
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_7_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57Ў
AssignVariableOp_57AssignVariableOpPassignvariableop_57_adam_token_and_position_embedding_1_embedding_2_embeddings_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58Ў
AssignVariableOp_58AssignVariableOpPassignvariableop_58_adam_token_and_position_embedding_1_embedding_3_embeddings_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59Џ
AssignVariableOp_59AssignVariableOpRassignvariableop_59_adam_transformer_block_1_multi_head_attention_1_query_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60Ў
AssignVariableOp_60AssignVariableOpPassignvariableop_60_adam_transformer_block_1_multi_head_attention_1_query_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61Ў
AssignVariableOp_61AssignVariableOpPassignvariableop_61_adam_transformer_block_1_multi_head_attention_1_key_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62÷
AssignVariableOp_62AssignVariableOpNassignvariableop_62_adam_transformer_block_1_multi_head_attention_1_key_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63Џ
AssignVariableOp_63AssignVariableOpRassignvariableop_63_adam_transformer_block_1_multi_head_attention_1_value_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64Ў
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_transformer_block_1_multi_head_attention_1_value_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65е
AssignVariableOp_65AssignVariableOp]assignvariableop_65_adam_transformer_block_1_multi_head_attention_1_attention_output_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66г
AssignVariableOp_66AssignVariableOp[assignvariableop_66_adam_transformer_block_1_multi_head_attention_1_attention_output_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67±
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_dense_4_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68ѓ
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_dense_4_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69±
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_dense_5_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70ѓ
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_dense_5_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71“
AssignVariableOp_71AssignVariableOpJassignvariableop_71_adam_transformer_block_1_layer_normalization_2_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72—
AssignVariableOp_72AssignVariableOpIassignvariableop_72_adam_transformer_block_1_layer_normalization_2_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73“
AssignVariableOp_73AssignVariableOpJassignvariableop_73_adam_transformer_block_1_layer_normalization_3_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74—
AssignVariableOp_74AssignVariableOpIassignvariableop_74_adam_transformer_block_1_layer_normalization_3_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_749
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp–
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_75f
Identity_76IdentityIdentity_75:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_76Є
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_76Identity_76:output:0*≠
_input_shapesЫ
Ш: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
е 
ъ
C__inference_dense_5_layer_call_and_return_conditional_losses_100352

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
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
Tensordot/GatherV2/axis—
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
Tensordot/GatherV2_1/axis„
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
Tensordot/ConstА
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
Tensordot/Const_1И
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
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityВ
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
И
у
B__inference_dense_7_layer_call_and_return_conditional_losses_98469

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
м
’
'__inference_TRNS_20_layer_call_fn_98523
input_2
unknown: 
	unknown_0:	и^ 
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
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€*8
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_TRNS_20_layer_call_and_return_conditional_losses_984762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
Е
q
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_98425

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
:€€€€€€€€€ 2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
¬
F
*__inference_dropout_7_layer_call_fn_100091

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_984562
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
юп
¶
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_100017

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_1_query_add_readvariableop_resource: V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:  H
6multi_head_attention_1_key_add_readvariableop_resource: X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:  J
8multi_head_attention_1_value_add_readvariableop_resource: c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:  Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource: I
;layer_normalization_2_batchnorm_mul_readvariableop_resource: E
7layer_normalization_2_batchnorm_readvariableop_resource: H
6sequential_1_dense_4_tensordot_readvariableop_resource:  B
4sequential_1_dense_4_biasadd_readvariableop_resource: H
6sequential_1_dense_5_tensordot_readvariableop_resource:  B
4sequential_1_dense_5_biasadd_readvariableop_resource: I
;layer_normalization_3_batchnorm_mul_readvariableop_resource: E
7layer_normalization_3_batchnorm_readvariableop_resource: 
identityИҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ+sequential_1/dense_4/BiasAdd/ReadVariableOpҐ-sequential_1/dense_4/Tensordot/ReadVariableOpҐ+sequential_1/dense_5/BiasAdd/ReadVariableOpҐ-sequential_1/dense_5/Tensordot/ReadVariableOpэ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2,
*multi_head_attention_1/query/einsum/Einsumџ
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/query/add/ReadVariableOpх
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2"
 multi_head_attention_1/query/addч
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpЗ
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2*
(multi_head_attention_1/key/einsum/Einsum’
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_1/key/add/ReadVariableOpн
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2 
multi_head_attention_1/key/addэ
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2,
*multi_head_attention_1/value/einsum/Einsumџ
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/value/add/ReadVariableOpх
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2"
 multi_head_attention_1/value/addБ
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>2
multi_head_attention_1/Mul/y∆
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
multi_head_attention_1/Mulь
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€*
equationaecd,abcd->acbe2&
$multi_head_attention_1/einsum/Einsumƒ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€2(
&multi_head_attention_1/softmax/SoftmaxФ
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/softmax/Softmax:softmax:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationacbe,aecd->abcd2(
&multi_head_attention_1/einsum_1/EinsumЮ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp”
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€ *
equationabcd,cde->abe27
5multi_head_attention_1/attention_output/einsum/Einsumш
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_1/attention_output/add/ReadVariableOpЭ
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2-
+multi_head_attention_1/attention_output/addw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_4/dropout/ConstЊ
dropout_4/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_4/dropout/MulС
dropout_4/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape÷
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ *
dtype020
.dropout_4/dropout/random_uniform/RandomUniformЙ
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_4/dropout/GreaterEqual/yк
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
dropout_4/dropout/GreaterEqual°
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€ 2
dropout_4/dropout/Cast¶
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_4/dropout/Mul_1n
addAddV2inputsdropout_4/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
addґ
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_2/moments/mean/reduction_indicesя
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2$
"layer_normalization_2/moments/meanЋ
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2,
*layer_normalization_2/moments/StopGradientл
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 21
/layer_normalization_2/moments/SquaredDifferenceЊ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_2/moments/variance/reduction_indicesЧ
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2(
&layer_normalization_2/moments/varianceУ
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_2/batchnorm/add/yк
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2%
#layer_normalization_2/batchnorm/addґ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%layer_normalization_2/batchnorm/Rsqrtа
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_2/batchnorm/mul/ReadVariableOpо
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_2/batchnorm/mulљ
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/mul_1б
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/mul_2‘
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_2/batchnorm/ReadVariableOpк
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_2/batchnorm/subб
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_2/batchnorm/add_1’
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_1/dense_4/Tensordot/ReadVariableOpФ
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_4/Tensordot/axesЫ
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_4/Tensordot/free•
$sequential_1/dense_4/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_1/dense_4/Tensordot/ShapeЮ
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_4/Tensordot/GatherV2/axisЇ
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_4/Tensordot/GatherV2Ґ
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_4/Tensordot/GatherV2_1/axisј
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_4/Tensordot/GatherV2_1Ц
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_4/Tensordot/Const‘
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_4/Tensordot/ProdЪ
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_4/Tensordot/Const_1№
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_4/Tensordot/Prod_1Ъ
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_4/Tensordot/concat/axisЩ
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_4/Tensordot/concatа
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_4/Tensordot/stackт
(sequential_1/dense_4/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2*
(sequential_1/dense_4/Tensordot/transposeу
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_4/Tensordot/Reshapeт
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_4/Tensordot/MatMulЪ
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_4/Tensordot/Const_2Ю
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_4/Tensordot/concat_1/axis¶
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_4/Tensordot/concat_1д
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
sequential_1/dense_4/TensordotЋ
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_4/BiasAdd/ReadVariableOpџ
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_4/BiasAddЫ
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_4/Relu’
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02/
-sequential_1/dense_5/Tensordot/ReadVariableOpФ
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_5/Tensordot/axesЫ
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_5/Tensordot/free£
$sequential_1/dense_5/Tensordot/ShapeShape'sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dense_5/Tensordot/ShapeЮ
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_5/Tensordot/GatherV2/axisЇ
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_5/Tensordot/GatherV2Ґ
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_5/Tensordot/GatherV2_1/axisј
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_5/Tensordot/GatherV2_1Ц
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_5/Tensordot/Const‘
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_5/Tensordot/ProdЪ
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_5/Tensordot/Const_1№
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_5/Tensordot/Prod_1Ъ
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_5/Tensordot/concat/axisЩ
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_5/Tensordot/concatа
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_5/Tensordot/stackр
(sequential_1/dense_5/Tensordot/transpose	Transpose'sequential_1/dense_4/Relu:activations:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2*
(sequential_1/dense_5/Tensordot/transposeу
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_5/Tensordot/Reshapeт
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_5/Tensordot/MatMulЪ
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_5/Tensordot/Const_2Ю
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_5/Tensordot/concat_1/axis¶
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_5/Tensordot/concat_1д
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
sequential_1/dense_5/TensordotЋ
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_5/BiasAdd/ReadVariableOpџ
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
sequential_1/dense_5/BiasAddw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_5/dropout/Constі
dropout_5/dropout/MulMul%sequential_1/dense_5/BiasAdd:output:0 dropout_5/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_5/dropout/MulЗ
dropout_5/dropout/ShapeShape%sequential_1/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape÷
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ *
dtype020
.dropout_5/dropout/random_uniform/RandomUniformЙ
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_5/dropout/GreaterEqual/yк
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
dropout_5/dropout/GreaterEqual°
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€ 2
dropout_5/dropout/Cast¶
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dropout_5/dropout/Mul_1Х
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_5/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
add_1ґ
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_3/moments/mean/reduction_indicesб
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2$
"layer_normalization_3/moments/meanЋ
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2,
*layer_normalization_3/moments/StopGradientн
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 21
/layer_normalization_3/moments/SquaredDifferenceЊ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_3/moments/variance/reduction_indicesЧ
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2(
&layer_normalization_3/moments/varianceУ
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_3/batchnorm/add/yк
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2%
#layer_normalization_3/batchnorm/addґ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2'
%layer_normalization_3/batchnorm/Rsqrtа
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_3/batchnorm/mul/ReadVariableOpо
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_3/batchnorm/mulњ
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/mul_1б
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/mul_2‘
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_3/batchnorm/ReadVariableOpк
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2%
#layer_normalization_3/batchnorm/subб
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2'
%layer_normalization_3/batchnorm/add_1И
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity†
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€ : : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
у
Х
(__inference_dense_6_layer_call_fn_100075

inputs
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_984452
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ВJ
„
H__inference_sequential_1_layer_call_and_return_conditional_losses_100216

inputs;
)dense_4_tensordot_readvariableop_resource:  5
'dense_4_biasadd_readvariableop_resource: ;
)dense_5_tensordot_readvariableop_resource:  5
'dense_5_biasadd_readvariableop_resource: 
identityИҐdense_4/BiasAdd/ReadVariableOpҐ dense_4/Tensordot/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐ dense_5/Tensordot/ReadVariableOpЃ
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_4/Tensordot/ReadVariableOpz
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_4/Tensordot/axesБ
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_4/Tensordot/freeh
dense_4/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_4/Tensordot/ShapeД
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/GatherV2/axisщ
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2И
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_4/Tensordot/GatherV2_1/axis€
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_4/Tensordot/GatherV2_1|
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const†
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/ProdА
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_1®
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_4/Tensordot/Prod_1А
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_4/Tensordot/concat/axisЎ
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concatђ
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/stack®
dense_4/Tensordot/transpose	Transposeinputs!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_4/Tensordot/transposeњ
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_4/Tensordot/ReshapeЊ
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_4/Tensordot/MatMulА
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_4/Tensordot/Const_2Д
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_4/Tensordot/concat_1/axisе
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_4/Tensordot/concat_1∞
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_4/Tensordot§
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_4/BiasAdd/ReadVariableOpІ
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_4/BiasAddt
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_4/ReluЃ
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02"
 dense_5/Tensordot/ReadVariableOpz
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_5/Tensordot/axesБ
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_5/Tensordot/free|
dense_5/Tensordot/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:2
dense_5/Tensordot/ShapeД
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_5/Tensordot/GatherV2/axisщ
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_5/Tensordot/GatherV2И
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_5/Tensordot/GatherV2_1/axis€
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_5/Tensordot/GatherV2_1|
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const†
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_5/Tensordot/ProdА
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const_1®
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_5/Tensordot/Prod_1А
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_5/Tensordot/concat/axisЎ
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/concatђ
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/stackЉ
dense_5/Tensordot/transpose	Transposedense_4/Relu:activations:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_5/Tensordot/transposeњ
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_5/Tensordot/ReshapeЊ
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_5/Tensordot/MatMulА
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_5/Tensordot/Const_2Д
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_5/Tensordot/concat_1/axisе
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_5/Tensordot/concat_1∞
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_5/Tensordot§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_5/BiasAdd/ReadVariableOpІ
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
dense_5/BiasAddw
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identity÷
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
™
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_98553

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
х
÷
,__inference_sequential_1_layer_call_fn_98170
dense_4_input
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_981462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€ 
'
_user_specified_namedense_4_input
Й
≠
G__inference_sequential_1_layer_call_and_return_conditional_losses_98184
dense_4_input
dense_4_98173:  
dense_4_98175: 
dense_5_98178:  
dense_5_98180: 
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallЬ
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_98173dense_4_98175*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_980432!
dense_4/StatefulPartitionedCallЈ
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_98178dense_5_98180*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_980792!
dense_5/StatefulPartitionedCallЗ
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

IdentityТ
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€ 
'
_user_specified_namedense_4_input
б,
Њ	
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99076
input_26
$token_and_position_embedding_1_99024: 7
$token_and_position_embedding_1_99026:	и^ /
transformer_block_1_99029:  +
transformer_block_1_99031: /
transformer_block_1_99033:  +
transformer_block_1_99035: /
transformer_block_1_99037:  +
transformer_block_1_99039: /
transformer_block_1_99041:  '
transformer_block_1_99043: '
transformer_block_1_99045: '
transformer_block_1_99047: +
transformer_block_1_99049:  '
transformer_block_1_99051: +
transformer_block_1_99053:  '
transformer_block_1_99055: '
transformer_block_1_99057: '
transformer_block_1_99059: 
dense_6_99064: 
dense_6_99066:
dense_7_99070:
dense_7_99072:
identityИҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallҐ6token_and_position_embedding_1/StatefulPartitionedCallҐ+transformer_block_1/StatefulPartitionedCallЙ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2$token_and_position_embedding_1_99024$token_and_position_embedding_1_99026*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *b
f]R[
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_9825328
6token_and_position_embedding_1/StatefulPartitionedCall†
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_block_1_99029transformer_block_1_99031transformer_block_1_99033transformer_block_1_99035transformer_block_1_99037transformer_block_1_99039transformer_block_1_99041transformer_block_1_99043transformer_block_1_99045transformer_block_1_99047transformer_block_1_99049transformer_block_1_99051transformer_block_1_99053transformer_block_1_99055transformer_block_1_99057transformer_block_1_99059*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_983862-
+transformer_block_1/StatefulPartitionedCallЉ
*global_average_pooling1d_1/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *^
fYRW
U__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_984252,
*global_average_pooling1d_1/PartitionedCallИ
dropout_6/PartitionedCallPartitionedCall3global_average_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_984322
dropout_6/PartitionedCall≠
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_6_99064dense_6_99066*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_984452!
dense_6/StatefulPartitionedCallэ
dropout_7/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_984562
dropout_7/PartitionedCall≠
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0dense_7_99070dense_7_99072*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_984692!
dense_7/StatefulPartitionedCallГ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityщ
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
А
у
B__inference_dense_6_layer_call_and_return_conditional_losses_98445

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
х
÷
,__inference_sequential_1_layer_call_fn_98097
dense_4_input
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_980862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€ 
'
_user_specified_namedense_4_input
б
–
-__inference_sequential_1_layer_call_fn_100146

inputs
unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_980862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ВО
§
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99643

inputsS
Atoken_and_position_embedding_1_embedding_3_embedding_lookup_99462: T
Atoken_and_position_embedding_1_embedding_2_embedding_lookup_99468:	и^ l
Vtransformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:  ^
Ltransformer_block_1_multi_head_attention_1_query_add_readvariableop_resource: j
Ttransformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:  \
Jtransformer_block_1_multi_head_attention_1_key_add_readvariableop_resource: l
Vtransformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:  ^
Ltransformer_block_1_multi_head_attention_1_value_add_readvariableop_resource: w
atransformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:  e
Wtransformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource: ]
Otransformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource: Y
Ktransformer_block_1_layer_normalization_2_batchnorm_readvariableop_resource: \
Jtransformer_block_1_sequential_1_dense_4_tensordot_readvariableop_resource:  V
Htransformer_block_1_sequential_1_dense_4_biasadd_readvariableop_resource: \
Jtransformer_block_1_sequential_1_dense_5_tensordot_readvariableop_resource:  V
Htransformer_block_1_sequential_1_dense_5_biasadd_readvariableop_resource: ]
Otransformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource: Y
Ktransformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource: 8
&dense_6_matmul_readvariableop_resource: 5
'dense_6_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identityИҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOpҐ;token_and_position_embedding_1/embedding_2/embedding_lookupҐ;token_and_position_embedding_1/embedding_3/embedding_lookupҐBtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpҐFtransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpҐBtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpҐFtransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpҐNtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpҐXtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐAtransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpҐKtransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐCtransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpҐMtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐCtransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpҐMtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpҐAtransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpҐ?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpҐAtransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpВ
$token_and_position_embedding_1/ShapeShapeinputs*
T0*
_output_shapes
:2&
$token_and_position_embedding_1/Shapeї
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€24
2token_and_position_embedding_1/strided_slice/stackґ
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_1/strided_slice/stack_1ґ
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_1/strided_slice/stack_2Ь
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_1/strided_sliceЪ
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_1/range/startЪ
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_1/range/deltaЫ
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*#
_output_shapes
:€€€€€€€€€2&
$token_and_position_embedding_1/range»
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherAtoken_and_position_embedding_1_embedding_3_embedding_lookup_99462-token_and_position_embedding_1/range:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/99462*'
_output_shapes
:€€€€€€€€€ *
dtype02=
;token_and_position_embedding_1/embedding_3/embedding_lookupФ
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/99462*'
_output_shapes
:€€€€€€€€€ 2F
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityЭ
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2H
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1≥
/token_and_position_embedding_1/embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€21
/token_and_position_embedding_1/embedding_2/Cast“
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherAtoken_and_position_embedding_1_embedding_2_embedding_lookup_994683token_and_position_embedding_1/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/99468*+
_output_shapes
:€€€€€€€€€ *
dtype02=
;token_and_position_embedding_1/embedding_2/embedding_lookupШ
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/99468*+
_output_shapes
:€€€€€€€€€ 2F
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity°
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2H
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1©
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2$
"token_and_position_embedding_1/addє
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpй
>transformer_block_1/multi_head_attention_1/query/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Utransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2@
>transformer_block_1/multi_head_attention_1/query/einsum/EinsumЧ
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpLtransformer_block_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp≈
4transformer_block_1/multi_head_attention_1/query/addAddV2Gtransformer_block_1/multi_head_attention_1/query/einsum/Einsum:output:0Ktransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 26
4transformer_block_1/multi_head_attention_1/query/add≥
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02M
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpг
<transformer_block_1/multi_head_attention_1/key/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Stransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2>
<transformer_block_1/multi_head_attention_1/key/einsum/EinsumС
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpJtransformer_block_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02C
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpљ
2transformer_block_1/multi_head_attention_1/key/addAddV2Etransformer_block_1/multi_head_attention_1/key/einsum/Einsum:output:0Itransformer_block_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 24
2transformer_block_1/multi_head_attention_1/key/addє
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpй
>transformer_block_1/multi_head_attention_1/value/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Utransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationabc,cde->abde2@
>transformer_block_1/multi_head_attention_1/value/einsum/EinsumЧ
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpLtransformer_block_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp≈
4transformer_block_1/multi_head_attention_1/value/addAddV2Gtransformer_block_1/multi_head_attention_1/value/einsum/Einsum:output:0Ktransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 26
4transformer_block_1/multi_head_attention_1/value/add©
0transformer_block_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>22
0transformer_block_1/multi_head_attention_1/Mul/yЦ
.transformer_block_1/multi_head_attention_1/MulMul8transformer_block_1/multi_head_attention_1/query/add:z:09transformer_block_1/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 20
.transformer_block_1/multi_head_attention_1/Mulћ
8transformer_block_1/multi_head_attention_1/einsum/EinsumEinsum6transformer_block_1/multi_head_attention_1/key/add:z:02transformer_block_1/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€*
equationaecd,abcd->acbe2:
8transformer_block_1/multi_head_attention_1/einsum/EinsumА
:transformer_block_1/multi_head_attention_1/softmax/SoftmaxSoftmaxAtransformer_block_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€2<
:transformer_block_1/multi_head_attention_1/softmax/Softmaxд
:transformer_block_1/multi_head_attention_1/einsum_1/EinsumEinsumDtransformer_block_1/multi_head_attention_1/softmax/Softmax:softmax:08transformer_block_1/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€ *
equationacbe,aecd->abcd2<
:transformer_block_1/multi_head_attention_1/einsum_1/EinsumЏ
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02Z
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp£
Itransformer_block_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumCtransformer_block_1/multi_head_attention_1/einsum_1/Einsum:output:0`transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€ *
equationabcd,cde->abe2K
Itransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsumі
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02P
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpн
?transformer_block_1/multi_head_attention_1/attention_output/addAddV2Rtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Vtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 2A
?transformer_block_1/multi_head_attention_1/attention_output/addЯ
+transformer_block_1/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2-
+transformer_block_1/dropout_4/dropout/ConstО
)transformer_block_1/dropout_4/dropout/MulMulCtransformer_block_1/multi_head_attention_1/attention_output/add:z:04transformer_block_1/dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2+
)transformer_block_1/dropout_4/dropout/MulЌ
+transformer_block_1/dropout_4/dropout/ShapeShapeCtransformer_block_1/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:2-
+transformer_block_1/dropout_4/dropout/ShapeТ
Btransformer_block_1/dropout_4/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_1/dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ *
dtype02D
Btransformer_block_1/dropout_4/dropout/random_uniform/RandomUniform±
4transformer_block_1/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=26
4transformer_block_1/dropout_4/dropout/GreaterEqual/yЇ
2transformer_block_1/dropout_4/dropout/GreaterEqualGreaterEqualKtransformer_block_1/dropout_4/dropout/random_uniform/RandomUniform:output:0=transformer_block_1/dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 24
2transformer_block_1/dropout_4/dropout/GreaterEqualЁ
*transformer_block_1/dropout_4/dropout/CastCast6transformer_block_1/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€ 2,
*transformer_block_1/dropout_4/dropout/Castц
+transformer_block_1/dropout_4/dropout/Mul_1Mul-transformer_block_1/dropout_4/dropout/Mul:z:0.transformer_block_1/dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€ 2-
+transformer_block_1/dropout_4/dropout/Mul_1 
transformer_block_1/addAddV2&token_and_position_embedding_1/add:z:0/transformer_block_1/dropout_4/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transformer_block_1/addё
Htransformer_block_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_1/layer_normalization_2/moments/mean/reduction_indicesѓ
6transformer_block_1/layer_normalization_2/moments/meanMeantransformer_block_1/add:z:0Qtransformer_block_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(28
6transformer_block_1/layer_normalization_2/moments/meanЗ
>transformer_block_1/layer_normalization_2/moments/StopGradientStopGradient?transformer_block_1/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2@
>transformer_block_1/layer_normalization_2/moments/StopGradientї
Ctransformer_block_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencetransformer_block_1/add:z:0Gtransformer_block_1/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2E
Ctransformer_block_1/layer_normalization_2/moments/SquaredDifferenceж
Ltransformer_block_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_1/layer_normalization_2/moments/variance/reduction_indicesз
:transformer_block_1/layer_normalization_2/moments/varianceMeanGtransformer_block_1/layer_normalization_2/moments/SquaredDifference:z:0Utransformer_block_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2<
:transformer_block_1/layer_normalization_2/moments/varianceї
9transformer_block_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52;
9transformer_block_1/layer_normalization_2/batchnorm/add/yЇ
7transformer_block_1/layer_normalization_2/batchnorm/addAddV2Ctransformer_block_1/layer_normalization_2/moments/variance:output:0Btransformer_block_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€29
7transformer_block_1/layer_normalization_2/batchnorm/addт
9transformer_block_1/layer_normalization_2/batchnorm/RsqrtRsqrt;transformer_block_1/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2;
9transformer_block_1/layer_normalization_2/batchnorm/RsqrtЬ
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpЊ
7transformer_block_1/layer_normalization_2/batchnorm/mulMul=transformer_block_1/layer_normalization_2/batchnorm/Rsqrt:y:0Ntransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 29
7transformer_block_1/layer_normalization_2/batchnorm/mulН
9transformer_block_1/layer_normalization_2/batchnorm/mul_1Multransformer_block_1/add:z:0;transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_2/batchnorm/mul_1±
9transformer_block_1/layer_normalization_2/batchnorm/mul_2Mul?transformer_block_1/layer_normalization_2/moments/mean:output:0;transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_2/batchnorm/mul_2Р
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpЇ
7transformer_block_1/layer_normalization_2/batchnorm/subSubJtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0=transformer_block_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 29
7transformer_block_1/layer_normalization_2/batchnorm/sub±
9transformer_block_1/layer_normalization_2/batchnorm/add_1AddV2=transformer_block_1/layer_normalization_2/batchnorm/mul_1:z:0;transformer_block_1/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_2/batchnorm/add_1С
Atransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_1_sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02C
Atransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpЉ
7transformer_block_1/sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_1/sequential_1/dense_4/Tensordot/axes√
7transformer_block_1/sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_1/sequential_1/dense_4/Tensordot/freeб
8transformer_block_1/sequential_1/dense_4/Tensordot/ShapeShape=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_4/Tensordot/Shape∆
@transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2/axisЮ
;transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2GatherV2Atransformer_block_1/sequential_1/dense_4/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_4/Tensordot/free:output:0Itransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2 
Btransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1/axis§
=transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1GatherV2Atransformer_block_1/sequential_1/dense_4/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_4/Tensordot/axes:output:0Ktransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1Њ
8transformer_block_1/sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_1/sequential_1/dense_4/Tensordot/Const§
7transformer_block_1/sequential_1/dense_4/Tensordot/ProdProdDtransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Atransformer_block_1/sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_1/sequential_1/dense_4/Tensordot/Prod¬
:transformer_block_1/sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_4/Tensordot/Const_1ђ
9transformer_block_1/sequential_1/dense_4/Tensordot/Prod_1ProdFtransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2_1:output:0Ctransformer_block_1/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_1/sequential_1/dense_4/Tensordot/Prod_1¬
>transformer_block_1/sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_1/sequential_1/dense_4/Tensordot/concat/axisэ
9transformer_block_1/sequential_1/dense_4/Tensordot/concatConcatV2@transformer_block_1/sequential_1/dense_4/Tensordot/free:output:0@transformer_block_1/sequential_1/dense_4/Tensordot/axes:output:0Gtransformer_block_1/sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_1/sequential_1/dense_4/Tensordot/concat∞
8transformer_block_1/sequential_1/dense_4/Tensordot/stackPack@transformer_block_1/sequential_1/dense_4/Tensordot/Prod:output:0Btransformer_block_1/sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_4/Tensordot/stack¬
<transformer_block_1/sequential_1/dense_4/Tensordot/transpose	Transpose=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0Btransformer_block_1/sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2>
<transformer_block_1/sequential_1/dense_4/Tensordot/transpose√
:transformer_block_1/sequential_1/dense_4/Tensordot/ReshapeReshape@transformer_block_1/sequential_1/dense_4/Tensordot/transpose:y:0Atransformer_block_1/sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2<
:transformer_block_1/sequential_1/dense_4/Tensordot/Reshape¬
9transformer_block_1/sequential_1/dense_4/Tensordot/MatMulMatMulCtransformer_block_1/sequential_1/dense_4/Tensordot/Reshape:output:0Itransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/sequential_1/dense_4/Tensordot/MatMul¬
:transformer_block_1/sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_4/Tensordot/Const_2∆
@transformer_block_1/sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_4/Tensordot/concat_1/axisК
;transformer_block_1/sequential_1/dense_4/Tensordot/concat_1ConcatV2Dtransformer_block_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Ctransformer_block_1/sequential_1/dense_4/Tensordot/Const_2:output:0Itransformer_block_1/sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_4/Tensordot/concat_1і
2transformer_block_1/sequential_1/dense_4/TensordotReshapeCtransformer_block_1/sequential_1/dense_4/Tensordot/MatMul:product:0Dtransformer_block_1/sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 24
2transformer_block_1/sequential_1/dense_4/TensordotЗ
?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_1_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpЂ
0transformer_block_1/sequential_1/dense_4/BiasAddBiasAdd;transformer_block_1/sequential_1/dense_4/Tensordot:output:0Gtransformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 22
0transformer_block_1/sequential_1/dense_4/BiasAdd„
-transformer_block_1/sequential_1/dense_4/ReluRelu9transformer_block_1/sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2/
-transformer_block_1/sequential_1/dense_4/ReluС
Atransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_1_sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype02C
Atransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpЉ
7transformer_block_1/sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_1/sequential_1/dense_5/Tensordot/axes√
7transformer_block_1/sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_1/sequential_1/dense_5/Tensordot/freeя
8transformer_block_1/sequential_1/dense_5/Tensordot/ShapeShape;transformer_block_1/sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_5/Tensordot/Shape∆
@transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2/axisЮ
;transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2GatherV2Atransformer_block_1/sequential_1/dense_5/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_5/Tensordot/free:output:0Itransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2 
Btransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis§
=transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1GatherV2Atransformer_block_1/sequential_1/dense_5/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_5/Tensordot/axes:output:0Ktransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1Њ
8transformer_block_1/sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_1/sequential_1/dense_5/Tensordot/Const§
7transformer_block_1/sequential_1/dense_5/Tensordot/ProdProdDtransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Atransformer_block_1/sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_1/sequential_1/dense_5/Tensordot/Prod¬
:transformer_block_1/sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_5/Tensordot/Const_1ђ
9transformer_block_1/sequential_1/dense_5/Tensordot/Prod_1ProdFtransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2_1:output:0Ctransformer_block_1/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_1/sequential_1/dense_5/Tensordot/Prod_1¬
>transformer_block_1/sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_1/sequential_1/dense_5/Tensordot/concat/axisэ
9transformer_block_1/sequential_1/dense_5/Tensordot/concatConcatV2@transformer_block_1/sequential_1/dense_5/Tensordot/free:output:0@transformer_block_1/sequential_1/dense_5/Tensordot/axes:output:0Gtransformer_block_1/sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_1/sequential_1/dense_5/Tensordot/concat∞
8transformer_block_1/sequential_1/dense_5/Tensordot/stackPack@transformer_block_1/sequential_1/dense_5/Tensordot/Prod:output:0Btransformer_block_1/sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_5/Tensordot/stackј
<transformer_block_1/sequential_1/dense_5/Tensordot/transpose	Transpose;transformer_block_1/sequential_1/dense_4/Relu:activations:0Btransformer_block_1/sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2>
<transformer_block_1/sequential_1/dense_5/Tensordot/transpose√
:transformer_block_1/sequential_1/dense_5/Tensordot/ReshapeReshape@transformer_block_1/sequential_1/dense_5/Tensordot/transpose:y:0Atransformer_block_1/sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2<
:transformer_block_1/sequential_1/dense_5/Tensordot/Reshape¬
9transformer_block_1/sequential_1/dense_5/Tensordot/MatMulMatMulCtransformer_block_1/sequential_1/dense_5/Tensordot/Reshape:output:0Itransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/sequential_1/dense_5/Tensordot/MatMul¬
:transformer_block_1/sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_5/Tensordot/Const_2∆
@transformer_block_1/sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_5/Tensordot/concat_1/axisК
;transformer_block_1/sequential_1/dense_5/Tensordot/concat_1ConcatV2Dtransformer_block_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Ctransformer_block_1/sequential_1/dense_5/Tensordot/Const_2:output:0Itransformer_block_1/sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_5/Tensordot/concat_1і
2transformer_block_1/sequential_1/dense_5/TensordotReshapeCtransformer_block_1/sequential_1/dense_5/Tensordot/MatMul:product:0Dtransformer_block_1/sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 24
2transformer_block_1/sequential_1/dense_5/TensordotЗ
?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_1_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpЂ
0transformer_block_1/sequential_1/dense_5/BiasAddBiasAdd;transformer_block_1/sequential_1/dense_5/Tensordot:output:0Gtransformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 22
0transformer_block_1/sequential_1/dense_5/BiasAddЯ
+transformer_block_1/dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2-
+transformer_block_1/dropout_5/dropout/ConstД
)transformer_block_1/dropout_5/dropout/MulMul9transformer_block_1/sequential_1/dense_5/BiasAdd:output:04transformer_block_1/dropout_5/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2+
)transformer_block_1/dropout_5/dropout/Mul√
+transformer_block_1/dropout_5/dropout/ShapeShape9transformer_block_1/sequential_1/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:2-
+transformer_block_1/dropout_5/dropout/ShapeТ
Btransformer_block_1/dropout_5/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_1/dropout_5/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ *
dtype02D
Btransformer_block_1/dropout_5/dropout/random_uniform/RandomUniform±
4transformer_block_1/dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=26
4transformer_block_1/dropout_5/dropout/GreaterEqual/yЇ
2transformer_block_1/dropout_5/dropout/GreaterEqualGreaterEqualKtransformer_block_1/dropout_5/dropout/random_uniform/RandomUniform:output:0=transformer_block_1/dropout_5/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 24
2transformer_block_1/dropout_5/dropout/GreaterEqualЁ
*transformer_block_1/dropout_5/dropout/CastCast6transformer_block_1/dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€ 2,
*transformer_block_1/dropout_5/dropout/Castц
+transformer_block_1/dropout_5/dropout/Mul_1Mul-transformer_block_1/dropout_5/dropout/Mul:z:0.transformer_block_1/dropout_5/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€ 2-
+transformer_block_1/dropout_5/dropout/Mul_1е
transformer_block_1/add_1AddV2=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0/transformer_block_1/dropout_5/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
transformer_block_1/add_1ё
Htransformer_block_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_1/layer_normalization_3/moments/mean/reduction_indices±
6transformer_block_1/layer_normalization_3/moments/meanMeantransformer_block_1/add_1:z:0Qtransformer_block_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(28
6transformer_block_1/layer_normalization_3/moments/meanЗ
>transformer_block_1/layer_normalization_3/moments/StopGradientStopGradient?transformer_block_1/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€2@
>transformer_block_1/layer_normalization_3/moments/StopGradientљ
Ctransformer_block_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferencetransformer_block_1/add_1:z:0Gtransformer_block_1/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2E
Ctransformer_block_1/layer_normalization_3/moments/SquaredDifferenceж
Ltransformer_block_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_1/layer_normalization_3/moments/variance/reduction_indicesз
:transformer_block_1/layer_normalization_3/moments/varianceMeanGtransformer_block_1/layer_normalization_3/moments/SquaredDifference:z:0Utransformer_block_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(2<
:transformer_block_1/layer_normalization_3/moments/varianceї
9transformer_block_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52;
9transformer_block_1/layer_normalization_3/batchnorm/add/yЇ
7transformer_block_1/layer_normalization_3/batchnorm/addAddV2Ctransformer_block_1/layer_normalization_3/moments/variance:output:0Btransformer_block_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€29
7transformer_block_1/layer_normalization_3/batchnorm/addт
9transformer_block_1/layer_normalization_3/batchnorm/RsqrtRsqrt;transformer_block_1/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€2;
9transformer_block_1/layer_normalization_3/batchnorm/RsqrtЬ
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpЊ
7transformer_block_1/layer_normalization_3/batchnorm/mulMul=transformer_block_1/layer_normalization_3/batchnorm/Rsqrt:y:0Ntransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ 29
7transformer_block_1/layer_normalization_3/batchnorm/mulП
9transformer_block_1/layer_normalization_3/batchnorm/mul_1Multransformer_block_1/add_1:z:0;transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_3/batchnorm/mul_1±
9transformer_block_1/layer_normalization_3/batchnorm/mul_2Mul?transformer_block_1/layer_normalization_3/moments/mean:output:0;transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_3/batchnorm/mul_2Р
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpЇ
7transformer_block_1/layer_normalization_3/batchnorm/subSubJtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0=transformer_block_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 29
7transformer_block_1/layer_normalization_3/batchnorm/sub±
9transformer_block_1/layer_normalization_3/batchnorm/add_1AddV2=transformer_block_1/layer_normalization_3/batchnorm/mul_1:z:0;transformer_block_1/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/layer_normalization_3/batchnorm/add_1®
1global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_1/Mean/reduction_indicesч
global_average_pooling1d_1/MeanMean=transformer_block_1/layer_normalization_3/batchnorm/add_1:z:0:global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2!
global_average_pooling1d_1/Meanw
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_6/dropout/Const≥
dropout_6/dropout/MulMul(global_average_pooling1d_1/Mean:output:0 dropout_6/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/dropout/MulК
dropout_6/dropout/ShapeShape(global_average_pooling1d_1/Mean:output:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape“
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype020
.dropout_6/dropout/random_uniform/RandomUniformЙ
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_6/dropout/GreaterEqual/yж
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2 
dropout_6/dropout/GreaterEqualЭ
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/dropout/CastҐ
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout_6/dropout/Mul_1•
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_6/MatMul/ReadVariableOp†
dense_6/MatMulMatMuldropout_6/dropout/Mul_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/MatMul§
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp°
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/BiasAddp
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/Reluw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_7/dropout/Const•
dropout_7/dropout/MulMuldense_6/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_7/dropout/Mul|
dropout_7/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape“
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype020
.dropout_7/dropout/random_uniform/RandomUniformЙ
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_7/dropout/GreaterEqual/yж
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
dropout_7/dropout/GreaterEqualЭ
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout_7/dropout/CastҐ
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_7/dropout/Mul_1•
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_7/MatMul/ReadVariableOp†
dense_7/MatMulMatMuldropout_7/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/MatMul§
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp°
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/Softmaxt
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityё
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookupC^transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpG^transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpC^transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpG^transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpO^transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpY^transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpL^transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpD^transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpN^transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpD^transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpN^transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp@^transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOpB^transformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOp@^transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOpB^transformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2И
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpBtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp2Р
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpFtransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2И
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpBtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp2Р
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpFtransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2†
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpNtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp2і
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2Ж
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpAtransformer_block_1/multi_head_attention_1/key/add/ReadVariableOp2Ъ
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpKtransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpCtransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp2Ю
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpMtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpCtransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp2Ю
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpMtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2В
?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOp?transformer_block_1/sequential_1/dense_4/BiasAdd/ReadVariableOp2Ж
Atransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOpAtransformer_block_1/sequential_1/dense_4/Tensordot/ReadVariableOp2В
?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp?transformer_block_1/sequential_1/dense_5/BiasAdd/ReadVariableOp2Ж
Atransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOpAtransformer_block_1/sequential_1/dense_5/Tensordot/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
т
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_100054

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Д
≥
3__inference_transformer_block_1_layer_call_fn_99713

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
identityИҐStatefulPartitionedCall¬
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
:€€€€€€€€€ *2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_983862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€ : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs"®L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*™
serving_defaultЦ
;
input_20
serving_default_input_2:0€€€€€€€€€;
dense_70
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:тя
ґ
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
ѕ_default_save_signature
–__call__
+—&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
√
	token_emb
pos_emb
trainable_variables
regularization_losses
	variables
	keras_api
“__call__
+”&call_and_return_all_conditional_losses"
_tf_keras_layer
х
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
‘__call__
+’&call_and_return_all_conditional_losses"
_tf_keras_layer
І
trainable_variables
 regularization_losses
!	variables
"	keras_api
÷__call__
+„&call_and_return_all_conditional_losses"
_tf_keras_layer
І
#trainable_variables
$regularization_losses
%	variables
&	keras_api
Ў__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

'kernel
(bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
-trainable_variables
.regularization_losses
/	variables
0	keras_api
№__call__
+Ё&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

1kernel
2bias
3trainable_variables
4regularization_losses
5	variables
6	keras_api
ё__call__
+я&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm£(m§1m•2m¶<mІ=m®>m©?m™@mЂAmђBm≠CmЃDmѓEm∞Fm±Gm≤Hm≥ImіJmµKmґLmЈMmЄ'vє(vЇ1vї2vЉ<vљ=vЊ>vњ?vј@vЅAv¬Bv√CvƒDv≈Ev∆Fv«Gv»Hv…Iv JvЋKvћLvЌMvќ"
	optimizer
∆
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
∆
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
ќ
Nnon_trainable_variables
Olayer_regularization_losses

trainable_variables

Players
Qmetrics
regularization_losses
Rlayer_metrics
	variables
–__call__
ѕ_default_save_signature
+—&call_and_return_all_conditional_losses
'—"call_and_return_conditional_losses"
_generic_user_object
-
аserving_default"
signature_map
Ј
<
embeddings
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
Ј
=
embeddings
Wtrainable_variables
Xregularization_losses
Y	variables
Z	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
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
∞
[non_trainable_variables
\layer_regularization_losses

]layers
trainable_variables
^metrics
regularization_losses
_layer_metrics
	variables
“__call__
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses"
_generic_user_object
Р
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
е__call__
+ж&call_and_return_all_conditional_losses"
_tf_keras_layer
ъ
jlayer_with_weights-0
jlayer-0
klayer_with_weights-1
klayer-1
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_sequential
∆
paxis
	Jgamma
Kbeta
qtrainable_variables
rregularization_losses
s	variables
t	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
∆
uaxis
	Lgamma
Mbeta
vtrainable_variables
wregularization_losses
x	variables
y	keras_api
л__call__
+м&call_and_return_all_conditional_losses"
_tf_keras_layer
І
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
н__call__
+о&call_and_return_all_conditional_losses"
_tf_keras_layer
©
~trainable_variables
regularization_losses
А	variables
Б	keras_api
п__call__
+р&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
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
Ц
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
µ
Вnon_trainable_variables
 Гlayer_regularization_losses
Дlayers
trainable_variables
Еmetrics
regularization_losses
Жlayer_metrics
	variables
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Зnon_trainable_variables
 Иlayer_regularization_losses
Йlayers
trainable_variables
Кmetrics
 regularization_losses
Лlayer_metrics
!	variables
÷__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Мnon_trainable_variables
 Нlayer_regularization_losses
Оlayers
#trainable_variables
Пmetrics
$regularization_losses
Рlayer_metrics
%	variables
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_6/kernel
:2dense_6/bias
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
µ
Сnon_trainable_variables
 Тlayer_regularization_losses
Уlayers
)trainable_variables
Фmetrics
*regularization_losses
Хlayer_metrics
+	variables
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Цnon_trainable_variables
 Чlayer_regularization_losses
Шlayers
-trainable_variables
Щmetrics
.regularization_losses
Ъlayer_metrics
/	variables
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
 :2dense_7/kernel
:2dense_7/bias
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
µ
Ыnon_trainable_variables
 Ьlayer_regularization_losses
Эlayers
3trainable_variables
Юmetrics
4regularization_losses
Яlayer_metrics
5	variables
ё__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
H:F	и^ 25token_and_position_embedding_1/embedding_2/embeddings
G:E 25token_and_position_embedding_1/embedding_3/embeddings
M:K  27transformer_block_1/multi_head_attention_1/query/kernel
G:E 25transformer_block_1/multi_head_attention_1/query/bias
K:I  25transformer_block_1/multi_head_attention_1/key/kernel
E:C 23transformer_block_1/multi_head_attention_1/key/bias
M:K  27transformer_block_1/multi_head_attention_1/value/kernel
G:E 25transformer_block_1/multi_head_attention_1/value/bias
X:V  2Btransformer_block_1/multi_head_attention_1/attention_output/kernel
N:L 2@transformer_block_1/multi_head_attention_1/attention_output/bias
 :  2dense_4/kernel
: 2dense_4/bias
 :  2dense_5/kernel
: 2dense_5/bias
=:; 2/transformer_block_1/layer_normalization_2/gamma
<:: 2.transformer_block_1/layer_normalization_2/beta
=:; 2/transformer_block_1/layer_normalization_3/gamma
<:: 2.transformer_block_1/layer_normalization_3/beta
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
†0
°1"
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
µ
Ґnon_trainable_variables
 £layer_regularization_losses
§layers
Strainable_variables
•metrics
Tregularization_losses
¶layer_metrics
U	variables
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
µ
Іnon_trainable_variables
 ®layer_regularization_losses
©layers
Wtrainable_variables
™metrics
Xregularization_losses
Ђlayer_metrics
Y	variables
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
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
ф
ђpartial_output_shape
≠full_output_shape

>kernel
?bias
Ѓtrainable_variables
ѓregularization_losses
∞	variables
±	keras_api
с__call__
+т&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
≤partial_output_shape
≥full_output_shape

@kernel
Abias
іtrainable_variables
µregularization_losses
ґ	variables
Ј	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
Єpartial_output_shape
єfull_output_shape

Bkernel
Cbias
Їtrainable_variables
їregularization_losses
Љ	variables
љ	keras_api
х__call__
+ц&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Њtrainable_variables
њregularization_losses
ј	variables
Ѕ	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
¬trainable_variables
√regularization_losses
ƒ	variables
≈	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
∆partial_output_shape
«full_output_shape

Dkernel
Ebias
»trainable_variables
…regularization_losses
 	variables
Ћ	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses"
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
µ
ћnon_trainable_variables
 Ќlayer_regularization_losses
ќlayers
ftrainable_variables
ѕmetrics
gregularization_losses
–layer_metrics
h	variables
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
Ѕ

Fkernel
Gbias
—trainable_variables
“regularization_losses
”	variables
‘	keras_api
э__call__
+ю&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ

Hkernel
Ibias
’trainable_variables
÷regularization_losses
„	variables
Ў	keras_api
€__call__
+А&call_and_return_all_conditional_losses"
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
µ
ўnon_trainable_variables
 Џlayer_regularization_losses
ltrainable_variables
џlayers
№metrics
mregularization_losses
Ёlayer_metrics
n	variables
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
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
µ
ёnon_trainable_variables
 яlayer_regularization_losses
аlayers
qtrainable_variables
бmetrics
rregularization_losses
вlayer_metrics
s	variables
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
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
µ
гnon_trainable_variables
 дlayer_regularization_losses
еlayers
vtrainable_variables
жmetrics
wregularization_losses
зlayer_metrics
x	variables
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
иnon_trainable_variables
 йlayer_regularization_losses
кlayers
ztrainable_variables
лmetrics
{regularization_losses
мlayer_metrics
|	variables
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ґ
нnon_trainable_variables
 оlayer_regularization_losses
пlayers
~trainable_variables
рmetrics
regularization_losses
сlayer_metrics
А	variables
п__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
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

тtotal

уcount
ф	variables
х	keras_api"
_tf_keras_metric
c

цtotal

чcount
ш
_fn_kwargs
щ	variables
ъ	keras_api"
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
Є
ыnon_trainable_variables
 ьlayer_regularization_losses
эlayers
Ѓtrainable_variables
юmetrics
ѓregularization_losses
€layer_metrics
∞	variables
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
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
Є
Аnon_trainable_variables
 Бlayer_regularization_losses
Вlayers
іtrainable_variables
Гmetrics
µregularization_losses
Дlayer_metrics
ґ	variables
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
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
Є
Еnon_trainable_variables
 Жlayer_regularization_losses
Зlayers
Їtrainable_variables
Иmetrics
їregularization_losses
Йlayer_metrics
Љ	variables
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Кnon_trainable_variables
 Лlayer_regularization_losses
Мlayers
Њtrainable_variables
Нmetrics
њregularization_losses
Оlayer_metrics
ј	variables
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Пnon_trainable_variables
 Рlayer_regularization_losses
Сlayers
¬trainable_variables
Тmetrics
√regularization_losses
Уlayer_metrics
ƒ	variables
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
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
Є
Фnon_trainable_variables
 Хlayer_regularization_losses
Цlayers
»trainable_variables
Чmetrics
…regularization_losses
Шlayer_metrics
 	variables
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
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
Є
Щnon_trainable_variables
 Ъlayer_regularization_losses
Ыlayers
—trainable_variables
Ьmetrics
“regularization_losses
Эlayer_metrics
”	variables
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
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
Є
Юnon_trainable_variables
 Яlayer_regularization_losses
†layers
’trainable_variables
°metrics
÷regularization_losses
Ґlayer_metrics
„	variables
€__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
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
т0
у1"
trackable_list_wrapper
.
ф	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ц0
ч1"
trackable_list_wrapper
.
щ	variables"
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
%:# 2Adam/dense_6/kernel/m
:2Adam/dense_6/bias/m
%:#2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
M:K	и^ 2<Adam/token_and_position_embedding_1/embedding_2/embeddings/m
L:J 2<Adam/token_and_position_embedding_1/embedding_3/embeddings/m
R:P  2>Adam/transformer_block_1/multi_head_attention_1/query/kernel/m
L:J 2<Adam/transformer_block_1/multi_head_attention_1/query/bias/m
P:N  2<Adam/transformer_block_1/multi_head_attention_1/key/kernel/m
J:H 2:Adam/transformer_block_1/multi_head_attention_1/key/bias/m
R:P  2>Adam/transformer_block_1/multi_head_attention_1/value/kernel/m
L:J 2<Adam/transformer_block_1/multi_head_attention_1/value/bias/m
]:[  2IAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/m
S:Q 2GAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/m
%:#  2Adam/dense_4/kernel/m
: 2Adam/dense_4/bias/m
%:#  2Adam/dense_5/kernel/m
: 2Adam/dense_5/bias/m
B:@ 26Adam/transformer_block_1/layer_normalization_2/gamma/m
A:? 25Adam/transformer_block_1/layer_normalization_2/beta/m
B:@ 26Adam/transformer_block_1/layer_normalization_3/gamma/m
A:? 25Adam/transformer_block_1/layer_normalization_3/beta/m
%:# 2Adam/dense_6/kernel/v
:2Adam/dense_6/bias/v
%:#2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
M:K	и^ 2<Adam/token_and_position_embedding_1/embedding_2/embeddings/v
L:J 2<Adam/token_and_position_embedding_1/embedding_3/embeddings/v
R:P  2>Adam/transformer_block_1/multi_head_attention_1/query/kernel/v
L:J 2<Adam/transformer_block_1/multi_head_attention_1/query/bias/v
P:N  2<Adam/transformer_block_1/multi_head_attention_1/key/kernel/v
J:H 2:Adam/transformer_block_1/multi_head_attention_1/key/bias/v
R:P  2>Adam/transformer_block_1/multi_head_attention_1/value/kernel/v
L:J 2<Adam/transformer_block_1/multi_head_attention_1/value/bias/v
]:[  2IAdam/transformer_block_1/multi_head_attention_1/attention_output/kernel/v
S:Q 2GAdam/transformer_block_1/multi_head_attention_1/attention_output/bias/v
%:#  2Adam/dense_4/kernel/v
: 2Adam/dense_4/bias/v
%:#  2Adam/dense_5/kernel/v
: 2Adam/dense_5/bias/v
B:@ 26Adam/transformer_block_1/layer_normalization_2/gamma/v
A:? 25Adam/transformer_block_1/layer_normalization_2/beta/v
B:@ 26Adam/transformer_block_1/layer_normalization_3/gamma/v
A:? 25Adam/transformer_block_1/layer_normalization_3/beta/v
ЋB»
 __inference__wrapped_model_98005input_2"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
к2з
'__inference_TRNS_20_layer_call_fn_98523
'__inference_TRNS_20_layer_call_fn_99237
'__inference_TRNS_20_layer_call_fn_99286
'__inference_TRNS_20_layer_call_fn_99021ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
÷2”
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99451
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99643
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99076
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99131ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
г2а
>__inference_token_and_position_embedding_1_layer_call_fn_99652Э
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ю2ы
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_99676Э
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†2Э
3__inference_transformer_block_1_layer_call_fn_99713
3__inference_transformer_block_1_layer_call_fn_99750∞
І≤£
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
„2‘
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_99877
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_100017∞
І≤£
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ѓ2ђ
;__inference_global_average_pooling1d_1_layer_call_fn_100022
;__inference_global_average_pooling1d_1_layer_call_fn_100027ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
е2в
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_100033
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_100039ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Т2П
*__inference_dropout_6_layer_call_fn_100044
*__inference_dropout_6_layer_call_fn_100049і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_6_layer_call_and_return_conditional_losses_100054
E__inference_dropout_6_layer_call_and_return_conditional_losses_100066і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
“2ѕ
(__inference_dense_6_layer_call_fn_100075Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_6_layer_call_and_return_conditional_losses_100086Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Т2П
*__inference_dropout_7_layer_call_fn_100091
*__inference_dropout_7_layer_call_fn_100096і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_7_layer_call_and_return_conditional_losses_100101
E__inference_dropout_7_layer_call_and_return_conditional_losses_100113і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
“2ѕ
(__inference_dense_7_layer_call_fn_100122Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_7_layer_call_and_return_conditional_losses_100133Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 B«
#__inference_signature_wrapper_99188input_2"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
В2€ь
у≤п
FullArgSpece
args]ЪZ
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
defaultsЪ

 

 
p 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
В2€ь
у≤п
FullArgSpece
args]ЪZ
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
defaultsЪ

 

 
p 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
А2э
,__inference_sequential_1_layer_call_fn_98097
-__inference_sequential_1_layer_call_fn_100146
-__inference_sequential_1_layer_call_fn_100159
,__inference_sequential_1_layer_call_fn_98170ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
м2й
H__inference_sequential_1_layer_call_and_return_conditional_losses_100216
H__inference_sequential_1_layer_call_and_return_conditional_losses_100273
G__inference_sequential_1_layer_call_and_return_conditional_losses_98184
G__inference_sequential_1_layer_call_and_return_conditional_losses_98198ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_4_layer_call_fn_100282Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_4_layer_call_and_return_conditional_losses_100313Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_5_layer_call_fn_100322Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_5_layer_call_and_return_conditional_losses_100352Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 њ
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99076y=<>?@ABCDEJKFGHILM'(128Ґ5
.Ґ+
!К
input_2€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ њ
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99131y=<>?@ABCDEJKFGHILM'(128Ґ5
.Ґ+
!К
input_2€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Њ
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99451x=<>?@ABCDEJKFGHILM'(127Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Њ
B__inference_TRNS_20_layer_call_and_return_conditional_losses_99643x=<>?@ABCDEJKFGHILM'(127Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ч
'__inference_TRNS_20_layer_call_fn_98523l=<>?@ABCDEJKFGHILM'(128Ґ5
.Ґ+
!К
input_2€€€€€€€€€
p 

 
™ "К€€€€€€€€€Ч
'__inference_TRNS_20_layer_call_fn_99021l=<>?@ABCDEJKFGHILM'(128Ґ5
.Ґ+
!К
input_2€€€€€€€€€
p

 
™ "К€€€€€€€€€Ц
'__inference_TRNS_20_layer_call_fn_99237k=<>?@ABCDEJKFGHILM'(127Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€Ц
'__inference_TRNS_20_layer_call_fn_99286k=<>?@ABCDEJKFGHILM'(127Ґ4
-Ґ*
 К
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€°
 __inference__wrapped_model_98005}=<>?@ABCDEJKFGHILM'(120Ґ-
&Ґ#
!К
input_2€€€€€€€€€
™ "1™.
,
dense_7!К
dense_7€€€€€€€€€Ђ
C__inference_dense_4_layer_call_and_return_conditional_losses_100313dFG3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€ 
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ Г
(__inference_dense_4_layer_call_fn_100282WFG3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€ 
™ "К€€€€€€€€€ Ђ
C__inference_dense_5_layer_call_and_return_conditional_losses_100352dHI3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€ 
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ Г
(__inference_dense_5_layer_call_fn_100322WHI3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€ 
™ "К€€€€€€€€€ £
C__inference_dense_6_layer_call_and_return_conditional_losses_100086\'(/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_6_layer_call_fn_100075O'(/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "К€€€€€€€€€£
C__inference_dense_7_layer_call_and_return_conditional_losses_100133\12/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_7_layer_call_fn_100122O12/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€•
E__inference_dropout_6_layer_call_and_return_conditional_losses_100054\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ •
E__inference_dropout_6_layer_call_and_return_conditional_losses_100066\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ }
*__inference_dropout_6_layer_call_fn_100044O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ "К€€€€€€€€€ }
*__inference_dropout_6_layer_call_fn_100049O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ "К€€€€€€€€€ •
E__inference_dropout_7_layer_call_and_return_conditional_losses_100101\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ •
E__inference_dropout_7_layer_call_and_return_conditional_losses_100113\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ }
*__inference_dropout_7_layer_call_fn_100091O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "К€€€€€€€€€}
*__inference_dropout_7_layer_call_fn_100096O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "К€€€€€€€€€’
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_100033{IҐF
?Ґ<
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
™ ".Ґ+
$К!
0€€€€€€€€€€€€€€€€€€
Ъ Ї
V__inference_global_average_pooling1d_1_layer_call_and_return_conditional_losses_100039`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€ 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ ≠
;__inference_global_average_pooling1d_1_layer_call_fn_100022nIҐF
?Ґ<
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
™ "!К€€€€€€€€€€€€€€€€€€Т
;__inference_global_average_pooling1d_1_layer_call_fn_100027S7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€ 

 
™ "К€€€€€€€€€ Ї
H__inference_sequential_1_layer_call_and_return_conditional_losses_100216nFGHI;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€ 
p 

 
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ Ї
H__inference_sequential_1_layer_call_and_return_conditional_losses_100273nFGHI;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€ 
p

 
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ ј
G__inference_sequential_1_layer_call_and_return_conditional_losses_98184uFGHIBҐ?
8Ґ5
+К(
dense_4_input€€€€€€€€€ 
p 

 
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ ј
G__inference_sequential_1_layer_call_and_return_conditional_losses_98198uFGHIBҐ?
8Ґ5
+К(
dense_4_input€€€€€€€€€ 
p

 
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ Т
-__inference_sequential_1_layer_call_fn_100146aFGHI;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€ 
p 

 
™ "К€€€€€€€€€ Т
-__inference_sequential_1_layer_call_fn_100159aFGHI;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€ 
p

 
™ "К€€€€€€€€€ Ш
,__inference_sequential_1_layer_call_fn_98097hFGHIBҐ?
8Ґ5
+К(
dense_4_input€€€€€€€€€ 
p 

 
™ "К€€€€€€€€€ Ш
,__inference_sequential_1_layer_call_fn_98170hFGHIBҐ?
8Ґ5
+К(
dense_4_input€€€€€€€€€ 
p

 
™ "К€€€€€€€€€ ∞
#__inference_signature_wrapper_99188И=<>?@ABCDEJKFGHILM'(12;Ґ8
Ґ 
1™.
,
input_2!К
input_2€€€€€€€€€"1™.
,
dense_7!К
dense_7€€€€€€€€€Є
Y__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_99676[=<*Ґ'
 Ґ
К
x€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ Р
>__inference_token_and_position_embedding_1_layer_call_fn_99652N=<*Ґ'
 Ґ
К
x€€€€€€€€€
™ "К€€€€€€€€€ …
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_100017v>?@ABCDEJKFGHILM7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€ 
p
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ »
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_99877v>?@ABCDEJKFGHILM7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€ 
p 
™ ")Ґ&
К
0€€€€€€€€€ 
Ъ †
3__inference_transformer_block_1_layer_call_fn_99713i>?@ABCDEJKFGHILM7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€ 
p 
™ "К€€€€€€€€€ †
3__inference_transformer_block_1_layer_call_fn_99750i>?@ABCDEJKFGHILM7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€ 
p
™ "К€€€€€€€€€ 