.class public Lgsx;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/cardLayout/CardLayout;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/cardLayout/CardLayout;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgsx;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 68
    iget-object v0, p0, Lgsx;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-static {v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->a(Lcom/santander/app/components/view/cardLayout/CardLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "CardLayout"

    const-string v1, "cardViewSwipeRightAnimatorListenerAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lgsx;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-static {v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b(Lcom/santander/app/components/view/cardLayout/CardLayout;)Lgsz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lgsx;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-static {v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->b(Lcom/santander/app/components/view/cardLayout/CardLayout;)Lgsz;

    move-result-object v0

    iget-object v1, p0, Lgsx;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-static {v1}, Lcom/santander/app/components/view/cardLayout/CardLayout;->c(Lcom/santander/app/components/view/cardLayout/CardLayout;)Lgta;

    move-result-object v1

    invoke-interface {v0, v1}, Lgsz;->b(Lgta;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lgsx;->a:Lcom/santander/app/components/view/cardLayout/CardLayout;

    invoke-static {v0}, Lcom/santander/app/components/view/cardLayout/CardLayout;->d(Lcom/santander/app/components/view/cardLayout/CardLayout;)V

    .line 76
    :cond_1
    return-void
.end method
