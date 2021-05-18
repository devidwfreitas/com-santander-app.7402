.class public Lhqh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getType()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    .line 38
    new-instance v0, Lgky;

    const-string v2, "a) Taxa de juros remunerat\u00f3rios: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaJurosBreakLineFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lgky;

    const-string v2, "   Custo efetivo total (CET)**: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaCETBreakLineFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lgky;

    const-string v2, "Tipo de taxa de juros: "

    const-string v3, "Prefixada"

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lgky;

    const-string v2, "b) Valor total devido no ato da contrata\u00e7\u00e3o: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorTotalComEncargosFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTotalPercentageFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lgky;

    const-string v2, "   Percentual valor total devido no ato da contrata\u00e7\u00e3o: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTotalPercentageFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    new-instance v0, Lgky;

    const-string v2, "c) Valor do IOF: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getIofFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getIofPercentageFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lgky;

    const-string v2, "   Percentual valor do IOF: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getIofPercentageFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    new-instance v0, Lgky;

    const-string v2, "d) Valor do seguro: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorPremioSeguroFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getSeguroPercentageFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    new-instance v0, Lgky;

    const-string v2, "   Percentual valor do seguro: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getSeguroPercentageFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    new-instance v0, Lgky;

    const-string v2, "e) Valor liberado: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorEmprestimoFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getLiberadoPercentageFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    new-instance v0, Lgky;

    const-string v2, "   Percentual valor solicitado: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getLiberadoPercentageFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_3
    new-instance v0, Lgky;

    const-string v2, "f) Data/hora do c\u00e1lculo*: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getDataHoraSolicitacao()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lgky;

    const-string v2, "g) Quantidade de parcelas: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getParcelaFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lgky;

    const-string v2, "h) Valor das parcelas: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lgky;

    const-string v2, "i) Data da 1\u00aa parcela: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getVencimentoFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lgky;

    const-string v2, "   \u00daltimo vencimento: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getUltimoVencimentoFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lgky;

    const-string v2, "textFooter"

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09031c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_0
    return-object v1

    .line 99
    :cond_4
    new-instance v0, Lgky;

    const-string v2, "a) Valor do Empr\u00e9stimo: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorEmprestimoFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lgky;

    const-string v2, "   Percentual Valor do Empr\u00e9stimo: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTotalPercentageFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v2, Lgky;

    const-string v3, "b) Valor Entregue: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorTotalRefinFormatted()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v2, v3, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Lgky;

    const-string v2, "   Percentual Valor Entregue: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getLiberadoPercentageFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Lgky;

    const-string v2, "c) IOF (Financiado): "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getIofFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lgky;

    const-string v2, "   Percentual IOF (Financiado): "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getIofPercentageFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lgky;

    const-string v2, "d) Valor do Pr\u00eamio do Seguro: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorPremioSeguroFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lgky;

    const-string v2, "   Percentual Valor do Pr\u00eamio do Seguro: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getSeguroPercentageFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lgky;

    const-string v2, "e) Juros Remunerat\u00f3rios Pr\u00e9-Fixado: "

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaJurosFormatted(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lgky;

    const-string v2, "f) Valor da Parcela: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Lgky;

    const-string v2, "g) Quantidade de Parcelas: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getParcelaFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lgky;

    const-string v2, "h) Total a Pagar: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTotalPagarFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lgky;

    const-string v2, "i) Custo Efetivo Total (CET): "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaCETFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lgky;

    const-string v2, "j) Forma de Libera\u00e7\u00e3o do Empr\u00e9stimo: "

    const-string v3, "Em Conta Corrente"

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lgky;

    const-string v2, "k) Vencimento da 1\u00aa Parcela: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getVencimentoFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lgky;

    const-string v2, "l) Vencimento da \u00daltima Parcela: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getUltimoVencimentoFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lgky;

    const-string v2, "   Data e hora do c\u00e1lculo: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getDataHoraSolicitacao()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lgky;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lgky;

    const-string v2, "Encargos de mora: "

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lgky;

    const-string v2, "1) Taxa de Juros (% ao m\u00eas): "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaJurosFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lgky;

    const-string v2, "2) Multa Morat\u00f3ria (% sobre o valor total devido): "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getMultaMoratorioFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lgky;

    const-string v2, "3) Juros Morat\u00f3rios (% ao m\u00eas): "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getJurosMoratorioFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lgky;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lgky;

    const-string v2, "Fonte Pagadora: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getFontePagadoraFormatted()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lgky;

    const-string v2, "textFooter"

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0902bd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 105
    :cond_5
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorEntregueFormatted()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v1, Lgky;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-object v0
.end method
