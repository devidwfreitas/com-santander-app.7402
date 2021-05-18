.class Lkal;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkaj;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfwj;

.field private i:Lfwk;

.field private j:Lfwi;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method private constructor <init>(Lkaj;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    iput-object p1, p0, Lkal;->a:Lkaj;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    iput-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    .line 66
    iput-boolean v0, p0, Lkal;->c:Z

    .line 67
    iput-object v1, p0, Lkal;->h:Lfwj;

    .line 68
    iput-object v1, p0, Lkal;->i:Lfwk;

    .line 69
    iput-object v1, p0, Lkal;->j:Lfwi;

    .line 70
    iput-boolean v0, p0, Lkal;->k:Z

    .line 71
    iput-boolean v0, p0, Lkal;->l:Z

    .line 72
    iput-boolean v0, p0, Lkal;->m:Z

    .line 73
    iput-boolean v0, p0, Lkal;->n:Z

    return-void
.end method

.method synthetic constructor <init>(Lkaj;Lkak;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lkal;-><init>(Lkaj;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 137
    iget-boolean v0, p0, Lkal;->c:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 140
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lkal;->a:Lkaj;

    invoke-static {v0}, Lkaj;->a(Lkaj;)Lfwb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lkal;->a:Lkaj;

    invoke-static {v0}, Lkaj;->a(Lkaj;)Lfwb;

    move-result-object v0

    invoke-virtual {p0}, Lkal;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwb;->setError(Lfvu;)V

    .line 406
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "listAplicacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_1

    .line 148
    iput-boolean v1, p0, Lkal;->n:Z

    .line 149
    iget-object v0, p0, Lkal;->i:Lfwk;

    invoke-virtual {v0}, Lfwk;->g()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lkal;->j:Lfwi;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v0, "listaProdutos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lkal;->m:Z

    if-eqz v0, :cond_2

    .line 151
    iput-boolean v1, p0, Lkal;->m:Z

    .line 152
    iget-object v0, p0, Lkal;->h:Lfwj;

    invoke-virtual {v0}, Lfwj;->g()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lkal;->i:Lfwk;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_2
    const-string v0, "listaPosicaoConsolidada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lkal;->l:Z

    if-eqz v0, :cond_3

    .line 154
    iput-boolean v1, p0, Lkal;->l:Z

    goto :goto_0

    .line 155
    :cond_3
    const-string v0, "listaPosicaoConsolidada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lkal;->k:Z

    if-eqz v0, :cond_4

    .line 156
    iput-boolean v1, p0, Lkal;->k:Z

    .line 157
    iget-object v0, p0, Lkal;->a:Lkaj;

    invoke-static {v0}, Lkaj;->a(Lkaj;)Lfwb;

    move-result-object v0

    invoke-virtual {v0}, Lfwb;->f()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lkal;->h:Lfwj;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_4
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lkal;->k:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lkal;->l:Z

    if-nez v0, :cond_5

    .line 159
    iput-boolean v1, p0, Lkal;->c:Z

    .line 160
    iget-object v0, p0, Lkal;->h:Lfwj;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_5
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lkal;->k:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lkal;->l:Z

    if-nez v0, :cond_6

    .line 162
    iput-boolean v1, p0, Lkal;->c:Z

    .line 163
    iget-object v0, p0, Lkal;->h:Lfwj;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwj;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_6
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lkal;->l:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lkal;->m:Z

    if-nez v0, :cond_7

    .line 165
    iput-boolean v1, p0, Lkal;->c:Z

    .line 166
    iget-object v0, p0, Lkal;->h:Lfwj;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwj;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_7
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lkal;->l:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lkal;->m:Z

    if-nez v0, :cond_8

    .line 168
    iput-boolean v1, p0, Lkal;->c:Z

    .line 169
    iget-object v0, p0, Lkal;->h:Lfwj;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwj;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_8
    const-string v0, "valorAplicado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lkal;->l:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lkal;->m:Z

    if-nez v0, :cond_9

    .line 171
    iput-boolean v1, p0, Lkal;->c:Z

    .line 172
    iget-object v0, p0, Lkal;->h:Lfwj;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwj;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_9
    const-string v0, "valorBloqueado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lkal;->l:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lkal;->m:Z

    if-nez v0, :cond_a

    .line 174
    iput-boolean v1, p0, Lkal;->c:Z

    .line 175
    iget-object v0, p0, Lkal;->h:Lfwj;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwj;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_a
    const-string v0, "valorBruto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lkal;->l:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lkal;->m:Z

    if-nez v0, :cond_b

    .line 177
    iput-boolean v1, p0, Lkal;->c:Z

    .line 178
    iget-object v0, p0, Lkal;->h:Lfwj;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwj;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_b
    const-string v0, "valorLiquido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lkal;->l:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lkal;->m:Z

    if-nez v0, :cond_c

    .line 180
    iput-boolean v1, p0, Lkal;->c:Z

    .line 181
    iget-object v0, p0, Lkal;->h:Lfwj;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwj;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_c
    const-string v0, "codigoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lkal;->m:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lkal;->n:Z

    if-nez v0, :cond_d

    .line 183
    iput-boolean v1, p0, Lkal;->c:Z

    .line 184
    iget-object v0, p0, Lkal;->i:Lfwk;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwk;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_d
    const-string v0, "nomeProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lkal;->m:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lkal;->n:Z

    if-nez v0, :cond_e

    .line 186
    iput-boolean v1, p0, Lkal;->c:Z

    .line 187
    iget-object v0, p0, Lkal;->i:Lfwk;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwk;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_e
    const-string v0, "saldoBloqueado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lkal;->m:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lkal;->n:Z

    if-nez v0, :cond_f

    .line 189
    iput-boolean v1, p0, Lkal;->c:Z

    .line 190
    iget-object v0, p0, Lkal;->i:Lfwk;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwk;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_f
    const-string v0, "saldoBruto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lkal;->m:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lkal;->n:Z

    if-nez v0, :cond_10

    .line 192
    iput-boolean v1, p0, Lkal;->c:Z

    .line 193
    iget-object v0, p0, Lkal;->i:Lfwk;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwk;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_10
    const-string v0, "saldoLiquido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lkal;->m:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lkal;->n:Z

    if-nez v0, :cond_11

    .line 195
    iput-boolean v1, p0, Lkal;->c:Z

    .line 196
    iget-object v0, p0, Lkal;->i:Lfwk;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwk;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_11
    const-string v0, "valorAplicado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lkal;->m:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lkal;->n:Z

    if-nez v0, :cond_12

    .line 198
    iput-boolean v1, p0, Lkal;->c:Z

    .line 199
    iget-object v0, p0, Lkal;->i:Lfwk;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwk;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :cond_12
    const-string v0, "dataEmissao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_13

    .line 201
    iput-boolean v1, p0, Lkal;->c:Z

    .line 202
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_13
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_14

    .line 204
    iput-boolean v1, p0, Lkal;->c:Z

    .line 205
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_14
    const-string v0, "indPagamantoJuros"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_15

    .line 207
    iput-boolean v1, p0, Lkal;->c:Z

    .line 208
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_15
    const-string v0, "numeroOperacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_16

    .line 210
    iput-boolean v1, p0, Lkal;->c:Z

    .line 211
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_16
    const-string v0, "papel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_17

    .line 213
    iput-boolean v1, p0, Lkal;->c:Z

    .line 214
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_17
    const-string v0, "indexador"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_18

    .line 219
    iput-boolean v1, p0, Lkal;->c:Z

    .line 220
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_18
    const-string v0, "estado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_19

    .line 223
    iput-boolean v1, p0, Lkal;->c:Z

    .line 224
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :cond_19
    const-string v0, "porcent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_1a

    .line 236
    iput-boolean v1, p0, Lkal;->c:Z

    .line 237
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_1a
    const-string v0, "prazo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_1b

    .line 239
    iput-boolean v1, p0, Lkal;->c:Z

    .line 240
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_1b
    const-string v0, "saldoBloqueado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_1c

    .line 242
    iput-boolean v1, p0, Lkal;->c:Z

    .line 243
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :cond_1c
    const-string v0, "saldoBruto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_1d

    .line 245
    iput-boolean v1, p0, Lkal;->c:Z

    .line 246
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :cond_1d
    const-string v0, "tarifaVigente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_1e

    .line 248
    iput-boolean v1, p0, Lkal;->c:Z

    .line 249
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :cond_1e
    const-string v0, "valorAplicado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_1f

    .line 251
    iput-boolean v1, p0, Lkal;->c:Z

    .line 252
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_1f
    const-string v0, "valorIOF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_20

    .line 254
    iput-boolean v1, p0, Lkal;->c:Z

    .line 255
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :cond_20
    const-string v0, "valorIR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_21

    .line 257
    iput-boolean v1, p0, Lkal;->c:Z

    .line 258
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_21
    const-string v0, "valorLiquido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_22

    .line 260
    iput-boolean v1, p0, Lkal;->c:Z

    .line 261
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :cond_22
    const-string v0, "valorTaxaSaida"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkal;->n:Z

    if-eqz v0, :cond_0

    .line 263
    iput-boolean v1, p0, Lkal;->c:Z

    .line 264
    iget-object v0, p0, Lkal;->j:Lfwi;

    iget-object v1, p0, Lkal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwi;->n(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 82
    const-string v0, "listaPosicaoConsolidada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lkal;->k:Z

    if-nez v0, :cond_1

    .line 83
    iput-boolean v1, p0, Lkal;->k:Z

    .line 84
    new-instance v0, Lfwj;

    invoke-direct {v0}, Lfwj;-><init>()V

    iput-object v0, p0, Lkal;->h:Lfwj;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v0, "listaPosicaoConsolidada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lkal;->l:Z

    if-nez v0, :cond_2

    .line 86
    iput-boolean v1, p0, Lkal;->l:Z

    goto :goto_0

    .line 87
    :cond_2
    const-string v0, "listaProdutos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lkal;->l:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lkal;->m:Z

    if-nez v0, :cond_3

    .line 88
    iput-boolean v1, p0, Lkal;->m:Z

    .line 89
    new-instance v0, Lfwk;

    invoke-direct {v0}, Lfwk;-><init>()V

    iput-object v0, p0, Lkal;->i:Lfwk;

    goto :goto_0

    .line 90
    :cond_3
    const-string v0, "listAplicacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lkal;->m:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lkal;->n:Z

    if-nez v0, :cond_4

    .line 91
    iput-boolean v1, p0, Lkal;->n:Z

    .line 92
    new-instance v0, Lfwi;

    invoke-direct {v0}, Lfwi;-><init>()V

    iput-object v0, p0, Lkal;->j:Lfwi;

    goto :goto_0

    .line 93
    :cond_4
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "conta"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "codigoRetorno"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "mensagemRetorno"

    .line 96
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "codigoProduto"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "dataEmissao"

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "dataVencimento"

    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "indPagamantoJuros"

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "numeroOperacao"

    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "papel"

    .line 102
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "porcent"

    .line 103
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "prazo"

    .line 104
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "saldoBruto"

    .line 105
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "tarifaVigente"

    .line 106
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "valorAplicado"

    .line 107
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "valorIOF"

    .line 108
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "valorIR"

    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "valorLiquido"

    .line 110
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "valorTaxaSaida"

    .line 111
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "nomeProduto"

    .line 112
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "saldoBloqueado"

    .line 113
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "saldoBruto"

    .line 114
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "saldoLiquido"

    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "valorAplicado"

    .line 116
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "valorBloqueado"

    .line 117
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "valorBruto"

    .line 118
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "indexador"

    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "estado"

    .line 122
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "valorLiquido"

    .line 124
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :cond_5
    iput-boolean v1, p0, Lkal;->c:Z

    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkal;->b:Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
