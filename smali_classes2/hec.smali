.class public Lhec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnfd;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Acao"

    :goto_0
    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->r(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfuu;

    move-result-object v1

    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->o(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdg;

    move-result-object v0

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAutorizado()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfuu;->setAutorizado(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->r(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfuu;

    move-result-object v1

    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->o(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdg;

    move-result-object v0

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCpf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfuu;->setCpf(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->r(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfuu;

    move-result-object v1

    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->o(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdg;

    move-result-object v0

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfuu;->setAgencia(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->r(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfuu;

    move-result-object v1

    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->o(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdg;

    move-result-object v0

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfuu;->setCuenta(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->r(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfuu;

    move-result-object v1

    iget-object v0, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->o(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdg;

    move-result-object v0

    invoke-virtual {v0}, Lhdg;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getBanco()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfuu;->setBanco(Ljava/lang/String;)V

    .line 679
    new-instance v0, Lhed;

    iget-object v1, p0, Lhec;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {v0, v1}, Lhed;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhed;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 680
    return-void

    .line 670
    :cond_0
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_Acao"

    goto/16 :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 685
    return-void
.end method
