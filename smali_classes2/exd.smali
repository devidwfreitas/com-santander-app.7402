.class public abstract Lexd;
.super Leww;
.source "SourceFile"


# static fields
.field private static final a:F = 0.48f

.field static final b:[I

.field static final c:[I

.field static final d:[[I

.field static final e:[[I

.field private static final f:F = 0.7f


# instance fields
.field private final g:Ljava/lang/StringBuilder;

.field private final h:Lexc;

.field private final i:Lewr;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 53
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    sput-object v2, Lexd;->b:[I

    .line 58
    new-array v2, v7, [I

    fill-array-data v2, :array_1

    sput-object v2, Lexd;->c:[I

    .line 63
    new-array v2, v0, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_2

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-array v4, v5, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_5

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_6

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_7

    aput-object v3, v2, v7

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    sput-object v2, Lexd;->d:[[I

    .line 82
    const/16 v2, 0x14

    new-array v2, v2, [[I

    sput-object v2, Lexd;->e:[[I

    .line 83
    sget-object v2, Lexd;->d:[[I

    sget-object v3, Lexd;->e:[[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    .line 84
    :goto_0
    const/16 v0, 0x14

    if-ge v2, v0, :cond_1

    .line 85
    sget-object v0, Lexd;->d:[[I

    add-int/lit8 v3, v2, -0xa

    aget-object v3, v0, v3

    .line 86
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    .line 87
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 88
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v4, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_0
    sget-object v0, Lexd;->e:[[I

    aput-object v4, v0, v2

    .line 84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 92
    :cond_1
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 63
    :array_2
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Leww;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lexd;->g:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Lexc;

    invoke-direct {v0}, Lexc;-><init>()V

    iput-object v0, p0, Lexd;->h:Lexc;

    .line 101
    new-instance v0, Lewr;

    invoke-direct {v0}, Lewr;-><init>()V

    iput-object v0, p0, Lexd;->i:Lewr;

    .line 102
    return-void
.end method

.method static a(Lets;[II[[I)I
    .locals 6

    .prologue
    .line 355
    invoke-static {p0, p2, p1}, Lexd;->a(Lets;I[I)V

    .line 356
    const v3, 0x3ef5c28f    # 0.48f

    .line 357
    const/4 v0, -0x1

    .line 358
    array-length v4, p3

    .line 359
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 360
    aget-object v2, p3, v1

    .line 361
    const v5, 0x3f333333    # 0.7f

    invoke-static {p1, v2, v5}, Lexd;->a([I[IF)F

    move-result v2

    .line 362
    cmpg-float v5, v2, v3

    if-gez v5, :cond_2

    move v0, v1

    .line 359
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 367
    :cond_0
    if-ltz v0, :cond_1

    .line 368
    return v0

    .line 370
    :cond_1
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method static a(Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x0

    .line 261
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 262
    if-nez v3, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    add-int/lit8 v1, v3, -0x2

    move v2, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 268
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 269
    if-ltz v4, :cond_2

    if-le v4, v5, :cond_3

    .line 270
    :cond_2
    invoke-static {}, Leqb;->a()Leqb;

    move-result-object v0

    throw v0

    .line 272
    :cond_3
    add-int/2addr v2, v4

    .line 267
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 274
    :cond_4
    mul-int/lit8 v2, v2, 0x3

    .line 275
    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-ltz v1, :cond_7

    .line 276
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 277
    if-ltz v3, :cond_5

    if-le v3, v5, :cond_6

    .line 278
    :cond_5
    invoke-static {}, Leqb;->a()Leqb;

    move-result-object v0

    throw v0

    .line 280
    :cond_6
    add-int/2addr v2, v3

    .line 275
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 282
    :cond_7
    rem-int/lit8 v1, v2, 0xa

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Lets;)[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 108
    sget-object v1, Lexd;->b:[I

    array-length v1, v1

    new-array v4, v1, [I

    move v1, v2

    move-object v3, v0

    move v0, v2

    .line 109
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 110
    sget-object v3, Lexd;->b:[I

    array-length v3, v3

    invoke-static {v4, v2, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 111
    sget-object v3, Lexd;->b:[I

    invoke-static {p0, v1, v2, v3, v4}, Lexd;->a(Lets;IZ[I[I)[I

    move-result-object v3

    .line 112
    aget v5, v3, v2

    .line 113
    const/4 v1, 0x1

    aget v1, v3, v1

    .line 117
    sub-int v6, v1, v5

    sub-int v6, v5, v6

    .line 118
    if-ltz v6, :cond_0

    .line 119
    invoke-virtual {p0, v6, v5, v2}, Lets;->a(IIZ)Z

    move-result v0

    goto :goto_0

    .line 122
    :cond_1
    return-object v3
.end method

.method static a(Lets;IZ[I)[I
    .locals 1

    .prologue
    .line 293
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lexd;->a(Lets;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static a(Lets;IZ[I[I)[I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    array-length v6, p3

    .line 313
    invoke-virtual {p0}, Lets;->a()I

    move-result v7

    .line 315
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lets;->e(I)I

    move-result v0

    :goto_0
    move v5, v0

    move v1, v4

    move v2, p2

    .line 318
    :goto_1
    if-ge v5, v7, :cond_5

    .line 319
    invoke-virtual {p0, v5}, Lets;->a(I)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_1

    .line 320
    aget v8, p4, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, p4, v1

    .line 318
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 315
    :cond_0
    invoke-virtual {p0, p1}, Lets;->d(I)I

    move-result v0

    goto :goto_0

    .line 322
    :cond_1
    add-int/lit8 v8, v6, -0x1

    if-ne v1, v8, :cond_3

    .line 323
    const v8, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v8}, Lexd;->a([I[IF)F

    move-result v8

    const v9, 0x3ef5c28f    # 0.48f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 324
    new-array v1, v10, [I

    aput v0, v1, v4

    aput v5, v1, v3

    return-object v1

    .line 326
    :cond_2
    aget v8, p4, v4

    aget v9, p4, v3

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 327
    add-int/lit8 v8, v6, -0x2

    invoke-static {p4, v10, p4, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    add-int/lit8 v8, v6, -0x2

    aput v4, p4, v8

    .line 329
    add-int/lit8 v8, v6, -0x1

    aput v4, p4, v8

    .line 330
    add-int/lit8 v1, v1, -0x1

    .line 334
    :goto_3
    aput v3, p4, v1

    .line 335
    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    .line 332
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v2, v4

    .line 335
    goto :goto_2

    .line 338
    :cond_5
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected abstract a(Lets;[ILjava/lang/StringBuilder;)I
.end method

.method public a(ILets;Ljava/util/Map;)Leqm;
    .locals 1
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
    .line 128
    invoke-static {p2}, Lexd;->a(Lets;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lexd;->a(ILets;[ILjava/util/Map;)Leqm;

    move-result-object v0

    return-object v0
.end method

.method public a(ILets;[ILjava/util/Map;)Leqm;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lets;",
            "[I",
            "Ljava/util/Map",
            "<",
            "Lepy;",
            "*>;)",
            "Leqm;"
        }
    .end annotation

    .prologue
    .line 151
    if-nez p4, :cond_4

    const/4 v0, 0x0

    .line 154
    :goto_0
    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Leqo;

    const/4 v2, 0x0

    aget v2, p3, v2

    const/4 v3, 0x1

    aget v3, p3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v3, p1

    invoke-direct {v1, v2, v3}, Leqo;-><init>(FF)V

    invoke-interface {v0, v1}, Leqp;->a(Leqo;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lexd;->g:Ljava/lang/StringBuilder;

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 162
    invoke-virtual {p0, p2, p3, v1}, Lexd;->a(Lets;[ILjava/lang/StringBuilder;)I

    move-result v2

    .line 164
    if-eqz v0, :cond_1

    .line 165
    new-instance v3, Leqo;

    int-to-float v4, v2

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Leqo;-><init>(FF)V

    invoke-interface {v0, v3}, Leqp;->a(Leqo;)V

    .line 170
    :cond_1
    invoke-virtual {p0, p2, v2}, Lexd;->a(Lets;I)[I

    move-result-object v2

    .line 172
    if-eqz v0, :cond_2

    .line 173
    new-instance v3, Leqo;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, p1

    invoke-direct {v3, v4, v5}, Leqo;-><init>(FF)V

    invoke-interface {v0, v3}, Leqp;->a(Leqo;)V

    .line 181
    :cond_2
    const/4 v0, 0x1

    aget v0, v2, v0

    .line 182
    const/4 v3, 0x0

    aget v3, v2, v3

    sub-int v3, v0, v3

    add-int/2addr v3, v0

    .line 183
    invoke-virtual {p2}, Lets;->a()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v3, v4}, Lets;->a(IIZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 184
    :cond_3
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 151
    :cond_4
    sget-object v0, Lepy;->NEED_RESULT_POINT_CALLBACK:Lepy;

    .line 152
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqp;

    goto :goto_0

    .line 187
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_6

    .line 190
    invoke-static {}, Leqb;->a()Leqb;

    move-result-object v0

    throw v0

    .line 192
    :cond_6
    invoke-virtual {p0, v4}, Lexd;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 193
    invoke-static {}, Lepx;->a()Lepx;

    move-result-object v0

    throw v0

    .line 196
    :cond_7
    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget v1, p3, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 197
    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x0

    aget v3, v2, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 198
    invoke-virtual {p0}, Lexd;->b()Lepu;

    move-result-object v5

    .line 199
    new-instance v6, Leqm;

    const/4 v3, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Leqo;

    const/4 v8, 0x0

    new-instance v9, Leqo;

    int-to-float v10, p1

    invoke-direct {v9, v0, v10}, Leqo;-><init>(FF)V

    aput-object v9, v7, v8

    const/4 v0, 0x1

    new-instance v8, Leqo;

    int-to-float v9, p1

    invoke-direct {v8, v1, v9}, Leqo;-><init>(FF)V

    aput-object v8, v7, v0

    invoke-direct {v6, v4, v3, v7, v5}, Leqm;-><init>(Ljava/lang/String;[B[Leqo;Lepu;)V

    .line 206
    const/4 v0, 0x0

    .line 209
    :try_start_0
    iget-object v1, p0, Lexd;->h:Lexc;

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, p1, p2, v2}, Lexc;->a(ILets;I)Leqm;

    move-result-object v1

    .line 210
    sget-object v2, Leqn;->UPC_EAN_EXTENSION:Leqn;

    invoke-virtual {v1}, Leqm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Leqm;->a(Leqn;Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v1}, Leqm;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6, v2}, Leqm;->a(Ljava/util/Map;)V

    .line 212
    invoke-virtual {v1}, Leqm;->c()[Leqo;

    move-result-object v2

    invoke-virtual {v6, v2}, Leqm;->a([Leqo;)V

    .line 213
    invoke-virtual {v1}, Leqm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Leql; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v3, v0

    .line 218
    :goto_1
    if-nez p4, :cond_9

    const/4 v0, 0x0

    move-object v2, v0

    .line 220
    :goto_2
    if-eqz v2, :cond_b

    .line 221
    const/4 v0, 0x0

    .line 222
    array-length v7, v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_8

    aget v8, v2, v1

    .line 223
    if-ne v3, v8, :cond_a

    .line 224
    const/4 v0, 0x1

    .line 228
    :cond_8
    if-nez v0, :cond_b

    .line 229
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 214
    :catch_0
    move-exception v1

    move v3, v0

    goto :goto_1

    .line 218
    :cond_9
    sget-object v0, Lepy;->ALLOWED_EAN_EXTENSIONS:Lepy;

    .line 219
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    move-object v2, v0

    goto :goto_2

    .line 222
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 233
    :cond_b
    sget-object v0, Lepu;->EAN_13:Lepu;

    if-eq v5, v0, :cond_c

    sget-object v0, Lepu;->UPC_A:Lepu;

    if-ne v5, v0, :cond_d

    .line 234
    :cond_c
    iget-object v0, p0, Lexd;->i:Lewr;

    invoke-virtual {v0, v4}, Lewr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_d

    .line 236
    sget-object v1, Leqn;->POSSIBLE_COUNTRY:Leqn;

    invoke-virtual {v6, v1, v0}, Leqm;->a(Leqn;Ljava/lang/Object;)V

    .line 240
    :cond_d
    return-object v6
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 249
    invoke-static {p1}, Lexd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method a(Lets;I)[I
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x0

    sget-object v1, Lexd;->b:[I

    invoke-static {p1, p2, v0, v1}, Lexd;->a(Lets;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method abstract b()Lepu;
.end method
