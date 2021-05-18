.class public Ljgq;
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
    .line 388
    iput-object p1, p0, Ljgq;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Ljgq;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->m(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Ljgq;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->d(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Ljgq;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->n(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)Lcom/santander/app/components/view/ValorResgateButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/components/view/ValorResgateButton;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Ljgq;->a:Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;->o(Lcom/santander/app/investimentos/fundos/presentation/FundosAplicacaoActivity;)V

    .line 394
    return-void
.end method
