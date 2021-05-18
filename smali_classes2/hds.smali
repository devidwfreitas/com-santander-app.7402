.class public Lhds;
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
    .line 715
    iput-object p1, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 718
    iget-object v0, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Acao"

    :goto_0
    const-string v1, "SelecionarContaDestino"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->p(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdi;

    move-result-object v0

    invoke-virtual {v0}, Lhdi;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_1

    .line 723
    iget-object v0, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    .line 727
    :goto_1
    iget-object v0, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->m(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfwh;

    move-result-object v1

    iget-object v0, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 728
    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->p(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdi;

    move-result-object v0

    invoke-virtual {v0}, Lhdi;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfwh;->c(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->m(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lfwh;

    move-result-object v1

    iget-object v0, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 730
    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->p(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lhdi;

    move-result-object v0

    invoke-virtual {v0}, Lhdi;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftl;

    invoke-virtual {v0}, Lftl;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfwh;->f(Ljava/lang/String;)V

    .line 731
    new-instance v0, Lhed;

    iget-object v1, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {v0, v1}, Lhed;-><init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhed;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 732
    iget-object v0, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v1, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v1, v1, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Ljava/util/List;)V

    .line 733
    return-void

    .line 718
    :cond_0
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_Acao"

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, p0, Lhds;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0, v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->b(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    goto :goto_1
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 738
    return-void
.end method
