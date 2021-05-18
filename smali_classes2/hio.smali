.class public Lhio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lhio;->b:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    iput-object p2, p0, Lhio;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lhio;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 323
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhio;->b:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->f(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    iget-object v1, p0, Lhio;->b:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->f(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 325
    return-void
.end method
