.class public Ljyq;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyp;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyp;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Ljyq;->a:Ljyp;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljyq;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 134
    iget-boolean v0, p0, Ljyq;->c:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 137
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->c(Ljyp;)Lfuv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->c(Ljyp;)Lfuv;

    move-result-object v0

    invoke-virtual {p0}, Ljyq;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuv;->setError(Lfvu;)V

    .line 286
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "listaSaldoContaHomeLogadaTablet"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->b(Ljyp;)Lfuu;

    move-result-object v0

    iget-object v1, p0, Ljyq;->a:Ljyp;

    invoke-static {v1}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuu;->setExtractoHome(Lfuy;)V

    .line 146
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->c(Ljyp;)Lfuv;

    move-result-object v0

    invoke-virtual {v0}, Lfuv;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljyq;->a:Ljyp;

    invoke-static {v1}, Ljyp;->b(Ljyp;)Lfuu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 149
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->b(Ljyp;)Lfuu;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuu;->setAgencia(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 152
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->b(Ljyp;)Lfuu;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuu;->setCuenta(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    const-string v0, "tipoConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 155
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->b(Ljyp;)Lfuu;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuu;->setTipoConta(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_4
    const-string v0, "saldoDisponivelTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 158
    iget-object v0, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_5
    iget-object v1, p0, Ljyq;->a:Ljyp;

    invoke-static {v1}, Ljyp;->b(Ljyp;)Lfuu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfuu;->setValor(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_6
    const-string v0, "lancamentos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    invoke-virtual {v0}, Lfuy;->y()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljyq;->a:Ljyp;

    invoke-static {v1}, Ljyp;->d(Ljyp;)Lfve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 170
    :cond_7
    const-string v0, "saldoFundosComResgateAutomatico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 171
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 172
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_8
    const-string v0, "saldoContaCorrenteContaMax"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 175
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 176
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :cond_9
    const-string v0, "provisaoEncargos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 179
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 180
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_a
    const-string v0, "iofAcumuladosAteData"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 183
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 184
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_b
    const-string v0, "saldoDisponivelTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 187
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 188
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_c
    const-string v0, "lancamentosProvisionadosDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 191
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 192
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_d
    const-string v0, "saldoBloqueado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 195
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 196
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_e
    const-string v0, "saldoBloqueadoJudicial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 199
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 200
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_f
    const-string v0, "saldoDisponivelContaCorrenteContaMax"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 203
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 204
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_10
    const-string v0, "saldoTotalContaCorrenteContaMax"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 207
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 208
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_11
    const-string v0, "saldoBloqueioDia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 211
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 212
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_12
    const-string v0, "limiteDescricao1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 215
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 216
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_13
    const-string v0, "limiteDescricao2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 219
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 220
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_14
    const-string v0, "lancamentosProvisionadosCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 223
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 224
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_15
    const-string v0, "cpmfAcumulado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 227
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 228
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_16
    const-string v0, "desbloqueio2Dias"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 231
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 232
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_17
    const-string v0, "desbloqueioMais2Dias"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 235
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 236
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_18
    const-string v0, "limiteValor1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 239
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 240
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_19
    const-string v0, "limiteValor2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 243
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 244
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_1a
    const-string v0, "jurosAcumuladosAteData"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 247
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 248
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :cond_1b
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 251
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 252
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_1c
    const-string v0, "cpmfProvisionadaSobreSaldo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 255
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 256
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_1d
    const-string v0, "desbloqueio1Dia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 259
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 260
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :cond_1e
    const-string v0, "historico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 263
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 264
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->d(Ljyp;)Lfve;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfve;->setHistorico(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_1f
    const-string v0, "docto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 267
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 268
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->d(Ljyp;)Lfve;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfve;->setDocto(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_20
    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 271
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 272
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->d(Ljyp;)Lfve;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfve;->setValor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_21
    const-string v0, "data"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 276
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->d(Ljyp;)Lfve;

    move-result-object v0

    iget-object v1, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfve;->setData(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 77
    const-string v0, "listaSaldoContaHomeLogadaTablet"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Ljyq;->a:Ljyp;

    new-instance v1, Lfuu;

    invoke-direct {v1}, Lfuu;-><init>()V

    invoke-static {v0, v1}, Ljyp;->a(Ljyp;Lfuu;)Lfuu;

    .line 79
    iget-object v0, p0, Ljyq;->a:Ljyp;

    new-instance v1, Lfuy;

    invoke-direct {v1}, Lfuy;-><init>()V

    invoke-static {v0, v1}, Ljyp;->a(Ljyp;Lfuy;)Lfuy;

    .line 80
    iget-object v0, p0, Ljyq;->a:Ljyp;

    invoke-static {v0}, Ljyp;->a(Ljyp;)Lfuy;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lfuy;->a(Ljava/util/Vector;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 87
    :cond_3
    const-string v0, "tipoConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 90
    :cond_4
    const-string v0, "saldoDisponivelTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 93
    :cond_5
    const-string v0, "lancamentos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Ljyq;->a:Ljyp;

    new-instance v1, Lfve;

    invoke-direct {v1}, Lfve;-><init>()V

    invoke-static {v0, v1}, Ljyp;->a(Ljyp;Lfve;)Lfve;

    goto :goto_0

    .line 95
    :cond_6
    const-string v0, "saldoFundosComResgateAutomatico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "saldoContaCorrenteContaMax"

    .line 96
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "provisaoEncargos"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "iofAcumuladosAteData"

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "saldoDisponivelTotal"

    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "lancamentosProvisionadosDebito"

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "saldoBloqueado"

    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "saldoBloqueadoJudicial"

    .line 102
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "saldoTotalContaCorrenteContaMax"

    .line 103
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "saldoBloqueioDia"

    .line 104
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "limiteDescricao1"

    .line 105
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "limiteDescricao2"

    .line 106
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "lancamentosProvisionadosCredito"

    .line 107
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "cpmfAcumulado"

    .line 108
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "desbloqueio2Dias"

    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "desbloqueioMais2Dias"

    .line 110
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "limiteValor1"

    .line 111
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "limiteValor2"

    .line 112
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "jurosAcumuladosAteData"

    .line 113
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "saldoDisponivel"

    .line 114
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "cpmfProvisionadaSobreSaldo"

    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "desbloqueio1Dia"

    .line 116
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "saldoBloqueadoJudicial"

    .line 117
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "historico"

    .line 118
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "docto"

    .line 119
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "valor"

    .line 120
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "data"

    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :cond_7
    iput-boolean v1, p0, Ljyq;->c:Z

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyq;->b:Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
