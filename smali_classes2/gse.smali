.class final Lgse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# instance fields
.field final synthetic a:Lgsf;


# direct methods
.method constructor <init>(Lgsf;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lgse;->a:Lgsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lgse;->a:Lgsf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgse;->a:Lgsf;

    invoke-interface {v0, p1}, Lgsf;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 140
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lgse;->a:Lgsf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgse;->a:Lgsf;

    invoke-interface {v0, p1}, Lgsf;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 132
    :cond_1
    return-void
.end method
