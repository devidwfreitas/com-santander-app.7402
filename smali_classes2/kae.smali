.class public Lkae;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkad;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lkad;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lkae;->a:Lkad;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lkae;->b:Ljava/lang/StringBuffer;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkae;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 102
    iget-boolean v0, p0, Lkae;->c:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    invoke-virtual {p0}, Lkae;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->setError(Lfvu;)V

    .line 312
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iput-boolean v4, p0, Lkae;->c:Z

    .line 113
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->d(Ljava/lang/String;)V

    .line 115
    :cond_0
    const-string v0, "agendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iput-boolean v4, p0, Lkae;->c:Z

    .line 117
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->e(Ljava/lang/String;)V

    .line 119
    :cond_1
    const-string v0, "bancoDestino"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iput-boolean v4, p0, Lkae;->c:Z

    .line 121
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->f(Ljava/lang/String;)V

    .line 123
    :cond_2
    const-string v0, "codigoBarras"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    iput-boolean v4, p0, Lkae;->c:Z

    .line 125
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->g(Ljava/lang/String;)V

    .line 127
    :cond_3
    const-string v0, "codigoCaptura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iput-boolean v4, p0, Lkae;->c:Z

    .line 129
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->h(Ljava/lang/String;)V

    .line 131
    :cond_4
    const-string v0, "codigoCedente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iput-boolean v4, p0, Lkae;->c:Z

    .line 133
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->i(Ljava/lang/String;)V

    .line 135
    :cond_5
    const-string v0, "codigoMoeda"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    iput-boolean v4, p0, Lkae;->c:Z

    .line 137
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->j(Ljava/lang/String;)V

    .line 139
    :cond_6
    const-string v0, "codigoNossoNum"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    iput-boolean v4, p0, Lkae;->c:Z

    .line 141
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->k(Ljava/lang/String;)V

    .line 143
    :cond_7
    const-string v0, "codigoSeuNum"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 144
    iput-boolean v4, p0, Lkae;->c:Z

    .line 145
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->l(Ljava/lang/String;)V

    .line 147
    :cond_8
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    iput-boolean v4, p0, Lkae;->c:Z

    .line 149
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->m(Ljava/lang/String;)V

    .line 151
    :cond_9
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 152
    iput-boolean v4, p0, Lkae;->c:Z

    .line 153
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->n(Ljava/lang/String;)V

    .line 155
    :cond_a
    const-string v0, "dataPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 156
    iput-boolean v4, p0, Lkae;->c:Z

    .line 157
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->o(Ljava/lang/String;)V

    .line 159
    :cond_b
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 160
    iput-boolean v4, p0, Lkae;->c:Z

    .line 161
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->p(Ljava/lang/String;)V

    .line 163
    :cond_c
    const-string v0, "docCedente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 164
    iput-boolean v4, p0, Lkae;->c:Z

    .line 165
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->q(Ljava/lang/String;)V

    .line 167
    :cond_d
    const-string v0, "docSacado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    iput-boolean v4, p0, Lkae;->c:Z

    .line 169
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->r(Ljava/lang/String;)V

    .line 171
    :cond_e
    const-string v0, "dtAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    iput-boolean v4, p0, Lkae;->c:Z

    .line 173
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->s(Ljava/lang/String;)V

    .line 175
    :cond_f
    const-string v0, "formaPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 176
    iput-boolean v4, p0, Lkae;->c:Z

    .line 177
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->t(Ljava/lang/String;)V

    .line 179
    :cond_10
    const-string v0, "horarioLimitePagto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 180
    iput-boolean v4, p0, Lkae;->c:Z

    .line 181
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->v(Ljava/lang/String;)V

    .line 183
    :cond_11
    const-string v0, "indCartorio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 184
    iput-boolean v4, p0, Lkae;->c:Z

    .line 185
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->w(Ljava/lang/String;)V

    .line 187
    :cond_12
    const-string v0, "indPagtoCheque"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 188
    iput-boolean v4, p0, Lkae;->c:Z

    .line 189
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->x(Ljava/lang/String;)V

    .line 191
    :cond_13
    const-string v0, "indicaBoletoVR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 192
    iput-boolean v4, p0, Lkae;->c:Z

    .line 193
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->y(Ljava/lang/String;)V

    .line 195
    :cond_14
    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 196
    iput-boolean v4, p0, Lkae;->c:Z

    .line 197
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->z(Ljava/lang/String;)V

    .line 199
    :cond_15
    const-string v0, "nomeCedente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 200
    iput-boolean v4, p0, Lkae;->c:Z

    .line 201
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->A(Ljava/lang/String;)V

    .line 203
    :cond_16
    const-string v0, "nomeSacado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 204
    iput-boolean v4, p0, Lkae;->c:Z

    .line 205
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->B(Ljava/lang/String;)V

    .line 207
    :cond_17
    const-string v0, "numCartaoCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 208
    iput-boolean v4, p0, Lkae;->c:Z

    .line 210
    :try_start_0
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 211
    iget-object v1, p0, Lkae;->a:Lkad;

    invoke-static {v1}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v1

    iget-object v2, p0, Lkae;->b:Ljava/lang/StringBuffer;

    .line 212
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

    .line 211
    invoke-virtual {v1, v0}, Lfvk;->C(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    :cond_18
    :goto_0
    const-string v0, "numContratoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 220
    iput-boolean v4, p0, Lkae;->c:Z

    .line 221
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->D(Ljava/lang/String;)V

    .line 223
    :cond_19
    const-string v0, "numOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 224
    iput-boolean v4, p0, Lkae;->c:Z

    .line 225
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->E(Ljava/lang/String;)V

    .line 227
    :cond_1a
    const-string v0, "produto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 228
    iput-boolean v4, p0, Lkae;->c:Z

    .line 229
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->F(Ljava/lang/String;)V

    .line 231
    :cond_1b
    const-string v0, "subProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 232
    iput-boolean v4, p0, Lkae;->c:Z

    .line 233
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->G(Ljava/lang/String;)V

    .line 235
    :cond_1c
    const-string v0, "tipoConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 236
    iput-boolean v4, p0, Lkae;->c:Z

    .line 237
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->H(Ljava/lang/String;)V

    .line 239
    :cond_1d
    const-string v0, "tipoPessoaCedente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 240
    iput-boolean v4, p0, Lkae;->c:Z

    .line 241
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->I(Ljava/lang/String;)V

    .line 243
    :cond_1e
    const-string v0, "tipoPessoaSacado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 244
    iput-boolean v4, p0, Lkae;->c:Z

    .line 245
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->J(Ljava/lang/String;)V

    .line 247
    :cond_1f
    const-string v0, "tipoTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 248
    iput-boolean v4, p0, Lkae;->c:Z

    .line 249
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->K(Ljava/lang/String;)V

    .line 251
    :cond_20
    const-string v0, "valorAbatimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 252
    iput-boolean v4, p0, Lkae;->c:Z

    .line 253
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->N(Ljava/lang/String;)V

    .line 255
    :cond_21
    const-string v0, "valorDesconto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 256
    iput-boolean v4, p0, Lkae;->c:Z

    .line 257
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->O(Ljava/lang/String;)V

    .line 259
    :cond_22
    const-string v0, "valorIOF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 260
    iput-boolean v4, p0, Lkae;->c:Z

    .line 261
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->P(Ljava/lang/String;)V

    .line 263
    :cond_23
    const-string v0, "valorJuros"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 264
    iput-boolean v4, p0, Lkae;->c:Z

    .line 265
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->Q(Ljava/lang/String;)V

    .line 267
    :cond_24
    const-string v0, "valorMulta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 268
    iput-boolean v4, p0, Lkae;->c:Z

    .line 269
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->R(Ljava/lang/String;)V

    .line 271
    :cond_25
    const-string v0, "valorRecebido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 272
    iput-boolean v4, p0, Lkae;->c:Z

    .line 273
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->S(Ljava/lang/String;)V

    .line 275
    :cond_26
    const-string v0, "valorRefBoleto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 276
    iput-boolean v4, p0, Lkae;->c:Z

    .line 277
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->T(Ljava/lang/String;)V

    .line 279
    :cond_27
    const-string v0, "valorTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 280
    iput-boolean v4, p0, Lkae;->c:Z

    .line 281
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->U(Ljava/lang/String;)V

    .line 283
    :cond_28
    const-string v0, "valorTituloRegistrado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 284
    iput-boolean v4, p0, Lkae;->c:Z

    .line 285
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->V(Ljava/lang/String;)V

    .line 287
    :cond_29
    const-string v0, "valorTotalRecebido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 288
    iput-boolean v4, p0, Lkae;->c:Z

    .line 289
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->W(Ljava/lang/String;)V

    .line 291
    :cond_2a
    const-string v0, "retorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 292
    iput-boolean v4, p0, Lkae;->c:Z

    .line 293
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->c(Ljava/lang/String;)V

    .line 295
    :cond_2b
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 296
    iput-boolean v4, p0, Lkae;->c:Z

    .line 297
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    iget-object v1, p0, Lkae;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvk;->M(Ljava/lang/String;)V

    .line 299
    :cond_2c
    const-string v0, "valorTaxaCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 300
    iput-boolean v4, p0, Lkae;->c:Z

    .line 301
    iget-object v0, p0, Lkae;->a:Lkad;

    invoke-static {v0}, Lkad;->a(Lkad;)Lfvk;

    move-result-object v0

    const-string v1, "2450"

    invoke-virtual {v0, v1}, Lfvk;->a(Ljava/lang/String;)V

    .line 305
    :cond_2d
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    :catch_1
    move-exception v0

    .line 216
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

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agendamento"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bancoDestino"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoBarras"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoCaptura"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoCedente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoMoeda"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoNossoNum"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoSeuNum"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataContabil"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "docCedente"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "docSacado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dtAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "formaPagamento"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "horarioLimitePagto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "indCartorio"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "indPagtoCheque"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "indicaBoletoVR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemAEA"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeCedente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeSacado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numCartaoCredito"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numContratoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "produto"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoPessoaCedente"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoPessoaSacado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenSessao"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorAbatimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorDesconto"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorIOF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorJuros"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorMulta"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorRecebido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorRefBoleto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorTitulo"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorTituloRegistrado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorTotalRecebido"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorTaxaCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "retorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkae;->c:Z

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkae;->b:Ljava/lang/StringBuffer;

    .line 96
    :cond_1
    return-void
.end method
