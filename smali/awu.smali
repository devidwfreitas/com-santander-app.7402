.class public Lawu;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Lawk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field b:Laxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field private final e:Landroid/graphics/Matrix;

.field private f:Lawr;

.field private final g:Lbet;

.field private h:F

.field private i:F

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laxb;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laxc;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lazu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Lawl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Lazt;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:Z

.field private q:Lbeb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lawu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lawu;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 69
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lawu;->e:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Lbet;

    invoke-direct {v0}, Lbet;-><init>()V

    iput-object v0, p0, Lawu;->g:Lbet;

    .line 53
    iput v1, p0, Lawu;->h:F

    .line 54
    iput v1, p0, Lawu;->i:F

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lawu;->j:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawu;->k:Ljava/util/ArrayList;

    .line 66
    const/16 v0, 0xff

    iput v0, p0, Lawu;->r:I

    .line 70
    iget-object v0, p0, Lawu;->g:Lbet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbet;->setRepeatCount(I)V

    .line 71
    iget-object v0, p0, Lawu;->g:Lbet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lbet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    iget-object v0, p0, Lawu;->g:Lbet;

    new-instance v1, Lawv;

    invoke-direct {v1, p0}, Lawv;-><init>(Lawu;)V

    invoke-virtual {v0, v1}, Lbet;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    return-void
.end method

.method private A()Landroid/content/Context;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 666
    invoke-virtual {p0}, Lawu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 667
    if-nez v0, :cond_0

    move-object v0, v1

    .line 674
    :goto_0
    return-object v0

    .line 671
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 672
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 674
    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)F
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 682
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lawu;->f:Lawr;

    invoke-virtual {v1}, Lawr;->c()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 683
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lawu;->f:Lawr;

    invoke-virtual {v2}, Lawr;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 684
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lawu;)Lbeb;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lawu;->q:Lbeb;

    return-object v0
.end method

.method static synthetic a(Lawu;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lawu;->d(Z)V

    return-void
.end method

.method static synthetic b(Lawu;)Lbet;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lawu;->g:Lbet;

    return-object v0
.end method

.method static synthetic b(Lawu;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lawu;->e(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 286
    new-instance v0, Laxb;

    invoke-direct {v0, p1, p2, p3}, Laxb;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 287
    if-nez p3, :cond_0

    iget-object v1, p0, Lawu;->j:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lawu;->j:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 293
    :goto_0
    iget-object v0, p0, Lawu;->q:Lbeb;

    if-nez v0, :cond_1

    .line 298
    :goto_1
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lawu;->j:Ljava/util/Set;

    new-instance v1, Laxb;

    invoke-direct {v1, p1, p2, p3}, Laxb;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lawu;->q:Lbeb;

    invoke-virtual {v0, p1, p2, p3}, Lbeb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lawu;->q:Lbeb;

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lawu;->k:Ljava/util/ArrayList;

    new-instance v1, Laww;

    invoke-direct {v1, p0, p1}, Laww;-><init>(Lawu;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    if-eqz p1, :cond_1

    .line 386
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0}, Lbet;->start()V

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0}, Lbet;->resume()V

    goto :goto_0
.end method

.method private e(Z)V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lawu;->q:Lbeb;

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lawu;->k:Ljava/util/ArrayList;

    new-instance v1, Lawy;

    invoke-direct {v1, p0, p1}, Lawy;-><init>(Lawu;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0}, Lbet;->c()F

    move-result v0

    .line 432
    iget-object v1, p0, Lawu;->g:Lbet;

    invoke-virtual {v1}, Lbet;->reverse()V

    .line 433
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lawu;->o()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 434
    :cond_1
    iget-object v0, p0, Lawu;->g:Lbet;

    iget-object v1, p0, Lawu;->g:Lbet;

    invoke-virtual {v1}, Lbet;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Lbet;->a(F)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v1, p0, Lawu;->g:Lbet;

    invoke-virtual {v1, v0}, Lbet;->a(F)V

    goto :goto_0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 199
    new-instance v0, Lbeb;

    iget-object v1, p0, Lawu;->f:Lawr;

    .line 200
    invoke-static {v1}, Lbeg;->a(Lawr;)Lbee;

    move-result-object v1

    iget-object v2, p0, Lawu;->f:Lawr;

    invoke-virtual {v2}, Lawr;->j()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lawu;->f:Lawr;

    invoke-direct {v0, p0, v1, v2, v3}, Lbeb;-><init>(Lawu;Lbee;Ljava/util/List;Lawr;)V

    iput-object v0, p0, Lawu;->q:Lbeb;

    .line 201
    return-void
.end method

.method private v()V
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lawu;->q:Lbeb;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lawu;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    .line 209
    iget-object v2, p0, Lawu;->q:Lbeb;

    iget-object v3, v0, Laxb;->a:Ljava/lang/String;

    iget-object v4, v0, Laxb;->b:Ljava/lang/String;

    iget-object v0, v0, Laxb;->c:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3, v4, v0}, Lbeb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0}, Lawu;->e()V

    .line 215
    iput-object v0, p0, Lawu;->q:Lbeb;

    .line 216
    iput-object v0, p0, Lawu;->l:Lazu;

    .line 217
    invoke-virtual {p0}, Lawu;->invalidateSelf()V

    .line 218
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 561
    iget-object v0, p0, Lawu;->f:Lawr;

    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p0}, Lawu;->r()F

    move-result v0

    .line 565
    iget-object v1, p0, Lawu;->f:Lawr;

    invoke-virtual {v1}, Lawr;->c()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lawu;->f:Lawr;

    .line 566
    invoke-virtual {v2}, Lawr;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 565
    invoke-virtual {p0, v3, v3, v1, v0}, Lawu;->setBounds(IIII)V

    goto :goto_0
