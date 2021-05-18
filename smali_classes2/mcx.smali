.class public Lmcx;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final a:F = 0.2f

.field private static final b:F = 0.02f

.field private static final c:I = -0x80000000

.field private static final s:Landroid/graphics/PorterDuffXfermode;

.field private static t:Landroid/graphics/ColorFilter;


# instance fields
.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/animation/ValueAnimator;

.field private m:F

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Matrix;

.field private q:Z

.field private r:Z

.field private u:Landroid/graphics/ColorFilter;

.field private v:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lmcx;->s:Landroid/graphics/PorterDuffXfermode;

    .line 54
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lmcx;->t:Landroid/graphics/ColorFilter;

    return-void

    :array_0
    .array-data 4
        0x3e872b02    # 0.264f
        0x3ef1a9fc    # 0.472f
        0x3db43958    # 0.088f
        0x0
        0x0
        0x3e872b02    # 0.264f
        0x3ef1a9fc    # 0.472f
        0x3db43958    # 0.088f
        0x0
        0x0
        0x3e872b02    # 0.264f
        0x3ef1a9fc    # 0.472f
        0x3db43958    # 0.088f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    iput v0, p0, Lmcx;->g:I

    .line 41
    iput v0, p0, Lmcx;->h:I

    .line 42
    iput v0, p0, Lmcx;->i:I

    .line 43
    iput v1, p0, Lmcx;->j:I

    .line 44
    iput v1, p0, Lmcx;->k:I

    .line 45
    iput-object v2, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    .line 46
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmcx;->m:F

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmcx;->p:Landroid/graphics/Matrix;

    .line 50
    iput-boolean v1, p0, Lmcx;->q:Z

    .line 51
    iput-boolean v1, p0, Lmcx;->r:Z

    .line 60
    iput-object v2, p0, Lmcx;->u:Landroid/graphics/ColorFilter;

    .line 62
    new-instance v0, Lmcy;

    invoke-direct {v0, p0}, Lmcy;-><init>(Lmcx;)V

    iput-object v0, p0, Lmcx;->v:Landroid/view/Choreographer$FrameCallback;

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    :goto_0
    invoke-direct {p0, v0}, Lmcx;->a(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    iput v0, p0, Lmcx;->g:I

    .line 41
    iput v0, p0, Lmcx;->h:I

    .line 42
    iput v0, p0, Lmcx;->i:I

    .line 43
    iput v1, p0, Lmcx;->j:I

    .line 44
    iput v1, p0, Lmcx;->k:I

    .line 45
    iput-object v2, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    .line 46
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmcx;->m:F

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmcx;->p:Landroid/graphics/Matrix;

    .line 50
    iput-boolean v1, p0, Lmcx;->q:Z

    .line 51
    iput-boolean v1, p0, Lmcx;->r:Z

    .line 60
    iput-object v2, p0, Lmcx;->u:Landroid/graphics/ColorFilter;

    .line 62
    new-instance v0, Lmcy;

    invoke-direct {v0, p0}, Lmcy;-><init>(Lmcx;)V

    iput-object v0, p0, Lmcx;->v:Landroid/view/Choreographer$FrameCallback;

    .line 73
    invoke-direct {p0, p1}, Lmcx;->a(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-void
.end method

.method private a(F)V
    .locals 3

    .prologue
    .line 336
    iput p1, p0, Lmcx;->m:F

    .line 337
    iget v0, p0, Lmcx;->f:I

    iget v1, p0, Lmcx;->f:I

    iget v2, p0, Lmcx;->g:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lmcx;->m:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmcx;->k:I

    .line 338
    invoke-virtual {p0}, Lmcx;->invalidateSelf()V

    .line 339
    return-void
.end method

.method private a(III)V
    .locals 12

    .prologue
    .line 346
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 347
    :cond_0
    const-string v0, "ContentValues"

    const-string v1, "updateMask: size must > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lmcx;->o:Landroid/graphics/Bitmap;

    .line 379
    :goto_0
    return-void

    .line 353
    :cond_1
    add-int v0, p1, p2

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 355
    mul-int v0, p2, v3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 356
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    new-instance v6, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 359
    div-int/lit8 v7, p3, 0x2

    .line 360
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 361
    const/4 v0, 0x0

    int-to-float v1, v7

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 363
    int-to-float v0, p2

    const/high16 v1, 0x40800000    # 4.0f

    div-float v9, v0, v1

    .line 364
    const/4 v2, 0x0

    .line 365
    neg-int v0, v7

    int-to-float v1, v0

    .line 366
    const/4 v0, 0x0

    :goto_1
    mul-int/lit8 v10, v3, 0x2

    if-ge v0, v10, :cond_2

    .line 367
    add-float/2addr v2, v9

    .line 368
    add-float v10, v2, v9

    int-to-float v11, v7

    invoke-virtual {v8, v2, v1, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 369
    add-float/2addr v2, v9

    .line 370
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, v10, v1

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 373
    const/4 v0, 0x0

    int-to-float v1, p3

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 374
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 376
    invoke-virtual {v5, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 378
    iput-object v4, p0, Lmcx;->o:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget v0, p0, Lmcx;->e:I

    if-ltz v0, :cond_2

    iget v0, p0, Lmcx;->f:I

    if-gez v0, :cond_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lmcx;->e:I

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lmcx;->f:I

    .line 205
    iget v0, p0, Lmcx;->g:I

    if-ne v0, v3, :cond_3

    .line 206
    const/16 v0, 0x8

    iget v1, p0, Lmcx;->f:I

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmcx;->g:I

    .line 209
    :cond_3
    iget v0, p0, Lmcx;->h:I

    if-ne v0, v3, :cond_4

    .line 210
    iget v0, p0, Lmcx;->e:I

    iput v0, p0, Lmcx;->h:I

    .line 213
    :cond_4
    iget v0, p0, Lmcx;->i:I

    if-ne v0, v3, :cond_5

    .line 214
    const/4 v0, 0x1

    iget v1, p0, Lmcx;->e:I

    int-to-float v1, v1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmcx;->i:I

    .line 217
    :cond_5
    iget v0, p0, Lmcx;->e:I

    iget v1, p0, Lmcx;->h:I

    iget v2, p0, Lmcx;->g:I

    invoke-direct {p0, v0, v1, v2}, Lmcx;->a(III)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 88
    iput-object p1, p0, Lmcx;->d:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v0, p0, Lmcx;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmcx;->n:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lmcx;->n:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 92
    iget-object v0, p0, Lmcx;->n:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lmcx;->n:Landroid/graphics/Paint;

    sget-object v1, Lmcx;->s:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    iget-object v0, p0, Lmcx;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lmcx;->e:I

    .line 96
    iget-object v0, p0, Lmcx;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lmcx;->f:I

    .line 98
    iget v0, p0, Lmcx;->e:I

    if-lez v0, :cond_0

    iget v0, p0, Lmcx;->f:I

    if-lez v0, :cond_0

    .line 99
    iget v0, p0, Lmcx;->e:I

    iput v0, p0, Lmcx;->h:I

    .line 100
    const/16 v0, 0x8

    iget v1, p0, Lmcx;->f:I

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmcx;->g:I

    .line 101
    const/4 v0, 0x1

    iget v1, p0, Lmcx;->e:I

    int-to-float v1, v1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmcx;->i:I

    .line 102
    iget v0, p0, Lmcx;->e:I

    iget v1, p0, Lmcx;->h:I

    iget v2, p0, Lmcx;->g:I

    invoke-direct {p0, v0, v1, v2}, Lmcx;->a(III)V

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmcx;->a(F)V

    .line 106
    invoke-virtual {p0}, Lmcx;->start()V

    .line 107
    return-void
.end method

.method static synthetic a(Lmcx;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lmcx;->q:Z

    return v0
.end method

.method private b()Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 327
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 328
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 330
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 331
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 332
    return-object v0

    .line 327
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c()I
    .locals 3

    .prologue
    .line 342
    iget v0, p0, Lmcx;->f:I

    iget v1, p0, Lmcx;->k:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lmcx;->f:I

    iget v2, p0, Lmcx;->g:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lmcx;->e:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmcx;->i:I

    .line 115
    return-void
.end method

.method public a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 179
    :cond_2
    iput-object p1, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    .line 180
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 149
    iput-boolean p1, p0, Lmcx;->r:Z

    .line 150
    iget-boolean v0, p0, Lmcx;->r:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lmcx;->b()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    .line 154
    :cond_0
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    iget-object v0, p0, Lmcx;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 161
    :cond_2
    invoke-direct {p0}, Lmcx;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lmcx;->setLevel(I)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lmcx;->r:Z

    return v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x1

    iget v1, p0, Lmcx;->f:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 123
    mul-int/lit8 v0, v0, 0x2

    .line 124
    iget v1, p0, Lmcx;->g:I

    if-eq v1, v0, :cond_0

    .line 125
    iput v0, p0, Lmcx;->g:I

    .line 126
    iget v0, p0, Lmcx;->e:I

    iget v1, p0, Lmcx;->h:I

    iget v2, p0, Lmcx;->g:I

    invoke-direct {p0, v0, v1, v2}, Lmcx;->a(III)V

    .line 127
    invoke-virtual {p0}, Lmcx;->invalidateSelf()V

    .line 129
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 136
    const/16 v0, 0x8

    iget v1, p0, Lmcx;->e:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 137
    iget v1, p0, Lmcx;->h:I

    if-eq v0, v1, :cond_0

    .line 138
    iput v0, p0, Lmcx;->h:I

    .line 139
    iget v0, p0, Lmcx;->e:I

    iget v1, p0, Lmcx;->h:I

    iget v2, p0, Lmcx;->g:I

    invoke-direct {p0, v0, v1, v2}, Lmcx;->a(III)V

    .line 140
    invoke-virtual {p0}, Lmcx;->invalidateSelf()V

    .line 142
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lmcx;->d:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 236
    iget-object v0, p0, Lmcx;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    iget-object v0, p0, Lmcx;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lmcx;->u:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 239
    iget v0, p0, Lmcx;->m:F

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v0, p0, Lmcx;->e:I

    int-to-float v3, v0

    iget v0, p0, Lmcx;->f:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 250
    iget v1, p0, Lmcx;->k:I

    if-lez v1, :cond_2

    .line 251
    const/4 v1, 0x0

    iget v2, p0, Lmcx;->k:I

    iget v3, p0, Lmcx;->e:I

    iget v4, p0, Lmcx;->f:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 254
    :cond_2
    iget-object v1, p0, Lmcx;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    iget v1, p0, Lmcx;->m:F

    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    .line 260
    iget v1, p0, Lmcx;->j:I

    iget v2, p0, Lmcx;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lmcx;->j:I

    .line 261
    iget v1, p0, Lmcx;->j:I

    iget v2, p0, Lmcx;->h:I

    if-le v1, v2, :cond_3

    .line 262
    iget v1, p0, Lmcx;->j:I

    iget v2, p0, Lmcx;->h:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmcx;->j:I

    .line 265
    :cond_3
    iget-object v1, p0, Lmcx;->o:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 266
    iget-object v1, p0, Lmcx;->p:Landroid/graphics/Matrix;

    iget v2, p0, Lmcx;->j:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lmcx;->k:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 267
    iget-object v1, p0, Lmcx;->o:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmcx;->p:Landroid/graphics/Matrix;

    iget-object v3, p0, Lmcx;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 270
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lmcx;->f:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lmcx;->e:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lmcx;->q:Z

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lmcx;->r:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-direct {p0, v0}, Lmcx;->a(F)V

    .line 316
    iget-boolean v0, p0, Lmcx;->q:Z

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lmcx;->invalidateSelf()V

    .line 320
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 194
    invoke-direct {p0, p1}, Lmcx;->a(Landroid/graphics/Rect;)V

    .line 195
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .prologue
    .line 275
    int-to-float v0, p1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lmcx;->a(F)V

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lmcx;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 282
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    iget-object v0, p0, Lmcx;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lmcx;->u:Landroid/graphics/ColorFilter;

    .line 287
    invoke-virtual {p0}, Lmcx;->invalidateSelf()V

    .line 288
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmcx;->q:Z

    .line 298
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lmcx;->v:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 299
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmcx;->q:Z

    .line 304
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lmcx;->v:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 305
    return-void
.end method
