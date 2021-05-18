.class public Ljgk;
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
    .line 185
    iput-object p1, p0, Ljgk;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 188
    sget-object v0, Ljgj;->a:[I

    iget-object v1, p0, Ljgk;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->b(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljdx;

    move-result-object v1

    invoke-virtual {v1}, Ljdx;->t()Ljdk;

    move-result-object v1

    invoke-virtual {v1}, Ljdk;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 191
    :pswitch_0
    const-string v0, "Investimentos_Fundos_Aplicar_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Ljgk;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->f(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljin;

    move-result-object v0

    iget-object v1, p0, Ljgk;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->d(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljgk;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v2}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->e(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljin;->a(Ljava/lang/String;Lcom/santander/app/contacorrente/domain/Conta;)V

    goto :goto_0

    .line 195
    :pswitch_1
    const-string v0, "Investimentos_Fundos_Resgate_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Ljgk;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->f(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Ljin;

    move-result-object v0

    iget-object v1, p0, Ljgk;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->d(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljin;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
