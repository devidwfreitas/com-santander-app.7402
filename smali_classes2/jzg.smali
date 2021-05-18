.class public Ljzg;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzf;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzf;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Ljzg;->a:Ljzf;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzg;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 114
    iget-boolean v0, p0, Ljzg;->c:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 117
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    invoke-virtual {p0}, Ljzg;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->setError(Lfvu;)V

    .line 333
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "lancamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    invoke-virtual {v0}, Lfue;->e()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljzg;->a:Ljzf;

    invoke-static {v1}, Ljzf;->a(Ljzf;)Lfuj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    const-string v0, "listaLancamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0, v2}, Ljzf;->a(Ljzf;Z)Z

    .line 130
    :cond_1
    const-string v0, "dataFechamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 132
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->b(Ljava/lang/String;)V

    .line 134
    :cond_2
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 136
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->a(Ljava/lang/String;)V

    .line 138
    :cond_3
    const-string v0, "pagamentoMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 140
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->d(Ljava/lang/String;)V

    .line 142
    :cond_4
    const-string v0, "totalFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 144
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->c(Ljava/lang/String;)V

    .line 146
    :cond_5
    const-string v0, "real"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 149
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->a(Ljzf;)Lfuj;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuj;->d(Ljava/lang/String;)V

    .line 151
    :cond_6
    const-string v0, "data"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 153
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->a(Ljzf;)Lfuj;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuj;->b(Ljava/lang/String;)V

    .line 155
    :cond_7
    const-string v0, "historico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 156
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 157
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->a(Ljzf;)Lfuj;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuj;->a(Ljava/lang/String;)V

    .line 159
    :cond_8
    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 160
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 161
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->a(Ljzf;)Lfuj;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuj;->c(Ljava/lang/String;)V

    .line 163
    :cond_9
    const-string v0, "moedaContrato"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 164
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 165
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->e(Ljava/lang/String;)V

    .line 168
    :cond_a
    const-string v0, "dataFechamentoPrevistoProxFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 170
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->C(Ljava/lang/String;)V

    .line 172
    :cond_b
    const-string v0, "limiteTotalCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 173
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 174
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->D(Ljava/lang/String;)V

    .line 177
    :cond_c
    const-string v0, "limiteParaSaqueVista"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 178
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 179
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->E(Ljava/lang/String;)V

    .line 182
    :cond_d
    const-string v0, "limiteDisponivelEm"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 183
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 184
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->F(Ljava/lang/String;)V

    .line 187
    :cond_e
    const-string v0, "limiteDisponivelEmData"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 188
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 189
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->G(Ljava/lang/String;)V

    .line 192
    :cond_f
    const-string v0, "totalPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 193
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 194
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->H(Ljava/lang/String;)V

    .line 197
    :cond_10
    const-string v0, "limiteDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 198
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 199
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->I(Ljava/lang/String;)V

    .line 202
    :cond_11
    const-string v0, "totalCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 203
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 204
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->J(Ljava/lang/String;)V

    .line 207
    :cond_12
    const-string v0, "totalDeCreditos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 208
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 209
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->J(Ljava/lang/String;)V

    .line 212
    :cond_13
    const-string v0, "despesasDebitos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 213
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 214
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->K(Ljava/lang/String;)V

    .line 217
    :cond_14
    const-string v0, "saldoAnterior"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 218
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 219
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->s(Ljava/lang/String;)V

    .line 222
    :cond_15
    const-string v0, "totalDespesa"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 223
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 224
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->w(Ljava/lang/String;)V

    .line 227
    :cond_16
    const-string v0, "totalConvertido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 228
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 229
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->v(Ljava/lang/String;)V

    .line 232
    :cond_17
    const-string v0, "cotacaoDolar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 233
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 234
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->k(Ljava/lang/String;)V

    .line 237
    :cond_18
    const-string v0, "cotacaoDolarDia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 238
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 239
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->l(Ljava/lang/String;)V

    .line 242
    :cond_19
    const-string v0, "multaPorAtraso"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 243
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 244
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->o(Ljava/lang/String;)V

    .line 247
    :cond_1a
    const-string v0, "jurosMora"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 248
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 249
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->n(Ljava/lang/String;)V

    .line 252
    :cond_1b
    const-string v0, "totalParcelaVencer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 253
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 254
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->L(Ljava/lang/String;)V

    .line 257
    :cond_1c
    const-string v0, "comprasParcProxFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 258
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 259
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->M(Ljava/lang/String;)V

    .line 262
    :cond_1d
    const-string v0, "comprasParcTotalVencer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 263
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 264
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->N(Ljava/lang/String;)V

    .line 267
    :cond_1e
    const-string v0, "comprasParcJuroProxFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 268
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 269
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->O(Ljava/lang/String;)V

    .line 272
    :cond_1f
    const-string v0, "comprasParcJuroTotalVencer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 273
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 274
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->P(Ljava/lang/String;)V

    .line 277
    :cond_20
    const-string v0, "parcelamentoFaturaProxima"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 278
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 279
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->Q(Ljava/lang/String;)V

    .line 282
    :cond_21
    const-string v0, "parcelamentoFaturaTotalVencer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 283
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 284
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->R(Ljava/lang/String;)V

    .line 287
    :cond_22
    const-string v0, "pagamentoParcial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 288
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 289
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->S(Ljava/lang/String;)V

    .line 292
    :cond_23
    const-string v0, "valorPagamentoParcial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 293
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 294
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->T(Ljava/lang/String;)V

    .line 297
    :cond_24
    const-string v0, "saques"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 298
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 299
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->U(Ljava/lang/String;)V

    .line 302
    :cond_25
    const-string v0, "comprasParceladasComJuros"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 303
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 304
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->V(Ljava/lang/String;)V

    .line 312
    :cond_26
    const-string v0, "situacaoFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 313
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 314
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->u(Ljava/lang/String;)V

    .line 317
    :cond_27
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 318
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 319
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->c(Ljzf;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 320
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->j(Ljava/lang/String;)V

    .line 326
    :cond_28
    :goto_0
    return-void

    .line 322
    :cond_29
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0}, Ljzf;->b(Ljzf;)Lfue;

    move-result-object v0

    iget-object v1, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfue;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    const-string v0, "lancamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ljzg;->a:Ljzf;

    new-instance v1, Lfuj;

    invoke-direct {v1}, Lfuj;-><init>()V

    invoke-static {v0, v1}, Ljzf;->a(Ljzf;Lfuj;)Lfuj;

    .line 76
    :cond_0
    const-string v0, "listaLancamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Ljzg;->a:Ljzf;

    invoke-static {v0, v2}, Ljzf;->a(Ljzf;Z)Z

    .line 80
    :cond_1
    const-string v0, "dataFechamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pagamentoMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "totalFatura"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "historico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "moedaContrato"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "real"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataFechamentoPrevistoProxFatura"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "limiteTotalCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "limiteParaSaqueVista"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "limiteDisponivelEm"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "limiteDisponivelEmData"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoAnterior"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "totalPagamento"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "limiteDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "totalCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "totalDeCreditos"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "despesasDebitos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "totalDespesa"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "totalConvertido"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cotacaoDolar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cotacaoDolarDia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "multaPorAtraso"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jurosMora"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "totalParcelaVencer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "comprasParcProxFatura"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "comprasParcTotalVencer"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "comprasParcJuroProxFatura"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "comprasParcJuroTotalVencer"

    .line 96
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "parcelamentoFaturaProxima"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "parcelamentoFaturaTotalVencer"

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pagamentoParcial"

    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valorPagamentoParcial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saques"

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "comprasParceladasComJuros"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "melhorDataCompra"

    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "situacaoFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    :cond_2
    iput-boolean v2, p0, Ljzg;->c:Z

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzg;->b:Ljava/lang/StringBuffer;

    .line 108
    :cond_3
    return-void
.end method
