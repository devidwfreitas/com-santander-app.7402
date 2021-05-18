.class public Ljgu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Ljgu;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdx;

    .line 168
    invoke-static {}, Lmzr;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v0, p0, Ljgu;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-virtual {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Ljgu;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-virtual {v0}, Ljdx;->t()Ljdk;

    move-result-object v1

    sget-object v2, Ljdk;->CANCELAR:Ljdk;

    if-eq v1, v2, :cond_0

    .line 173
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ljgu;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    iget-object v2, v2, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->i:Landroid/app/Activity;

    const-class v3, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v2, "fundos_detalhes"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Ljgu;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 178
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v1, Lgth;

    iget-object v2, p0, Ljgu;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-virtual {v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->getResources()Landroid/content/res/Resources;

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

    .line 180
    new-instance v1, Lgth;

    iget-object v2, p0, Ljgu;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-virtual {v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->getResources()Landroid/content/res/Resources;

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

    .line 181
    iget-object v1, p0, Ljgu;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)Lgtg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgtg;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
