.class public Ljfv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Ljfv;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljfv;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    iget-object v1, v1, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    const-string v1, "fundos_confirmacao"

    iget-object v2, p0, Ljfv;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Ljdx;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Ljfv;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
