.class public Lhji;
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
    .line 76
    iput-object p1, p0, Lhji;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    const-string v0, "CreditoFinanciamento_AnteciparIR_CET_Acao"

    const-string v1, "Contratar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lhji;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;)V

    .line 83
    iget-object v0, p0, Lhji;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;->b(Lcom/santander/app/emprestimo/antecipacaoIR/activity/CustoEfetivoTotalAntecipacaoIRActivity;)V

    .line 84
    return-void
.end method
