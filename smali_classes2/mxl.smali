.class public Lmxl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 26
    const-string v0, ""

    .line 28
    new-instance v1, Lezn;

    invoke-direct {v1}, Lezn;-><init>()V

    .line 30
    :try_start_0
    invoke-static {}, Lmxl;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lepu;->QR_CODE:Lepu;

    const/16 v5, 0x12c

    const/16 v6, 0x12c

    invoke-virtual {v1, v2, v4, v5, v6}, Lezn;->a(Ljava/lang/String;Lepu;II)Lett;

    move-result-object v5

    .line 35
    invoke-virtual {v5}, Lett;->f()I

    move-result v6

    .line 36
    invoke-virtual {v5}, Lett;->g()I

    move-result v7

    .line 37
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move v4, v3

    .line 39
    :goto_0
    if-ge v4, v6, :cond_2

    move v2, v3

    .line 40
    :goto_1
    if-ge v2, v7, :cond_1

    .line 41
    invoke-virtual {v5, v4, v2}, Lett;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    :goto_2
    invoke-virtual {v8, v4, v2, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 40
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 41
    :cond_0
    const/4 v1, -0x1

    goto :goto_2

    .line 39
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 45
    :cond_2
    invoke-static {v8}, Lmym;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    :try_end_0
    .catch Leqr; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_3
    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    const-string v2, "Error"

    invoke-virtual {v1}, Leqr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
