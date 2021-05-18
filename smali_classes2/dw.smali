.class public Ldw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [I

    move v0, v1

    .line 11
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 32
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    aget v0, v7, v0

    return v0

    :cond_0
    move v2, v1

    move v3, v0

    .line 13
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 28
    if-lez v0, :cond_1

    .line 29
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    aput v3, v7, v2

    .line 11
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_2
    if-nez v0, :cond_4

    .line 15
    aput v2, v7, v2

    .line 13
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_4
    if-lez v2, :cond_3

    .line 18
    add-int/lit8 v4, v2, -0x1

    aget v4, v7, v4

    .line 19
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_5

    .line 20
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 21
    aget v8, v7, v2

    .line 20
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 23
    :cond_5
    add-int/lit8 v8, v2, -0x1

    aput v3, v7, v8

    move v3, v4

    .line 24
    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 61
    if-nez p0, :cond_1

    if-nez p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 80
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 81
    invoke-static {p1, p0}, Ldw;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 82
    if-nez v2, :cond_4

    .line 83
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 88
    :goto_2
    float-to-double v4, p2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    .line 91
    goto :goto_0

    .line 85
    :cond_4
    sub-int v3, v2, v3

    int-to-double v4, v3

    int-to-double v2, v2

    div-double v2, v4, v2

    goto :goto_2

    :cond_5
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1
.end method
