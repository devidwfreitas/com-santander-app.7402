.class public Ljzs;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzr;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfvp;


# direct methods
.method public constructor <init>(Ljzr;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iput-object p1, p0, Ljzs;->a:Ljzr;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 63
    iput-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzs;->c:Z

    .line 65
    iput-object v1, p0, Ljzs;->h:Lfvp;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 110
    iget-boolean v0, p0, Ljzs;->c:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 113
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Ljzs;->a:Ljzr;

    invoke-static {v0}, Ljzr;->a(Ljzr;)Lfvq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Ljzs;->a:Ljzr;

    invoke-static {v0}, Ljzr;->a(Ljzr;)Lfvq;

    move-result-object v0

    invoke-virtual {p0}, Ljzs;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvq;->setError(Lfvu;)V

    .line 243
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "seguros"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Ljzs;->h:Lfvp;

    invoke-virtual {v1}, Lfvp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 126
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 127
    const/4 v0, 0x5

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 128
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 129
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 130
    iget-object v0, p0, Ljzs;->a:Ljzr;

    invoke-static {v0}, Ljzr;->a(Ljzr;)Lfvq;

    move-result-object v0

    invoke-virtual {v0}, Lfvq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljzs;->h:Lfvp;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    const-string v0, "numeroProposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 143
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->a(Ljava/lang/String;)V

    .line 146
    :cond_1
    const-string v0, "cpfOuCnpj"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 148
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->b(Ljava/lang/String;)V

    .line 151
    :cond_2
    const-string v0, "numeroApolice"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 153
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->c(Ljava/lang/String;)V

    .line 156
    :cond_3
    const-string v0, "numeroCertificado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 158
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->d(Ljava/lang/String;)V

    .line 161
    :cond_4
    const-string v0, "nomeProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 163
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->e(Ljava/lang/String;)V

    .line 166
    :cond_5
    const-string v0, "dataContratacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 168
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->f(Ljava/lang/String;)V

    .line 171
    :cond_6
    const-string v0, "valorPremioPago"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 173
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->g(Ljava/lang/String;)V

    .line 176
    :cond_7
    const-string v0, "codigoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 177
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 178
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->h(Ljava/lang/String;)V

    .line 181
    :cond_8
    const-string v0, "codigoSubproduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 183
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->i(Ljava/lang/String;)V

    .line 186
    :cond_9
    const-string v0, "codigoBanco"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 188
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->j(Ljava/lang/String;)V

    .line 191
    :cond_a
    const-string v0, "codigoAgencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 192
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 193
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->k(Ljava/lang/String;)V

    .line 196
    :cond_b
    const-string v0, "contaCorrente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 198
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->l(Ljava/lang/String;)V

    .line 201
    :cond_c
    const-string v0, "codigoCanalProposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 202
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 203
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->m(Ljava/lang/String;)V

    .line 206
    :cond_d
    const-string v0, "descricaoCanalProposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 207
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 208
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->n(Ljava/lang/String;)V

    .line 211
    :cond_e
    const-string v0, "codigoRamo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 212
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 213
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->o(Ljava/lang/String;)V

    .line 216
    :cond_f
    const-string v0, "descricaoRamo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 217
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 218
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->p(Ljava/lang/String;)V

    .line 221
    :cond_10
    const-string v0, "grupoCanal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 222
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 223
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->q(Ljava/lang/String;)V

    .line 226
    :cond_11
    const-string v0, "dataAdesao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 227
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 228
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->r(Ljava/lang/String;)V

    .line 231
    :cond_12
    const-string v0, "indicadorAdesao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 232
    iput-boolean v3, p0, Ljzs;->c:Z

    .line 233
    iget-object v0, p0, Ljzs;->h:Lfvp;

    iget-object v1, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvp;->s(Ljava/lang/String;)V

    .line 236
    :cond_13
    return-void

    .line 132
    :cond_14
    :try_start_1
    iget-object v0, p0, Ljzs;->a:Ljzr;

    invoke-static {v0}, Ljzr;->a(Ljzr;)Lfvq;

    move-result-object v0

    invoke-virtual {v0}, Lfvq;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljzs;->h:Lfvp;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v0, p0, Ljzs;->a:Ljzr;

    invoke-static {v0}, Ljzr;->a(Ljzr;)Lfvq;

    move-result-object v0

    invoke-virtual {v0}, Lfvq;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljzs;->h:Lfvp;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    const-string v0, "seguros"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lfvp;

    invoke-direct {v0}, Lfvp;-><init>()V

    iput-object v0, p0, Ljzs;->h:Lfvp;

    .line 77
    :cond_0
    const-string v0, "numeroProposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cpfOuCnpj"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroApolice"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroCertificado"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nomeProduto"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataContratacao"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorPremioPago"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoProduto"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoSubproduto"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoBanco"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoAgencia"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "contaCorrente"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoCanalProposta"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "descricaoCanalProposta"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoRamo"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "descricaoRamo"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "grupoCanal"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataAdesao"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "indicadorAdesao"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tokenTransacao"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljzs;->c:Z

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzs;->b:Ljava/lang/StringBuffer;

    .line 103
    :cond_2
    return-void
.end method
