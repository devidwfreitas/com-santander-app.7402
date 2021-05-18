.class public Lkag;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkaf;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lkaf;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lkag;->a:Lkaf;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lkag;->b:Ljava/lang/StringBuffer;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkag;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 136
    iget-boolean v0, p0, Lkag;->c:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 139
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    invoke-virtual {p0}, Lkag;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->setError(Lfvu;)V

    .line 333
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "listaParcela"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    invoke-virtual {v0}, Lful;->K()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lkag;->a:Lkaf;

    invoke-static {v1}, Lkaf;->a(Lkaf;)Lfum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iput-boolean v4, p0, Lkag;->c:Z

    .line 153
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->a(Ljava/lang/String;)V

    .line 155
    :cond_1
    const-string v0, "agendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iput-boolean v4, p0, Lkag;->c:Z

    .line 157
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->b(Ljava/lang/String;)V

    .line 159
    :cond_2
    const-string v0, "bandeiraCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iput-boolean v4, p0, Lkag;->c:Z

    .line 161
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->c(Ljava/lang/String;)V

    .line 163
    :cond_3
    const-string v0, "codigoMoeda"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    iput-boolean v4, p0, Lkag;->c:Z

    .line 165
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->d(Ljava/lang/String;)V

    .line 167
    :cond_4
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    iput-boolean v4, p0, Lkag;->c:Z

    .line 169
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->e(Ljava/lang/String;)V

    .line 171
    :cond_5
    const-string v0, "contratoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    iput-boolean v4, p0, Lkag;->c:Z

    .line 173
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->f(Ljava/lang/String;)V

    .line 175
    :cond_6
    const-string v0, "cotacaoDolar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    iput-boolean v4, p0, Lkag;->c:Z

    .line 177
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->g(Ljava/lang/String;)V

    .line 179
    :cond_7
    const-string v0, "custoEfetivoTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    iput-boolean v4, p0, Lkag;->c:Z

    .line 181
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->h(Ljava/lang/String;)V

    .line 183
    :cond_8
    const-string v0, "dataAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 184
    iput-boolean v4, p0, Lkag;->c:Z

    .line 185
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->i(Ljava/lang/String;)V

    .line 187
    :cond_9
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 188
    iput-boolean v4, p0, Lkag;->c:Z

    .line 189
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->j(Ljava/lang/String;)V

    .line 191
    :cond_a
    const-string v0, "dataEfetivacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 192
    iput-boolean v4, p0, Lkag;->c:Z

    .line 193
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->k(Ljava/lang/String;)V

    .line 195
    :cond_b
    const-string v0, "dataPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 196
    iput-boolean v4, p0, Lkag;->c:Z

    .line 197
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->l(Ljava/lang/String;)V

    .line 199
    :cond_c
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    iput-boolean v4, p0, Lkag;->c:Z

    .line 201
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->m(Ljava/lang/String;)V

    .line 203
    :cond_d
    const-string v0, "despesaConvertida"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 204
    iput-boolean v4, p0, Lkag;->c:Z

    .line 205
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->n(Ljava/lang/String;)V

    .line 207
    :cond_e
    const-string v0, "despesaReal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 208
    iput-boolean v4, p0, Lkag;->c:Z

    .line 209
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->o(Ljava/lang/String;)V

    .line 211
    :cond_f
    const-string v0, "entidade"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 212
    iput-boolean v4, p0, Lkag;->c:Z

    .line 213
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->p(Ljava/lang/String;)V

    .line 215
    :cond_10
    const-string v0, "horaEfetivacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 216
    iput-boolean v4, p0, Lkag;->c:Z

    .line 217
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->q(Ljava/lang/String;)V

    .line 219
    :cond_11
    const-string v0, "indicadorElegibilidade"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 220
    iput-boolean v4, p0, Lkag;->c:Z

    .line 221
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->r(Ljava/lang/String;)V

    .line 223
    :cond_12
    const-string v0, "listaEmail"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 224
    iput-boolean v4, p0, Lkag;->c:Z

    .line 225
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->s(Ljava/lang/String;)V

    .line 227
    :cond_13
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 228
    iput-boolean v4, p0, Lkag;->c:Z

    .line 229
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->t(Ljava/lang/String;)V

    .line 231
    :cond_14
    const-string v0, "nomeClientePlasticoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 232
    iput-boolean v4, p0, Lkag;->c:Z

    .line 233
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->u(Ljava/lang/String;)V

    .line 235
    :cond_15
    const-string v0, "numReferDocumento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 236
    iput-boolean v4, p0, Lkag;->c:Z

    .line 237
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->v(Ljava/lang/String;)V

    .line 239
    :cond_16
    const-string v0, "numeroCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 240
    iput-boolean v4, p0, Lkag;->c:Z

    .line 242
    :try_start_0
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 243
    iget-object v1, p0, Lkag;->a:Lkaf;

    invoke-static {v1}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v1

    iget-object v2, p0, Lkag;->b:Ljava/lang/StringBuffer;

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

    invoke-virtual {v1, v0}, Lful;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    :cond_17
    :goto_0
    const-string v0, "penumper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 251
    iput-boolean v4, p0, Lkag;->c:Z

    .line 252
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->x(Ljava/lang/String;)V

    .line 254
    :cond_18
    const-string v0, "produto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 255
    iput-boolean v4, p0, Lkag;->c:Z

    .line 256
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->y(Ljava/lang/String;)V

    .line 258
    :cond_19
    const-string v0, "referOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 259
    iput-boolean v4, p0, Lkag;->c:Z

    .line 260
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->z(Ljava/lang/String;)V

    .line 262
    :cond_1a
    const-string v0, "subProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 263
    iput-boolean v4, p0, Lkag;->c:Z

    .line 264
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->A(Ljava/lang/String;)V

    .line 266
    :cond_1b
    const-string v0, "taxaJuros"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 267
    iput-boolean v4, p0, Lkag;->c:Z

    .line 268
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->B(Ljava/lang/String;)V

    .line 270
    :cond_1c
    const-string v0, "tipoFranquia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 271
    iput-boolean v4, p0, Lkag;->c:Z

    .line 272
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->C(Ljava/lang/String;)V

    .line 274
    :cond_1d
    const-string v0, "tipoParcelamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 275
    iput-boolean v4, p0, Lkag;->c:Z

    .line 276
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->D(Ljava/lang/String;)V

    .line 278
    :cond_1e
    const-string v0, "valorFinanciado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 279
    iput-boolean v4, p0, Lkag;->c:Z

    .line 280
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->E(Ljava/lang/String;)V

    .line 282
    :cond_1f
    const-string v0, "valorIOF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 283
    iput-boolean v4, p0, Lkag;->c:Z

    .line 284
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->F(Ljava/lang/String;)V

    .line 286
    :cond_20
    const-string v0, "valorPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 287
    iput-boolean v4, p0, Lkag;->c:Z

    .line 288
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->G(Ljava/lang/String;)V

    .line 290
    :cond_21
    const-string v0, "valorPagamentoMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 291
    iput-boolean v4, p0, Lkag;->c:Z

    .line 292
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->H(Ljava/lang/String;)V

    .line 294
    :cond_22
    const-string v0, "valorTarifa"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 295
    iput-boolean v4, p0, Lkag;->c:Z

    .line 296
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->I(Ljava/lang/String;)V

    .line 298
    :cond_23
    const-string v0, "valorTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 299
    iput-boolean v4, p0, Lkag;->c:Z

    .line 300
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->J(Ljava/lang/String;)V

    .line 302
    :cond_24
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 303
    iput-boolean v4, p0, Lkag;->c:Z

    .line 304
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->b(Lkaf;)Lful;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lful;->K(Ljava/lang/String;)V

    .line 308
    :cond_25
    const-string v0, "idParcela"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 309
    iput-boolean v4, p0, Lkag;->c:Z

    .line 310
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->a(Lkaf;)Lfum;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfum;->a(Ljava/lang/String;)V

    .line 312
    :cond_26
    const-string v0, "parcelaSelecionada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 313
    iput-boolean v4, p0, Lkag;->c:Z

    .line 314
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->a(Lkaf;)Lfum;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfum;->b(Ljava/lang/String;)V

    .line 316
    :cond_27
    const-string v0, "quantidadeParcela"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 317
    iput-boolean v4, p0, Lkag;->c:Z

    .line 318
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->a(Lkaf;)Lfum;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfum;->c(Ljava/lang/String;)V

    .line 320
    :cond_28
    const-string v0, "valorParcela"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 321
    iput-boolean v4, p0, Lkag;->c:Z

    .line 322
    iget-object v0, p0, Lkag;->a:Lkaf;

    invoke-static {v0}, Lkaf;->a(Lkaf;)Lfum;

    move-result-object v0

    iget-object v1, p0, Lkag;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfum;->d(Ljava/lang/String;)V

    .line 326
    :cond_29
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 79
    const-string v0, "listaParcela"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lkag;->a:Lkaf;

    new-instance v1, Lfum;

    invoke-direct {v1}, Lfum;-><init>()V

    invoke-static {v0, v1}, Lkaf;->a(Lkaf;Lfum;)Lfum;

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "agendamento"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bandeiraCartao"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "codigoMoeda"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "codigoRetorno"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "contratoCartao"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cotacaoDolar"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "custoEfetivoTotal"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataAgendamento"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataContabil"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataEfetivacao"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataPagamento"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataVencimento"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "despesaConvertida"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "despesaReal"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "entidade"

    .line 96
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "horaEfetivacao"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "indicadorElegibilidade"

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "listaEmail"

    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mensagemRetorno"

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "nomeClientePlasticoCartao"

    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "numReferDocumento"

    .line 102
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "numeroCartao"

    .line 103
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "penumper"

    .line 104
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "produto"

    .line 105
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "referOper"

    .line 106
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "subProduto"

    .line 107
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "taxaJuros"

    .line 108
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tipoFranquia"

    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tipoParcelamento"

    .line 110
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valorFinanciado"

    .line 111
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valorIOF"

    .line 112
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valorPagamento"

    .line 113
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valorPagamentoMinimo"

    .line 114
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valorTarifa"

    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valorTotal"

    .line 116
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "idParcela"

    .line 119
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "parcelaSelecionada"

    .line 120
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "quantidadeParcela"

    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valorParcela"

    .line 122
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tokenTransacao"

    .line 123
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkag;->c:Z

    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkag;->b:Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
