.class public Ljya;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxz;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljxz;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Ljya;->a:Ljxz;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Ljya;->b:Ljava/lang/StringBuffer;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljya;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 100
    iget-boolean v0, p0, Ljya;->c:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 103
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    invoke-virtual {p0}, Ljya;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->setError(Lfvu;)V

    .line 178
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "tipoOperacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iput-boolean v1, p0, Ljya;->c:Z

    .line 112
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->a(Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v0, "codigoBanco"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iput-boolean v1, p0, Ljya;->c:Z

    .line 115
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iput-boolean v1, p0, Ljya;->c:Z

    .line 118
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "numeroConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iput-boolean v1, p0, Ljya;->c:Z

    .line 121
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_4
    const-string v0, "codigoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    iput-boolean v1, p0, Ljya;->c:Z

    .line 124
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_5
    const-string v0, "penumpe"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    iput-boolean v1, p0, Ljya;->c:Z

    .line 127
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_6
    const-string v0, "tipoDocumento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    iput-boolean v1, p0, Ljya;->c:Z

    .line 130
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_7
    const-string v0, "tipoAceite"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    iput-boolean v1, p0, Ljya;->c:Z

    .line 133
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_8
    const-string v0, "penumpe"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    iput-boolean v1, p0, Ljya;->c:Z

    .line 136
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_9
    const-string v0, "codigoFormulario"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 138
    iput-boolean v1, p0, Ljya;->c:Z

    .line 139
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_a
    const-string v0, "numeroVersao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    iput-boolean v1, p0, Ljya;->c:Z

    .line 142
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_b
    const-string v0, "dataInclusaoDocumento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 144
    iput-boolean v1, p0, Ljya;->c:Z

    .line 145
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_c
    const-string v0, "codigoUsuario"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 147
    iput-boolean v1, p0, Ljya;->c:Z

    .line 148
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_d
    const-string v0, "codigoCanal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    iput-boolean v1, p0, Ljya;->c:Z

    .line 151
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_e
    const-string v0, "codigoTerminal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    iput-boolean v1, p0, Ljya;->c:Z

    .line 154
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_f
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 156
    iput-boolean v1, p0, Ljya;->c:Z

    .line 157
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_10
    const-string v0, "descricaoErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 159
    iput-boolean v1, p0, Ljya;->c:Z

    .line 160
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_11
    const-string v0, "sqlCode"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 162
    iput-boolean v1, p0, Ljya;->c:Z

    .line 163
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_12
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 165
    iput-boolean v1, p0, Ljya;->c:Z

    .line 166
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_13
    const-string v0, "nomeTabela"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iput-boolean v1, p0, Ljya;->c:Z

    .line 169
    iget-object v0, p0, Ljya;->a:Ljxz;

    invoke-static {v0}, Ljxz;->a(Ljxz;)Lfto;

    move-result-object v0

    iget-object v1, p0, Ljya;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfto;->s(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 69
    const-string v0, "tipoOperacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoBanco"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agencia"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroConta"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoProduto"

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoSubProduto"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "penumpe"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoDocumento"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoAceite"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoFormulario"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroVersao"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataInclusaoDocumento"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoUsuario"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoCanal"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoTerminal"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoRetorno"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoErro"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sqlCode"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeTabela"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemRetorno"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljya;->c:Z

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljya;->b:Ljava/lang/StringBuffer;

    .line 93
    :cond_1
    return-void
.end method
