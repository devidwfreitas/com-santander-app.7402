.class public Lgsb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x96

    sput v0, Lgsb;->a:I

    .line 23
    const/16 v0, 0x190

    sput v0, Lgsb;->b:I

    .line 24
    const/16 v0, 0x320

    sput v0, Lgsb;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    sget v0, Lgsb;->a:I

    invoke-static {p0, v0}, Lgsb;->a(Landroid/view/View;I)V

    .line 48
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lgsb;->a(Landroid/view/View;ILgsf;)V

    .line 52
    return-void
.end method

.method public static a(Landroid/view/View;ILgsf;)V
    .locals 4

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 57
    const/4 v0, 0x0

    .line 59
    if-eqz p2, :cond_0

    .line 60
    new-instance v0, Lgsc;

    invoke-direct {v0, p2}, Lgsc;-><init>(Lgsf;)V

    .line 81
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 82
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    sget v0, Lgsb;->a:I

    invoke-static {p0, p1, v0}, Lgsb;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 39
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p2}, Lgsb;->a(Landroid/view/View;I)V

    .line 43
    invoke-static {p1, p2}, Lgsb;->b(Landroid/view/View;I)V

    .line 44
    return-void
.end method

.method public static a(Landroid/view/View;Lgsf;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 86
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 91
    const/4 v3, 0x0

    int-to-float v2, v2

    invoke-static {p0, v0, v1, v3, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    new-instance v1, Lgsd;

    invoke-direct {v1, p1, p0}, Lgsd;-><init>(Lgsf;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 115
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 118
    sget v0, Lgsb;->a:I

    invoke-static {p0, v0}, Lgsb;->b(Landroid/view/View;I)V

    .line 119
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lgsb;->b(Landroid/view/View;ILgsf;)V

    .line 123
    return-void
.end method

.method public static b(Landroid/view/View;ILgsf;)V
    .locals 4

    .prologue
    .line 126
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lgse;

    invoke-direct {v1, p2}, Lgse;-><init>(Lgsf;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 147
    return-void
.end method
