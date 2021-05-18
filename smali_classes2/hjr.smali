.class public Lhjr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lhjr;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 88
    const-string v0, "CreditoFinanciamento_AnteciparIR_Acao"

    const-string v1, "InformativoParcelas"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lhjr;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lhjr;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;

    invoke-virtual {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a9b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhjr;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;

    invoke-virtual {v2}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a58

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    .line 90
    return-void
.end method
