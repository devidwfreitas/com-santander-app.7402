.class public Ljyi;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyh;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyh;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Ljyi;->a:Ljyh;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljyi;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 102
    iget-boolean v0, p0, Ljyi;->c:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    invoke-virtual {p0}, Ljyi;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->setError(Lfvu;)V

    .line 179
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 115
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->q(Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 118
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 121
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    const-string v0, "dataEfetivacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 124
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_4
    const-string v0, "horaEfetivacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 127
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->p(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_5
    const-string v0, "prazo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 130
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_6
    const-string v0, "produto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 133
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_7
    const-string v0, "taxaCDI"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 136
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_8
    const-string v0, "valorAplicado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 139
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_9
    const-string v0, "valorBruto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 141
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 142
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_a
    const-string v0, "valorBrutoAtualizado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 144
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 145
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_b
    const-string v0, "valorIOF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 147
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 148
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_c
    const-string v0, "valorIR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 150
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 151
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_d
    const-string v0, "valorLiquido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 153
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 154
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_e
    const-string v0, "mensagemErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 156
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 157
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_f
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 159
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 160
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_10
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iput-boolean v1, p0, Ljyi;->c:Z

    .line 163
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->n(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->setFaultstring(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Ljyi;->a:Ljyh;

    invoke-static {v0}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v0

    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftv;->setFaultcode(Ljava/lang/String;)V

    .line 166
    new-instance v0, Lfvv;

    invoke-direct {v0}, Lfvv;-><init>()V

    .line 167
    iget-object v1, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvv;->d(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Ljyi;->a:Ljyh;

    invoke-static {v1}, Ljyh;->a(Ljyh;)Lftv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lftv;->setErrorDetail(Lfvv;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 74
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataContabil"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataEfetivacao"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "horaEfetivacao"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prazo"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "produto"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "taxaCDI"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorAplicado"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorBruto"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorBrutoAtualizado"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorIOF"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorIR"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorLiquido"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autenticacaoBancaria"

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

    if-nez v0, :cond_0

    const-string v0, "mensagemErro"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljyi;->c:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyi;->b:Ljava/lang/StringBuffer;

    .line 95
    :cond_1
    return-void
.end method
