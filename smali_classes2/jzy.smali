.class public Ljzy;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzx;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzx;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Ljzy;->a:Ljzx;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzy;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 109
    iget-boolean v0, p0, Ljzy;->c:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 112
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    invoke-virtual {p0}, Ljzy;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->setError(Lfvu;)V

    .line 204
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 121
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->n(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v0, "agendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 124
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 127
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->p(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 130
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_4
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 133
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->r(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_5
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 136
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_6
    const-string v0, "valorTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 139
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_7
    const-string v0, "nomeSacado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 142
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_8
    const-string v0, "cnpjCpfSacado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 145
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->y(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_9
    const-string v0, "codigoUF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 148
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_a
    const-string v0, "dataLimitePagamentoTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 150
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 151
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_b
    const-string v0, "dataProtocolo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 153
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 154
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_c
    const-string v0, "dataVencimentoTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 156
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 157
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->x(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_d
    const-string v0, "descricaoMunicipio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 159
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 160
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_e
    const-string v0, "especieTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 163
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_f
    const-string v0, "nomeCedente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 165
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 166
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_10
    const-string v0, "nomeRazaoSocialAvalista"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 168
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 169
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_11
    const-string v0, "numeroIdentificacaoCartorio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 171
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 172
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_12
    const-string v0, "numeroProtocolo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 174
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 175
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_13
    const-string v0, "numeroTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 177
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 178
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_14
    const-string v0, "valorCustasEmolumentos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 180
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 181
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_15
    const-string v0, "valorTotalTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 183
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 184
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_16
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 186
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 187
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_17
    const-string v0, "dataLimitePagamentoTitulo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 189
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 190
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->x(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_18
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iput-boolean v1, p0, Ljzy;->c:Z

    .line 193
    iget-object v0, p0, Ljzy;->a:Ljzx;

    invoke-static {v0}, Ljzx;->a(Ljzx;)Lfvh;

    move-result-object v0

    iget-object v1, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvh;->z(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 70
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agendamento"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codBarra"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conta"

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataContabil"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataLimitePagamentoTitulo"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoRetorno"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemRetorno"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorTitulo"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autenticacaoBancaria"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cnpjCpfSacado"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoUF"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataLimitePagamentoTitulo"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataProtocolo"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataVencimentoTitulo"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoMunicipio"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "especieTitulo"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeCedente"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeRazaoSocialAvalista"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroIdentificacaoCartorio"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroProtocolo"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroTitulo"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorCustasEmolumentos"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorTotalTitulo"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeSacado"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljzy;->c:Z

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzy;->b:Ljava/lang/StringBuffer;

    .line 102
    :cond_1
    return-void
.end method
