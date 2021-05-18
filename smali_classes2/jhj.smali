.class public Ljhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljie;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljdl;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    new-instance v1, Lgth;

    invoke-virtual {p1}, Ljdl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, 0x10

    invoke-direct {v1, v2, v3, v4, v5}, Lgth;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v1, Lgth;

    invoke-virtual {p1}, Ljdl;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, 0xe

    invoke-direct {v1, v2, v3, v4, v5}, Lgth;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->g(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Lgtg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgtg;->a(Ljava/util/ArrayList;)V

    .line 380
    return-void
.end method

.method public a(Ljdx;)V
    .locals 3

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->d(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    const-string v1, "fundos_detalhes"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 387
    const-string v1, "perfil_n_cadastrado"

    iget-object v2, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->h(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    iget-object v1, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method public b(Ljdl;)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public b(Ljdx;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 398
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-virtual {v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->c()V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->h(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    invoke-virtual {p1}, Ljdx;->t()Ljdk;

    move-result-object v0

    sget-object v1, Ljdk;->CANCELAR:Ljdk;

    if-eq v0, v1, :cond_0

    .line 403
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->d(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    const-string v1, "fundos_detalhes"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 405
    iget-object v1, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 408
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance v1, Lgth;

    iget-object v2, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-virtual {v2}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a95

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, 0x10

    invoke-direct {v1, v2, v3, v4, v5}, Lgth;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Lgth;

    iget-object v2, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-virtual {v2}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09036e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, 0xe

    invoke-direct {v1, v2, v3, v4, v5}, Lgth;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v1, p0, Ljhj;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->g(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Lgtg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgtg;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
