.class public Lfhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/ContaMovementActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/ContaMovementActivity;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lfhf;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 624
    iget-object v0, p0, Lfhf;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->p(Lcom/santander/app/ContaMovementActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfhf;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->q(Lcom/santander/app/ContaMovementActivity;)Lcom/santander/app/contacorrente/domain/ExtratoContract;

    move-result-object v0

    if-nez v0, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 627
    if-lt p3, v0, :cond_0

    iget-object v0, p0, Lfhf;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->q(Lcom/santander/app/ContaMovementActivity;)Lcom/santander/app/contacorrente/domain/ExtratoContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/santander/app/contacorrente/domain/ExtratoContract;->hasMorePages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lfhf;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0, v2}, Lcom/santander/app/ContaMovementActivity;->b(Lcom/santander/app/ContaMovementActivity;Z)V

    goto :goto_0
.end method
