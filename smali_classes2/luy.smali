.class Lluy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lluw;


# direct methods
.method constructor <init>(Lluw;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lluy;->a:Lluw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lluy;->a:Lluw;

    iget-object v0, v0, Lluw;->a:Llvd;

    invoke-static {v0}, Llvd;->h(Llvd;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 176
    iget-object v0, p0, Lluy;->a:Lluw;

    iget-object v0, v0, Lluw;->c:Lluv;

    invoke-static {v0}, Lluv;->c(Lluv;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lluy;->a:Lluw;

    iget-object v0, v0, Lluw;->c:Lluv;

    invoke-static {v0}, Lluv;->d(Lluv;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lluy;->a:Lluw;

    iget-object v0, v0, Lluw;->c:Lluv;

    invoke-virtual {v0}, Lluv;->notifyDataSetChanged()V

    .line 180
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lluz;

    invoke-direct {v1, p0}, Lluz;-><init>(Lluy;)V

    iget-object v2, p0, Lluy;->a:Lluw;

    iget-object v2, v2, Lluw;->c:Lluv;

    .line 187
    invoke-static {v2}, Lluv;->a(Lluv;)I

    move-result v2

    iget-object v3, p0, Lluy;->a:Lluw;

    iget-object v3, v3, Lluw;->c:Lluv;

    invoke-static {v3}, Lluv;->f(Lluv;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 180
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
