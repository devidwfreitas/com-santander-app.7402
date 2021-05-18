.class Llmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llmi;


# direct methods
.method constructor <init>(Llmi;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Llmp;->a:Llmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Llmp;->a:Llmi;

    invoke-static {v0}, Llmi;->h(Llmi;)Llmr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Llmp;->a:Llmi;

    invoke-virtual {v0}, Llmi;->dismiss()V

    .line 299
    iget-object v0, p0, Llmp;->a:Llmi;

    invoke-static {v0}, Llmi;->b(Llmi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    const-string v0, "Seguros_Contratacao_Vida_Beneficiarios_Acao"

    const-string v1, "Excluir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    iget-object v0, p0, Llmp;->a:Llmi;

    invoke-static {v0}, Llmi;->h(Llmi;)Llmr;

    move-result-object v0

    invoke-interface {v0}, Llmr;->a()V

    .line 308
    :cond_1
    return-void

    .line 302
    :cond_2
    iget-object v0, p0, Llmp;->a:Llmi;

    invoke-static {v0}, Llmi;->b(Llmi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "Seguros_Contratacao_AP_Beneficiarios_Acao"

    const-string v1, "Excluir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
