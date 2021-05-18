.class public Ljyg;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyf;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Z

.field private i:Lftu;


# direct methods
.method public constructor <init>(Ljyf;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Ljyg;->a:Ljyf;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljyg;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 109
    iget-boolean v0, p0, Ljyg;->c:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 112
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    invoke-virtual {p0}, Ljyg;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->setError(Lfvu;)V

    .line 182
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
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 121
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->j(Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 124
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    const-string v0, "descricaoSubProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 127
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "percentual"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 130
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_4
    const-string v0, "prazo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 133
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_5
    const-string v0, "taxaCDI"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Ljyg;->h:Z

    if-nez v0, :cond_6

    .line 135
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 136
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_6
    const-string v0, "tipoInteresse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 139
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_7
    const-string v0, "valorAplicado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 142
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_8
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 145
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_9
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 148
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->h(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->setFaultstring(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftt;->setFaultcode(Ljava/lang/String;)V

    .line 151
    new-instance v0, Lfvv;

    invoke-direct {v0}, Lfvv;-><init>()V

    .line 152
    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvv;->d(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Ljyg;->a:Ljyf;

    invoke-static {v1}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lftt;->setErrorDetail(Lfvv;)V

    goto/16 :goto_0

    .line 154
    :cond_a
    iget-boolean v0, p0, Ljyg;->h:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "listaRemuneracao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 156
    iput-boolean v1, p0, Ljyg;->h:Z

    .line 157
    iget-object v0, p0, Ljyg;->a:Ljyf;

    invoke-static {v0}, Ljyf;->a(Ljyf;)Lftt;

    move-result-object v0

    invoke-virtual {v0}, Lftt;->i()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljyg;->i:Lftu;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 158
    :cond_b
    const-string v0, "observacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 159
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 160
    iget-object v0, p0, Ljyg;->i:Lftu;

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftu;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_c
    const-string v0, "prazoFinal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 162
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 163
    iget-object v0, p0, Ljyg;->i:Lftu;

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftu;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_d
    const-string v0, "prazoInicial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 165
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 166
    iget-object v0, p0, Ljyg;->i:Lftu;

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftu;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_e
    const-string v0, "taxaCDI"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 169
    iget-object v0, p0, Ljyg;->i:Lftu;

    iget-object v1, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftu;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 80
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoSubProduto"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "percentual"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prazo"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "taxaCDI"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoInteresse"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorAplicado"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "observacao"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prazoFinal"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prazoInicial"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "taxaCDI"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autenticacaoBancaria"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemRetorno"

    .line 92
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :cond_0
    iput-boolean v1, p0, Ljyg;->c:Z

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyg;->b:Ljava/lang/StringBuffer;

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    const-string v0, "listaRemuneracao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lftu;

    invoke-direct {v0}, Lftu;-><init>()V

    iput-object v0, p0, Ljyg;->i:Lftu;

    .line 100
    iput-boolean v1, p0, Ljyg;->h:Z

    goto :goto_0
.end method
