.class public final Letx;
.super Leua;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Leua;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lett;IIFFFFFFFFFFFFFFFF)Lett;
    .locals 1

    .prologue
    .line 39
    invoke-static/range {p4 .. p19}, Leuc;->a(FFFFFFFFFFFFFFFF)Leuc;

    move-result-object v0

    .line 43
    invoke-virtual {p0, p1, p2, p3, v0}, Letx;->a(Lett;IILeuc;)Lett;

    move-result-object v0

    return-object v0
.end method

.method public a(Lett;IILeuc;)Lett;
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 51
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 52
    :cond_0
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 54
    :cond_1
    new-instance v3, Lett;

    invoke-direct {v3, p2, p3}, Lett;-><init>(II)V

    .line 55
    mul-int/lit8 v0, p2, 0x2

    new-array v4, v0, [F

    move v2, v1

    .line 56
    :goto_0
    if-ge v2, p3, :cond_5

    .line 57
    array-length v5, v4

    .line 58
    int-to-float v0, v2

    add-float v6, v0, v8

    move v0, v1

    .line 59
    :goto_1
    if-ge v0, v5, :cond_2

    .line 60
    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v8

    aput v7, v4, v0

    .line 61
    add-int/lit8 v7, v0, 0x1

    aput v6, v4, v7

    .line 59
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p4, v4}, Leuc;->a([F)V

    .line 66
    invoke-static {p1, v4}, Letx;->a(Lett;[F)V

    move v0, v1

    .line 68
    :goto_2
    if-ge v0, v5, :cond_4

    .line 69
    :try_start_0
    aget v6, v4, v0

    float-to-int v6, v6

    add-int/lit8 v7, v0, 0x1

    aget v7, v4, v7

    float-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Lett;->a(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 71
    div-int/lit8 v6, v0, 0x2

    invoke-virtual {v3, v6, v2}, Lett;->b(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 74
    :catch_0
    move-exception v0

    .line 82
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 56
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 85
    :cond_5
    return-object v3
.end method
