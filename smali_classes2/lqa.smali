.class public Llqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Llqa;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 4

    .prologue
    .line 721
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 722
    iget-object v0, p0, Llqa;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    if-eqz p1, :cond_0

    .line 725
    iget-object v0, p0, Llqa;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 726
    const-string v0, "Seguros_Sinistro_Acionar_Documentacao_Acao"

    const-string v1, "ConfimacaoPagamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sget-object v0, Lmge;->INSTANCE:Lmge;

    iget-object v1, p0, Llqa;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->k(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lkum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmge;->setBankData(Lkum;)V

    .line 728
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llqb;

    invoke-direct {v1, p0}, Llqb;-><init>(Llqa;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    iget-object v0, p0, Llqa;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->finish()V

    goto :goto_0

    .line 738
    :cond_2
    iget-object v0, p0, Llqa;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Llqa;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 741
    iget-object v1, p0, Llqa;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Llqa;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090362

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 718
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llqa;->a(Lis;)V

    return-void
.end method
