.class public Ljgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Ljgo;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Ljgo;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v0

    invoke-virtual {v0}, Ljdx;->t()Ljdk;

    move-result-object v0

    sget-object v1, Ljdk;->APLICAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljgo;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v0

    invoke-virtual {v0}, Ljdx;->t()Ljdk;

    move-result-object v0

    sget-object v1, Ljdk;->REAPLICAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    const-string v0, "Investimentos_Fundos_Aplicar_DataOpcao_Acao"

    const-string v1, "DataAgendada"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    iget-object v0, p0, Ljgo;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->h(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/app/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 263
    return-void

    .line 260
    :cond_1
    const-string v0, "Investimentos_Fundos_Resgate_Data_Opcao"

    const-string v1, "DataAgendada"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
