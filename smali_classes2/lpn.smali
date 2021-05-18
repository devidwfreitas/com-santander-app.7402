.class Llpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lloz;


# direct methods
.method constructor <init>(Lloz;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Llpn;->a:Lloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Llpn;->a:Lloz;

    invoke-static {v0}, Lloz;->h(Lloz;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 499
    iget-object v1, p0, Llpn;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    const-string v1, "Seguros_Contratacao_Vida_Proposta_Escolha_InicioVigencia"

    const-string v2, "ddMMyyyy"

    invoke-static {v0, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "Seguros_Contratacao_Vida_Resumo_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    :goto_0
    iget-object v0, p0, Llpn;->a:Lloz;

    invoke-static {v0}, Lloz;->i(Lloz;)V

    .line 510
    :cond_1
    return-void

    .line 502
    :cond_2
    iget-object v1, p0, Llpn;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    const-string v1, "Seguros_Contratacao_AP_Proposta_Escolha_InicioVigencia"

    const-string v2, "ddMMyyyy"

    invoke-static {v0, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "Seguros_Contratacao_AP_Resumo_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
