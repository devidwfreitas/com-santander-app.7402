.class public Lbw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 0

    .prologue
    .line 58
    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    return p0
.end method

.method private static a([BI)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 35
    const/4 v0, -0x1

    move v3, v2

    move v4, v0

    .line 39
    :goto_0
    if-lt v3, p1, :cond_0

    .line 54
    xor-int/lit8 v0, v4, -0x1

    return v0

    .line 41
    :cond_0
    aget-byte v0, p0, v3

    invoke-static {v0}, Lbw;->a(I)I

    move-result v0

    .line 43
    and-int/lit16 v1, v4, 0xff

    xor-int/2addr v0, v1

    move v1, v2

    .line 44
    :goto_1
    const/16 v5, 0x8

    if-lt v1, v5, :cond_1

    .line 51
    ushr-int/lit8 v1, v4, 0x8

    xor-int/2addr v1, v0

    .line 39
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_0

    .line 46
    :cond_1
    and-int/lit8 v5, v0, 0x1

    if-lez v5, :cond_2

    .line 47
    ushr-int/lit8 v0, v0, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v0, v5

    .line 44
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    :cond_2
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 63
    array-length v1, v0

    invoke-static {v0, v1}, Lbw;->a([BI)I

    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 68
    return-object v0

    .line 66
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v0, 0x0

    .line 127
    if-eqz p0, :cond_4

    .line 128
    :try_start_0
    array-length v4, p0

    .line 129
    rem-int/lit8 v1, v4, 0x10

    if-nez v1, :cond_4

    .line 130
    add-int/lit8 v1, v4, -0x4

    new-array v5, v1, [B

    .line 131
    const/4 v1, 0x4

    new-array v6, v1, [B

    .line 134
    add-int/lit8 v1, v4, -0x4

    move v2, v0

    :goto_0
    if-lt v1, v4, :cond_0

    move v1, v0

    .line 137
    :goto_1
    array-length v2, v5

    if-lt v1, v2, :cond_1

    .line 140
    add-int/lit8 v1, v4, -0x4

    invoke-static {v5, v1}, Lbw;->a([BI)I

    move-result v1

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 143
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Laz;->b([B)[B

    move-result-object v1

    .line 152
    :goto_3
    if-lt v0, v8, :cond_3

    .line 157
    return-object v5

    .line 135
    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-byte v7, p0, v1

    aput-byte v7, v6, v2

    .line 134
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 138
    :cond_1
    aget-byte v2, p0, v1

    aput-byte v2, v5, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_2
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 153
    :cond_3
    aget-byte v2, v1, v0

    aget-byte v3, v6, v0

    if-eq v2, v3, :cond_5

    .line 154
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :catch_0
    move-exception v0

    .line 163
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid data."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 76
    if-lez v0, :cond_0

    .line 77
    invoke-static {p0}, Lbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid data."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    if-eqz p0, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 99
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 100
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 101
    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v1}, Lbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid data."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
