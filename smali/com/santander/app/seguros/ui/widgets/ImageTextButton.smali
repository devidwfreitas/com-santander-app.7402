.class public Lcom/santander/app/seguros/ui/widgets/ImageTextButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Rect;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:F

.field private final e:F

.field private final f:Ljava/lang/String;

.field private g:Landroid/text/TextPaint;

.field private h:Ljava/lang/String;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/text/TextPaint;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:F

.field private t:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 29
    iput v3, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->b:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->d:F

    .line 32
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->e:F

    .line 33
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->f:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->a:Landroid/graphics/Rect;

    .line 46
    iput v3, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->p:I

    .line 48
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->r:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->s:F

    .line 50
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->t:F

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->a()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v4, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->b:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->d:F

    .line 32
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->e:F

    .line 33
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->f:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->a:Landroid/graphics/Rect;

    .line 46
    iput v4, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->p:I

    .line 48
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->r:Ljava/lang/String;

    .line 49
    iput v5, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->s:F

    .line 50
    iput v5, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->t:F

    .line 61
    sget-object v0, Lflv;->ImageTextButton:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    .line 67
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->n:F

    .line 68
    const/16 v0, 0x9

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->e:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->t:F

    .line 69
    const/16 v0, 0x8

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->d:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->s:F

    .line 71
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->p:I

    .line 72
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->s:F

    float-to-int v2, v2

    iget v3, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->t:F

    float-to-int v3, v3

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->i:Landroid/graphics/Bitmap;

    .line 77
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->o:I

    .line 79
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->l:F

    .line 80
    const/4 v0, 0x7

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->k:F

    .line 81
    const/4 v0, 0x5

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->q:Z

    .line 82
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->r:Ljava/lang/String;

    .line 84
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->a()V

    .line 87
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 143
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 91
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->j:Landroid/text/TextPaint;

    .line 92
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->g:Landroid/text/TextPaint;

    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "fonts/OpenSans-Light.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->r:Ljava/lang/String;

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->q:Z

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->g:Landroid/text/TextPaint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->o:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->g:Landroid/text/TextPaint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->n:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 103
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->k:F

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->m:F

    .line 104
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->g:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->g:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 116
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->k:F

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->m:F

    .line 117
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->p:I

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->j:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->p:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 121
    :cond_3
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 149
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 125
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->g:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 129
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->g:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->g:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->i:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->k:F

    add-float/2addr v0, v4

    div-float/2addr v0, v6

    sub-float v0, v3, v0

    .line 135
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->j:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget v4, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->l:F

    add-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    sub-float v1, v4, v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->g:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setImageColor(I)V
    .locals 4

    .prologue
    .line 153
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->p:I

    .line 154
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->j:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->j:Landroid/text/TextPaint;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->j:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->p:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 159
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->invalidate()V

    .line 160
    return-void
.end method

.method public setTextButton(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->h:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ImageTextButton;->invalidate()V

    .line 165
    return-void
.end method
