.class public Lmbv;
.super Lmby;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/santander/app/seguros/ui/widgets/FlipLayout;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lmbv;->b:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    iput-object p4, p0, Lmbv;->a:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 166
    invoke-super {p0, p1}, Lmby;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 167
    iget-object v0, p0, Lmbv;->b:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    iget-object v1, p0, Lmbv;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    .line 168
    iget-object v0, p0, Lmbv;->b:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->n:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lmbv;->b:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    iget v1, v1, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->i:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lmbv;->b:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    iget-object v1, v1, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->k:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmby;

    iget-object v2, p0, Lmbv;->b:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    iget-object v3, p0, Lmbv;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lmby;-><init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 169
    return-void
.end method
