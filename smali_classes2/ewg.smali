.class public final Lewg;
.super Leww;
.source "SourceFile"


# static fields
.field static final a:[C

.field static final b:[I

.field private static final c:F = 2.0f

.field private static final d:F = 1.5f

.field private static final e:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field private static final f:I = 0x3

.field private static final g:[C


# instance fields
.field private final h:Ljava/lang/StringBuilder;

.field private i:[I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lewg;->a:[C

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lewg;->b:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lewg;->g:[C

    return-void

    .line 50
    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    .line 61
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Leww;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lewg;->h:Ljava/lang/StringBuilder;

    .line 75
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lewg;->i:[I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lewg;->j:I

    .line 77
    return-void
.end method

.method private a(Lets;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iput v2, p0, Lewg;->j:I

    .line 233
    invoke-virtual {p1, v2}, Lets;->e(I)I

    move-result v0

    .line 234
    invoke-virtual {p1}, Lets;->a()I

    move-result v5

    .line 235
    if-lt v0, v5, :cond_0

    .line 236
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    :cond_0
    move v3, v1

    move v4, v0

    move v0, v2

    .line 240
    :goto_0
    if-ge v4, v5, :cond_3

    .line 241
    invoke-virtual {p1, v4}, Lets;->a(I)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_1

    .line 242
    add-int/lit8 v0, v0, 0x1

    .line 248
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0, v0}, Lewg;->b(I)V

    .line 246
    if-nez v3, :cond_2

    move v0, v1

    :goto_2
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 250
    :cond_3
    invoke-direct {p0, v0}, Lewg;->b(I)V

    .line 251
    return-void
.end method

.method static a([CC)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 282
    if-eqz p0, :cond_0

    .line 283
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, p0, v1

    .line 284
    if-ne v3, p1, :cond_1

    .line 285
    const/4 v0, 0x1

    .line 289
    :cond_0
    return v0

    .line 283
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 264
    move v0, v1

    :goto_0
    iget v2, p0, Lewg;->j:I

    if-ge v0, v2, :cond_3

    .line 265
    invoke-direct {p0, v0}, Lewg;->c(I)I

    move-result v2

    .line 266
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v3, Lewg;->g:[C

    sget-object v4, Lewg;->a:[C

    aget-char v2, v4, v2

    invoke-static {v3, v2}, Lewg;->a([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    .line 270
    :goto_1
    add-int/lit8 v4, v0, 0x7

    if-ge v2, v4, :cond_0

    .line 271
    iget-object v4, p0, Lewg;->i:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    :cond_0
    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lewg;->i:[I

    add-int/lit8 v4, v0, -0x1

    aget v2, v2, v4

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_2

    .line 274
    :cond_1
    return v0

    .line 264
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 278
    :cond_3
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lewg;->i:[I

    iget v1, p0, Lewg;->j:I

    aput p1, v0, v1

    .line 255
    iget v0, p0, Lewg;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lewg;->j:I

    .line 256
    iget v0, p0, Lewg;->j:I

    iget-object v1, p0, Lewg;->i:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 257
    iget v0, p0, Lewg;->j:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 258
    iget-object v1, p0, Lewg;->i:[I

    iget v2, p0, Lewg;->j:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v0, p0, Lewg;->i:[I

    .line 261
    :cond_0
    return-void
.end method

.method private c(I)I
    .locals 10

    .prologue
    const v3, 0x7fffffff

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 294
    add-int/lit8 v7, p1, 0x7

    .line 295
    iget v0, p0, Lewg;->j:I

    if-lt v7, v0, :cond_1

    move v0, v5

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget-object v8, p0, Lewg;->i:[I

    move v6, p1

    move v2, v3

    move v1, v4

    .line 303
    :goto_1
    if-ge v6, v7, :cond_3

    .line 304
    aget v0, v8, v6

    .line 305
    if-ge v0, v2, :cond_2

    move v2, v0

    .line 308
    :cond_2
    if-le v0, v1, :cond_b

    .line 303
    :goto_2
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    move v1, v0

    goto :goto_1

    .line 312
    :cond_3
    add-int v0, v2, v1

    div-int/lit8 v2, v0, 0x2

    .line 316
    add-int/lit8 v0, p1, 0x1

    move v6, v0

    move v1, v4

    :goto_3
    if-ge v6, v7, :cond_5

    .line 317
    aget v0, v8, v6

    .line 318
    if-ge v0, v3, :cond_4

    move v3, v0

    .line 321
    :cond_4
    if-le v0, v1, :cond_a

    .line 316
    :goto_4
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    move v1, v0

    goto :goto_3

    .line 325
    :cond_5
    add-int v0, v3, v1

    div-int/lit8 v1, v0, 0x2

    .line 327
    const/16 v0, 0x80

    move v6, v4

    move v3, v4

    move v7, v0

    .line 329
    :goto_5
    const/4 v0, 0x7

    if-ge v6, v0, :cond_7

    .line 330
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_6

    move v0, v2

    .line 331
    :goto_6
    shr-int/lit8 v7, v7, 0x1

    .line 332
    add-int v9, p1, v6

    aget v9, v8, v9

    if-le v9, v0, :cond_9

    .line 333
    or-int v0, v3, v7

    .line 329
    :goto_7
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v0

    goto :goto_5

    :cond_6
    move v0, v1

    .line 330
    goto :goto_6

    :cond_7
    move v0, v4

    .line 337
    :goto_8
    sget-object v1, Lewg;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 338
    sget-object v1, Lewg;->b:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_0

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    move v0, v5

    .line 342
    goto :goto_0

    :cond_9
    move v0, v3

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(ILets;Ljava/util/Map;)Leqm;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lets;",
            "Ljava/util/Map",
            "<",
            "Lepy;",
            "*>;)",
            "Leqm;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lewg;->i:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 83
    invoke-direct {p0, p2}, Lewg;->a(Lets;)V

    .line 84
    invoke-direct {p0}, Lewg;->b()I

    move-result v1

    .line 87
    iget-object v0, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    .line 89
    :cond_0
    invoke-direct {p0, v0}, Lewg;->c(I)I

    move-result v2

    .line 90
    if-ne v2, v8, :cond_1

    .line 91
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 96
    :cond_1
    iget-object v4, p0, Lewg;->h:Ljava/lang/StringBuilder;

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v0, v0, 0x8

    .line 99
    iget-object v4, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v9, :cond_2

    sget-object v4, Lewg;->g:[C

    sget-object v5, Lewg;->a:[C

    aget-char v2, v5, v2

    .line 100
    invoke-static {v4, v2}, Lewg;->a([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    :goto_0
    iget-object v2, p0, Lewg;->i:[I

    add-int/lit8 v4, v0, -0x1

    aget v5, v2, v4

    .line 108
    const/4 v2, -0x8

    move v4, v3

    :goto_1
    if-ge v2, v8, :cond_3

    .line 109
    iget-object v6, p0, Lewg;->i:[I

    add-int v7, v0, v2

    aget v6, v6, v7

    add-int/2addr v4, v6

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_2
    iget v2, p0, Lewg;->j:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 115
    :cond_3
    iget v2, p0, Lewg;->j:I

    if-ge v0, v2, :cond_4

    div-int/lit8 v2, v4, 0x2

    if-ge v5, v2, :cond_4

    .line 116
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 119
    :cond_4
    invoke-virtual {p0, v1}, Lewg;->a(I)V

    move v2, v3

    .line 122
    :goto_2
    iget-object v4, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 123
    iget-object v4, p0, Lewg;->h:Ljava/lang/StringBuilder;

    sget-object v5, Lewg;->a:[C

    iget-object v6, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    :cond_5
    iget-object v2, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 127
    sget-object v4, Lewg;->g:[C

    invoke-static {v4, v2}, Lewg;->a([CC)Z

    move-result v2

    if-nez v2, :cond_6

    .line 128
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 130
    :cond_6
    iget-object v2, p0, Lewg;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 131
    sget-object v4, Lewg;->g:[C

    invoke-static {v4, v2}, Lewg;->a([CC)Z

    move-result v2

    if-nez v2, :cond_7

    .line 132
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 136
    :cond_7
    iget-object v2, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    if-gt v2, v4, :cond_8

    .line 138
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 141
    :cond_8
    if-eqz p3, :cond_9

    sget-object v2, Lepy;->RETURN_CODABAR_START_END:Lepy;

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 142
    :cond_9
    iget-object v2, p0, Lewg;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_a
    move v4, v3

    move v2, v3

    .line 147
    :goto_3
    if-ge v4, v1, :cond_b

    .line 148
    iget-object v5, p0, Lewg;->i:[I

    aget v5, v5, v4

    add-int/2addr v5, v2

    .line 147
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_3

    .line 150
    :cond_b
    int-to-float v4, v2

    .line 151
    :goto_4
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_c

    .line 152
    iget-object v5, p0, Lewg;->i:[I

    aget v5, v5, v1

    add-int/2addr v2, v5

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 154
    :cond_c
    int-to-float v0, v2

    .line 155
    new-instance v1, Leqm;

    iget-object v2, p0, Lewg;->h:Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Leqo;

    new-instance v7, Leqo;

    int-to-float v8, p1

    invoke-direct {v7, v4, v8}, Leqo;-><init>(FF)V

    aput-object v7, v6, v3

    new-instance v3, Leqo;

    int-to-float v4, p1

    invoke-direct {v3, v0, v4}, Leqo;-><init>(FF)V

    aput-object v3, v6, v9

    sget-object v0, Lepu;->CODABAR:Lepu;

    invoke-direct {v1, v2, v5, v6, v0}, Leqm;-><init>(Ljava/lang/String;[B[Leqo;Lepu;)V

    return-object v1
.end method

.method a(I)V
    .locals 11

    .prologue
    .line 166
    const/4 v0, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 167
    const/4 v0, 0x4

    new-array v5, v0, [I

    fill-array-data v5, :array_1

    .line 168
    iget-object v0, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 173
    const/4 v0, 0x0

    move v1, p1

    .line 174
    :goto_0
    sget-object v2, Lewg;->b:[I

    iget-object v3, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    aget v3, v2, v3

    .line 175
    const/4 v2, 0x6

    :goto_1
    if-ltz v2, :cond_0

    .line 178
    and-int/lit8 v7, v2, 0x1

    and-int/lit8 v8, v3, 0x1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 179
    aget v8, v4, v7

    iget-object v9, p0, Lewg;->i:[I

    add-int v10, v1, v2

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v4, v7

    .line 180
    aget v8, v5, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v7

    .line 181
    shr-int/lit8 v3, v3, 0x1

    .line 175
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 183
    :cond_0
    if-lt v0, v6, :cond_1

    .line 191
    const/4 v0, 0x4

    new-array v3, v0, [F

    .line 192
    const/4 v0, 0x4

    new-array v7, v0, [F

    .line 196
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 197
    const/4 v1, 0x0

    aput v1, v7, v0

    .line 198
    add-int/lit8 v1, v0, 0x2

    aget v2, v4, v0

    int-to-float v2, v2

    aget v8, v5, v0

    int-to-float v8, v8

    div-float/2addr v2, v8

    add-int/lit8 v8, v0, 0x2

    aget v8, v4, v8

    int-to-float v8, v8

    add-int/lit8 v9, v0, 0x2

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    aput v2, v7, v1

    .line 199
    add-int/lit8 v1, v0, 0x2

    aget v1, v7, v1

    aput v1, v3, v0

    .line 200
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, 0x2

    aget v2, v4, v2

    int-to-float v2, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v2, v8

    const/high16 v8, 0x3fc00000    # 1.5f

    add-float/2addr v2, v8

    add-int/lit8 v8, v0, 0x2

    aget v8, v5, v8

    int-to-float v8, v8

    div-float/2addr v2, v8

    aput v2, v3, v1

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    :cond_1
    add-int/lit8 v1, v1, 0x8

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_2
    const/4 v0, 0x0

    .line 206
    :goto_3
    sget-object v1, Lewg;->b:[I

    iget-object v2, p0, Lewg;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    aget v2, v1, v2

    .line 207
    const/4 v1, 0x6

    :goto_4
    if-ltz v1, :cond_5

    .line 210
    and-int/lit8 v4, v1, 0x1

    and-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 211
    iget-object v5, p0, Lewg;->i:[I

    add-int v8, p1, v1

    aget v5, v5, v8

    .line 212
    int-to-float v8, v5

    aget v9, v7, v4

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_3

    int-to-float v5, v5

    aget v4, v3, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_4

    .line 213
    :cond_3
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 215
    :cond_4
    shr-int/lit8 v2, v2, 0x1

    .line 207
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 217
    :cond_5
    if-lt v0, v6, :cond_6

    .line 222
    return-void

    .line 220
    :cond_6
    add-int/lit8 p1, p1, 0x8

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 166
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 167
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
