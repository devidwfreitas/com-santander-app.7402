.class public Ljzo;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzn;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzn;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Ljzo;->a:Ljzn;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzo;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 127
    iget-boolean v0, p0, Ljzo;->c:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 130
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    invoke-virtual {p0}, Ljzo;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->setError(Lfvu;)V

    .line 286
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "resultList"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    invoke-virtual {v0}, Lfui;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljzo;->a:Ljzn;

    invoke-static {v1}, Ljzn;->a(Ljzn;)Lfue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    const-string v0, "message"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 143
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->a(Ljava/lang/String;)V

    .line 146
    :cond_1
    const-string v0, "moedaContrato"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 148
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->a(Ljzn;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->e(Ljava/lang/String;)V

    .line 150
    :cond_2
    const-string v0, "numeroExtrato"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 152
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->a(Ljzn;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->f(Ljava/lang/String;)V

    .line 154
    :cond_3
    const-string v0, "saldoFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 156
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->a(Ljzn;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->g(Ljava/lang/String;)V

    .line 158
    :cond_4
    const-string v0, "dataVencimentoFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 160
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->a(Ljzn;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->a(Ljava/lang/String;)V

    .line 162
    :cond_5
    const-string v0, "dataEmissaoFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 164
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->a(Ljzn;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->h(Ljava/lang/String;)V

    .line 167
    :cond_6
    const-string v0, "cotacaoDolar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 169
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->b(Ljava/lang/String;)V

    .line 171
    :cond_7
    const-string v0, "dataVenctoFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 173
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->c(Ljava/lang/String;)V

    .line 175
    :cond_8
    const-string v0, "jurosMora"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 176
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 177
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->d(Ljava/lang/String;)V

    .line 179
    :cond_9
    const-string v0, "multaPorAtraso"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 180
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 181
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->e(Ljava/lang/String;)V

    .line 183
    :cond_a
    const-string v0, "percentEncargoOpNormPeri"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 184
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 185
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->f(Ljava/lang/String;)V

    .line 187
    :cond_b
    const-string v0, "percentEncargoSaque"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 188
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 189
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->g(Ljava/lang/String;)V

    .line 191
    :cond_c
    const-string v0, "percentEncargoTransParc"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 192
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 193
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->h(Ljava/lang/String;)V

    .line 195
    :cond_d
    const-string v0, "saldoAnterior"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 196
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 197
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->i(Ljava/lang/String;)V

    .line 199
    :cond_e
    const-string v0, "saldoFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 200
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 201
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->j(Ljava/lang/String;)V

    .line 203
    :cond_f
    const-string v0, "situacaoFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 204
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 205
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->k(Ljava/lang/String;)V

    .line 207
    :cond_10
    const-string v0, "totalConvertido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 208
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 209
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->l(Ljava/lang/String;)V

    .line 211
    :cond_11
    const-string v0, "totalDespesa"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 212
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 213
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->m(Ljava/lang/String;)V

    .line 215
    :cond_12
    const-string v0, "valorEncargo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 216
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 217
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->n(Ljava/lang/String;)V

    .line 219
    :cond_13
    const-string v0, "valorLimiteCompra"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 220
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 221
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->o(Ljava/lang/String;)V

    .line 223
    :cond_14
    const-string v0, "valorLimiteSaque"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 224
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 225
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->p(Ljava/lang/String;)V

    .line 227
    :cond_15
    const-string v0, "valorPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 228
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 229
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->q(Ljava/lang/String;)V

    .line 231
    :cond_16
    const-string v0, "valorSaldoParcVencer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 232
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 233
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->r(Ljava/lang/String;)V

    .line 236
    :cond_17
    const-string v0, "limiteTotalCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 237
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 238
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->s(Ljava/lang/String;)V

    .line 240
    :cond_18
    const-string v0, "totalParcelaVencer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 241
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 242
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->t(Ljava/lang/String;)V

    .line 244
    :cond_19
    const-string v0, "dataFechamentoPrevistoProxFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 245
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 246
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->u(Ljava/lang/String;)V

    .line 248
    :cond_1a
    const-string v0, "limiteParaSaqueVista"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 249
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 250
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->v(Ljava/lang/String;)V

    .line 252
    :cond_1b
    const-string v0, "limiteDisponivelEm"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 253
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 254
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->w(Ljava/lang/String;)V

    .line 256
    :cond_1c
    const-string v0, "limiteDisponivelEmData"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 257
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 258
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->x(Ljava/lang/String;)V

    .line 261
    :cond_1d
    const-string v0, "totalPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 262
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 263
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->y(Ljava/lang/String;)V

    .line 265
    :cond_1e
    const-string v0, "limiteDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 266
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 267
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->A(Ljava/lang/String;)V

    .line 269
    :cond_1f
    const-string v0, "valorSaldoParcVencer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 270
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 271
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->r(Ljava/lang/String;)V

    .line 273
    :cond_20
    const-string v0, "cotacaoDolarDia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 274
    iput-boolean v2, p0, Ljzo;->c:Z

    .line 275
    iget-object v0, p0, Ljzo;->a:Ljzn;

    invoke-static {v0}, Ljzn;->b(Ljzn;)Lfui;

    move-result-object v0

    iget-object v1, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfui;->z(Ljava/lang/String;)V

    .line 279
    :cond_21
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    const-string v0, "resultList"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ljzo;->a:Ljzn;

    new-instance v1, Lfue;

    invoke-direct {v1}, Lfue;-><init>()V

    invoke-static {v0, v1}, Ljzn;->a(Ljzn;Lfue;)Lfue;

    .line 76
    :cond_0
    const-string v0, "moedaContrato"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroExtrato"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "saldoFatura"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataVencimentoFatura"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataEmissaoFatura"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "message"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cotacaoDolar"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jurosMora"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "multaPorAtraso"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "percentEncargoOpNormPeri"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "percentEncargoSaque"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "percentEncargoTransParc"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "saldoAnterior"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "situacaoFatura"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "totalConvertido"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "totalDespesa"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorEncargo"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorLimiteCompra"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorLimiteSaque"

    .line 96
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorPagamento"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorSaldoParcVencer"

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "limiteTotalCredito"

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "totalParcelaVencer"

    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataFechamentoPrevistoProxFatura"

    .line 102
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "limiteParaSaqueVista"

    .line 103
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "limiteDisponivelEm"

    .line 104
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "limiteDisponivelEmData"

    .line 105
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "totalPagamento"

    .line 106
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "limiteDisponivel"

    .line 107
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "totalDespesa"

    .line 108
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cotacaoDolarDia"

    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljzo;->c:Z

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzo;->b:Ljava/lang/StringBuffer;

    .line 120
    :cond_2
    return-void
.end method
