.class public Ljxj;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxi;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfvt;


# direct methods
.method public constructor <init>(Ljxi;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iput-object p1, p0, Ljxj;->a:Ljxi;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 61
    iput-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxj;->c:Z

    .line 64
    iput-object v1, p0, Ljxj;->h:Lfvt;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 110
    iget-boolean v0, p0, Ljxj;->c:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 113
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    invoke-virtual {p0}, Ljxj;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->setError(Lfvu;)V

    .line 188
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "listaCodigoMotivo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    invoke-virtual {v0}, Lfvs;->p()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljxj;->h:Lfvt;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v0, "codigoMotivoCancelamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 126
    iget-object v0, p0, Ljxj;->h:Lfvt;

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvt;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "descricaoMotivoCancelamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 129
    iget-object v0, p0, Ljxj;->h:Lfvt;

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvt;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_3
    const-string v0, "cnpjSeguradora"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 132
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_4
    const-string v0, "contaCorrente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 135
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_5
    const-string v0, "cpfOuCnpj"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 138
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_6
    const-string v0, "dataContratacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 141
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_7
    const-string v0, "dataFimVigenciaProposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 144
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_8
    const-string v0, "dataVencimentoParcela"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 147
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_9
    const-string v0, "indicadorAdesao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 149
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 150
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_a
    const-string v0, "nomeProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 152
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 153
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_b
    const-string v0, "nomeSegurado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 156
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_c
    const-string v0, "nomeSeguradora"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 158
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 159
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_d
    const-string v0, "numeroAgencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 161
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 162
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_e
    const-string v0, "numeroBanco"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 164
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 165
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_f
    const-string v0, "numeroCertificado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 167
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 168
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_10
    const-string v0, "numeroProposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 170
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 171
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_11
    const-string v0, "valorPremioPago"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 173
    iput-boolean v1, p0, Ljxj;->c:Z

    .line 174
    iget-object v0, p0, Ljxj;->a:Ljxi;

    invoke-static {v0}, Ljxi;->a(Ljxi;)Lfvs;

    move-result-object v0

    iget-object v1, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvs;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_12
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iput-boolean v1, p0, Ljxj;->c:Z

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    const-string v0, "listaCodigoMotivo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lfvt;

    invoke-direct {v0}, Lfvt;-><init>()V

    iput-object v0, p0, Ljxj;->h:Lfvt;

    .line 76
    :cond_0
    const-string v0, "cnpjSeguradora"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "contaCorrente"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cpfOuCnpj"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataContratacao"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataFimVigenciaProposta"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataVencimentoParcela"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "indicadorAdesao"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nomeProduto"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nomeSegurado"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nomeSeguradora"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroAgencia"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroBanco"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroCertificado"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroProposta"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorPremioPago"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoMotivoCancelamento"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "descricaoMotivoCancelamento"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tokenTransacao"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxj;->c:Z

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxj;->b:Ljava/lang/StringBuffer;

    .line 99
    :cond_2
    return-void
.end method
