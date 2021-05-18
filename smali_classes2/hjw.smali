.class public Lhjw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lhjw;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 121
    const-string v0, "CreditoFinanciamento_AnteciparIR_Termo_Acao"

    const-string v1, "Declaracao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lhjw;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->g(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lhjw;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->h(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lhjw;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;->h(Lcom/santander/app/emprestimo/antecipacaoIR/activity/TermoContratacaoEmprestimoAntecipacaoIRActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
