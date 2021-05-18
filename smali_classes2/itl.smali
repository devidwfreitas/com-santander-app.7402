.class Litl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Litg;


# direct methods
.method constructor <init>(Litg;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Litl;->a:Litg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Litl;->a:Litg;

    iget-object v0, p0, Litl;->a:Litg;

    invoke-static {v0}, Litg;->a(Litg;)Litc;

    move-result-object v0

    invoke-interface {v0}, Litc;->l()I

    move-result v0

    iget-object v2, p0, Litl;->a:Litg;

    invoke-static {v2}, Litg;->a(Litg;)Litc;

    move-result-object v2

    invoke-interface {v2}, Litc;->j()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Litg;->a(Litg;Z)Z

    .line 488
    return-void

    .line 487
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 482
    return-void
.end method
