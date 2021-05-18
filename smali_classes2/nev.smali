.class public Lnev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/santander/app/widget/BottomExapandableView;


# direct methods
.method public constructor <init>(Lcom/santander/app/widget/BottomExapandableView;Z)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lnev;->b:Lcom/santander/app/widget/BottomExapandableView;

    iput-boolean p2, p0, Lnev;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lnev;->a:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lnev;->b:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->c(Lcom/santander/app/widget/BottomExapandableView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lnev;->b:Lcom/santander/app/widget/BottomExapandableView;

    invoke-static {v0}, Lcom/santander/app/widget/BottomExapandableView;->c(Lcom/santander/app/widget/BottomExapandableView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    return-void
.end method
