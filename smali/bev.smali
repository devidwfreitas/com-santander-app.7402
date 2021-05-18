.class Lbev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lbet;


# direct methods
.method constructor <init>(Lbet;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lbev;->a:Lbet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lbev;->a:Lbet;

    invoke-static {v0}, Lbet;->c(Lbet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v1, p0, Lbev;->a:Lbet;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lbet;->a(Lbet;F)F

    .line 45
    :cond_0
    return-void
.end method
