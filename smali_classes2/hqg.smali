.class public Lhqg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Ljava/util/ArrayList;
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
    .line 82
    invoke-direct {p0, p1}, Lhqg;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z

    move-result v0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v2, Lgky;

    const-string v3, "Valor Solicitado: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorEntregueFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Lgky;

    const-string v3, "Quantidade de Parcelas: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getParcelaFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v2, Lgky;

    const-string v3, "Valor da Parcela:  "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorParcelaFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    if-nez v0, :cond_0

    .line 97
    new-instance v2, Lgky;

    const-string v3, "Conv\u00eanio:  "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getFontePagadoraFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    new-instance v2, Lgky;

    const-string v3, "Dia de d\u00e9bito: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getDiaPagamentoFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Lgky;

    const-string v3, "Primeira parcela: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getVencimentoFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lgky;

    const-string v3, "Taxa de juros: "

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaJurosFormatted(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v2, Lgky;

    const-string v3, "Custo efetivo total (CET): "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTaxaCETFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v2, Lgky;

    const-string v3, "Valor do IOF: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getIofFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorPremioSeguroCP()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 117
    new-instance v2, Lgky;

    const-string v3, "Valor do seguro: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getValorPremioSeguroFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    if-eqz v0, :cond_3

    .line 122
    new-instance v2, Lgky;

    const-string v3, "N\u00famero de Contrato: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getNumeroContratoFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :goto_0
    if-nez v0, :cond_2

    .line 130
    new-instance v0, Lgky;

    const-string v2, "Tempo para aprova\u00e7\u00e3o: "

    const-string v3, "Em at\u00e9 2 dias \u00fateis"

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    return-object v1

    .line 125
    :cond_3
    new-instance v2, Lgky;

    const-string v3, "N\u00famero de Proposta: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getNumeroContratoFormatted()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z
    .locals 2

    .prologue
    .line 138
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lgvb;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 21
    invoke-direct {p0, p1}, Lhqg;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Contrata\u00e7\u00e3o de Cr\u00e9dito Pessoal"

    .line 23
    :goto_0
    invoke-direct {p0, p1}, Lhqg;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Cr\u00e9dito Pessoal"

    .line 25
    :goto_1
    new-instance v3, Lgvb;

    invoke-direct {v3}, Lgvb;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lhqg;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "empre-cp-comprFechar"

    :goto_2
    invoke-virtual {v3, v2}, Lgvb;->n(Ljava/lang/String;)V

    .line 28
    const-string v2, ""

    invoke-virtual {v3, v2}, Lgvb;->i(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lhqg;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "empre-cp-comprCompartilhar"

    :goto_3
    invoke-virtual {v3, v2}, Lgvb;->j(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lhqg;->c(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 33
    invoke-virtual {v3, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lgvb;->d(Z)V

    .line 36
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getDataHoraSolicitacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 37
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getAutenticacaoBancaria()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " realizada com sucesso"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Lhqg;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empr\u00e9stimo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getDataHoraSolicitacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_4
    invoke-virtual {v3, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Lhqg;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v3, v4}, Lgvb;->b(Z)V

    .line 49
    :goto_5
    return-object v3

    .line 21
    :cond_0
    const-string v0, "Solicita\u00e7\u00e3o de Consignado"

    goto/16 :goto_0

    .line 23
    :cond_1
    const-string v1, "Consignado"

    goto/16 :goto_1

    .line 27
    :cond_2
    const-string v2, "empre-csg-comprFechar"

    goto/16 :goto_2

    .line 29
    :cond_3
    const-string v2, "empre-csg-comprCompartilhar"

    goto :goto_3

    .line 41
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getDataHoraSolicitacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 47
    :cond_5
    invoke-virtual {v3, v4}, Lgvb;->a(Z)V

    goto :goto_5
.end method

.method public b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lgvb;
    .locals 7

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lhqg;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Contrata\u00e7\u00e3o de Cr\u00e9dito Pessoal"

    .line 56
    :goto_0
    invoke-direct {p0, p1}, Lhqg;->d(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Cr\u00e9dito Pessoal"

    .line 58
    :goto_1
    new-instance v2, Lgvb;

    invoke-direct {v2}, Lgvb;-><init>()V

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    const-string v4, ""

    invoke-virtual {v2, v4}, Lgvb;->i(Ljava/lang/String;)V

    .line 63
    new-instance v4, Lgky;

    const-string v5, "Erro: "

    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getMessageError()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v2, v3}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 67
    invoke-virtual {v2, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lgvb;->d(Z)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lgvb;->e(Z)V

    .line 71
    invoke-interface {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getAutenticacaoBancaria()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 72
    const-string v1, "Transa\u00e7\u00e3o n\u00e3o efetuada"

    invoke-virtual {v2, v1}, Lgvb;->b(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comprovante - Erro na "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 76
    return-object v2

    .line 54
    :cond_0
    const-string v0, "Solicita\u00e7\u00e3o de Consignado"

    goto :goto_0

    .line 56
    :cond_1
    const-string v1, "Consignado"

    goto :goto_1
.end method
