.class public Lhex;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhew;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lheq;


# direct methods
.method public constructor <init>(Lhew;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iput-object p1, p0, Lhex;->a:Lhew;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 61
    iput-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhex;->c:Z

    .line 63
    iput-object v1, p0, Lhex;->h:Lheq;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 102
    iget-boolean v0, p0, Lhex;->c:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lhex;->a:Lhew;

    invoke-static {v0}, Lhew;->a(Lhew;)Lhen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lhex;->a:Lhew;

    invoke-static {v0}, Lhew;->a(Lhew;)Lhen;

    move-result-object v0

    invoke-virtual {p0}, Lhex;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhen;->setError(Lfvu;)V

    .line 185
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-boolean v1, p0, Lhex;->c:Z

    .line 111
    const-string v0, "contasProgramadas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iput-boolean v1, p0, Lhex;->c:Z

    .line 113
    iget-object v0, p0, Lhex;->a:Lhew;

    invoke-static {v0}, Lhew;->a(Lhew;)Lhen;

    move-result-object v0

    invoke-virtual {v0}, Lhen;->d()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lhex;->h:Lheq;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iput-boolean v1, p0, Lhex;->c:Z

    .line 116
    iget-object v0, p0, Lhex;->a:Lhew;

    invoke-static {v0}, Lhew;->a(Lhew;)Lhen;

    move-result-object v0

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhen;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iput-boolean v1, p0, Lhex;->c:Z

    .line 119
    iget-object v0, p0, Lhex;->a:Lhew;

    invoke-static {v0}, Lhew;->a(Lhew;)Lhen;

    move-result-object v0

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhen;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iput-boolean v1, p0, Lhex;->c:Z

    .line 122
    iget-object v0, p0, Lhex;->a:Lhew;

    invoke-static {v0}, Lhew;->a(Lhew;)Lhen;

    move-result-object v0

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhen;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string v0, "agenciaCtaTransferencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    iput-boolean v1, p0, Lhex;->c:Z

    .line 125
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_5
    const-string v0, "agenciaPoupanca"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 127
    iput-boolean v1, p0, Lhex;->c:Z

    .line 128
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_6
    const-string v0, "bancoPoupanca"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    iput-boolean v1, p0, Lhex;->c:Z

    .line 131
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_7
    const-string v0, "contaCorrente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    iput-boolean v1, p0, Lhex;->c:Z

    .line 134
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_8
    const-string v0, "contaPoupanca"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 136
    iput-boolean v1, p0, Lhex;->c:Z

    .line 137
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_9
    const-string v0, "dataAberturaPoupanca"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 139
    iput-boolean v1, p0, Lhex;->c:Z

    .line 140
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_a
    const-string v0, "dataCadastramento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 142
    iput-boolean v1, p0, Lhex;->c:Z

    .line 143
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :cond_b
    const-string v0, "dataFimTransf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 145
    iput-boolean v1, p0, Lhex;->c:Z

    .line 146
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_c
    const-string v0, "dataInicioTransf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    iput-boolean v1, p0, Lhex;->c:Z

    .line 149
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_d
    const-string v0, "dataProximoDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    iput-boolean v1, p0, Lhex;->c:Z

    .line 152
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_e
    const-string v0, "dataUltimoDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 154
    iput-boolean v1, p0, Lhex;->c:Z

    .line 155
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_f
    const-string v0, "diaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 157
    iput-boolean v1, p0, Lhex;->c:Z

    .line 158
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_10
    const-string v0, "indicadorTitularidade"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 160
    iput-boolean v1, p0, Lhex;->c:Z

    .line 161
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_11
    const-string v0, "nomeTitularConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 163
    iput-boolean v1, p0, Lhex;->c:Z

    .line 164
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_12
    const-string v0, "numeroSequencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 166
    iput-boolean v1, p0, Lhex;->c:Z

    .line 167
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_13
    const-string v0, "numeroVezesTransf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 169
    iput-boolean v1, p0, Lhex;->c:Z

    .line 170
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_14
    const-string v0, "valorTransferencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 172
    iput-boolean v1, p0, Lhex;->c:Z

    .line 173
    iget-object v0, p0, Lhex;->h:Lheq;

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheq;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_15
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iput-boolean v1, p0, Lhex;->c:Z

    .line 176
    iget-object v0, p0, Lhex;->a:Lhew;

    invoke-static {v0}, Lhew;->a(Lhew;)Lhen;

    move-result-object v0

    iget-object v1, p0, Lhex;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhen;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 69
    const-string v0, "contasProgramadas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lheq;

    invoke-direct {v0}, Lheq;-><init>()V

    iput-object v0, p0, Lhex;->h:Lheq;

    .line 74
    :cond_0
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mensagemRetorno"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "agenciaCtaTransferencia"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "agenciaPoupanca"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bancoPoupanca"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "contaCorrente"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "contaPoupanca"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataAberturaPoupanca"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataCadastramento"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataFimTransf"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataInicioTransf"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataProximoDebito"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataUltimoDebito"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "diaDebito"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "indicadorTitularidade"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nomeTitularConta"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroSequencia"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroVezesTransf"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorTransferencia"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tokenTransacao"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhex;->c:Z

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lhex;->b:Ljava/lang/StringBuffer;

    .line 97
    :cond_2
    return-void
.end method
