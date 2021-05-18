.class public Lhim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lhim;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 123
    const-string v0, "CreditoFinanciamento_Antecipar13_Termo_Acao"

    const-string v1, "Declaracao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lhim;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->g(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lhim;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->h(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lhim;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;->h(Lcom/santander/app/emprestimo/antecipacaoDT/activity/TermoContratacaoEmprestimoActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
