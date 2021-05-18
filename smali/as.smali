.class public Las;
.super Lco;
.source "SourceFile"


# static fields
.field static final a:[I

.field private static final b:I = 0x20


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Las;->a:[I

    .line 18
    return-void

    .line 281
    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lco;-><init>()V

    .line 25
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Las;->k:[I

    .line 33
    invoke-virtual {p0}, Las;->c()V

    .line 34
    return-void
.end method

.method public constructor <init>(Las;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1}, Lco;-><init>(Lco;)V

    .line 25
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Las;->k:[I

    .line 44
    iget v0, p1, Las;->c:I

    iput v0, p0, Las;->c:I

    .line 45
    iget v0, p1, Las;->d:I

    iput v0, p0, Las;->d:I

    .line 46
    iget v0, p1, Las;->e:I

    iput v0, p0, Las;->e:I

    .line 47
    iget v0, p1, Las;->f:I

    iput v0, p0, Las;->f:I

    .line 48
    iget v0, p1, Las;->g:I

    iput v0, p0, Las;->g:I

    .line 49
    iget v0, p1, Las;->h:I

    iput v0, p0, Las;->h:I

    .line 50
    iget v0, p1, Las;->i:I

    iput v0, p0, Las;->i:I

    .line 51
    iget v0, p1, Las;->j:I

    iput v0, p0, Las;->j:I

    .line 53
    iget-object v0, p1, Las;->k:[I

    iget-object v1, p0, Las;->k:[I

    iget-object v2, p1, Las;->k:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget v0, p1, Las;->l:I

    iput v0, p0, Las;->l:I

    .line 55
    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 256
    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xd

    shl-int/lit8 v2, p1, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x16

    shl-int/lit8 v2, p1, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private a(III)I
    .locals 2

    .prologue
    .line 242
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private a(I[BI)V
    .locals 2

    .prologue
    .line 85
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 86
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 87
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 88
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 89
    return-void
.end method

.method private b(I)I
    .locals 3

    .prologue
    .line 262
    ushr-int/lit8 v0, p1, 0x6

    shl-int/lit8 v1, p1, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xb

    shl-int/lit8 v2, p1, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x19

    shl-int/lit8 v2, p1, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private b(III)I
    .locals 2

    .prologue
    .line 250
    and-int v0, p1, p2

    and-int v1, p1, p3

    xor-int/2addr v0, v1

    and-int v1, p2, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private c(I)I
    .locals 3

    .prologue
    .line 268
    ushr-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p1, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x12

    shl-int/lit8 v2, p1, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private d(I)I
    .locals 3

    .prologue
    .line 274
    ushr-int/lit8 v0, p1, 0x11

    shl-int/lit8 v1, p1, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x13

    shl-int/lit8 v2, p1, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0xa

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "SHA-256"

    return-object v0
.end method

.method protected a(J)V
    .locals 5

    .prologue
    const/16 v4, 0xe

    .line 94
    iget v0, p0, Las;->l:I

    if-le v0, v4, :cond_0

    .line 96
    invoke-virtual {p0}, Las;->d()V

    .line 99
    :cond_0
    iget-object v0, p0, Las;->k:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 100
    iget-object v0, p0, Las;->k:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 101
    return-void
.end method

.method protected a([BI)V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Las;->k:[I

    iget v1, p0, Las;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Las;->l:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    .line 72
    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 71
    aput v2, v0, v1

    .line 74
    iget v0, p0, Las;->l:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Las;->d()V

    .line 78
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x20

    return v0
.end method

.method public b([BI)I
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Las;->f()V

    .line 109
    iget v0, p0, Las;->c:I

    invoke-direct {p0, v0, p1, p2}, Las;->a(I[BI)V

    .line 110
    iget v0, p0, Las;->d:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Las;->a(I[BI)V

    .line 111
    iget v0, p0, Las;->e:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Las;->a(I[BI)V

    .line 112
    iget v0, p0, Las;->f:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Las;->a(I[BI)V

    .line 113
    iget v0, p0, Las;->g:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Las;->a(I[BI)V

    .line 114
    iget v0, p0, Las;->h:I

    add-int/lit8 v1, p2, 0x14

    invoke-direct {p0, v0, p1, v1}, Las;->a(I[BI)V

    .line 115
    iget v0, p0, Las;->i:I

    add-int/lit8 v1, p2, 0x18

    invoke-direct {p0, v0, p1, v1}, Las;->a(I[BI)V

    .line 116
    iget v0, p0, Las;->j:I

    add-int/lit8 v1, p2, 0x1c

    invoke-direct {p0, v0, p1, v1}, Las;->a(I[BI)V

    .line 118
    invoke-virtual {p0}, Las;->c()V

    .line 120
    const/16 v0, 0x20

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-super {p0}, Lco;->c()V

    .line 135
    const v0, 0x6a09e667

    iput v0, p0, Las;->c:I

    .line 136
    const v0, -0x4498517b

    iput v0, p0, Las;->d:I

    .line 137
    const v0, 0x3c6ef372

    iput v0, p0, Las;->e:I

    .line 138
    const v0, -0x5ab00ac6

    iput v0, p0, Las;->f:I

    .line 139
    const v0, 0x510e527f

    iput v0, p0, Las;->g:I

    .line 140
    const v0, -0x64fa9774

    iput v0, p0, Las;->h:I

    .line 141
    const v0, 0x1f83d9ab

    iput v0, p0, Las;->i:I

    .line 142
    const v0, 0x5be0cd19

    iput v0, p0, Las;->j:I

    .line 144
    iput v1, p0, Las;->l:I

    move v0, v1

    .line 145
    :goto_0
    iget-object v2, p0, Las;->k:[I

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 149
    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Las;->k:[I

    aput v1, v2, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected d()V
    .locals 15

    .prologue
    const/16 v11, 0x10

    const/4 v1, 0x0

    .line 156
    move v0, v11

    :goto_0
    const/16 v2, 0x3f

    if-le v0, v2, :cond_0

    .line 164
    iget v8, p0, Las;->c:I

    .line 165
    iget v7, p0, Las;->d:I

    .line 166
    iget v6, p0, Las;->e:I

    .line 167
    iget v5, p0, Las;->f:I

    .line 168
    iget v4, p0, Las;->g:I

    .line 169
    iget v3, p0, Las;->h:I

    .line 170
    iget v2, p0, Las;->i:I

    .line 171
    iget v0, p0, Las;->j:I

    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    move v5, v3

    move v6, v4

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    .line 174
    :goto_1
    const/16 v12, 0x8

    if-lt v0, v12, :cond_1

    .line 217
    iget v0, p0, Las;->c:I

    add-int/2addr v0, v10

    iput v0, p0, Las;->c:I

    .line 218
    iget v0, p0, Las;->d:I

    add-int/2addr v0, v9

    iput v0, p0, Las;->d:I

    .line 219
    iget v0, p0, Las;->e:I

    add-int/2addr v0, v8

    iput v0, p0, Las;->e:I

    .line 220
    iget v0, p0, Las;->f:I

    add-int/2addr v0, v7

    iput v0, p0, Las;->f:I

    .line 221
    iget v0, p0, Las;->g:I

    add-int/2addr v0, v6

    iput v0, p0, Las;->g:I

    .line 222
    iget v0, p0, Las;->h:I

    add-int/2addr v0, v5

    iput v0, p0, Las;->h:I

    .line 223
    iget v0, p0, Las;->i:I

    add-int/2addr v0, v4

    iput v0, p0, Las;->i:I

    .line 224
    iget v0, p0, Las;->j:I

    add-int/2addr v0, v3

    iput v0, p0, Las;->j:I

    .line 229
    iput v1, p0, Las;->l:I

    move v0, v1

    .line 230
    :goto_2
    if-lt v0, v11, :cond_2

    .line 234
    return-void

    .line 158
    :cond_0
    iget-object v2, p0, Las;->k:[I

    iget-object v3, p0, Las;->k:[I

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    invoke-direct {p0, v3}, Las;->d(I)I

    move-result v3

    iget-object v4, p0, Las;->k:[I

    add-int/lit8 v5, v0, -0x7

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Las;->k:[I

    add-int/lit8 v5, v0, -0xf

    aget v4, v4, v5

    invoke-direct {p0, v4}, Las;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Las;->k:[I

    add-int/lit8 v5, v0, -0x10

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-direct {p0, v6}, Las;->b(I)I

    move-result v12

    invoke-direct {p0, v6, v5, v4}, Las;->a(III)I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Las;->a:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Las;->k:[I

    add-int/lit8 v14, v2, 0x1

    aget v2, v13, v2

    add-int/2addr v2, v12

    add-int/2addr v2, v3

    .line 178
    add-int v3, v7, v2

    .line 179
    invoke-direct {p0, v10}, Las;->a(I)I

    move-result v7

    invoke-direct {p0, v10, v9, v8}, Las;->b(III)I

    move-result v12

    add-int/2addr v7, v12

    add-int/2addr v2, v7

    .line 182
    invoke-direct {p0, v3}, Las;->b(I)I

    move-result v7

    invoke-direct {p0, v3, v6, v5}, Las;->a(III)I

    move-result v12

    add-int/2addr v7, v12

    sget-object v12, Las;->a:[I

    aget v12, v12, v14

    add-int/2addr v7, v12

    iget-object v12, p0, Las;->k:[I

    add-int/lit8 v13, v14, 0x1

    aget v12, v12, v14

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    .line 183
    add-int/2addr v8, v4

    .line 184
    invoke-direct {p0, v2}, Las;->a(I)I

    move-result v7

    invoke-direct {p0, v2, v10, v9}, Las;->b(III)I

    move-result v12

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    .line 187
    invoke-direct {p0, v8}, Las;->b(I)I

    move-result v7

    invoke-direct {p0, v8, v3, v6}, Las;->a(III)I

    move-result v12

    add-int/2addr v7, v12

    sget-object v12, Las;->a:[I

    aget v12, v12, v13

    add-int/2addr v7, v12

    iget-object v12, p0, Las;->k:[I

    add-int/lit8 v14, v13, 0x1

    aget v12, v12, v13

    add-int/2addr v7, v12

    add-int/2addr v5, v7

    .line 188
    add-int/2addr v9, v5

    .line 189
    invoke-direct {p0, v4}, Las;->a(I)I

    move-result v7

    invoke-direct {p0, v4, v2, v10}, Las;->b(III)I

    move-result v12

    add-int/2addr v7, v12

    add-int/2addr v5, v7

    .line 192
    invoke-direct {p0, v9}, Las;->b(I)I

    move-result v7

    invoke-direct {p0, v9, v8, v3}, Las;->a(III)I

    move-result v12

    add-int/2addr v7, v12

    sget-object v12, Las;->a:[I

    aget v12, v12, v14

    add-int/2addr v7, v12

    iget-object v12, p0, Las;->k:[I

    add-int/lit8 v13, v14, 0x1

    aget v12, v12, v14

    add-int/2addr v7, v12

    add-int/2addr v6, v7

    .line 193
    add-int/2addr v10, v6

    .line 194
    invoke-direct {p0, v5}, Las;->a(I)I

    move-result v7

    invoke-direct {p0, v5, v4, v2}, Las;->b(III)I

    move-result v12

    add-int/2addr v7, v12

    add-int/2addr v6, v7

    .line 197
    invoke-direct {p0, v10}, Las;->b(I)I

    move-result v7

    invoke-direct {p0, v10, v9, v8}, Las;->a(III)I

    move-result v12

    add-int/2addr v7, v12

    sget-object v12, Las;->a:[I

    aget v12, v12, v13

    add-int/2addr v7, v12

    iget-object v12, p0, Las;->k:[I

    add-int/lit8 v14, v13, 0x1

    aget v12, v12, v13

    add-int/2addr v7, v12

    add-int/2addr v7, v3

    .line 198
    add-int v3, v2, v7

    .line 199
    invoke-direct {p0, v6}, Las;->a(I)I

    move-result v2

    invoke-direct {p0, v6, v5, v4}, Las;->b(III)I

    move-result v12

    add-int/2addr v2, v12

    add-int/2addr v7, v2

    .line 202
    invoke-direct {p0, v3}, Las;->b(I)I

    move-result v2

    invoke-direct {p0, v3, v10, v9}, Las;->a(III)I

    move-result v12

    add-int/2addr v2, v12

    sget-object v12, Las;->a:[I

    aget v12, v12, v14

    add-int/2addr v2, v12

    iget-object v12, p0, Las;->k:[I

    add-int/lit8 v13, v14, 0x1

    aget v12, v12, v14

    add-int/2addr v2, v12

    add-int/2addr v2, v8

    .line 203
    add-int/2addr v4, v2

    .line 204
    invoke-direct {p0, v7}, Las;->a(I)I

    move-result v8

    invoke-direct {p0, v7, v6, v5}, Las;->b(III)I

    move-result v12

    add-int/2addr v8, v12

    add-int/2addr v8, v2

    .line 207
    invoke-direct {p0, v4}, Las;->b(I)I

    move-result v2

    invoke-direct {p0, v4, v3, v10}, Las;->a(III)I

    move-result v12

    add-int/2addr v2, v12

    sget-object v12, Las;->a:[I

    aget v12, v12, v13

    add-int/2addr v2, v12

    iget-object v12, p0, Las;->k:[I

    add-int/lit8 v14, v13, 0x1

    aget v12, v12, v13

    add-int/2addr v2, v12

    add-int/2addr v2, v9

    .line 208
    add-int/2addr v5, v2

    .line 209
    invoke-direct {p0, v8}, Las;->a(I)I

    move-result v9

    invoke-direct {p0, v8, v7, v6}, Las;->b(III)I

    move-result v12

    add-int/2addr v9, v12

    add-int/2addr v9, v2

    .line 212
    invoke-direct {p0, v5}, Las;->b(I)I

    move-result v2

    invoke-direct {p0, v5, v4, v3}, Las;->a(III)I

    move-result v12

    add-int/2addr v2, v12

    sget-object v12, Las;->a:[I

    aget v12, v12, v14

    add-int/2addr v12, v2

    iget-object v13, p0, Las;->k:[I

    add-int/lit8 v2, v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 213
    add-int/2addr v6, v10

    .line 214
    invoke-direct {p0, v9}, Las;->a(I)I

    move-result v12

    invoke-direct {p0, v9, v8, v7}, Las;->b(III)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 232
    :cond_2
    iget-object v2, p0, Las;->k:[I

    aput v1, v2, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method
