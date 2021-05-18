.class public Laf;
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

.field private static final l:I = 0x20

.field private static m:Ljava/lang/String;

.field private static n:[B

.field private static o:Lbx;

.field private static p:Lby;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Laf;->m:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 80
    :cond_0
    const-string v0, "ERRO COM: 1202."

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 84
    :cond_1
    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Laf;->a(Ljava/lang/Integer;)[B

    move-result-object v0

    invoke-static {v0}, Lbz;->d([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laf;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    sput-object p1, Laf;->n:[B

    .line 92
    sget-object v0, Laf;->n:[B

    invoke-direct {p0, v0}, Laf;->a([B)[B

    move-result-object v0

    .line 94
    new-instance v1, Lbx;

    invoke-direct {v1, v0}, Lbx;-><init>([B)V

    sput-object v1, Laf;->o:Lbx;

    .line 95
    new-instance v1, Lby;

    invoke-direct {v1, v0}, Lby;-><init>([B)V

    sput-object v1, Laf;->p:Lby;

    .line 96
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 88
    const-string v1, ""

    invoke-direct {p0, v1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)Lah;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lah;

    invoke-direct {v0}, Lah;-><init>()V

    .line 296
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lah;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 297
    return-object v0
.end method

.method private a(Lbgb;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x4

    .line 142
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lbgb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 144
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

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 147
    if-le v1, v5, :cond_2

    .line 148
    add-int/lit8 v1, v1, -0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Laf;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    return-object v0

    .line 149
    :cond_2
    if-ge v1, v5, :cond_1

    .line 150
    const-string v2, "               "

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1204 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Laf;->o:Lbx;

    invoke-virtual {v0, p1}, Lbx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    :try_start_0
    sget-object v0, Laf;->n:[B

    invoke-direct {p0, v0, p2}, Laf;->a([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    new-instance v1, Lbx;

    invoke-direct {v1, v0}, Lbx;-><init>([B)V

    .line 172
    const-string v0, ""

    .line 174
    :try_start_1
    invoke-static {p1}, Lbw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v1, v0}, Lbx;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 177
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, ""

    invoke-direct {p0, v1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 178
    :catch_1
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1202 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private static a(Ljava/lang/Integer;)[B
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lag;

    invoke-direct {v0}, Lag;-><init>()V

    .line 74
    invoke-virtual {v0}, Lag;->a()Ljava/lang/Object;

    move-result-object v0

    .line 75
    check-cast v0, Lbd;

    invoke-interface {v0, p0}, Lbd;->a(Ljava/lang/Integer;)[B

    move-result-object v0

    return-object v0
.end method

.method private a([B)[B
    .locals 5

    .prologue
    .line 259
    const/16 v0, 0x20

    :try_start_0
    new-array v0, v0, [B

    .line 261
    sget-object v0, Laf;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Laz;->b([B)[B

    move-result-object v0

    .line 262
    new-instance v1, Lby;

    invoke-direct {v1, v0}, Lby;-><init>([B)V

    .line 264
    invoke-static {p1}, Lca;->a([B)[B

    move-result-object v2

    .line 266
    const/16 v0, 0x20

    new-array v3, v0, [B

    .line 267
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    .line 270
    const/16 v0, 0x14

    :goto_1
    array-length v2, v3

    if-lt v0, v2, :cond_1

    .line 274
    invoke-virtual {v1, v3}, Lby;->a([B)[B

    move-result-object v0

    .line 276
    new-instance v1, Lby;

    invoke-direct {v1, v0}, Lby;-><init>([B)V

    .line 277
    invoke-virtual {v1, p1}, Lby;->a([B)[B

    move-result-object v0

    .line 281
    return-object v0

    .line 268
    :cond_0
    aget-byte v4, v2, v0

    aput-byte v4, v3, v0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    const/16 v2, 0x2a

    aput-byte v2, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :catch_0
    move-exception v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1205 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private a([BLjava/lang/String;)[B
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 241
    new-array v1, v5, [B

    .line 242
    sget-object v0, Laf;->p:Lby;

    sget-object v2, Laf;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Laz;->b([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lby;->a([B)[B

    move-result-object v0

    .line 244
    new-instance v2, Lby;

    invoke-direct {v2, v0}, Lby;-><init>([B)V

    .line 245
    invoke-virtual {v2, p2}, Lby;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 249
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    .line 253
    return-object v1

    .line 250
    :cond_0
    rem-int/lit8 v3, v0, 0x10

    aget-byte v3, v2, v3

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xf

    .line 208
    sget-object v0, Laf;->o:Lbx;

    invoke-virtual {v0, p1}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 212
    const-string v0, "ERRO COM: 1200"

    invoke-direct {p0, v0, v4}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 216
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

    .line 221
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-direct {p0, v2}, Laf;->c(Ljava/lang/String;)I

    move-result v2

    .line 232
    if-eq v2, v1, :cond_1

    .line 233
    const-string v0, "ERRO COM: 1200"

    invoke-direct {p0, v0, v4}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "ERRO COM: 1200"

    invoke-direct {p0, v1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 236
    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    :try_start_0
    sget-object v0, Laf;->n:[B

    invoke-direct {p0, v0, p2}, Laf;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 187
    new-instance v1, Lbx;

    invoke-direct {v1, v0}, Lbx;-><init>([B)V

    .line 188
    invoke-virtual {v1, p1}, Lbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Lbw;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1203 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 304
    if-eqz p1, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v1, v2

    move v0, v3

    :goto_0
    if-gez v5, :cond_1

    .line 332
    rem-int/lit8 v1, v0, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    move v0, v3

    .line 342
    :goto_1
    return v0

    .line 306
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 313
    :cond_1
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/2addr v4, v1

    .line 315
    const/16 v7, 0xa

    if-le v4, v7, :cond_2

    .line 316
    rem-int/lit8 v4, v4, 0xa
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    .line 319
    :cond_2
    add-int/2addr v0, v4

    .line 321
    if-ne v1, v2, :cond_3

    .line 322
    const/4 v1, 0x1

    .line 311
    :goto_2
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    goto :goto_0

    :cond_3
    move v1, v2

    .line 324
    goto :goto_2

    .line 339
    :cond_4
    :try_start_2
    rem-int/lit8 v0, v0, 0xa
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    rsub-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1207 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0

    .line 326
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

    .line 100
    :try_start_0
    const-string v0, ":"

    invoke-static {p1, v0}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 102
    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    move v0, v1

    .line 118
    :goto_0
    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Laf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Laf;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 111
    const-string v3, "&"

    invoke-static {v0, v3}, Lbr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lbgb;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 125
    :try_start_0
    new-instance p2, Lbgb;

    invoke-direct {p2}, Lbgb;-><init>()V

    .line 128
    :cond_0
    invoke-direct {p0, p2}, Laf;->a(Lbgb;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Laf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERRO COM: 1201 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Laf;->a(Ljava/lang/String;Ljava/lang/Exception;)Lah;

    move-result-object v0

    throw v0
.end method
