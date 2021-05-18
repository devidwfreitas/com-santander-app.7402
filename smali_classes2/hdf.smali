.class public Lhdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPConfirmacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lhdf;->a:Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lhdf;->a:Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->a(Lcom/santander/app/dpp/DPPConfirmacaoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Confirmacao_Acao"

    :goto_0
    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhdf;->a:Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/dpp/DPPValidacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    const-string v2, "dpp"

    iget-object v3, p0, Lhdf;->a:Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->b(Lcom/santander/app/dpp/DPPConfirmacaoActivity;)Lheq;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 104
    const-string v2, "opcao"

    iget-object v3, p0, Lhdf;->a:Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->c(Lcom/santander/app/dpp/DPPConfirmacaoActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string v2, "isProprioCliente"

    iget-object v3, p0, Lhdf;->a:Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->a(Lcom/santander/app/dpp/DPPConfirmacaoActivity;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lhdf;->a:Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/dpp/DPPConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void

    .line 96
    :cond_0
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_Confirmacao_Acao"

    goto :goto_0
.end method
