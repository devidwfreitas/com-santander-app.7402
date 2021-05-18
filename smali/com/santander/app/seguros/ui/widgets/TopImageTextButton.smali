.class public Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:F

.field private final f:F

.field private final g:Ljava/lang/String;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/text/TextPaint;

.field private j:Landroid/text/TextPaint;

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/Bitmap;

.field private m:F

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:F

.field private r:F

.field private s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/high16 v2, 0x42200000    # 40.0f

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0x23

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->a:I

    .line 31
    const/16 v0, 0xb

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->b:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->c:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->e:F

    .line 35
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->f:F

    .line 36
    const-string v0, "fonts/OpenSans-Regular.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->g:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->h:Landroid/graphics/Rect;

    .line 46
    const-string v0, "fonts/OpenSans-Regular.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->p:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->q:F

    .line 49
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->r:F

    .line 50
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->s:F

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/16 v0, 0x23

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->a:I

    .line 31
    const/16 v0, 0xb

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->b:I

    .line 32
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->c:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->e:F

    .line 35
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->f:F

    .line 36
    const-string v0, "fonts/OpenSans-Regular.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->g:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->h:Landroid/graphics/Rect;

    .line 46
    const-string v0, "fonts/OpenSans-Regular.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->p:Ljava/lang/String;

    .line 48
    iput v10, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->q:F

    .line 49
    iput v10, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->r:F

    .line 50
    iput v10, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->s:F

    .line 60
    sget-object v0, Lflv;->TopImageTextButton:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 61
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    .line 66
    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {v7, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->m:F

    .line 69
    const/4 v0, 0x6

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->f:F

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->r:F

    .line 70
    const/4 v0, 0x5

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->e:F

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->q:F

    .line 72
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 76
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v10, v10, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v8, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->q:F

    invoke-static {v4, v8}, Lmhj;->c(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->r:F

    invoke-static {v8, v9}, Lmhj;->c(Landroid/content/Context;F)F

    move-result v8

    invoke-direct {v3, v10, v10, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->l:Landroid/graphics/Bitmap;

    .line 82
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->n:I

    .line 84
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->o:Z

    .line 85
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->p:Ljava/lang/String;

    .line 86
    const/4 v0, 0x4

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->s:F

    .line 88
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->a()V

    .line 91
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 174
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 96
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->o:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const-string v0, "fonts/OpenSans-Regular.ttf"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->p:Ljava/lang/String;

    .line 104
    :cond_1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    .line 105
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->n:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->m:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 107
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 112
    :cond_2
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->j:Landroid/text/TextPaint;

    .line 113
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 180
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 119
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 120
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 121
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->l:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->j:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 126
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->s:F

    float-to-int v0, v0

    move v1, v2

    .line 127
    :goto_0
    array-length v3, v6

    if-ge v1, v3, :cond_7

    .line 128
    aget-object v3, v6, v1

    .line 129
    invoke-static {v3}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    invoke-virtual {p0, v4, v5}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x23

    if-le v4, v5, :cond_3

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 131
    const-string v4, ""

    .line 132
    const-string v3, ""

    .line 133
    array-length v8, v7

    move v5, v2

    :goto_1
    if-ge v5, v8, :cond_1

    aget-char v9, v7, v5

    .line 134
    invoke-static {v4}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    invoke-virtual {p0, v10, v11}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v10

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x23

    if-gt v10, v11, :cond_0

    .line 135
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 140
    :cond_1
    invoke-static {v4}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    invoke-virtual {p0, v5, v7}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->b(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    add-int/2addr v0, v5

    .line 141
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v7, v0

    int-to-float v7, v7

    iget-object v8, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 144
    aput-object v3, v6, v1

    goto/16 :goto_0

    .line 146
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    move-object v12, v3

    move v3, v1

    move-object v1, v12

    .line 151
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v4, v6

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v6, v4

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    invoke-virtual {p0, v4, v5}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->a(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x23

    if-ge v4, v5, :cond_6

    array-length v4, v6

    if-ge v3, v4, :cond_6

    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v1, v6

    if-ge v3, v1, :cond_5

    aget-object v1, v6, v3

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 151
    :cond_4
    const-string v4, ""

    goto :goto_4

    .line 153
    :cond_5
    const-string v1, ""

    goto :goto_5

    .line 155
    :cond_6
    invoke-static {v1}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    invoke-virtual {p0, v4, v5}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->b(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    add-int/2addr v0, v4

    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v7, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    add-int/2addr v5, v0

    int-to-float v5, v5

    iget-object v7, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->i:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 157
    add-int/lit8 v1, v3, 0x1

    goto/16 :goto_0

    .line 161
    :cond_7
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 184
    if-eqz p1, :cond_0

    .line 185
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v7, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->q:F

    invoke-static {v3, v4}, Lmhj;->c(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->r:F

    invoke-static {v4, v6}, Lmhj;->c(Landroid/content/Context;F)F

    move-result v4

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->l:Landroid/graphics/Bitmap;

    .line 189
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->invalidate()V

    .line 191
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->k:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->invalidate()V

    .line 196
    return-void
.end method
