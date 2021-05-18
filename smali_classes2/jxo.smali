.class public Ljxo;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxn;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljxn;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iput-object p1, p0, Ljxo;->a:Ljxn;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 67
    iput-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxo;->c:Z

    .line 69
    iput-object v1, p0, Ljxo;->h:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 100
    iget-boolean v0, p0, Ljxo;->c:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 103
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    invoke-virtual {p0}, Ljxo;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->setError(Lfvu;)V

    .line 161
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
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 112
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->a(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 115
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    const-string v0, "dataEfetivacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 118
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 121
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_4
    const-string v0, "horaEfetivacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 124
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_5
    const-string v0, "percentual"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 127
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_6
    const-string v0, "prazo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 130
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_7
    const-string v0, "taxaCDI"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 133
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_8
    const-string v0, "tipoInteresse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 136
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_9
    const-string v0, "valorAplicado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 138
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 139
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_a
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 142
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_b
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iput-boolean v1, p0, Ljxo;->c:Z

    .line 145
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->l(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->setFaultstring(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Ljxo;->a:Ljxn;

    invoke-static {v0}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v0

    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsz;->setFaultcode(Ljava/lang/String;)V

    .line 148
    new-instance v0, Lfvv;

    invoke-direct {v0}, Lfvv;-><init>()V

    .line 149
    iget-object v1, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvv;->d(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Ljxo;->a:Ljxn;

    invoke-static {v1}, Ljxn;->a(Ljxn;)Lfsz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfsz;->setErrorDetail(Lfvv;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 77
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoRetorno"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataContabil"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataEfetivacao"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataVencimento"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "horaEfetivacao"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "percentual"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prazo"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "taxaCDI"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoInteresse"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorAplicado"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemRetorno"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxo;->c:Z

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxo;->b:Ljava/lang/StringBuffer;

    .line 93
    :cond_1
    return-void
.end method
