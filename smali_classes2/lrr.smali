.class public Llrr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Llrr;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iput-boolean p2, p0, Llrr;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 927
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 919
    iget-boolean v0, p0, Llrr;->a:Z

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Llrr;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->j(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 922
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 932
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 908
    iget-object v0, p0, Llrr;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->j(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 909
    iget-boolean v0, p0, Llrr;->a:Z

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Llrr;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)V

    .line 915
    :goto_0
    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Llrr;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)V

    goto :goto_0
.end method