.end method

.method private y()Lazu;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 626
    invoke-virtual {p0}, Lawu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 641
    :goto_0
    return-object v0

    .line 631
    :cond_0
    iget-object v1, p0, Lawu;->l:Lazu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lawu;->l:Lazu;

    invoke-direct {p0}, Lawu;->A()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lazu;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    iget-object v1, p0, Lawu;->l:Lazu;

    invoke-virtual {v1}, Lazu;->a()V

    .line 633
    iput-object v0, p0, Lawu;->l:Lazu;

    .line 636
    :cond_1
    iget-object v0, p0, Lawu;->l:Lazu;

    if-nez v0, :cond_2

    .line 637
    new-instance v0, Lazu;

    invoke-virtual {p0}, Lawu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lawu;->m:Ljava/lang/String;

    iget-object v3, p0, Lawu;->n:Lawl;

    iget-object v4, p0, Lawu;->f:Lawr;

    .line 638
    invoke-virtual {v4}, Lawr;->n()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lazu;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lawl;Ljava/util/Map;)V

    iput-object v0, p0, Lawu;->l:Lazu;

    .line 641
    :cond_2
    iget-object v0, p0, Lawu;->l:Lazu;

    goto :goto_0
.end method

.method private z()Lazt;
    .locals 3

    .prologue
    .line 653
    invoke-virtual {p0}, Lawu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 655
    const/4 v0, 0x0

    .line 662
    :goto_0
    return-object v0

    .line 658
    :cond_0
    iget-object v0, p0, Lawu;->o:Lazt;

    if-nez v0, :cond_1

    .line 659
    new-instance v0, Lazt;

    invoke-virtual {p0}, Lawu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lawu;->a:Lawk;

    invoke-direct {v0, v1, v2}, Lazt;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lawk;)V

    iput-object v0, p0, Lawu;->o:Lazt;

    .line 662
    :cond_1
    iget-object v0, p0, Lawu;->o:Lazt;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 606
    invoke-direct {p0}, Lawu;->y()Lazu;

    move-result-object v0

    .line 607
    if-nez v0, :cond_0

    .line 608
    const-string v0, "LOTTIE"

    const-string v1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v0, 0x0

    .line 614
    :goto_0
    return-object v0

    .line 612
    :cond_0
    invoke-virtual {v0, p1, p2}, Lazu;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 613
    invoke-virtual {p0}, Lawu;->invalidateSelf()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 645
    invoke-direct {p0}, Lawu;->z()Lazt;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0, p1, p2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0, p1}, Lbet;->b(F)V

    .line 454
    return-void
.end method

.method public a(FF)V
    .locals 4
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
    .line 407
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0, p1, p2}, Lbet;->a(FF)V

    .line 408
    iget-object v0, p0, Lawu;->g:Lbet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lbet;->setCurrentPlayTime(J)V

    .line 409
    invoke-virtual {p0, p1}, Lawu;->d(F)V

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lawu;->d(Z)V

    .line 411
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lawu;->f:Lawr;

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lawu;->k:Ljava/util/ArrayList;

    new-instance v1, Lawz;

    invoke-direct {v1, p0, p1}, Lawz;-><init>(Lawu;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :goto_0
    return-void

    .line 449
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lawu;->f:Lawr;

    invoke-virtual {v1}, Lawr;->o()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lawu;->a(F)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lawu;->f:Lawr;

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lawu;->k:Ljava/util/ArrayList;

    new-instance v1, Lawx;

    invoke-direct {v1, p0, p1, p2}, Lawx;-><init>(Lawu;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lawu;->f:Lawr;

    invoke-virtual {v1}, Lawr;->o()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget-object v2, p0, Lawu;->f:Lawr;

    .line 402
    invoke-virtual {v2}, Lawr;->o()F

    move-result v2

    div-float/2addr v1, v2

    .line 401
    invoke-virtual {p0, v0, v1}, Lawu;->a(FF)V

    goto :goto_0
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0, p1}, Lbet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 584
    return-void
.end method

.method public a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0, p1}, Lbet;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 576
    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, v0, v0, p1}, Lawu;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 265
    return-void
