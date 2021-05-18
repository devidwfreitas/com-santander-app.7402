.class public Ljxs;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxr;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfte;

.field private i:Z


# direct methods
.method public constructor <init>(Ljxr;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iput-object p1, p0, Ljxs;->a:Ljxr;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    .line 68
    iput-boolean v1, p0, Ljxs;->c:Z

    .line 72
    iput-boolean v1, p0, Ljxs;->i:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 108
    iget-boolean v0, p0, Ljxs;->c:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 111
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    invoke-virtual {p0}, Ljxs;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->setError(Lfvu;)V

    .line 179
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "listAplicacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljxs;->h:Lfte;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    iput-boolean v2, p0, Ljxs;->i:Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-boolean v0, p0, Ljxs;->i:Z

    if-eqz v0, :cond_7

    .line 121
    const-string v0, "dataAplicacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 123
    iget-object v0, p0, Ljxs;->h:Lfte;

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfte;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 126
    iget-object v0, p0, Ljxs;->h:Lfte;

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfte;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    const-string v0, "numeroOperacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 129
    iget-object v0, p0, Ljxs;->h:Lfte;

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfte;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "taxaCDI"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 132
    iget-object v0, p0, Ljxs;->h:Lfte;

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfte;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_5
    const-string v0, "valorBrutoAtualizado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 135
    iget-object v0, p0, Ljxs;->h:Lfte;

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfte;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_6
    const-string v0, "valorLiquido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 138
    iget-object v0, p0, Ljxs;->h:Lfte;

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfte;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_7
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 142
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_8
    const-string v0, "dataAplicacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 145
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_9
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 148
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_a
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 150
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 151
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_b
    const-string v0, "descricaoSubProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 153
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 154
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_c
    const-string v0, "saldoMimimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 156
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 157
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_d
    const-string v0, "valorBrutoAtualizado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 159
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 160
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_e
    const-string v0, "valorLiquido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 163
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_f
    const-string v0, "valorMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 165
    iput-boolean v2, p0, Ljxs;->c:Z

    .line 166
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    iget-object v1, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftf;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_10
    const-string v0, "listAplicacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Ljxs;->a:Ljxr;

    invoke-static {v0}, Ljxr;->a(Ljxr;)Lftf;

    move-result-object v0

    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljxs;->h:Lfte;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 79
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataAplicacao"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataContabil"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataVencimento"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoSubProduto"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataAplicacao"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataVencimento"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroOperacao"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "taxaCDI"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorBrutoAtualizado"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorLiquido"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saldoMimimo"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorBrutoAtualizado"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorLiquido"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorMinimo"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    :cond_0
    iput-boolean v1, p0, Ljxs;->c:Z

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxs;->b:Ljava/lang/StringBuffer;

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    const-string v0, "listAplicacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lfte;

    invoke-direct {v0}, Lfte;-><init>()V

    iput-object v0, p0, Ljxs;->h:Lfte;

    .line 99
    iput-boolean v1, p0, Ljxs;->i:Z

    goto :goto_0
.end method
