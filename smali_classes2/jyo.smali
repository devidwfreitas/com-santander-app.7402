.class public Ljyo;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyn;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyn;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Ljyo;->a:Ljyn;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljyo;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 113
    iget-boolean v0, p0, Ljyo;->c:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 116
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->b(Ljyn;)Lfvy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->b(Ljyn;)Lfvy;

    move-result-object v0

    invoke-virtual {p0}, Ljyo;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvy;->setError(Lfvu;)V

    .line 256
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "listaCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->b(Ljyn;)Lfvy;

    move-result-object v0

    invoke-virtual {v0}, Lfvy;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljyo;->a:Ljyn;

    invoke-static {v1}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    const-string v0, "tipoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 129
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    invoke-virtual {v0}, Lfvw;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->a(Ljava/lang/String;)V

    .line 132
    :cond_1
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 134
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->j(Ljava/lang/String;)V

    .line 138
    :cond_2
    const-string v0, "numeroCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 140
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    iget-object v4, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->b(Ljava/lang/String;)V

    .line 143
    :cond_3
    const-string v0, "descProdutoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 145
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->a(Ljava/lang/String;)V

    .line 148
    :cond_4
    const-string v0, "identificadorTitularidade"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 150
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->l(Ljava/lang/String;)V

    .line 153
    :cond_5
    const-string v0, "numContratoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 155
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->d(Ljava/lang/String;)V

    .line 158
    :cond_6
    const-string v0, "numPlasticoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 160
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->e(Ljava/lang/String;)V

    .line 163
    :cond_7
    const-string v0, "numeroFinal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 164
    const-string v0, ""

    .line 165
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 167
    :try_start_0
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 168
    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Ljyo;->a:Ljyn;

    invoke-static {v1}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Final "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfvw;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :cond_8
    :goto_0
    const-string v0, "numBeneficiario"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 179
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->f(Ljava/lang/String;)V

    .line 182
    :cond_9
    const-string v0, "nomeClientePlasticoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 183
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 184
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->g(Ljava/lang/String;)V

    .line 187
    :cond_a
    const-string v0, "codigoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 189
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->h(Ljava/lang/String;)V

    .line 192
    :cond_b
    const-string v0, "codigoSubproduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 193
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 194
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    iget-object v1, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->i(Ljava/lang/String;)V

    .line 197
    :cond_c
    const-string v0, "limiteDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 198
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 199
    iget-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 202
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_d
    iget-object v1, p0, Ljyo;->a:Ljyn;

    invoke-static {v1}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvw;->c(Ljava/lang/String;)V

    .line 208
    :cond_e
    const-string v0, "LIMCREC"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 209
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 210
    iget-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v1, "\\{"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 214
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_f
    iget-object v1, p0, Ljyo;->a:Ljyn;

    invoke-static {v1}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvw;->c(Ljava/lang/String;)V

    .line 220
    :cond_10
    const-string v0, "percentualLimiteDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 221
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 222
    iget-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 224
    iget-object v0, p0, Ljyo;->a:Ljyn;

    invoke-static {v0}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljyo;->a:Ljyn;

    invoke-static {v2}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v2

    invoke-virtual {v2}, Lfvw;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvw;->c(Ljava/lang/String;)V

    .line 228
    :cond_11
    const-string v0, "vencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 229
    iput-boolean v5, p0, Ljyo;->c:Z

    .line 230
    iget-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Ljyo;->a:Ljyn;

    invoke-static {v1}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvw;->k(Ljava/lang/String;)V

    .line 234
    :cond_12
    const-string v0, "valorSaldoParcial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 235
    iput-boolean v6, p0, Ljyo;->c:Z

    .line 236
    iget-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Ljyo;->a:Ljyn;

    invoke-static {v1}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvw;->n(Ljava/lang/String;)V

    .line 239
    :cond_13
    const-string v0, "indCartaoInternac"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 240
    iput-boolean v6, p0, Ljyo;->c:Z

    .line 241
    iget-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v1, p0, Ljyo;->a:Ljyn;

    invoke-static {v1}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvw;->p(Ljava/lang/String;)V

    .line 244
    :cond_14
    const-string v0, "indViagemVigente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 245
    iput-boolean v6, p0, Ljyo;->c:Z

    .line 246
    iget-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Ljyo;->a:Ljyn;

    invoke-static {v1}, Ljyn;->a(Ljyn;)Lfvw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvw;->o(Ljava/lang/String;)V

    .line 249
    :cond_15
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 78
    const-string v0, "listaCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Ljyo;->a:Ljyn;

    new-instance v1, Lfvw;

    invoke-direct {v1}, Lfvw;-><init>()V

    invoke-static {v0, v1}, Ljyn;->a(Ljyn;Lfvw;)Lfvw;

    .line 82
    :cond_0
    const-string v0, "tipoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "agencia"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroCartao"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "limiteDisponivel"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "descProdutoCartao"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numContratoCartao"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numPlasticoCartao"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numBeneficiario"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoProduto"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoSubproduto"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nomeClientePlasticoCartao"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LIMCREC"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "percentualLimiteDisponivel"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vencimento"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "identificadorTitularidade"

    .line 96
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valorSaldoParcial"

    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "indCartaoInternac"

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "indViagemVigente"

    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numeroFinal"

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljyo;->c:Z

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyo;->b:Ljava/lang/StringBuffer;

    .line 106
    :cond_2
    return-void
.end method
