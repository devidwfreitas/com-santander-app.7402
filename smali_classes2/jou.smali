.class public final Ljou;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static a(II)I
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    .line 36
    :try_start_0
    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 38
    :goto_0
    return p1

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 45
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 47
    :goto_0
    return p1

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :cond_0
    instance-of v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-static {v0}, Ljou;->a(Landroid/support/graphics/drawable/VectorDrawableCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_2

    .line 64
    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-static {v0}, Ljou;->a(Landroid/graphics/drawable/VectorDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported drawable type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/graphics/drawable/VectorDrawable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 73
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 72
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    return-object v0
.end method

.method private static a(Landroid/support/graphics/drawable/VectorDrawableCompat;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getIntrinsicWidth()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 81
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setBounds(IIII)V

    .line 85
    invoke-virtual {p0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    .line 86
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const/4 v0, 0x0

    goto :goto_0
.end method
