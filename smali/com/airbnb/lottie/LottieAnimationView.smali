.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lawr;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lawr;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Laxg;

.field private final e:Lawu;

.field private f:Lawp;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lawj;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Lawr;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->a:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->b:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lawn;

    invoke-direct {v0, p0}, Lawn;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Laxg;

    .line 71
    new-instance v0, Lawu;

    invoke-direct {v0}, Lawu;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    .line 74
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 75
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 76
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Lawn;

    invoke-direct {v0, p0}, Lawn;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Laxg;

    .line 71
    new-instance v0, Lawu;

    invoke-direct {v0}, Lawu;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    .line 74
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 75
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 76
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 89
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Lawn;

    invoke-direct {v0, p0}, Lawn;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Laxg;

    .line 71
    new-instance v0, Lawu;

    invoke-direct {v0}, Lawu;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    .line 74
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 75
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 76
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 94
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public static synthetic a(Lcom/airbnb/lottie/LottieAnimationView;Lawj;)Lawj;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lawj;

    return-object p1
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Laxw;->LottieAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    sget v1, Laxw;->LottieAnimationView_lottie_cacheStrategy:I

    sget-object v2, Lawp;->Weak:Lawp;

    .line 101
    invoke-virtual {v2}, Lawp;->ordinal()I

    move-result v2

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 102
    invoke-static {}, Lawp;->values()[Lawp;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Lawp;

    .line 103
    sget v1, Laxw;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 107
    :cond_0
    sget v1, Laxw;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v1}, Lawu;->k()V

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    sget v2, Laxw;->LottieAnimationView_lottie_loop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lawu;->c(Z)V

    .line 112
    sget v1, Laxw;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 113
    sget v1, Laxw;->LottieAnimationView_lottie_progress:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 114
    sget v1, Laxw;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->a(Z)V

    .line 116
    sget v1, Laxw;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    new-instance v1, Laxx;

    sget v2, Laxw;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Laxx;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/graphics/ColorFilter;)V

    .line 120
    :cond_2
    sget v1, Laxw;->LottieAnimationView_lottie_scale:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    sget v2, Laxw;->LottieAnimationView_lottie_scale:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lawu;->e(F)V

    .line 124
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbey;->c(Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->h()V

    .line 130
    :cond_4
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 131
    return-void
.end method

.method public static synthetic s()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic t()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Ljava/util/Map;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lawj;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lawj;

    invoke-interface {v0}, Lawj;->a()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lawj;

    .line 373
    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 606
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v1}, Lawu;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 607
    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 608
    return-void

    .line 606
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1, p2}, Lawu;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->g()V

    .line 187
    return-void
.end method

.method public a(FF)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 458
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1, p2}, Lawu;->a(FF)V

    .line 459
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1, p2}, Lawu;->a(II)V

    .line 454
    return-void
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    return-void
.end method

.method public a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 179
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(Landroid/graphics/ColorFilter;)V

    .line 180
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p2    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1, p2}, Lawu;->a(Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 172
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1, p2, p3}, Lawu;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 162
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(Z)V

    .line 264
    return-void
.end method

.method b()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->e()V

    .line 253
    :cond_0
    return-void
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    return-void
.end method

.method public b(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->b(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 424
    return-void
.end method

.method public b(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->c(Z)V

    .line 281
    return-void
.end method

.method public c()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->c(Z)V

    .line 272
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 304
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 305
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->c(Z)V

    .line 288
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->c(Z)V

    .line 436
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->a()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->b()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->j()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->k()V

    .line 444
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 445
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->l()V

    .line 449
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 450
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->n()V

    .line 463
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 464
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->m()V

    .line 492
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 493
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()F
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->r()F

    move-result v0

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->t()V

    .line 574
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 575
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->p()F

    move-result v0

    .line 579
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v1}, Lawu;->t()V

    .line 580
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 581
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 582
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 233
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    .line 236
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->n()V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 244
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 245
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 212
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 213
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 229
    :goto_0
    return-void

    .line 217
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 218
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 219
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 223
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 224
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:Z

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->d(Z)V

    .line 225
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:Z

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    iget-object v1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawu;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 203
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->a:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->o()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:F

    .line 205
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->j()Z

    move-result v0

    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:Z

    .line 206
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:Z

    .line 207
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Ljava/lang/String;

    .line 208
    return-object v1
.end method

.method public p()F
    .locals 1
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->o()F

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lawr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lawr;

    invoke-virtual {v0}, Lawr;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public r()Laxh;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->f()Laxh;

    move-result-object v0

    return-object v0
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Lawp;

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;Lawp;)V

    .line 315
    return-void
.end method

.method public setAnimation(Ljava/lang/String;Lawp;)V
    .locals 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 327
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 329
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawr;

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lawr;)V

    .line 354
    :goto_0
    return-void

    .line 334
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawr;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lawr;)V

    goto :goto_0

    .line 339
    :cond_1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0}, Lawu;->t()V

    .line 341
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->u()V

    .line 342
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lawo;

    invoke-direct {v1, p0, p2, p1}, Lawo;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lawp;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lawt;->a(Landroid/content/Context;Ljava/lang/String;Laxg;)Lawj;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lawj;

    goto :goto_0
.end method

.method public setAnimation(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->u()V

    .line 365
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Laxg;

    invoke-static {v0, p1, v1}, Lawt;->a(Landroid/content/res/Resources;Lorg/json/JSONObject;Laxg;)Lawj;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lawj;

    .line 366
    return-void
.end method

.method public setComposition(Lawr;)V
    .locals 1
    .param p1    # Lawr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 384
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p0}, Lawu;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 386
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(Lawr;)Z

    move-result v0

    .line 387
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 388
    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lawr;

    .line 401
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    goto :goto_0
.end method

.method public setFontAssetDelegate(Lawk;)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(Lawk;)V

    .line 542
    return-void
.end method

.method public setImageAssetDelegate(Lawl;)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(Lawl;)V

    .line 534
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 149
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->u()V

    .line 150
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    if-eq p1, v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->u()V

    .line 144
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    .line 135
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->u()V

    .line 136
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 137
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->b(I)V

    .line 476
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->b(F)V

    .line 480
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1, p2}, Lawu;->b(II)V

    .line 484
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1, p2}, Lawu;->b(FF)V

    .line 488
    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(I)V

    .line 468
    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(F)V

    .line 472
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->b(Z)V

    .line 598
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 585
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->d(F)V

    .line 586
    return-void
.end method

.method public setScale(F)V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->e(F)V

    .line 562
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    if-ne v0, v1, :cond_0

    .line 563
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->c(F)V

    .line 497
    return-void
.end method

.method public setTextDelegate(Laxy;)V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lawu;

    invoke-virtual {v0, p1}, Lawu;->a(Laxy;)V

    .line 549
    return-void
.end method
