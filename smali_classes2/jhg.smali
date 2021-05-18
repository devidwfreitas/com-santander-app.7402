.class public Ljhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Ljhg;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 264
    const-string v0, "Investimentos_Fundos_Acao"

    const-string v1, "Perfil"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Ljhg;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ljhg;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->d(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 267
    iget-object v0, p0, Ljhg;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    iget-object v1, p0, Ljhg;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->e(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method
