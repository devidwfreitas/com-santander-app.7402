.class public Ljy;
.super Ljx;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljx;-><init>()V

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null parameter is not supported in method decode()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljy;->a([C)[B

    move-result-object v0

    return-object v0
.end method

.method private static a([C)[B
    .locals 12

    .prologue
    const/16 v2, 0x41

    const/4 v0, 0x0

    const/16 v11, 0x7f

    .line 45
    array-length v1, p0

    .line 46
    rem-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_a

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :goto_0
    if-lez v6, :cond_0

    add-int/lit8 v1, v6, -0x1

    aget-char v1, p0, v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_0

    .line 52
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    goto :goto_0

    .line 54
    :cond_0
    mul-int/lit8 v1, v6, 0x3

    div-int/lit8 v7, v1, 0x4

    .line 55
    new-array v8, v7, [B

    move v5, v0

    .line 58
    :goto_1
    if-ge v0, v6, :cond_7

    .line 60
    add-int/lit8 v1, v0, 0x1

    aget-char v9, p0, v0

    .line 61
    add-int/lit8 v0, v1, 0x1

    aget-char v10, p0, v1

    .line 62
    if-ge v0, v6, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v4, v0

    move v0, v1

    .line 63
    :goto_2
    if-ge v0, v6, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v3, v1

    .line 64
    :goto_3
    if-gt v9, v11, :cond_1

    if-gt v10, v11, :cond_1

    if-gt v4, v11, :cond_1

    if-le v0, v11, :cond_4

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v4, v2

    .line 62
    goto :goto_2

    :cond_3
    move v3, v0

    move v0, v2

    .line 63
    goto :goto_3

    .line 68
    :cond_4
    sget-object v1, Ljy;->b:[B

    aget-byte v1, v1, v9

    .line 69
    sget-object v9, Ljy;->b:[B

    aget-byte v9, v9, v10

    .line 70
    sget-object v10, Ljy;->b:[B

    aget-byte v4, v10, v4

    .line 71
    sget-object v10, Ljy;->b:[B

    aget-byte v0, v10, v0

    .line 72
    if-ltz v1, :cond_5

    if-ltz v9, :cond_5

    if-ltz v4, :cond_5

    if-gez v0, :cond_6

    .line 74
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_6
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v10, v9, 0x4

    or-int/2addr v1, v10

    .line 77
    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v10, v4, 0x2

    or-int/2addr v9, v10

    .line 78
    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    .line 79
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v8, v5

    .line 80
    if-ge v0, v7, :cond_9

    .line 82
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v9

    aput-byte v5, v8, v0

    .line 84
    :goto_4
    if-ge v1, v7, :cond_8

    .line 86
    add-int/lit8 v0, v1, 0x1

    int-to-byte v4, v4

    aput-byte v4, v8, v1

    :goto_5
    move v5, v0

    move v0, v3

    .line 88
    goto :goto_1

    .line 89
    :cond_7
    return-object v8

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v1, v0

    goto :goto_4

    :cond_a
    move v6, v1

    goto/16 :goto_0
.end method
