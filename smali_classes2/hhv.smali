.class public Lhhv;
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
    .line 76
    iput-object p1, p0, Lhhv;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    const-string v0, "CreditoFinanciamento_Antecipar13_CET_Acao"

    const-string v1, "Contratar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lhhv;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;)V

    .line 83
    iget-object v0, p0, Lhhv;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;->b(Lcom/santander/app/emprestimo/antecipacaoDT/activity/CustoEfetivoTotalAntecipacaoDTActivity;)V

    .line 84
    return-void
.end method
