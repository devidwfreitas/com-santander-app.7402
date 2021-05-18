.class public Lcq;
.super Lco;
.source "SourceFile"


# static fields
.field private static final a:I = 0x14

.field private static final i:I = 0x5a827999

.field private static final j:I = 0x6ed9eba1

.field private static final k:I = -0x70e44324

.field private static final l:I = -0x359d3e2a


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lco;-><init>()V

    .line 16
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcq;->g:[I

    .line 24
    invoke-virtual {p0}, Lcq;->c()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcq;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1}, Lco;-><init>(Lco;)V

    .line 16
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcq;->g:[I

    .line 35
    iget v0, p1, Lcq;->b:I

    iput v0, p0, Lcq;->b:I

    .line 36
    iget v0, p1, Lcq;->c:I

    iput v0, p0, Lcq;->c:I

    .line 37
    iget v0, p1, Lcq;->d:I

    iput v0, p0, Lcq;->d:I

    .line 38
    iget v0, p1, Lcq;->e:I

    iput v0, p0, Lcq;->e:I

    .line 39
    iget v0, p1, Lcq;->f:I

    iput v0, p0, Lcq;->f:I

    .line 41
    iget-object v0, p1, Lcq;->g:[I

    iget-object v1, p0, Lcq;->g:[I

    iget-object v2, p1, Lcq;->g:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v0, p1, Lcq;->h:I

    iput v0, p0, Lcq;->h:I

    .line 43
    return-void
.end method

.method private a(III)I
    .locals 2

    .prologue
    .line 141
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private a(I[BI)V
    .locals 3

    .prologue
    .line 73
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 74
    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 75
    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 76
    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 77
    return-void
.end method

.method private b(III)I
    .locals 1

    .prologue
    .line 149
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private c(III)I
    .locals 2

    .prologue
    .line 157
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "SHA-1"

    return-object v0
.end method

.method protected a(J)V
    .locals 5

    .prologue
    const/16 v4, 0xe

    .line 82
    iget v0, p0, Lcq;->h:I

    if-le v0, v4, :cond_0

    .line 84
    invoke-virtual {p0}, Lcq;->d()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcq;->g:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 88
    iget-object v0, p0, Lcq;->g:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 89
    return-void
.end method

.method protected a([BI)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcq;->g:[I

    iget v1, p0, Lcq;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcq;->h:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    .line 60
    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 59
    aput v2, v0, v1

    .line 62
    iget v0, p0, Lcq;->h:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcq;->d()V

    .line 66
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x14

    return v0
.end method

.method public b([BI)I
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcq;->f()V

    .line 97
    iget v0, p0, Lcq;->b:I

    invoke-direct {p0, v0, p1, p2}, Lcq;->a(I[BI)V

    .line 98
    iget v0, p0, Lcq;->c:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcq;->a(I[BI)V

    .line 99
    iget v0, p0, Lcq;->d:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcq;->a(I[BI)V

    .line 100
    iget v0, p0, Lcq;->e:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lcq;->a(I[BI)V

    .line 101
    iget v0, p0, Lcq;->f:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lcq;->a(I[BI)V

    .line 103
    invoke-virtual {p0}, Lcq;->c()V

    .line 105
    const/16 v0, 0x14

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-super {p0}, Lco;->c()V

    .line 115
    const v0, 0x67452301

    iput v0, p0, Lcq;->b:I

    .line 116
    const v0, -0x10325477

    iput v0, p0, Lcq;->c:I

    .line 117
    const v0, -0x67452302

    iput v0, p0, Lcq;->d:I

    .line 118
    const v0, 0x10325476

    iput v0, p0, Lcq;->e:I

    .line 119
    const v0, -0x3c2d1e10

    iput v0, p0, Lcq;->f:I

    .line 121
    iput v1, p0, Lcq;->h:I

    move v0, v1

    .line 122
    :goto_0
    iget-object v2, p0, Lcq;->g:[I

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 126
    return-void

    .line 124
    :cond_0
    iget-object v2, p0, Lcq;->g:[I

    aput v1, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected d()V
    .locals 10

    .prologue
    .line 165
    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x50

    if-lt v0, v1, :cond_0

    .line 174
    iget v6, p0, Lcq;->b:I

    .line 175
    iget v5, p0, Lcq;->c:I

    .line 176
    iget v4, p0, Lcq;->d:I

    .line 177
    iget v3, p0, Lcq;->e:I

    .line 178
    iget v2, p0, Lcq;->f:I

    .line 183
    const/4 v1, 0x0

    .line 185
    const/4 v0, 0x0

    :goto_1
    const/4 v7, 0x4

    if-lt v0, v7, :cond_1

    .line 208
    const/4 v0, 0x0

    :goto_2
    const/4 v7, 0x4

    if-lt v0, v7, :cond_2

    .line 231
    const/4 v0, 0x0

    :goto_3
    const/4 v7, 0x4

    if-lt v0, v7, :cond_3

    .line 254
    const/4 v0, 0x0

    :goto_4
    const/4 v7, 0x3

    if-le v0, v7, :cond_4

    .line 275
    iget v0, p0, Lcq;->b:I

    add-int/2addr v0, v6

    iput v0, p0, Lcq;->b:I

    .line 276
    iget v0, p0, Lcq;->c:I

    add-int/2addr v0, v5

    iput v0, p0, Lcq;->c:I

    .line 277
    iget v0, p0, Lcq;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lcq;->d:I

    .line 278
    iget v0, p0, Lcq;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lcq;->e:I

    .line 279
    iget v0, p0, Lcq;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lcq;->f:I

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcq;->h:I

    .line 285
    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 289
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcq;->g:[I

    add-int/lit8 v2, v0, -0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcq;->g:[I

    add-int/lit8 v3, v0, -0x8

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcq;->g:[I

    add-int/lit8 v3, v0, -0xe

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcq;->g:[I

    add-int/lit8 v3, v0, -0x10

    aget v2, v2, v3

    xor-int/2addr v1, v2

    .line 168
    iget-object v2, p0, Lcq;->g:[I

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v3

    aput v1, v2, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v5, v4, v3}, Lcq;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcq;->g:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, 0x5a827999

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    .line 190
    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    .line 192
    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v6, v5, v4}, Lcq;->a(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    .line 193
    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    .line 195
    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v1, v6, v5}, Lcq;->a(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    .line 196
    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    .line 198
    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v3, v2, v6}, Lcq;->a(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, 0x5a827999

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    .line 199
    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    .line 201
    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v4, v3, v2}, Lcq;->a(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lcq;->g:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 202
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 212
    :cond_2
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v5, v4, v3}, Lcq;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcq;->g:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, 0x6ed9eba1

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    .line 213
    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    .line 215
    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v6, v5, v4}, Lcq;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    .line 216
    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    .line 218
    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v1, v6, v5}, Lcq;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    .line 219
    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    .line 221
    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v3, v2, v6}, Lcq;->b(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, 0x6ed9eba1

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    .line 222
    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    .line 224
    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v4, v3, v2}, Lcq;->b(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lcq;->g:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 225
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 235
    :cond_3
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v5, v4, v3}, Lcq;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcq;->g:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, -0x70e44324

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    .line 236
    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    .line 238
    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v6, v5, v4}, Lcq;->c(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, -0x70e44324

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    .line 239
    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    .line 241
    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v1, v6, v5}, Lcq;->c(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, -0x70e44324

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    .line 242
    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    .line 244
    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v3, v2, v6}, Lcq;->c(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, -0x70e44324

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    .line 245
    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    .line 247
    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v4, v3, v2}, Lcq;->c(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lcq;->g:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, -0x70e44324

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 248
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 258
    :cond_4
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v5, v4, v3}, Lcq;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcq;->g:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, -0x359d3e2a    # -3715189.5f

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    .line 259
    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    .line 261
    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v6, v5, v4}, Lcq;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, -0x359d3e2a    # -3715189.5f

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    .line 262
    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    .line 264
    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v1, v6, v5}, Lcq;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, -0x359d3e2a    # -3715189.5f

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    .line 265
    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    .line 267
    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v3, v2, v6}, Lcq;->b(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lcq;->g:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, -0x359d3e2a    # -3715189.5f

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    .line 268
    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    .line 270
    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v4, v3, v2}, Lcq;->b(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lcq;->g:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, -0x359d3e2a    # -3715189.5f

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 271
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 287
    :cond_5
    iget-object v1, p0, Lcq;->g:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method
