.class Llop;
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
    .line 329
    iput-object p1, p0, Llop;->a:Lloi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Llop;->a:Lloi;

    invoke-static {v0}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Possibilidades_Acao"

    const-string v1, "BotaoMenos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    :goto_0
    iget-object v0, p0, Llop;->a:Lloi;

    invoke-static {v0}, Lloi;->f(Lloi;)V

    .line 340
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Llop;->a:Lloi;

    invoke-static {v0}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "Seguros_Contratacao_AP_Proposta_Possibilidades_Acao"

    const-string v1, "BotaoMenos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
