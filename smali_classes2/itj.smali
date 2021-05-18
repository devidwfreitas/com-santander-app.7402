.class Litj;
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
    .line 461
    iput-object p1, p0, Litj;->a:Litg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Litj;->a:Litg;

    invoke-static {v0}, Litg;->a(Litg;)Litc;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Litc;->a(F)V

    .line 465
    return-void
.end method
