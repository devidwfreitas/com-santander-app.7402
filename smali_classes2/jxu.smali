.class public Ljxu;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxt;

.field private b:Ljava/lang/StringBuffer;

.field private c:Lftb;

.field private h:Lftl;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Ljxt;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iput-object p1, p0, Ljxu;->a:Ljxt;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    .line 70
    iput-boolean v1, p0, Ljxu;->i:Z

    .line 71
    iput-boolean v1, p0, Ljxu;->j:Z

    .line 72
    iput-boolean v1, p0, Ljxu;->k:Z

    .line 73
    iput-boolean v1, p0, Ljxu;->l:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 123
    iget-boolean v0, p0, Ljxu;->l:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Ljxu;->a:Ljxt;

    invoke-static {v0}, Ljxt;->a(Ljxt;)Lftc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Ljxu;->a:Ljxt;

    invoke-static {v0}, Ljxt;->a(Ljxt;)Lftc;

    move-result-object v0

    invoke-virtual {p0}, Ljxu;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftc;->setError(Lfvu;)V

    .line 310
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Ljxu;->i:Z

    if-eqz v0, :cond_0

    .line 133
    iget-boolean v0, p0, Ljxu;->j:Z

    if-nez v0, :cond_d

    .line 135
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 137
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->i(Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 140
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    const-string v0, "possuiRegraAnterior"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ljxu;->k:Z

    if-eqz v0, :cond_3

    .line 142
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 143
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    const-string v0, "possuiRegraAtual"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ljxu;->k:Z

    if-eqz v0, :cond_4

    .line 145
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 146
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_4
    const-string v0, "saldoBloqueado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Ljxu;->k:Z

    if-eqz v0, :cond_5

    .line 148
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 149
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_5
    const-string v0, "saldoBloqueadoJudicial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Ljxu;->k:Z

    if-eqz v0, :cond_6

    .line 151
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 152
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_6
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Ljxu;->k:Z

    if-eqz v0, :cond_7

    .line 154
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 155
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_7
    const-string v0, "saldoDisponivelAnterior"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Ljxu;->k:Z

    if-eqz v0, :cond_8

    .line 157
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 158
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_8
    const-string v0, "saldoDisponivelAtual"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ljxu;->k:Z

    if-eqz v0, :cond_9

    .line 160
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 161
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_9
    const-string v0, "saldoTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljxu;->k:Z

    if-eqz v0, :cond_a

    .line 163
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 164
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_a
    const-string v0, "listaPosicaoConsolidada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    iget-object v0, p0, Ljxu;->a:Ljxt;

    invoke-static {v0}, Ljxt;->a(Ljxt;)Lftc;

    move-result-object v0

    invoke-virtual {v0}, Lftc;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljxu;->c:Lftb;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 167
    iput-boolean v2, p0, Ljxu;->i:Z

    goto/16 :goto_0

    .line 168
    :cond_b
    const-string v0, "total"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 169
    iput-boolean v2, p0, Ljxu;->k:Z

    goto/16 :goto_0

    .line 170
    :cond_c
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 172
    iget-object v0, p0, Ljxu;->c:Lftb;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftb;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_d
    const-string v0, "possuiRegraAnterior"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 178
    iget-object v0, p0, Ljxu;->h:Lftl;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_e
    const-string v0, "possuiRegraAtual"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 180
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 181
    iget-object v0, p0, Ljxu;->h:Lftl;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_f
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 183
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 184
    iget-object v0, p0, Ljxu;->h:Lftl;

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v0

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftj;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_10
    const-string v0, "banco"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 186
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 187
    iget-object v0, p0, Ljxu;->h:Lftl;

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v0

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftj;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_11
    const-string v0, "dataAbertura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 189
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 190
    iget-object v0, p0, Ljxu;->h:Lftl;

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v0

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftj;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_12
    const-string v0, "numero"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 192
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 193
    iget-object v0, p0, Ljxu;->h:Lftl;

    invoke-virtual {v0}, Lftl;->c()Lftj;

    move-result-object v0

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftj;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_13
    const-string v0, "saldoBloqueado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 195
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 196
    iget-object v0, p0, Ljxu;->h:Lftl;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_14
    const-string v0, "saldoBloqueadoJudicial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 198
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 199
    iget-object v0, p0, Ljxu;->h:Lftl;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :cond_15
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 201
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 202
    iget-object v0, p0, Ljxu;->h:Lftl;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_16
    const-string v0, "saldoDisponivelAnterior"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 204
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 205
    iget-object v0, p0, Ljxu;->h:Lftl;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_17
    const-string v0, "saldoDisponivelAtual"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 207
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 208
    iget-object v0, p0, Ljxu;->h:Lftl;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_18
    const-string v0, "saldoTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 210
    iput-boolean v2, p0, Ljxu;->l:Z

    .line 211
    iget-object v0, p0, Ljxu;->h:Lftl;

    iget-object v1, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftl;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_19
    const-string v0, "listaPosicaoConsolidada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 213
    iget-object v0, p0, Ljxu;->c:Lftb;

    invoke-virtual {v0}, Lftb;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljxu;->h:Lftl;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 214
    iput-boolean v2, p0, Ljxu;->j:Z

    goto/16 :goto_0

    .line 215
    :cond_1a
    const-string v0, "total"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iput-boolean v2, p0, Ljxu;->k:Z

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 80
    const-string v0, "possuiRegraAnterior"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "possuiRegraAtual"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agencia"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "banco"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conta"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataAbertura"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numero"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoBloqueado"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoBloqueadoJudicial"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoDisponivel"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoDisponivelAnterior"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoDisponivelAtual"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoTotal"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "possuiRegraAnterior"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "possuiRegraAtual"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoBloqueado"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoBloqueadoJudicial"

    .line 96
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoDisponivel"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoDisponivelAnterior"

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoDisponivelAtual"

    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoTotal"

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoRetorno"

    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :cond_0
    iput-boolean v1, p0, Ljxu;->l:Z

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxu;->b:Ljava/lang/StringBuffer;

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    const-string v0, "listaPosicaoConsolidada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    iget-boolean v0, p0, Ljxu;->i:Z

    if-nez v0, :cond_3

    .line 107
    iput-boolean v1, p0, Ljxu;->i:Z

    .line 108
    new-instance v0, Lftb;

    invoke-direct {v0}, Lftb;-><init>()V

    iput-object v0, p0, Ljxu;->c:Lftb;

    goto :goto_0

    .line 109
    :cond_3
    iget-boolean v0, p0, Ljxu;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljxu;->j:Z

    if-nez v0, :cond_1

    .line 110
    iput-boolean v1, p0, Ljxu;->j:Z

    .line 111
    new-instance v0, Lftl;

    invoke-direct {v0}, Lftl;-><init>()V

    iput-object v0, p0, Ljxu;->h:Lftl;

    goto :goto_0

    .line 113
    :cond_4
    const-string v0, "total"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iput-boolean v1, p0, Ljxu;->k:Z

    goto :goto_0
.end method
