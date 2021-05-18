.class public final Lcom/datami/smi/c/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0xe

.field private static final b:I = 0xd

.field private static final c:I = 0xc

.field private static final d:I = 0x0

.field private static final e:I = 0xf

.field private static final f:I = 0x1e

.field private static final g:I = 0x2d

.field private static final h:Ljava/lang/String; = "[dmi]ServiceToken"

.field private static final i:[B

.field private static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/c/t;->i:[B

    const/16 v0, 0x35

    sput v0, Lcom/datami/smi/c/t;->j:I

    return-void

    :array_0
    .array-data 1
        0x40t
        0x10t
        -0x35t
        0x6at
        -0x4t
        -0x15t
        0x1bt
        0x5t
        0x1t
        0xat
        0xbt
        -0x4ct
        -0x1t
        -0xet
        -0x9t
        0x1t
        -0x5t
        0x24t
        0x14t
        -0x10t
        -0x2t
        0x3ct
        -0x11t
        -0x6t
        -0x3t
        -0xat
        0x6t
        -0xat
        0x3t
        0x29t
        0xft
        -0x4ct
        -0x1t
        -0xet
        -0x9t
        0x1t
        -0x5t
        0x3et
        -0x4ct
        -0xft
        -0x9t
        0x4ct
        -0xft
        -0xft
        -0x2t
        0x6t
        0x4t
        -0x18t
        -0x13t
        -0xat
        0x7t
        0x0t
        -0x8t
        0xbt
        -0x21t
        -0x2t
        0x0t
        -0xft
        0x3t
        0x9t
        0x5t
        0x1t
        0xet
        -0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x2d

    const/16 v7, 0x1e

    const/16 v6, 0xf

    const/16 v5, 0xc

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ltz v3, :cond_0

    if-ge v3, v6, :cond_0

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/datami/smi/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    if-lt v3, v6, :cond_1

    if-ge v3, v7, :cond_1

    const/16 v3, 0xc

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/datami/smi/c/t;->i:[B

    const/16 v2, 0x33

    aget-byte v1, v1, v2

    or-int/lit8 v2, v1, 0x25

    sget-object v3, Lcom/datami/smi/c/t;->i:[B

    const/16 v4, 0x3b

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/t;->a(III)Ljava/lang/String;

    sget-object v1, Lcom/datami/smi/c/t;->i:[B

    const/16 v2, 0x8

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/t;->i:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/datami/smi/c/t;->i:[B

    const/16 v4, 0x1c

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/t;->a(III)Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-lt v3, v7, :cond_2

    if-ge v3, v8, :cond_2

    const/16 v3, 0xc

    const/16 v4, 0x1e

    :try_start_1
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_2
    const/16 v3, 0xc

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    sget-object v6, Lcom/datami/smi/c/t;->i:[B

    new-instance v7, Ljava/lang/String;

    rsub-int/lit8 v8, p0, 0x11

    add-int/lit8 v0, p1, 0x4

    mul-int/lit8 v1, p2, 0x2

    rsub-int/lit8 v1, v1, 0x6d

    new-array v2, v8, [B

    if-nez v6, :cond_1

    move v3, v4

    move v5, v0

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x6

    move v0, v3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v0, 0x1

    int-to-byte v9, v1

    aput-byte v9, v2, v0

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    goto :goto_0

    :cond_1
    move v5, v0

    move v0, v4

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/datami/smi/c/t;->i:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/datami/smi/c/t;->j:I

    add-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v2, v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/t;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lcom/datami/smi/c/t;->i:[B

    const/16 v2, 0x32

    aget-byte v1, v1, v2

    sget-object v2, Lcom/datami/smi/c/t;->i:[B

    const/16 v3, 0x3e

    aget-byte v2, v2, v3

    sget-object v3, Lcom/datami/smi/c/t;->i:[B

    const/16 v4, 0x14

    aget-byte v3, v3, v4

    neg-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/t;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/datami/smi/c/t;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, p0

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v7, p0, v4

    ushr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0xf

    move v1, v2

    :goto_1
    if-ltz v0, :cond_0

    const/16 v3, 0x9

    if-gt v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v7, 0xf

    add-int/lit8 v0, v1, 0x1

    if-lez v1, :cond_2

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v1, v0

    move v0, v3

    goto :goto_1
.end method

.method private static b()J
    .locals 8

    const/16 v7, 0x2d

    const/16 v6, 0x1e

    const/16 v5, 0xf

    const/4 v4, 0x0

    const/16 v3, 0xc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, v5, :cond_0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-lt v1, v5, :cond_1

    if-ge v1, v6, :cond_1

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    if-lt v1, v6, :cond_2

    if-ge v1, v7, :cond_2

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x33

    :try_start_0
    sget-object v0, Lcom/datami/smi/c/t;->i:[B

    const/16 v1, 0x3e

    aget-byte v0, v0, v1

    sget v1, Lcom/datami/smi/c/t;->j:I

    sget-object v2, Lcom/datami/smi/c/t;->i:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/t;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/datami/smi/c/t;->i:[B

    aget-byte v0, v0, v4

    or-int/lit8 v1, v0, 0x25

    sget-object v2, Lcom/datami/smi/c/t;->i:[B

    const/16 v3, 0x3b

    aget-byte v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/datami/smi/c/t;->a(III)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/datami/smi/c/t;->i:[B

    const/16 v2, 0x14

    aget-byte v1, v1, v2

    neg-int v1, v1

    or-int/lit8 v2, v1, 0x15

    sget-object v3, Lcom/datami/smi/c/t;->i:[B

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/datami/smi/c/t;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    goto :goto_1
.end method
