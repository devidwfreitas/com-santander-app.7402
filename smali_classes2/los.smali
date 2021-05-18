.class Llos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lloi;


# direct methods
.method constructor <init>(Lloi;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Llos;->a:Lloi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Llos;->a:Lloi;

    invoke-static {v0}, Lloi;->d(Lloi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    const-string v0, "Seguros_Contratacao_AP_Proposta_Possibilidades_Acao"

    const-string v1, "ConhecaMaisProduto"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llos;->a:Lloi;

    invoke-static {v1}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    const-string v1, "code-product-key"

    iget-object v2, p0, Llos;->a:Lloi;

    invoke-static {v2}, Lloi;->i(Lloi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v1, p0, Llos;->a:Lloi;

    invoke-static {v1}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->startActivity(Landroid/content/Intent;)V

    .line 470
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Llos;->a:Lloi;

    invoke-static {v0}, Lloi;->d(Lloi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Possibilidades_Acao"

    const-string v1, "ConhecaMaisProduto"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
