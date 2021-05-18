.class public Lhet;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhes;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lhes;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lhet;->a:Lhes;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lhet;->b:Ljava/lang/StringBuffer;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhet;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 77
    iget-boolean v0, p0, Lhet;->c:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 80
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    invoke-virtual {p0}, Lhet;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->setError(Lfvu;)V

    .line 130
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iput-boolean v1, p0, Lhet;->c:Z

    .line 88
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->l(Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iput-boolean v1, p0, Lhet;->c:Z

    .line 91
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iput-boolean v1, p0, Lhet;->c:Z

    .line 94
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    const-string v0, "centroConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iput-boolean v1, p0, Lhet;->c:Z

    .line 97
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_4
    const-string v0, "codigoDivisa"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    iput-boolean v1, p0, Lhet;->c:Z

    .line 100
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_5
    const-string v0, "codigoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    iput-boolean v1, p0, Lhet;->c:Z

    .line 103
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_6
    const-string v0, "codigoSubProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    iput-boolean v1, p0, Lhet;->c:Z

    .line 106
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_7
    const-string v0, "descricaoDivisa"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 108
    iput-boolean v1, p0, Lhet;->c:Z

    .line 109
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_8
    const-string v0, "descricaoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 111
    iput-boolean v1, p0, Lhet;->c:Z

    .line 112
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_9
    const-string v0, "descricaoSubProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 114
    iput-boolean v1, p0, Lhet;->c:Z

    .line 115
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :cond_a
    const-string v0, "entidadeConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 117
    iput-boolean v1, p0, Lhet;->c:Z

    .line 118
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_b
    const-string v0, "numeroConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iput-boolean v1, p0, Lhet;->c:Z

    .line 121
    iget-object v0, p0, Lhet;->a:Lhes;

    invoke-static {v0}, Lhes;->a(Lhes;)Lhel;

    move-result-object v0

    iget-object v1, p0, Lhet;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhel;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 65
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "centroConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoDivisa"

    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoSubProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoDivisa"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoSubProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "entidadeConta"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhet;->c:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lhet;->b:Ljava/lang/StringBuffer;

    .line 72
    :cond_1
    return-void
.end method
