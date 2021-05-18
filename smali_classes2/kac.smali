.class public Lkac;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkab;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lkab;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lkac;->a:Lkab;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lkac;->b:Ljava/lang/StringBuffer;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkac;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 105
    iget-boolean v0, p0, Lkac;->c:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 108
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    invoke-virtual {p0}, Lkac;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->setError(Lfvu;)V

    .line 208
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iput-boolean v4, p0, Lkac;->c:Z

    .line 117
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->a(Ljava/lang/String;)V

    .line 120
    :cond_0
    const-string v0, "agendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iput-boolean v4, p0, Lkac;->c:Z

    .line 122
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->b(Ljava/lang/String;)V

    .line 124
    :cond_1
    const-string v0, "codBarra"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iput-boolean v4, p0, Lkac;->c:Z

    .line 126
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->c(Ljava/lang/String;)V

    .line 128
    :cond_2
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iput-boolean v4, p0, Lkac;->c:Z

    .line 130
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->d(Ljava/lang/String;)V

    .line 132
    :cond_3
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    iput-boolean v4, p0, Lkac;->c:Z

    .line 134
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->e(Ljava/lang/String;)V

    .line 136
    :cond_4
    const-string v0, "descricao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    iput-boolean v4, p0, Lkac;->c:Z

    .line 138
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->f(Ljava/lang/String;)V

    .line 140
    :cond_5
    const-string v0, "dtAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    iput-boolean v4, p0, Lkac;->c:Z

    .line 142
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->g(Ljava/lang/String;)V

    .line 144
    :cond_6
    const-string v0, "formaPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    iput-boolean v4, p0, Lkac;->c:Z

    .line 146
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->h(Ljava/lang/String;)V

    .line 148
    :cond_7
    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    iput-boolean v4, p0, Lkac;->c:Z

    .line 150
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->i(Ljava/lang/String;)V

    .line 152
    :cond_8
    const-string v0, "numCartaoCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    iput-boolean v4, p0, Lkac;->c:Z

    .line 154
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 156
    :try_start_0
    iget-object v1, p0, Lkac;->a:Lkab;

    invoke-static {v1}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v1

    iget-object v2, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvi;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :cond_9
    :goto_0
    const-string v0, "numContratoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 164
    iput-boolean v4, p0, Lkac;->c:Z

    .line 165
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->k(Ljava/lang/String;)V

    .line 167
    :cond_a
    const-string v0, "numOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 168
    iput-boolean v4, p0, Lkac;->c:Z

    .line 169
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->l(Ljava/lang/String;)V

    .line 171
    :cond_b
    const-string v0, "produto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 172
    iput-boolean v4, p0, Lkac;->c:Z

    .line 173
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->m(Ljava/lang/String;)V

    .line 175
    :cond_c
    const-string v0, "subProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 176
    iput-boolean v4, p0, Lkac;->c:Z

    .line 177
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->n(Ljava/lang/String;)V

    .line 179
    :cond_d
    const-string v0, "tipoConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 180
    iput-boolean v4, p0, Lkac;->c:Z

    .line 181
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->o(Ljava/lang/String;)V

    .line 183
    :cond_e
    const-string v0, "VALPRIN"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 184
    iput-boolean v4, p0, Lkac;->c:Z

    .line 185
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->p(Ljava/lang/String;)V

    .line 187
    :cond_f
    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 188
    iput-boolean v4, p0, Lkac;->c:Z

    .line 189
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->q(Ljava/lang/String;)V

    .line 191
    :cond_10
    const-string v0, "vencto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 192
    iput-boolean v4, p0, Lkac;->c:Z

    .line 193
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->r(Ljava/lang/String;)V

    .line 195
    :cond_11
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 196
    iput-boolean v4, p0, Lkac;->c:Z

    .line 197
    iget-object v0, p0, Lkac;->a:Lkab;

    invoke-static {v0}, Lkab;->a(Lkab;)Lfvi;

    move-result-object v0

    iget-object v1, p0, Lkac;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvi;->s(Ljava/lang/String;)V

    .line 201
    :cond_12
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    :catch_1
    move-exception v0

    .line 160
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 74
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agendamento"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codBarra"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conta"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataContabil"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricao"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dtAgendamento"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "formaPagamento"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemAEA"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numCartaoCredito"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numContratoCartao"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numOper"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "produto"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subProduto"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoConta"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VALPRIN"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valor"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vencto"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkac;->c:Z

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkac;->b:Ljava/lang/StringBuffer;

    .line 98
    :cond_1
    return-void
.end method