.end method

.method public a(Lawk;)V
    .locals 1

    .prologue
    .line 534
    iput-object p1, p0, Lawu;->a:Lawk;

    .line 535
    iget-object v0, p0, Lawu;->o:Lazt;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lawu;->o:Lazt;

    invoke-virtual {v0, p1}, Lazt;->a(Lawk;)V

    .line 538
    :cond_0
    return-void
.end method

.method public a(Lawl;)V
    .locals 1

    .prologue
    .line 523
    iput-object p1, p0, Lawu;->n:Lawl;

    .line 524
    iget-object v0, p0, Lawu;->l:Lazu;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lawu;->l:Lazu;

    invoke-virtual {v0, p1}, Lazu;->a(Lawl;)V

    .line 527
    :cond_0
    return-void
.end method

.method public a(Laxy;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lawu;->b:Laxy;

    .line 542
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    iput-object p1, p0, Lawu;->m:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p2    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lawu;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 257
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    invoke-direct {p0, p1, p2, p3}, Lawu;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 248
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 108
    sget-object v0, Lawu;->c:Ljava/lang/String;

    const-string v1, "Merge paths are not supported pre-Kit Kat."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iput-boolean p1, p0, Lawu;->p:Z

    .line 112
    iget-object v0, p0, Lawu;->f:Lawr;

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lawu;->u()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lawu;->q:Lbeb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawu;->q:Lbeb;

    invoke-virtual {v0}, Lbeb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lawr;)Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lawu;->f:Lawr;

    if-ne v0, p1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-direct {p0}, Lawu;->w()V

    .line 160
    iput-object p1, p0, Lawu;->f:Lawr;

    .line 161
    iget v0, p0, Lawu;->h:F

    invoke-virtual {p0, v0}, Lawu;->c(F)V

    .line 162
    invoke-direct {p0}, Lawu;->x()V

    .line 163
    invoke-direct {p0}, Lawu;->u()V

    .line 164
    invoke-direct {p0}, Lawu;->v()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lawu;->k:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 169
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxc;

    .line 171
    invoke-interface {v0, p1}, Laxc;->a(Lawr;)V

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 174
    :cond_1
    iget-object v0, p0, Lawu;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-boolean v0, p0, Lawu;->s:Z

    invoke-virtual {p1, v0}, Lawr;->a(Z)V

    .line 178
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0}, Lbet;->b()V

    .line 180
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 618
    invoke-direct {p0}, Lawu;->y()Lazu;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0, p1}, Lazu;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 622
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0, p1}, Lbet;->c(F)V

    .line 470
    return-void
.end method

.method public b(FF)V
    .locals 0

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lawu;->a(F)V

    .line 479
    invoke-virtual {p0, p2}, Lawu;->b(F)V

    .line 480
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lawu;->f:Lawr;

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lawu;->k:Ljava/util/ArrayList;

    new-instance v1, Laxa;

    invoke-direct {v1, p0, p1}, Laxa;-><init>(Lawu;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lawu;->f:Lawr;

    invoke-virtual {v1}, Lawr;->o()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lawu;->b(F)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 0

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lawu;->a(I)V

    .line 474
    invoke-virtual {p0, p2}, Lawu;->b(I)V

    .line 475
    return-void
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0, p1}, Lbet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 588
    return-void
.end method

