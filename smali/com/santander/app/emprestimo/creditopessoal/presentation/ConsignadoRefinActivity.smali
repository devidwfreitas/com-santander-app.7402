.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lhrk;


# instance fields
.field private a:Lhsb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhxq;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 41
    const v0, 0x7f1001f4

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    const v1, 0x7f1001f5

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    const v2, 0x7f1001f6

    invoke-virtual {p0, v2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    const v3, 0x7f1001f7

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    const v4, 0x7f1001fa

    invoke-virtual {p0, v4}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 46
    const v5, 0x7f1001fb

    invoke-virtual {p0, v5}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 47
    const v6, 0x7f1000d8

    invoke-virtual {p0, v6}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 48
    const v7, 0x7f1001fd

    invoke-virtual {p0, v7}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 50
    invoke-interface {p1}, Lhxq;->getParcelamentoAdicionalFormatted()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const-string v0, "Taxa %s a.m."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-interface {p1}, Lhxq;->getTaxaJurosFormatted()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-interface {p1}, Lhxq;->getValorParcelasOutrosFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-interface {p1}, Lhxq;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const-string v0, "em %s"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-interface {p1}, Lhxq;->getParcelaFormatted()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 93
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 67
    :sswitch_0
    const-string v0, "CreditoFinanciamento_Emprestimos_OfertaRefinanciamento_Acao"

    const-string v1, "VejaQuaisEmprestimos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :sswitch_1
    const-string v0, "CreditoFinanciamento_Emprestimos_OfertaRefinanciamento_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    :sswitch_2
    const-string v0, "CreditoFinanciamento_Emprestimos_OfertaRefinanciamento_Acao"

    const-string v1, "Voltar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->onBackPressed()V

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000d8 -> :sswitch_1
        0x7f1001f7 -> :sswitch_0
        0x7f1001fd -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f09031e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->c(I)V

    .line 34
    new-instance v0, Lhsc;

    invoke-direct {v0, p0}, Lhsc;-><init>(Lhrk;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->a:Lhsb;

    .line 35
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->a:Lhsb;

    invoke-interface {v0}, Lhsb;->a()V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;->a:Lhsb;

    invoke-interface {v0}, Lhsb;->b()V

    .line 88
    return-void
.end method
