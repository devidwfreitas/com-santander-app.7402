.class Lawv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lawu;


# direct methods
.method constructor <init>(Lawu;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lawv;->a:Lawu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lawv;->a:Lawu;

    invoke-static {v0}, Lawu;->a(Lawu;)Lbeb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lawv;->a:Lawu;

    invoke-static {v0}, Lawu;->a(Lawu;)Lbeb;

    move-result-object v0

    iget-object v1, p0, Lawv;->a:Lawu;

    invoke-static {v1}, Lawu;->b(Lawu;)Lbet;

    move-result-object v1

    invoke-virtual {v1}, Lbet;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lbeb;->a(F)V

    .line 77
    :cond_0
    return-void
.end method
