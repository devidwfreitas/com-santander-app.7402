.class public Lfrn;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfrm;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lfrm;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iput-object p1, p0, Lfrn;->a:Lfrm;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 59
    iput-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfrn;->c:Z

    .line 61
    iput-object v1, p0, Lfrn;->h:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 135
    iget-boolean v0, p0, Lfrn;->c:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 138
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "numContratoCDB"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->U(Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v0, "prazoCDB"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->V(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_2
    const-string v0, "taxaCDB"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->W(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_3
    const-string v0, "vinculo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->X(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_4
    const-string v0, "contaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->Y(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_5
    const-string v0, "contaFundoCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->Z(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_6
    const-string v0, "contaPoupancaCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->aa(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_7
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 169
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->ac(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_8
    const-string v0, "numeroCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->ad(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_9
    const-string v0, "codigoBarra"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 175
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->ae(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_a
    const-string v0, "concessionaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 178
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->af(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_b
    const-string v0, "historico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 181
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->al(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_c
    const-string v0, "ispb"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 184
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->am(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_d
    const-string v0, "telefone"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 187
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->an(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_e
    const-string v0, "operadora"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 190
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->ao(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_f
    const-string v0, "canal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 193
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->S(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_10
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 196
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->ag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_11
    const-string v0, "codigoBanco"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 199
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_12
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 202
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->ah(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_13
    const-string v0, "dataAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 205
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_14
    const-string v0, "dataHoraSolicitacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 208
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->T(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_15
    const-string v0, "dataSolicitada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 211
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->J(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_16
    const-string v0, "descricao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 214
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->K(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_17
    const-string v0, "descricaoBanco"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 217
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_18
    const-string v0, "documentoFavorecido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 220
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->ai(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_19
    const-string v0, "favorecido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 223
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->aj(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_1a
    const-string v0, "finalidade"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 226
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->ak(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_1b
    const-string v0, "horaSolicitada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 229
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->M(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :cond_1c
    const-string v0, "numProtocolo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 232
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->N(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_1d
    const-string v0, "status"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 235
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->O(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_1e
    const-string v0, "subTipoAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 238
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :cond_1f
    const-string v0, "tipo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 241
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->ab(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_20
    const-string v0, "tipoAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 244
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->R(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_21
    const-string v0, "tipoAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 247
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->R(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_22
    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 250
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->P(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_23
    const-string v0, "confirmacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 253
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->aq(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_24
    const-string v0, "indiceAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 256
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_25
    const-string v0, "autenticacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 259
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :cond_26
    const-string v0, "codigoArea"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 262
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_27
    const-string v0, "dataRecarga"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 265
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_28
    const-string v0, "tipoTransferencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 268
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_29
    const-string v0, "agenciaCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 271
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_2a
    const-string v0, "agenciaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 274
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :cond_2b
    const-string v0, "descricaoConcessionaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 277
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->af(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :cond_2c
    const-string v0, "contaPoupancaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 280
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :cond_2d
    const-string v0, "mensagemErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lfrn;->a:Lfrm;

    invoke-static {v0}, Lfrm;->a(Lfrm;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 68
    const-string v0, "numContratoCDB"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prazoCDB"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "taxaCDB"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vinculo"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contaDebito"

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contaFundoCredito"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contaPoupancaCredito"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataVencimento"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroCartao"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoBarra"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "concessionaria"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "historico"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ispb"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "telefone"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "operadora"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoArea"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataRecarga"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoTransferencia"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "canal"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agencia"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoBanco"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conta"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataAgendamento"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataHoraSolicitacao"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataSolicitada"

    .line 96
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricao"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoBanco"

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "documentoFavorecido"

    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "favorecido"

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "finalidade"

    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "horaSolicitada"

    .line 102
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numProtocolo"

    .line 103
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "status"

    .line 104
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subTipoAgendamento"

    .line 105
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipo"

    .line 106
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoAgendamento"

    .line 107
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valor"

    .line 108
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirmacao"

    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "indiceAgendamento"

    .line 111
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autenticacao"

    .line 113
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agenciaCredito"

    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agenciaDebito"

    .line 116
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoConcessionaria"

    .line 117
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contaPoupancaDebito"

    .line 118
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemErro"

    .line 120
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfrn;->c:Z

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfrn;->b:Ljava/lang/StringBuffer;

    .line 128
    :cond_1
    return-void
.end method
