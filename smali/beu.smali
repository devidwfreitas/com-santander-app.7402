.class Lbeu;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbet;


# direct methods
.method constructor <init>(Lbet;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lbeu;->a:Lbet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lbeu;->a:Lbet;

    iget-object v1, p0, Lbeu;->a:Lbet;

    invoke-static {v1}, Lbet;->a(Lbet;)F

    move-result v1

    iget-object v2, p0, Lbeu;->a:Lbet;

    invoke-static {v2}, Lbet;->b(Lbet;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbet;->a(FF)V

    .line 35
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lbeu;->a:Lbet;

    iget-object v1, p0, Lbeu;->a:Lbet;

    invoke-static {v1}, Lbet;->a(Lbet;)F

    move-result v1

    iget-object v2, p0, Lbeu;->a:Lbet;

    invoke-static {v2}, Lbet;->b(Lbet;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbet;->a(FF)V

    .line 31
    return-void
.end method
