.class public Lhij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso2Activity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lhij;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    const-string v0, "CreditoFinanciamento_Antecipar13_Acao"

    const-string v1, "NovaSimulacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lhij;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso2Activity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso2Activity;->onBackPressed()V

    .line 96
    return-void
.end method
