.class Litk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Litg;


# direct methods
.method constructor <init>(Litg;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Litk;->a:Litg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Litk;->a:Litg;

    invoke-static {v0}, Litg;->a(Litg;)Litc;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Litc;->f(I)V

    .line 477
    return-void
.end method
