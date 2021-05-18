.class Llnw;
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
    .line 338
    iput-object p1, p0, Llnw;->a:Llnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Llnw;->a:Llnt;

    invoke-static {v0}, Llnt;->b(Llnt;)V

    .line 342
    iget-object v0, p0, Llnw;->a:Llnt;

    invoke-static {v0}, Llnt;->c(Llnt;)V

    .line 343
    iget-object v0, p0, Llnw;->a:Llnt;

    invoke-static {v0}, Llnt;->d(Llnt;)V

    .line 344
    iget-object v0, p0, Llnw;->a:Llnt;

    invoke-static {v0}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "Seguros_Contratacao_AP_Proposta_Acao"

    const-string v1, "Avancar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Llnw;->a:Llnt;

    invoke-static {v0}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    new-instance v1, Llnx;

    invoke-direct {v1, p0}, Llnx;-><init>(Llnw;)V

    new-instance v2, Llny;

    invoke-direct {v2, p0}, Llny;-><init>(Llnw;)V

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 369
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Llnw;->a:Llnt;

    invoke-static {v0}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Acao"

    const-string v1, "Avancar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_1
    invoke-static {}, Lloc;->a()Lloc;

    move-result-object v0

    .line 367
    iget-object v1, p0, Llnw;->a:Llnt;

    invoke-static {v1}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-string v2, "question-tag"

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0
.end method
