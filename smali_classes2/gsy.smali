.class public Lgsy;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/cardLayout/CardLayout;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lgsy;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 83
    const-string v0, "CardLayout"

    const-string v1, "cardViewSwipeLeftAnimatorListenerAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lgsy;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-static {v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b(Lcom/santander/app/components/view/cardLayout/CardLayout;)Lgsz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lgsy;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-static {v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b(Lcom/santander/app/components/view/cardLayout/CardLayout;)Lgsz;

    move-result-object v0

    iget-object v1, p0, Lgsy;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-static {v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->c(Lcom/santander/app/components/view/cardLayout/CardLayout;)Lgta;

    move-result-object v1

    invoke-interface {v0, v1}, Lgsz;->a(Lgta;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lgsy;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    iget-object v1, p0, Lgsy;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-static {v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->c(Lcom/santander/app/components/view/cardLayout/CardLayout;)Lgta;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b(Lgta;)Z

    .line 89
    return-void
.end method
