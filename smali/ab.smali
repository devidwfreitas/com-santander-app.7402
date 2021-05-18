.class public Lab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = ":"

.field public static final b:Ljava/lang/String; = "&"

.field public static final c:I = 0x4b0

.field public static final d:I = 0x4b1

.field public static final e:I = 0x4b2

.field public static final f:I = 0x4b3

.field public static final g:I = 0x4b4

.field public static final h:I = 0x4b5

.field public static final i:I = 0x4b6

.field public static final j:I = 0x4b7

.field private static final k:Ljava/lang/String; = "               "

.field private static final l:Z = false

.field private static final m:[B

.field private static final n:I = 0x20

.field private static o:Ljava/lang/String;

.field private static p:[B

.field private static q:Lbx;

.field private static r:Lby;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lab;->m:[B

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lab;->o:Ljava/lang/String;

    .line 32
    return-void

    .line 123
    nop

    :array_0
    .array-data 1
        0x4et
        0x7at
        0x63t
        0x7at
        0x4dt
        0x54t
        0x5at
        0x44t
        0x4et
        0x6at
        0x6bt
        0x32t
        0x4dt
        0x54t
        0x5at
        0x45t
        0x4et
        0x44t
        0x41t
        0x7at
        0x4ft
        0x54t
        0x4dt
        0x34t
        0x4dt
        0x6at
        0x4dt
        0x32t
        0x52t
        0x44t
        0x4dt
        0x7at
        0x4et
        0x6at
        0x51t
        0x7at
        0x4dt
        0x7at
        0x59t
        0x7at
        0x4dt
        0x7at
        0x41t
        0x32t
        0x52t
        0x54t
        0x59t
        0x32t
        0x4dt
        0x7at
        0x45t
        0x32t
        0x4et
        0x7at
        0x49t
        0x78t
        0x4et
        0x6at
        0x63t
        0x32t
        0x4dt
        0x54t
        0x5at
        0x45t
        0x4et
        0x6at
        0x49t
        0x32t
        0x4ft
        0x54t
        0x59t
        0x30t
        0x4dt
        0x7at
        0x41t
        0x32t
        0x51t
        0x6at
        0x63t
        0x77t
        0x4et
        0x7at
        0x51t
        0x7at
        0x4et
        0x41t
        0x3dt
        0x3dt
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 145
    :cond_0
    const-string v0, "ERRO COM: 1202."

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 149
    :cond_1
    :try_start_0
    sget-object v0, Lab;->m:[B

    invoke-static {v0}, Lbz;->c([B)[B

    move-result-object v0

    invoke-static {v0}, Laz;->b([B)[B

    move-result-object v0

    .line 150
    sget-object v1, Lz;->h:[B

    invoke-static {v1}, Lbz;->d([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lab;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    sput-object v0, Lab;->p:[B

    .line 160
    sget-object v0, Lab;->p:[B

    invoke-direct {p0, v0}, Lab;->a([B)[B

    move-result-object v0

    .line 162
    new-instance v1, Lbx;

    invoke-direct {v1, v0}, Lbx;-><init>([B)V

    sput-object v1, Lab;->q:Lbx;

    .line 163
    new-instance v1, Lby;

    invoke-direct {v1, v0}, Lby;-><init>([B)V

    sput-object v1, Lab;->r:Lby;

    .line 164
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 156
    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)Lah;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lah;

    invoke-direct {v0}, Lah;-><init>()V

    .line 353
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lah;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 354
    return-object v0
.end method

.method private a(Lbgb;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x4

    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Lbgb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbgb;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 215
    if-le v1, v5, :cond_2

    .line 216
    add-int/lit8 v1, v1, -0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lab;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    return-object v0

    .line 217
    :cond_2
    if-ge v1, v5, :cond_1

    .line 218
    const-string v2, "               "

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1204 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lab;->q:Lbx;

    invoke-virtual {v0, p1}, Lbx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    :try_start_0
    sget-object v0, Lab;->p:[B

    invoke-direct {p0, v0, p2}, Lab;->a([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    new-instance v1, Lbx;

    invoke-direct {v1, v0}, Lbx;-><init>([B)V

    .line 240
    const-string v0, ""

    .line 242
    :try_start_1
    invoke-static {p1}, Lbw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {v1, v0}, Lbx;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 245
    return-object v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1202 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private a([B)[B
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 314
    const/16 v0, 0x20

    :try_start_0
    new-array v0, v0, [B

    .line 316
    sget-object v0, Lab;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Laz;->b([B)[B

    move-result-object v2

    .line 317
    new-instance v3, Lby;

    invoke-direct {v3, v2}, Lby;-><init>([B)V

    .line 319
    invoke-static {p1}, Lca;->a([B)[B

    move-result-object v1

    .line 321
    const/16 v0, 0x20

    new-array v4, v0, [B

    .line 322
    const/4 v0, 0x0

    :goto_0
    array-length v5, v1

    if-lt v0, v5, :cond_0

    .line 327
    const/4 v1, 0x5

    .line 328
    const/16 v0, 0x14

    :goto_1
    if-lt v0, v6, :cond_1

    .line 333
    invoke-virtual {v3, v4}, Lby;->a([B)[B

    move-result-object v0

    .line 335
    new-instance v1, Lby;

    invoke-direct {v1, v0}, Lby;-><init>([B)V

    .line 336
    invoke-virtual {v1, p1}, Lby;->a([B)[B

    move-result-object v0

    .line 338
    return-object v0

    .line 323
    :cond_0
    aget-byte v5, v1, v0

    aput-byte v5, v4, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    aget-byte v5, v2, v1

    aput-byte v5, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    add-int/lit8 v1, v1, 0x2

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 339
    :catch_0
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1205 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private a([BLjava/lang/String;)[B
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 296
    new-array v1, v5, [B

    .line 297
    sget-object v0, Lab;->r:Lby;

    sget-object v2, Lab;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Laz;->b([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lby;->a([B)[B

    move-result-object v0

    .line 299
    new-instance v2, Lby;

    invoke-direct {v2, v0}, Lby;-><init>([B)V

    .line 300
    invoke-virtual {v2, p2}, Lby;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 304
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    .line 308
    return-object v1

    .line 305
    :cond_0
    rem-int/lit8 v3, v0, 0x10

    aget-byte v3, v2, v3

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xf

    .line 273
    sget-object v0, Lab;->q:Lbx;

    invoke-virtual {v0, p1}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 275
    const-string v0, "ERRO COM: 1200"

    invoke-direct {p0, v0, v4}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 279
    :cond_0
    const/16 v1, 0xf

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 284
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-direct {p0, v2}, Lab;->c(Ljava/lang/String;)I

    move-result v2

    .line 287
    if-eq v2, v1, :cond_1

    .line 288
    const-string v0, "ERRO COM: 1200"

    invoke-direct {p0, v0, v4}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v1, "ERRO COM: 1200"

    invoke-direct {p0, v1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 291
    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    :try_start_0
    sget-object v0, Lab;->p:[B

    invoke-direct {p0, v0, p2}, Lab;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 255
    new-instance v1, Lbx;

    invoke-direct {v1, v0}, Lbx;-><init>([B)V

    .line 256
    invoke-virtual {v1, p1}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Lbw;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 259
    return-object v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1203 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 361
    if-eqz p1, :cond_0

    .line 362
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 368
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v1, v2

    move v0, v3

    :goto_0
    if-gez v5, :cond_1

    .line 389
    rem-int/lit8 v1, v0, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    move v0, v3

    .line 399
    :goto_1
    return v0

    .line 363
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 370
    :cond_1
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v4, v1

    .line 372
    const/16 v7, 0xa

    if-le v4, v7, :cond_2

    .line 373
    rem-int/lit8 v4, v4, 0xa
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    .line 376
    :cond_2
    add-int/2addr v0, v4

    .line 378
    if-ne v1, v2, :cond_3

    .line 379
    const/4 v1, 0x1

    .line 368
    :goto_2
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    goto :goto_0

    :cond_3
    move v1, v2

    .line 381
    goto :goto_2

    .line 396
    :cond_4
    :try_start_2
    rem-int/lit8 v0, v0, 0xa
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    rsub-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1207 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 383
    :catch_1
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/16 v1, 0x4b0

    const/4 v2, 0x0

    .line 168
    :try_start_0
    const-string v0, ":"

    invoke-static {p1, v0}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 169
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 170
    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    move v0, v1

    .line 186
    :goto_0
    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lab;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 179
    const-string v3, "&"

    invoke-static {v0, v3}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 180
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    move v0, v1

    .line 186
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lbgb;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    :try_start_0
    new-instance p2, Lbgb;

    invoke-direct {p2}, Lbgb;-><init>()V

    .line 196
    :cond_0
    invoke-direct {p0, p2}, Lab;->a(Lbgb;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Lab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1201 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lab;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method
