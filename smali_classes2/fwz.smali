.class public final Lfwz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4a6

    .line 20
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 23
    return-void
.end method

.method static a(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lfwz;->a(Lcom/airbnb/lottie/LottieAnimationView;J)V

    .line 27
    return-void
.end method

.method static a(Lcom/airbnb/lottie/LottieAnimationView;J)V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 32
    new-instance v1, Lfxa;

    invoke-direct {v1, p0}, Lfxa;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 39
    return-void

    .line 30
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static b(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lfwz;->b(Lcom/airbnb/lottie/LottieAnimationView;J)V

    .line 43
    return-void
.end method

.method static b(Lcom/airbnb/lottie/LottieAnimationView;J)V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 48
    new-instance v1, Lfxb;

    invoke-direct {v1, p0}, Lfxb;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 55
    return-void

    .line 46
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static c(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->i()V

    .line 59
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lfwz;->b(Lcom/airbnb/lottie/LottieAnimationView;J)V

    .line 60
    return-void
.end method
