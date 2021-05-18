.class public Lhjy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lhjy;->b:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    iput-object p2, p0, Lhjy;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lhjy;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 301
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhjy;->b:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->f(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lhjy;->b:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->f(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method
