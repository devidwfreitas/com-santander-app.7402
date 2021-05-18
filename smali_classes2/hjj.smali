.class public Lhjj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lhjj;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 91
    const-string v0, "CreditoFinanciamento_AnteciparIR_CET_Acao"

    const-string v1, "Declaracao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lhjj;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->c(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    return-void
.end method