.method public b(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0, p1}, Lbet;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 580
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 184
    iput-boolean p1, p0, Lawu;->s:Z

    .line 185
    iget-object v0, p0, Lawu;->f:Lawr;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lawu;->f:Lawr;

    invoke-virtual {v0, p1}, Lawr;->a(Z)V

    .line 188
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lawu;->q:Lbeb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawu;->q:Lbeb;

    invoke-virtual {v0}, Lbeb;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(F)V
    .locals 4

    .prologue
    .line 483
    iput p1, p0, Lawu;->h:F

    .line 484
    iget-object v1, p0, Lawu;->g:Lbet;

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lbet;->a(Z)V

    .line 486
    iget-object v0, p0, Lawu;->f:Lawr;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lawu;->g:Lbet;

    iget-object v1, p0, Lawu;->f:Lawr;

    invoke-virtual {v1}, Lawr;->d()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lbet;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 489
    :cond_0
    return-void

    .line 484
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 351
    iget-object v1, p0, Lawu;->g:Lbet;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lbet;->setRepeatCount(I)V

    .line 352
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lawu;->p:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lawu;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 492
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0, p1}, Lbet;->a(F)V

    .line 493
    iget-object v0, p0, Lawu;->q:Lbeb;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lawu;->q:Lbeb;

    invoke-virtual {v0, p1}, Lbeb;->a(F)V

    .line 496
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 305
    const-string v1, "Drawable#draw"

    invoke-static {v1}, Lawm;->a(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lawu;->q:Lbeb;

    if-nez v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 309
    :cond_0
    iget v2, p0, Lawu;->i:F

    .line 310
    const/high16 v1, 0x3f800000    # 1.0f

    .line 312
    invoke-direct {p0, p1}, Lawu;->a(Landroid/graphics/Canvas;)F

    move-result v3

    .line 313
    iget-object v4, p0, Lawu;->q:Lbeb;

    invoke-virtual {v4}, Lbeb;->g()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lawu;->q:Lbeb;

    invoke-virtual {v4}, Lbeb;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    :cond_1
    div-float v1, v2, v3

    .line 318
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 320
    const v3, 0x3f8020c5    # 1.001f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const/4 v0, 0x1

    .line 323
    :cond_2
    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 330
    mul-float/2addr v1, v1

    .line 331
    iget-object v3, p0, Lawu;->f:Lawr;

    invoke-virtual {v3}, Lawr;->c()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 332
    iget-object v4, p0, Lawu;->f:Lawr;

    invoke-virtual {v4}, Lawr;->c()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 333
    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 336
    :cond_3
    iget-object v1, p0, Lawu;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 337
    iget-object v1, p0, Lawu;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 338
    iget-object v1, p0, Lawu;->q:Lbeb;

    iget-object v2, p0, Lawu;->e:Landroid/graphics/Matrix;

    iget v3, p0, Lawu;->r:I

    invoke-virtual {v1, p1, v2, v3}, Lbeb;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 339
    if-eqz v0, :cond_4

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 342
    :cond_4
    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lawu;->l:Lazu;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lawu;->l:Lazu;

    invoke-virtual {v0}, Lazu;->a()V

    .line 149
    :cond_0
    return-void
.end method

.method public e(F)V
    .locals 0

    .prologue
    .line 512
    iput p1, p0, Lawu;->i:F

    .line 513
    invoke-direct {p0}, Lawu;->x()V

    .line 514
    return-void
.end method

.method public f()Laxh;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lawu;->f:Lawr;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lawu;->f:Lawr;

    invoke-virtual {v0}, Lawr;->b()Laxh;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lawu;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 272
    invoke-direct {p0, v1, v1, v1}, Lawu;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 273
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lawu;->r:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lawu;->f:Lawr;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lawu;->f:Lawr;

    invoke-virtual {v0}, Lawr;->c()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lawu;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lawu;->f:Lawr;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lawu;->f:Lawr;

    invoke-virtual {v0}, Lawr;->c()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lawu;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, -0x3

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawu;->d:Z

    .line 347
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0}, Lbet;->a()V

    .line 348
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0}, Lbet;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 692
    invoke-virtual {p0}, Lawu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 693
    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 696
    :cond_0
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lawu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0}, Lbet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lawu;->d(Z)V

    .line 364
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lawu;->g:Lbet;

    .line 372
    invoke-virtual {v0}, Lbet;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lawu;->g:Lbet;

    invoke-virtual {v1}, Lbet;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lawu;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 371
    :goto_0
    invoke-direct {p0, v0}, Lawu;->d(Z)V

    .line 374
    return-void

    .line 372
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lawu;->e(Z)V

    .line 415
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lawu;->o()F

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lawu;->e(Z)V

    .line 420
    return-void
.end method

.method public o()F
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0}, Lbet;->c()F

    move-result v0

    return v0
.end method

.method public p()Laxy;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lawu;->b:Laxy;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lawu;->b:Laxy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lawu;->f:Lawr;

    invoke-virtual {v0}, Lawr;->k()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()F
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lawu;->i:F

    return v0
.end method

.method public s()Lawr;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lawu;->f:Lawr;

    return-object v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 700
    invoke-virtual {p0}, Lawu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 701
    if-nez v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 228
    iput p1, p0, Lawu;->r:I

    .line 229
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use addColorFilter instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lawu;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 571
    iget-object v0, p0, Lawu;->g:Lbet;

    invoke-virtual {v0}, Lbet;->cancel()V

    .line 572
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 708
    invoke-virtual {p0}, Lawu;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 709
    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
