.class public Lfyq;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfyp;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfyk;


# direct methods
.method public constructor <init>(Lfyp;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput-object p1, p0, Lfyq;->a:Lfyp;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 54
    iput-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfyq;->c:Z

    .line 56
    iput-object v1, p0, Lfyq;->h:Lfyk;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 77
    iget-boolean v0, p0, Lfyq;->c:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 80
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lfyq;->a:Lfyp;

    invoke-static {v0}, Lfyp;->a(Lfyp;)Lfyf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lfyq;->a:Lfyp;

    invoke-static {v0}, Lfyp;->a(Lfyp;)Lfyf;

    move-result-object v0

    invoke-virtual {p0}, Lfyq;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyf;->setError(Lfvu;)V

    .line 126
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
    const-string v0, "perguntaQuiz"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lfyq;->a:Lfyp;

    invoke-static {v0}, Lfyp;->a(Lfyp;)Lfyf;

    move-result-object v0

    invoke-virtual {v0}, Lfyf;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfyq;->h:Lfyk;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v0, "codigoClasResposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 90
    iget-object v0, p0, Lfyq;->h:Lfyk;

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "codigoPergunta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 93
    iget-object v0, p0, Lfyq;->h:Lfyk;

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyk;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    const-string v0, "descPergunta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 96
    iget-object v0, p0, Lfyq;->h:Lfyk;

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyk;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_4
    const-string v0, "formatoResposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 99
    iget-object v0, p0, Lfyq;->h:Lfyk;

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyk;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_5
    const-string v0, "indRespostaCriptografada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 102
    iget-object v0, p0, Lfyq;->h:Lfyk;

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyk;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_6
    const-string v0, "tamanhoResposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 105
    iget-object v0, p0, Lfyq;->h:Lfyk;

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyk;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_7
    const-string v0, "idGrupoPergunta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 108
    iget-object v0, p0, Lfyq;->h:Lfyk;

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyk;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_8
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 111
    iget-object v0, p0, Lfyq;->a:Lfyp;

    invoke-static {v0}, Lfyp;->a(Lfyp;)Lfyf;

    move-result-object v0

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyf;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_9
    const-string v0, "dataHoraOcorrencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 113
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 114
    iget-object v0, p0, Lfyq;->a:Lfyp;

    invoke-static {v0}, Lfyp;->a(Lfyp;)Lfyf;

    move-result-object v0

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyf;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_a
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iput-boolean v1, p0, Lfyq;->c:Z

    .line 117
    iget-object v0, p0, Lfyq;->a:Lfyp;

    invoke-static {v0}, Lfyp;->a(Lfyp;)Lfyf;

    move-result-object v0

    iget-object v1, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyf;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 61
    const-string v0, "perguntaQuiz"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lfyk;

    invoke-direct {v0}, Lfyk;-><init>()V

    iput-object v0, p0, Lfyq;->h:Lfyk;

    .line 65
    :cond_0
    const-string v0, "codigoClasResposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoPergunta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "descPergunta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "formatoResposta"

    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "indRespostaCriptografada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tamanhoResposta"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "idGrupoPergunta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataHoraOcorrencia"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfyq;->c:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfyq;->b:Ljava/lang/StringBuffer;

    .line 72
    :cond_2
    return-void
.end method
