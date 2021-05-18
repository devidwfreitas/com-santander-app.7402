.class public Ljgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 169
    const-string v0, "Investimentos_Fundos_Resgate_Acao"

    const-string v1, "SelecionarOutraContaFundo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    iget-object v1, v1, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v1, "lista_contas_fundo"

    iget-object v2, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v1

    iget-object v2, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v2

    invoke-virtual {v2}, Ljdx;->t()Ljdk;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljdx;->a(Ljdk;)V

    .line 174
    iget-object v1, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v1

    iget-object v2, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v2

    invoke-virtual {v2}, Ljdx;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljdx;->u(Ljava/lang/String;)V

    .line 176
    const-string v1, "Investimentos_Fundos_Resgate_Acao"

    iget-object v2, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v2

    invoke-virtual {v2}, Ljdx;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "conta_fundo_selected"

    iget-object v2, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Ljgg;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method
