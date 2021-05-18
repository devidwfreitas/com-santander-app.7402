.class Llnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llnt;


# direct methods
.method constructor <init>(Llnt;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Llnz;->a:Llnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Llnz;->a:Llnt;

    invoke-static {v0}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const-string v0, "Seguros_Contratacao_AP_Proposta_Acao"

    const-string v1, "ConhecaMaisProduto"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llnz;->a:Llnt;

    invoke-static {v1}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    iget-object v1, p0, Llnz;->a:Llnt;

    invoke-static {v1}, Llnt;->f(Llnt;)Ljava/lang/String;

    .line 384
    const-string v1, "code-product-key"

    iget-object v2, p0, Llnz;->a:Llnt;

    invoke-static {v2}, Llnt;->f(Llnt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Llnz;->a:Llnt;

    invoke-static {v1}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    iget-object v2, p0, Llnz;->a:Llnt;

    invoke-static {v2}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 386
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Llnz;->a:Llnt;

    invoke-static {v0}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Acao"

    const-string v1, "ConhecaMaisProduto"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
