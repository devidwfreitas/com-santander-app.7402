.class Llpo;
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
    .line 514
    iput-object p1, p0, Llpo;->a:Lloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Llpo;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    const-string v0, "Seguros_Contratacao_Vida_Resumo_Acao"

    const-string v1, "SetaCoberturasContratadas"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llpo;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    const-string v1, "code-product-key"

    iget-object v2, p0, Llpo;->a:Lloz;

    invoke-static {v2}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->g()Lkqn;

    move-result-object v2

    invoke-virtual {v2}, Lkqn;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    iget-object v1, p0, Llpo;->a:Lloz;

    invoke-virtual {v1, v0}, Lloz;->startActivity(Landroid/content/Intent;)V

    .line 529
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Llpo;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "Seguros_Contratacao_AP_Resumo_Acao"

    const-string v1, "SetaCoberturasContratadas"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
