.class public Lhdu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lhdu;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lhdu;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->s(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lhdu;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Dia_Acao"

    :goto_0
    iget-object v1, p0, Lhdu;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 809
    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->h(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lhdu;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->h(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_0
    iget-object v0, p0, Lhdu;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Z)Z

    .line 812
    return-void

    .line 807
    :cond_1
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_Dia_Acao"

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 817
    return-void
.end method
