.class Llok;
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
    .line 215
    iput-object p1, p0, Llok;->a:Lloi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Llok;->a:Lloi;

    invoke-static {v0}, Lloi;->d(Lloi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Llok;->a:Lloi;

    invoke-static {v0}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    new-instance v1, Llol;

    invoke-direct {v1, p0}, Llol;-><init>(Llok;)V

    new-instance v2, Llom;

    invoke-direct {v2, p0}, Llom;-><init>(Llok;)V

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 235
    const-string v0, "Seguros_Contratacao_AP_Proposta_Possibilidades_Acao"

    const-string v1, "Avancar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "Seguros_Contratacao_AP_Proposta_Possibilidades_ValorCobertura_Acao"

    iget-object v1, p0, Llok;->a:Lloi;

    invoke-static {v1}, Lloi;->c(Lloi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Possibilidades_ValorCobertura_Acao"

    iget-object v1, p0, Llok;->a:Lloi;

    invoke-static {v1}, Lloi;->c(Lloi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Possibilidades_Acao"

    const-string v1, "Avancar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lloc;->a()Lloc;

    move-result-object v0

    .line 241
    iget-object v1, p0, Llok;->a:Lloi;

    invoke-static {v1}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-string v2, "question-tag"

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0
.end method
