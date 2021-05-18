.class public Lhhw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lhhw;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lhhw;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->c(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    const-string v0, "CreditoFinanciamento_Antecipar13_CET_Acao"

    const-string v1, "Declaracao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
