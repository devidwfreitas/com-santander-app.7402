.class public Lfcp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = -0x1

.field private static final b:I = -0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lett;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1}, Lett;->f()I

    move-result v3

    .line 31
    invoke-virtual {p1}, Lett;->g()I

    move-result v7

    .line 32
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move v5, v2

    .line 33
    :goto_0
    if-ge v5, v7, :cond_2

    .line 34
    mul-int v6, v5, v3

    move v4, v2

    .line 35
    :goto_1
    if-ge v4, v3, :cond_1

    .line 36
    add-int v8, v6, v4

    invoke-virtual {p1, v4, v5}, Lett;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    :goto_2
    aput v0, v1, v8

    .line 35
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 36
    :cond_0
    const/4 v0, -0x1

    goto :goto_2

    .line 33
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 40
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 41
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 42
    return-object v0
.end method

.method public a(Ljava/lang/String;Lepu;II)Lett;
    .locals 2

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Leqf;

    invoke-direct {v0}, Leqf;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Leqf;->a(Ljava/lang/String;Lepu;II)Lett;
    :try_end_0
    .catch Leqr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    throw v0

    .line 50
    :catch_1
    move-exception v0

    .line 52
    new-instance v1, Leqr;

    invoke-direct {v1, v0}, Leqr;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Lepu;IILjava/util/Map;)Lett;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lepu;",
            "II",
            "Ljava/util/Map",
            "<",
            "Leqa;",
            "*>;)",
            "Lett;"
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Leqf;

    invoke-direct {v0}, Leqf;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Leqf;->a(Ljava/lang/String;Lepu;IILjava/util/Map;)Lett;
    :try_end_0
    .catch Leqr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    throw v0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Leqr;

    invoke-direct {v1, v0}, Leqr;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/String;Lepu;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lfcp;->a(Ljava/lang/String;Lepu;II)Lett;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfcp;->a(Lett;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lepu;IILjava/util/Map;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lepu;",
            "II",
            "Ljava/util/Map",
            "<",
            "Leqa;",
            "*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual/range {p0 .. p5}, Lfcp;->a(Ljava/lang/String;Lepu;IILjava/util/Map;)Lett;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfcp;->a(Lett;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
