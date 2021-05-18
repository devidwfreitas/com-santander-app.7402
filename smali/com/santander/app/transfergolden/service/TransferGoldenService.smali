.class public Lcom/santander/app/transfergolden/service/TransferGoldenService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# static fields
.field public static final a:Z = false

.field private static final b:Ljava/lang/String; = "TransferGoldenService"


# instance fields
.field private c:Lmxb;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/WindowManager;

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(F)Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const v6, 0x3f666666    # 0.9f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 243
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    new-array v3, v4, [F

    aput p1, v3, v5

    .line 244
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    aput v6, v3, v5

    .line 245
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v6, v4, v5

    .line 246
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 243
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 247
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->j()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/transfergolden/service/TransferGoldenService;F)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->a(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 91
    invoke-static {p0}, Lmwe;->a(Landroid/content/Context;)Z

    move-result v0

    .line 92
    new-instance v1, Lmwf;

    iget-object v2, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lmwf;-><init>(Ljava/lang/String;)V

    .line 93
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lmwf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->h:Landroid/os/Handler;

    new-instance v1, Lmwg;

    invoke-direct {v1, p0}, Lmwg;-><init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    iput-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->i()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 119
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->e:Landroid/view/WindowManager;

    .line 121
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    const v1, 0x7f020486

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->h()V

    .line 126
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f()V

    .line 128
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->b()V

    .line 130
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    return-void
.end method

.method private d()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 134
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const/16 v4, 0x8

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f:Landroid/view/WindowManager$LayoutParams;

    .line 141
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800015

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->k()V

    return-void
.end method

.method public static synthetic e(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->d:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iput-object v2, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->i:Ljava/lang/Runnable;

    .line 153
    iput-object v2, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    .line 154
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->f:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    new-instance v1, Lmwi;

    invoke-direct {v1, p0}, Lmwi;-><init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 166
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->e:Landroid/view/WindowManager;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->j()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 171
    new-instance v1, Lmwj;

    invoke-direct {v1, p0}, Lmwj;-><init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 180
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    new-instance v1, Lmwk;

    invoke-direct {v1, p0}, Lmwk;-><init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    return-void
.end method

.method public static synthetic h(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->b()V

    return-void
.end method

.method private i()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    .line 235
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 234
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    add-float/2addr v0, v1

    .line 236
    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 237
    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 238
    iget-object v1, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 239
    invoke-direct {p0, v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->a(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method private j()Landroid/animation/ObjectAnimator;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 252
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    .line 253
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    .line 252
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 254
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 255
    return-object v0
.end method

.method public static synthetic j(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g()V

    return-void
.end method

.method public static synthetic k(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 259
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 260
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 261
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->g:Landroid/widget/ImageView;

    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    aput v6, v3, v5

    .line 262
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v4, [F

    aput v6, v3, v5

    .line 263
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    .line 261
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 264
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 266
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 267
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 268
    new-instance v1, Lmwl;

    invoke-direct {v1, p0}, Lmwl;-><init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 278
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "TransferGoldenService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p0}, Lmwe;->b(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lmxb;

    invoke-direct {v0, p0}, Lmxb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->c:Lmxb;

    .line 54
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->c:Lmxb;

    invoke-virtual {v0, p0}, Lmxb;->a(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->h:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->e()V

    .line 74
    return-void
.end method

.method public onPrimaryClipChanged()V
    .locals 3

    .prologue
    .line 78
    invoke-static {p0}, Lmwe;->b(Landroid/content/Context;)V

    .line 79
    const-string v0, "TransferGoldenService"

    const-string v1, "onPrimaryClipChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->c:Lmxb;

    invoke-virtual {v0}, Lmxb;->a()Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->d:Ljava/lang/String;

    .line 83
    const-string v0, "TransferGoldenService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text copy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/transfergolden/service/TransferGoldenService;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->c()V

    .line 88
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 61
    const-string v0, "TransferGoldenService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x1

    return v0
.end method
