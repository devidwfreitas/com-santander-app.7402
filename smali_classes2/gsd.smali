.class final Lgsd;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgsf;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lgsf;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lgsd;->a:Lgsf;

    iput-object p2, p0, Lgsd;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lgsd;->a:Lgsf;

    iget-object v1, p0, Lgsd;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lgsf;->c(Landroid/view/View;)Z

    .line 107
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lgsd;->a:Lgsf;

    iget-object v1, p0, Lgsd;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lgsf;->b(Landroid/view/View;)Z

    .line 102
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lgsd;->a:Lgsf;

    iget-object v1, p0, Lgsd;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lgsf;->a(Landroid/view/View;)Z

    .line 97
    return-void
.end method
