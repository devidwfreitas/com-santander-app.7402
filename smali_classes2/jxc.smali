.class public Ljxc;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxb;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljxb;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Ljxc;->a:Ljxb;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxc;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 112
    iget-boolean v0, p0, Ljxc;->c:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 115
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    invoke-virtual {p0}, Ljxc;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->setError(Lfvu;)V

    .line 243
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "lancamentos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    invoke-virtual {v0}, Lfuy;->y()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljxc;->a:Ljxb;

    invoke-static {v1}, Ljxb;->a(Ljxb;)Lfve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v0, "saldoFundosComResgateAutomatico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 127
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "saldoContaCorrenteContaMax"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 131
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_3
    const-string v0, "provisaoEncargos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 135
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_4
    const-string v0, "iofAcumuladosAteData"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 139
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_5
    const-string v0, "saldoDisponivelTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 143
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_6
    const-string v0, "lancamentosProvisionadosDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 147
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_7
    const-string v0, "saldoBloqueado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 151
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_8
    const-string v0, "saldoBloqueadoJudicial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 154
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 155
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_9
    const-string v0, "saldoDisponivelContaCorrenteContaMax"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 158
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 159
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_a
    const-string v0, "saldoTotalContaCorrenteContaMax"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 163
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_b
    const-string v0, "saldoBloqueioDia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 166
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 167
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_c
    const-string v0, "limiteDescricao1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 170
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 171
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_d
    const-string v0, "limiteDescricao2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 174
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 175
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_e
    const-string v0, "lancamentosProvisionadosCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 178
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 179
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_f
    const-string v0, "cpmfAcumulado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 182
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 183
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_10
    const-string v0, "desbloqueio2Dias"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 186
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 187
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_11
    const-string v0, "desbloqueioMais2Dias"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 190
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 191
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_12
    const-string v0, "limiteValor1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 194
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 195
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_13
    const-string v0, "limiteValor2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 198
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 199
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_14
    const-string v0, "jurosAcumuladosAteData"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 202
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 203
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_15
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 206
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 207
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_16
    const-string v0, "cpmfProvisionadaSobreSaldo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 210
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 211
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_17
    const-string v0, "desbloqueio1Dia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 214
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 215
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->b(Ljxb;)Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_18
    const-string v0, "historico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 219
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 220
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->a(Ljxb;)Lfve;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfve;->setHistorico(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_19
    const-string v0, "docto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 223
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 224
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->a(Ljxb;)Lfve;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfve;->setDocto(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_1a
    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 227
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 228
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->a(Ljxb;)Lfve;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfve;->setValor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_1b
    const-string v0, "data"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iput-boolean v1, p0, Ljxc;->c:Z

    .line 232
    iget-object v0, p0, Ljxc;->a:Ljxb;

    invoke-static {v0}, Ljxb;->a(Ljxb;)Lfve;

    move-result-object v0

    iget-object v1, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfve;->setData(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 71
    const-string v0, "lancamentos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Ljxc;->a:Ljxb;

    new-instance v1, Lfve;

    invoke-direct {v1}, Lfve;-><init>()V

    invoke-static {v0, v1}, Ljxb;->a(Ljxb;Lfve;)Lfve;

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "saldoFundosComResgateAutomatico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoContaCorrenteContaMax"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "provisaoEncargos"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "iofAcumuladosAteData"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoDisponivelTotal"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lancamentosProvisionadosDebito"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoBloqueado"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoBloqueadoJudicial"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoTotalContaCorrenteContaMax"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoBloqueioDia"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "limiteDescricao1"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "limiteDescricao2"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lancamentosProvisionadosCredito"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cpmfAcumulado"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "desbloqueio2Dias"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "desbloqueioMais2Dias"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "limiteValor1"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "limiteValor2"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jurosAcumuladosAteData"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoDisponivel"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cpmfProvisionadaSobreSaldo"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "desbloqueio1Dia"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoBloqueadoJudicial"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "historico"

    .line 96
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "docto"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valor"

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data"

    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxc;->c:Z

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxc;->b:Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
