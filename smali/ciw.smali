.class public abstract Lciw;
.super Lciz;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field protected a:Landroid/animation/ObjectAnimator;

.field protected b:F

.field protected c:F

.field protected d:F


# direct methods
.method public constructor <init>(Lclh;FFLcle;Landroid/view/View;FFJ)V
    .locals 2

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lciz;-><init>(Lclh;FFLcle;Landroid/view/View;)V

    .line 27
    iput p6, p0, Lciw;->c:F

    .line 28
    iput p7, p0, Lciw;->d:F

    .line 29
    const-string v0, "phase"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    .line 30
    iget-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p8, p9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 31
    iget-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    iget-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lciw;->b:F

    .line 47
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lciw;->b:F

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lciw;->c:F

    return v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lciw;->d:F

    return v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 61
    iget-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 62
    iget-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 63
    iget-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    iget-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lciw;->a()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lciw;->a()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public run()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lciw;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 39
    return-void
.end method
