.class public Ljgz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Ljgz;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdx;

    .line 109
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 110
    const-string v2, "conta_fundo_selecionada"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    iget-object v1, p0, Ljgz;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->setResult(ILandroid/content/Intent;)V

    .line 112
    iget-object v0, p0, Ljgz;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;

    invoke-virtual {v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->finish()V

    .line 114
    iget-object v0, p0, Ljgz;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;

    const v1, 0x7f050014

    const v2, 0x7f050016

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/investimentos/fundos/presentation/ListagemContasFundosActivity;->overridePendingTransition(II)V

    .line 115
    return-void
.end method
