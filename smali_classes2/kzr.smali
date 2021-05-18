.class final Lkzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lkzs;


# direct methods
.method constructor <init>(Lkzs;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lkzr;->a:Lkzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lkzr;->a:Lkzs;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lkzr;->a:Lkzs;

    invoke-interface {v0}, Lkzs;->a()V

    .line 69
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
