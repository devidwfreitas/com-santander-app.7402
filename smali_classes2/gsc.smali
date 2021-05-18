.class final Lgsc;
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
    .line 60
    iput-object p1, p0, Lgsc;->a:Lgsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lgsc;->a:Lgsf;

    invoke-interface {v0, p1}, Lgsf;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lgsc;->a:Lgsf;

    invoke-interface {v0, p1}, Lgsf;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 66
    :cond_0
    return-void
.end method
