.class public final Leqy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:[I


# instance fields
.field private final a:Lett;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Leqy;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lett;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Leqy;->a:Lett;

    .line 49
    return-void
.end method

.method private static a(Leqo;Leqo;)F
    .locals 4

    .prologue
    .line 561
    invoke-virtual {p0}, Leqo;->a()F

    move-result v0

    invoke-virtual {p0}, Leqo;->b()F

    move-result v1

    invoke-virtual {p1}, Leqo;->a()F

    move-result v2

    invoke-virtual {p1}, Leqo;->b()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Leue;->a(FFFF)F

    move-result v0

    return v0
.end method

.method private static a(JZ)I
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 198
    if-eqz p2, :cond_0

    .line 199
    const/4 v2, 0x7

    .line 200
    const/4 v0, 0x2

    .line 206
    :goto_0
    sub-int v4, v2, v0

    .line 207
    new-array v5, v2, [I

    .line 208
    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 209
    long-to-int v6, p0

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v2

    .line 210
    shr-long/2addr p0, v1

    .line 208
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 202
    :cond_0
    const/16 v0, 0xa

    move v2, v0

    move v0, v1

    .line 203
    goto :goto_0

    .line 213
    :cond_1
    :try_start_0
    new-instance v1, Leuj;

    sget-object v2, Leuh;->d:Leuh;

    invoke-direct {v1, v2}, Leuj;-><init>(Leuh;)V

    .line 214
    invoke-virtual {v1, v5, v4}, Leuj;->a([II)V
    :try_end_0
    .catch Leul; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 220
    :goto_2
    if-ge v1, v0, :cond_2

    .line 221
    shl-int/lit8 v2, v3, 0x4

    aget v3, v5, v1

    add-int/2addr v3, v2

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 223
    :cond_2
    return v3
.end method

.method private a(Leqo;Leqo;I)I
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 401
    .line 403
    invoke-static {p1, p2}, Leqy;->a(Leqo;Leqo;)F

    move-result v1

    .line 404
    int-to-float v2, p3

    div-float v2, v1, v2

    .line 405
    invoke-virtual {p1}, Leqo;->a()F

    move-result v3

    .line 406
    invoke-virtual {p1}, Leqo;->b()F

    move-result v4

    .line 407
    invoke-virtual {p2}, Leqo;->a()F

    move-result v5

    invoke-virtual {p1}, Leqo;->a()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    div-float/2addr v5, v1

    .line 408
    invoke-virtual {p2}, Leqo;->b()F

    move-result v6

    invoke-virtual {p1}, Leqo;->b()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v2, v6

    div-float/2addr v2, v1

    move v1, v0

    .line 409
    :goto_0
    if-ge v1, p3, :cond_1

    .line 410
    iget-object v6, p0, Leqy;->a:Lett;

    int-to-float v7, v1

    mul-float/2addr v7, v5

    add-float/2addr v7, v3

    invoke-static {v7}, Leue;->a(F)I

    move-result v7

    int-to-float v8, v1

    mul-float/2addr v8, v2

    add-float/2addr v8, v4

    invoke-static {v8}, Leue;->a(F)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lett;->a(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 411
    const/4 v6, 0x1

    sub-int v7, p3, v1

    add-int/lit8 v7, v7, -0x1

    shl-int/2addr v6, v7

    or-int/2addr v0, v6

    .line 409
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_1
    return v0
.end method

.method private a(Leqz;Leqz;)I
    .locals 12

    .prologue
    .line 463
    invoke-static {p1, p2}, Leqy;->b(Leqz;Leqz;)F

    move-result v4

    .line 464
    invoke-virtual {p2}, Leqz;->b()I

    move-result v0

    invoke-virtual {p1}, Leqz;->b()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v5, v0, v4

    .line 465
    invoke-virtual {p2}, Leqz;->c()I

    move-result v0

    invoke-virtual {p1}, Leqz;->c()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v6, v0, v4

    .line 466
    const/4 v3, 0x0

    .line 468
    invoke-virtual {p1}, Leqz;->b()I

    move-result v0

    int-to-float v2, v0

    .line 469
    invoke-virtual {p1}, Leqz;->c()I

    move-result v0

    int-to-float v1, v0

    .line 471
    iget-object v0, p0, Leqy;->a:Lett;

    invoke-virtual {p1}, Leqz;->b()I

    move-result v7

    invoke-virtual {p1}, Leqz;->c()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lett;->a(II)Z

    move-result v7

    .line 473
    const/4 v0, 0x0

    move v11, v0

    move v0, v3

    move v3, v2

    move v2, v1

    move v1, v11

    :goto_0
    int-to-float v8, v1

    cmpg-float v8, v8, v4

    if-gez v8, :cond_1

    .line 474
    add-float/2addr v3, v5

    .line 475
    add-float/2addr v2, v6

    .line 476
    iget-object v8, p0, Leqy;->a:Lett;

    invoke-static {v3}, Leue;->a(F)I

    move-result v9

    invoke-static {v2}, Leue;->a(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lett;->a(II)Z

    move-result v8

    if-eq v8, v7, :cond_0

    .line 477
    add-int/lit8 v0, v0, 0x1

    .line 473
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 483
    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 484
    const/4 v0, 0x0

    .line 487
    :goto_1
    return v0

    :cond_2
    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-ne v0, v7, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static a([II)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 166
    .line 167
    array-length v3, p0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, p0, v1

    .line 169
    add-int/lit8 v5, p1, -0x2

    shr-int v5, v4, v5

    shl-int/lit8 v5, v5, 0x1

    and-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    .line 170
    shl-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v4

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    and-int/lit8 v1, v2, 0x1

    shl-int/lit8 v1, v1, 0xb

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 179
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 180
    sget-object v2, Leqy;->g:[I

    aget v2, v2, v0

    xor-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 181
    return v0

    .line 179
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_2
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0
.end method

.method private a(Leqz;ZII)Leqz;
    .locals 3

    .prologue
    .line 494
    invoke-virtual {p1}, Leqz;->b()I

    move-result v0

    add-int v1, v0, p3

    .line 495
    invoke-virtual {p1}, Leqz;->c()I

    move-result v0

    add-int/2addr v0, p4

    .line 497
    :goto_0
    invoke-direct {p0, v1, v0}, Leqy;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Leqy;->a:Lett;

    invoke-virtual {v2, v1, v0}, Lett;->a(II)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 498
    add-int/2addr v1, p3

    .line 499
    add-int/2addr v0, p4

    goto :goto_0

    .line 502
    :cond_0
    sub-int/2addr v1, p3

    .line 503
    sub-int v2, v0, p4

    move v0, v1

    .line 505
    :goto_1
    invoke-direct {p0, v0, v2}, Leqy;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Leqy;->a:Lett;

    invoke-virtual {v1, v0, v2}, Lett;->a(II)Z

    move-result v1

    if-ne v1, p2, :cond_1

    .line 506
    add-int/2addr v0, p3

    goto :goto_1

    .line 508
    :cond_1
    sub-int v1, v0, p3

    move v0, v2

    .line 510
    :goto_2
    invoke-direct {p0, v1, v0}, Leqy;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leqy;->a:Lett;

    invoke-virtual {v2, v1, v0}, Lett;->a(II)Z

    move-result v2

    if-ne v2, p2, :cond_2

    .line 511
    add-int/2addr v0, p4

    goto :goto_2

    .line 513
    :cond_2
    sub-int/2addr v0, p4

    .line 515
    new-instance v2, Leqz;

    invoke-direct {v2, v1, v0}, Leqz;-><init>(II)V

    return-object v2
.end method

.method private a(Lett;Leqo;Leqo;Leqo;Leqo;)Lett;
    .locals 21

    .prologue
    .line 373
    invoke-static {}, Leua;->a()Leua;

    move-result-object v1

    .line 374
    invoke-direct/range {p0 .. p0}, Leqy;->c()I

    move-result v3

    .line 376
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Leqy;->e:I

    int-to-float v4, v4

    sub-float v5, v2, v4

    .line 377
    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Leqy;->e:I

    int-to-float v4, v4

    add-float v7, v2, v4

    .line 386
    invoke-virtual/range {p2 .. p2}, Leqo;->a()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Leqo;->b()F

    move-result v14

    .line 387
    invoke-virtual/range {p3 .. p3}, Leqo;->a()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Leqo;->b()F

    move-result v16

    .line 388
    invoke-virtual/range {p4 .. p4}, Leqo;->a()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Leqo;->b()F

    move-result v18

    .line 389
    invoke-virtual/range {p5 .. p5}, Leqo;->a()F

    move-result v19

    invoke-virtual/range {p5 .. p5}, Leqo;->b()F

    move-result v20

    move-object/from16 v2, p1

    move v4, v3

    move v6, v5

    move v8, v5

    move v9, v7

    move v10, v7

    move v11, v5

    move v12, v7

    .line 379
    invoke-virtual/range {v1 .. v20}, Leua;->a(Lett;IIFFFFFFFFFFFFFFFF)Lett;

    move-result-object v1

    return-object v1
.end method

.method private a([Leqo;)V
    .locals 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 100
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Leqy;->a(Leqo;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v5

    invoke-direct {p0, v1}, Leqy;->a(Leqo;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v6

    .line 101
    invoke-direct {p0, v1}, Leqy;->a(Leqo;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v7

    invoke-direct {p0, v1}, Leqy;->a(Leqo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 104
    :cond_1
    iget v1, p0, Leqy;->e:I

    mul-int/lit8 v1, v1, 0x2

    .line 106
    new-array v4, v8, [I

    aget-object v2, p1, v0

    aget-object v3, p1, v5

    .line 107
    invoke-direct {p0, v2, v3, v1}, Leqy;->a(Leqo;Leqo;I)I

    move-result v2

    aput v2, v4, v0

    aget-object v2, p1, v5

    aget-object v3, p1, v6

    .line 108
    invoke-direct {p0, v2, v3, v1}, Leqy;->a(Leqo;Leqo;I)I

    move-result v2

    aput v2, v4, v5

    aget-object v2, p1, v6

    aget-object v3, p1, v7

    .line 109
    invoke-direct {p0, v2, v3, v1}, Leqy;->a(Leqo;Leqo;I)I

    move-result v2

    aput v2, v4, v6

    aget-object v2, p1, v7

    aget-object v3, p1, v0

    .line 110
    invoke-direct {p0, v2, v3, v1}, Leqy;->a(Leqo;Leqo;I)I

    move-result v2

    aput v2, v4, v7

    .line 117
    invoke-static {v4, v1}, Leqy;->a([II)I

    move-result v1

    iput v1, p0, Leqy;->f:I

    .line 120
    const-wide/16 v2, 0x0

    move v9, v0

    move-wide v0, v2

    move v2, v9

    .line 121
    :goto_0
    if-ge v2, v8, :cond_3

    .line 122
    iget v3, p0, Leqy;->f:I

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x4

    aget v3, v4, v3

    .line 123
    iget-boolean v5, p0, Leqy;->b:Z

    if-eqz v5, :cond_2

    .line 125
    const/4 v5, 0x7

    shl-long/2addr v0, v5

    .line 126
    shr-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x7f

    int-to-long v6, v3

    add-long/2addr v0, v6

    .line 121
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_2
    const/16 v5, 0xa

    shl-long/2addr v0, v5

    .line 130
    shr-int/lit8 v5, v3, 0x2

    and-int/lit16 v5, v5, 0x3e0

    shr-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v5

    int-to-long v6, v3

    add-long/2addr v0, v6

    goto :goto_1

    .line 136
    :cond_3
    iget-boolean v2, p0, Leqy;->b:Z

    invoke-static {v0, v1, v2}, Leqy;->a(JZ)I

    move-result v0

    .line 138
    iget-boolean v1, p0, Leqy;->b:Z

    if-eqz v1, :cond_4

    .line 140
    shr-int/lit8 v1, v0, 0x6

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leqy;->c:I

    .line 141
    and-int/lit8 v0, v0, 0x3f

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leqy;->d:I

    .line 147
    :goto_2
    return-void

    .line 144
    :cond_4
    shr-int/lit8 v1, v0, 0xb

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leqy;->c:I

    .line 145
    and-int/lit16 v0, v0, 0x7ff

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leqy;->d:I

    goto :goto_2
.end method

.method private a(II)Z
    .locals 1

    .prologue
    .line 547
    if-ltz p1, :cond_0

    iget-object v0, p0, Leqy;->a:Lett;

    invoke-virtual {v0}, Lett;->f()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Leqy;->a:Lett;

    invoke-virtual {v0}, Lett;->g()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Leqo;)Z
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p1}, Leqo;->a()F

    move-result v0

    invoke-static {v0}, Leue;->a(F)I

    move-result v0

    .line 552
    invoke-virtual {p1}, Leqo;->b()F

    move-result v1

    invoke-static {v1}, Leue;->a(F)I

    move-result v1

    .line 553
    invoke-direct {p0, v0, v1}, Leqy;->a(II)Z

    move-result v0

    return v0
.end method

.method private a(Leqz;Leqz;Leqz;Leqz;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 426
    const/4 v1, 0x3

    .line 428
    new-instance v2, Leqz;

    invoke-virtual {p1}, Leqz;->b()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Leqz;->c()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v3, v4}, Leqz;-><init>(II)V

    .line 429
    new-instance v3, Leqz;

    invoke-virtual {p2}, Leqz;->b()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p2}, Leqz;->c()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v5}, Leqz;-><init>(II)V

    .line 430
    new-instance v4, Leqz;

    invoke-virtual {p3}, Leqz;->b()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p3}, Leqz;->c()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-direct {v4, v5, v6}, Leqz;-><init>(II)V

    .line 431
    new-instance v5, Leqz;

    invoke-virtual {p4}, Leqz;->b()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p4}, Leqz;->c()I

    move-result v7

    add-int/2addr v1, v7

    invoke-direct {v5, v6, v1}, Leqz;-><init>(II)V

    .line 433
    invoke-direct {p0, v5, v2}, Leqy;->a(Leqz;Leqz;)I

    move-result v1

    .line 435
    if-nez v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    invoke-direct {p0, v2, v3}, Leqy;->a(Leqz;Leqz;)I

    move-result v2

    .line 441
    if-ne v2, v1, :cond_0

    .line 445
    invoke-direct {p0, v3, v4}, Leqy;->a(Leqz;Leqz;)I

    move-result v2

    .line 447
    if-ne v2, v1, :cond_0

    .line 451
    invoke-direct {p0, v4, v5}, Leqy;->a(Leqz;Leqz;)I

    move-result v2

    .line 453
    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Leqz;)[Leqo;
    .locals 14

    .prologue
    .line 237
    .line 242
    const/4 v0, 0x1

    .line 244
    const/4 v1, 0x1

    iput v1, p0, Leqy;->e:I

    move-object v2, p1

    move-object v4, p1

    move-object v6, p1

    :goto_0
    iget v1, p0, Leqy;->e:I

    const/16 v3, 0x9

    if-ge v1, v3, :cond_0

    .line 245
    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, v6, v0, v1, v3}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v7

    .line 246
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v4, v0, v1, v3}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v5

    .line 247
    const/4 v1, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v1, v3}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v3

    .line 248
    const/4 v1, -0x1

    const/4 v8, -0x1

    invoke-direct {p0, p1, v0, v1, v8}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v1

    .line 254
    iget v8, p0, Leqy;->e:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_1

    .line 255
    invoke-static {v1, v7}, Leqy;->b(Leqz;Leqz;)F

    move-result v8

    iget v9, p0, Leqy;->e:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {p1, v6}, Leqy;->b(Leqz;Leqz;)F

    move-result v9

    iget v10, p0, Leqy;->e:I

    add-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    .line 256
    float-to-double v10, v8

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    cmpg-double v9, v10, v12

    if-ltz v9, :cond_0

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    invoke-direct {p0, v7, v5, v3, v1}, Leqy;->a(Leqz;Leqz;Leqz;Leqz;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 269
    :cond_0
    iget v0, p0, Leqy;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Leqy;->e:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    .line 270
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 266
    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 244
    :goto_1
    iget v2, p0, Leqy;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Leqy;->e:I

    move-object p1, v1

    move-object v2, v3

    move-object v4, v5

    move-object v6, v7

    goto :goto_0

    .line 266
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 273
    :cond_3
    iget v0, p0, Leqy;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Leqy;->b:Z

    .line 277
    new-instance v0, Leqo;

    invoke-virtual {v6}, Leqz;->b()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    invoke-virtual {v6}, Leqz;->c()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v3, v5

    invoke-direct {v0, v1, v3}, Leqo;-><init>(FF)V

    .line 278
    new-instance v1, Leqo;

    invoke-virtual {v4}, Leqz;->b()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    invoke-virtual {v4}, Leqz;->c()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Leqo;-><init>(FF)V

    .line 279
    new-instance v3, Leqo;

    invoke-virtual {v2}, Leqz;->b()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Leqz;->c()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    invoke-direct {v3, v4, v2}, Leqo;-><init>(FF)V

    .line 280
    new-instance v2, Leqo;

    invoke-virtual {p1}, Leqz;->b()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Leqz;->c()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    invoke-direct {v2, v4, v5}, Leqo;-><init>(FF)V

    .line 284
    const/4 v4, 0x4

    new-array v4, v4, [Leqo;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    iget v0, p0, Leqy;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x3

    int-to-float v0, v0

    iget v1, p0, Leqy;->e:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v4, v0, v1}, Leqy;->a([Leqo;FF)[Leqo;

    move-result-object v0

    return-object v0

    .line 273
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a([Leqo;FF)[Leqo;
    .locals 10

    .prologue
    .line 527
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    div-float v0, p2, v0

    .line 528
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Leqo;->a()F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v2}, Leqo;->a()F

    move-result v2

    sub-float/2addr v1, v2

    .line 529
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Leqo;->b()F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3}, Leqo;->b()F

    move-result v3

    sub-float/2addr v2, v3

    .line 530
    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v3}, Leqo;->a()F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Leqo;->a()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 531
    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v4}, Leqo;->b()F

    move-result v4

    const/4 v5, 0x2

    aget-object v5, p0, v5

    invoke-virtual {v5}, Leqo;->b()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 533
    new-instance v5, Leqo;

    mul-float v6, v0, v1

    add-float/2addr v6, v3

    mul-float v7, v0, v2

    add-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Leqo;-><init>(FF)V

    .line 534
    new-instance v6, Leqo;

    mul-float/2addr v1, v0

    sub-float v1, v3, v1

    mul-float/2addr v2, v0

    sub-float v2, v4, v2

    invoke-direct {v6, v1, v2}, Leqo;-><init>(FF)V

    .line 536
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Leqo;->a()F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p0, v2

    invoke-virtual {v2}, Leqo;->a()F

    move-result v2

    sub-float/2addr v1, v2

    .line 537
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Leqo;->b()F

    move-result v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-virtual {v3}, Leqo;->b()F

    move-result v3

    sub-float/2addr v2, v3

    .line 538
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Leqo;->a()F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-virtual {v4}, Leqo;->a()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 539
    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Leqo;->b()F

    move-result v4

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Leqo;->b()F

    move-result v7

    add-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    .line 540
    new-instance v7, Leqo;

    mul-float v8, v0, v1

    add-float/2addr v8, v3

    mul-float v9, v0, v2

    add-float/2addr v9, v4

    invoke-direct {v7, v8, v9}, Leqo;-><init>(FF)V

    .line 541
    new-instance v8, Leqo;

    mul-float/2addr v1, v0

    sub-float v1, v3, v1

    mul-float/2addr v0, v2

    sub-float v0, v4, v0

    invoke-direct {v8, v1, v0}, Leqo;-><init>(FF)V

    .line 543
    const/4 v0, 0x4

    new-array v0, v0, [Leqo;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    return-object v0
.end method

.method private static b(Leqz;Leqz;)F
    .locals 4

    .prologue
    .line 557
    invoke-virtual {p0}, Leqz;->b()I

    move-result v0

    invoke-virtual {p0}, Leqz;->c()I

    move-result v1

    invoke-virtual {p1}, Leqz;->b()I

    move-result v2

    invoke-virtual {p1}, Leqz;->c()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Leue;->a(IIII)F

    move-result v0

    return v0
.end method

.method private b()Leqz;
    .locals 11

    .prologue
    const/high16 v10, 0x40800000    # 4.0f

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 304
    :try_start_0
    new-instance v0, Leug;

    iget-object v1, p0, Leqy;->a:Lett;

    invoke-direct {v0, v1}, Leug;-><init>(Lett;)V

    invoke-virtual {v0}, Leug;->a()[Leqo;

    move-result-object v0

    .line 305
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 306
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 307
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 308
    const/4 v4, 0x3

    aget-object v0, v0, v4
    :try_end_0
    .catch Leqh; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    invoke-virtual {v3}, Leqo;->a()F

    move-result v4

    invoke-virtual {v0}, Leqo;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Leqo;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Leqo;->a()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-static {v4}, Leue;->a(F)I

    move-result v4

    .line 325
    invoke-virtual {v3}, Leqo;->b()F

    move-result v3

    invoke-virtual {v0}, Leqo;->b()F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {v2}, Leqo;->b()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Leqo;->b()F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v10

    invoke-static {v0}, Leue;->a(F)I

    move-result v0

    .line 331
    :try_start_1
    new-instance v1, Leug;

    iget-object v2, p0, Leqy;->a:Lett;

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v4, v0}, Leug;-><init>(Lett;III)V

    invoke-virtual {v1}, Leug;->a()[Leqo;

    move-result-object v5

    .line 332
    const/4 v1, 0x0

    aget-object v3, v5, v1

    .line 333
    const/4 v1, 0x1

    aget-object v2, v5, v1

    .line 334
    const/4 v1, 0x2

    aget-object v1, v5, v1

    .line 335
    const/4 v6, 0x3

    aget-object v0, v5, v6
    :try_end_1
    .catch Leqh; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    :goto_1
    invoke-virtual {v3}, Leqo;->a()F

    move-result v4

    invoke-virtual {v0}, Leqo;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Leqo;->a()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Leqo;->a()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-static {v4}, Leue;->a(F)I

    move-result v4

    .line 347
    invoke-virtual {v3}, Leqo;->b()F

    move-result v3

    invoke-virtual {v0}, Leqo;->b()F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {v2}, Leqo;->b()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Leqo;->b()F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v10

    invoke-static {v0}, Leue;->a(F)I

    move-result v0

    .line 349
    new-instance v1, Leqz;

    invoke-direct {v1, v4, v0}, Leqz;-><init>(II)V

    return-object v1

    .line 310
    :catch_0
    move-exception v0

    .line 314
    iget-object v0, p0, Leqy;->a:Lett;

    invoke-virtual {v0}, Lett;->f()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 315
    iget-object v1, p0, Leqy;->a:Lett;

    invoke-virtual {v1}, Lett;->g()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    .line 316
    new-instance v1, Leqz;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v3, v4, -0x7

    invoke-direct {v1, v2, v3}, Leqz;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v9}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v1

    invoke-virtual {v1}, Leqz;->a()Leqo;

    move-result-object v3

    .line 317
    new-instance v1, Leqz;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v5, v4, 0x7

    invoke-direct {v1, v2, v5}, Leqz;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v8}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v1

    invoke-virtual {v1}, Leqz;->a()Leqo;

    move-result-object v2

    .line 318
    new-instance v1, Leqz;

    add-int/lit8 v5, v0, -0x7

    add-int/lit8 v6, v4, 0x7

    invoke-direct {v1, v5, v6}, Leqz;-><init>(II)V

    invoke-direct {p0, v1, v7, v9, v8}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v1

    invoke-virtual {v1}, Leqz;->a()Leqo;

    move-result-object v1

    .line 319
    new-instance v5, Leqz;

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v4, v4, -0x7

    invoke-direct {v5, v0, v4}, Leqz;-><init>(II)V

    invoke-direct {p0, v5, v7, v9, v9}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v0

    invoke-virtual {v0}, Leqz;->a()Leqo;

    move-result-object v0

    goto/16 :goto_0

    .line 336
    :catch_1
    move-exception v1

    .line 339
    new-instance v1, Leqz;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v3, v0, -0x7

    invoke-direct {v1, v2, v3}, Leqz;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v9}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v1

    invoke-virtual {v1}, Leqz;->a()Leqo;

    move-result-object v3

    .line 340
    new-instance v1, Leqz;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v5, v0, 0x7

    invoke-direct {v1, v2, v5}, Leqz;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v8}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v1

    invoke-virtual {v1}, Leqz;->a()Leqo;

    move-result-object v2

    .line 341
    new-instance v1, Leqz;

    add-int/lit8 v5, v4, -0x7

    add-int/lit8 v6, v0, 0x7

    invoke-direct {v1, v5, v6}, Leqz;-><init>(II)V

    invoke-direct {p0, v1, v7, v9, v8}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v1

    invoke-virtual {v1}, Leqz;->a()Leqo;

    move-result-object v1

    .line 342
    new-instance v5, Leqz;

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v0, v0, -0x7

    invoke-direct {v5, v4, v0}, Leqz;-><init>(II)V

    invoke-direct {p0, v5, v7, v9, v9}, Leqy;->a(Leqz;ZII)Leqz;

    move-result-object v0

    invoke-virtual {v0}, Leqz;->a()Leqo;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private b([Leqo;)[Leqo;
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Leqy;->e:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Leqy;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Leqy;->a([Leqo;FF)[Leqo;

    move-result-object v0

    return-object v0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 565
    iget-boolean v0, p0, Leqy;->b:Z

    if-eqz v0, :cond_0

    .line 566
    iget v0, p0, Leqy;->c:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    .line 571
    :goto_0
    return v0

    .line 568
    :cond_0
    iget v0, p0, Leqy;->c:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 569
    iget v0, p0, Leqy;->c:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 571
    :cond_1
    iget v0, p0, Leqy;->c:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Leqy;->c:I

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method


# virtual methods
.method public a()Leqs;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leqy;->a(Z)Leqs;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Leqs;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Leqy;->b()Leqz;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Leqy;->a(Leqz;)[Leqo;

    move-result-object v6

    .line 71
    if-eqz p1, :cond_0

    .line 72
    aget-object v0, v6, v2

    .line 73
    aget-object v1, v6, v3

    aput-object v1, v6, v2

    .line 74
    aput-object v0, v6, v3

    .line 78
    :cond_0
    invoke-direct {p0, v6}, Leqy;->a([Leqo;)V

    .line 81
    iget-object v1, p0, Leqy;->a:Lett;

    iget v0, p0, Leqy;->f:I

    rem-int/lit8 v0, v0, 0x4

    aget-object v2, v6, v0

    iget v0, p0, Leqy;->f:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget-object v3, v6, v0

    iget v0, p0, Leqy;->f:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    aget-object v4, v6, v0

    iget v0, p0, Leqy;->f:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Leqy;->a(Lett;Leqo;Leqo;Leqo;Leqo;)Lett;

    move-result-object v1

    .line 88
    invoke-direct {p0, v6}, Leqy;->b([Leqo;)[Leqo;

    move-result-object v2

    .line 90
    new-instance v0, Leqs;

    iget-boolean v3, p0, Leqy;->b:Z

    iget v4, p0, Leqy;->d:I

    iget v5, p0, Leqy;->c:I

    invoke-direct/range {v0 .. v5}, Leqs;-><init>(Lett;[Leqo;ZII)V

    return-object v0
.end method
