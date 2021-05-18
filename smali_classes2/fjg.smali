.class public Lfjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/PagamentoFacturaCartoesActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PagamentoFacturaCartoesActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 116
    const-string v0, "Cartoes_PagamentoDaFatura_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 119
    const-string v1, ""

    .line 121
    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lfud;

    move-result-object v0

    invoke-virtual {v0}, Lfud;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lfud;

    move-result-object v0

    invoke-virtual {v0}, Lfud;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->b(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v3, "Deveria introduzir uma quantidade"

    invoke-static {v0, v3}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->d(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v3}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpv;

    invoke-virtual {v0}, Lfpv;->c()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 126
    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v4}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 127
    const v3, 0x7f101050

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 128
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 130
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0,00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->b(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-virtual {v3}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    :goto_0
    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 143
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-virtual {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v5}, Lhau;->a(Z)V

    .line 146
    const-string v0, "Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_ValorDaPrimeiraParcela"

    const-string v2, "Agendado"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_2
    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->d(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v2}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpv;

    invoke-virtual {v0}, Lfpv;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_3
    const-string v0, "Cartoes_PagamentoDaFatura_DataDoPagamento"

    iget-object v2, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-virtual {v2}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-virtual {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v0, "conta"

    iget-object v3, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v3}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->e(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lcom/santander/app/widget/Carrossel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v0, "cartao"

    iget-object v3, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v3}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->f(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lgon;

    move-result-object v3

    invoke-virtual {v3}, Lgon;->a()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v3, "tipo"

    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->d(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v4}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->c(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfpv;

    invoke-virtual {v0}, Lfpv;->c()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v0, "cantidad"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v0, "fecha"

    iget-object v1, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-virtual {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v0, "agendado"

    iget-object v1, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-virtual {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 177
    const-string v0, "vencimiento"

    iget-object v1, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v1}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->a(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Lfud;

    move-result-object v1

    invoke-virtual {v1}, Lfud;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-virtual {v0, v2}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    :cond_2
    return-void

    .line 133
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\,"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 137
    :cond_4
    iget-object v0, p0, Lfjg;->a:Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-static {v0}, Lcom/santander/app/PagamentoFacturaCartoesActivity;->b(Lcom/santander/app/PagamentoFacturaCartoesActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v3, "Deveria introduzir uma quantidade"

    invoke-static {v0, v3}, Lhav;->d(Landroid/app/Activity;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_0

    .line 140
    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 148
    :cond_6
    const-string v0, "Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_ValorDaPrimeiraParcela"

    const-string v2, "PagarHoje"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v6}, Lhau;->a(Z)V

    goto/16 :goto_2

    .line 154
    :pswitch_0
    const-string v0, "Cartoes_PagamentoDaFatura_OpcoesPagamento"

    const-string v2, "PagarValorTotal"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 157
    :pswitch_1
    const-string v0, "Cartoes_PagamentoDaFatura_OpcoesPagamento"

    const-string v2, "PagarValorAtualizado"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 160
    :pswitch_2
    const-string v0, "Cartoes_PagamentoDaFatura_OpcoesPagamento"

    const-string v2, "PagarMinimo"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 163
    :pswitch_3
    const-string v0, "Cartoes_PagamentoDaFatura_OpcoesPagamento"

    const-string v2, "PagarOutroValor"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
