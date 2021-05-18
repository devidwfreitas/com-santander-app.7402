.class public Ljz;
.super Ljx;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljx;-><init>()V

    .line 17
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v1}, Ljz;->a([BI)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static a([BI)[C
    .locals 12

    .prologue
    const/16 v3, 0x3d

    const/4 v1, 0x0

    .line 36
    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    .line 37
    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 38
    new-array v7, v0, [C

    move v5, v1

    move v2, v1

    .line 41
    :goto_0
    if-ge v2, p1, :cond_4

    .line 43
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v8, v2, 0xff

    .line 44
    if-ge v0, p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    .line 45
    :goto_1
    if-ge v0, p1, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 46
    :goto_2
    ushr-int/lit8 v9, v8, 0x2

    .line 47
    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    ushr-int/lit8 v10, v4, 0x4

    or-int/2addr v8, v10

    .line 48
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v10, v0, 0x6

    or-int/2addr v4, v10

    .line 49
    and-int/lit8 v10, v0, 0x3f

    .line 50
    add-int/lit8 v0, v5, 0x1

    sget-object v11, Ljz;->a:[C

    aget-char v9, v11, v9

    aput-char v9, v7, v5

    .line 51
    add-int/lit8 v5, v0, 0x1

    sget-object v9, Ljz;->a:[C

    aget-char v8, v9, v8

    aput-char v8, v7, v0

    .line 52
    if-ge v5, v6, :cond_2

    sget-object v0, Ljz;->a:[C

    aget-char v0, v0, v4

    :goto_3
    aput-char v0, v7, v5

    .line 53
    add-int/lit8 v4, v5, 0x1

    .line 54
    if-ge v4, v6, :cond_3

    sget-object v0, Ljz;->a:[C

    aget-char v0, v0, v10

    :goto_4
    aput-char v0, v7, v4

    .line 55
    add-int/lit8 v0, v4, 0x1

    move v5, v0

    .line 56
    goto :goto_0

    :cond_0
    move v4, v1

    .line 44
    goto :goto_1

    :cond_1
    move v2, v0

    move v0, v1

    .line 45
    goto :goto_2

    :cond_2
    move v0, v3

    .line 52
    goto :goto_3

    :cond_3
    move v0, v3

    .line 54
    goto :goto_4

    .line 57
    :cond_4
    return-object v7
.end method
