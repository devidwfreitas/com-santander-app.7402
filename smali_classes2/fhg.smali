.class public Lfhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgwb;


# instance fields
.field final synthetic a:Lcom/santander/app/ContaMovementActivity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/santander/app/ContaMovementActivity;Z)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-boolean p2, p0, Lfhg;->b:Z

    .line 572
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->l(Lcom/santander/app/ContaMovementActivity;)V

    .line 596
    iget-object v0, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->m(Lcom/santander/app/ContaMovementActivity;)Lcom/santander/app/ContaMovementActivity;

    move-result-object v0

    iget-object v1, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-virtual {v1}, Lcom/santander/app/ContaMovementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 597
    return-void
.end method

.method public a(Lcom/santander/app/contacorrente/domain/ExtratoContract;)V
    .locals 3

    .prologue
    .line 576
    invoke-interface {p1}, Lcom/santander/app/contacorrente/domain/ExtratoContract;->getLancamentoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->l(Lcom/santander/app/ContaMovementActivity;)V

    .line 578
    iget-object v0, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->m(Lcom/santander/app/ContaMovementActivity;)Lcom/santander/app/ContaMovementActivity;

    move-result-object v0

    iget-object v1, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-virtual {v1}, Lcom/santander/app/ContaMovementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09038f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 579
    iget-boolean v0, p0, Lfhg;->b:Z

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->n(Lcom/santander/app/ContaMovementActivity;)V

    .line 590
    :cond_0
    :goto_0
    iget-object v0, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->l(Lcom/santander/app/ContaMovementActivity;)V

    .line 591
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0, p1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Lcom/santander/app/contacorrente/domain/ExtratoContract;)Lcom/santander/app/contacorrente/domain/ExtratoContract;

    .line 584
    iget-object v0, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    iget-boolean v1, p0, Lfhg;->b:Z

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Z)V

    .line 586
    instance-of v0, p1, Lfuy;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lfhg;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->o(Lcom/santander/app/ContaMovementActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    check-cast p1, Lfuy;

    invoke-virtual {v0, p1}, Lcom/santander/app/contacorrente/domain/Conta;->setExtracto(Lfuy;)V

    goto :goto_0
.end method
