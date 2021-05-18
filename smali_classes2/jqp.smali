.class public Ljqp;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljqo;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfuc;


# direct methods
.method public constructor <init>(Ljqo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput-object p1, p0, Ljqp;->a:Ljqo;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 55
    iput-object v1, p0, Ljqp;->b:Ljava/lang/StringBuffer;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljqp;->c:Z

    .line 57
    iput-object v1, p0, Ljqp;->h:Lfuc;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 78
    iget-boolean v0, p0, Ljqp;->c:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Ljqp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Ljqp;->a:Ljqo;

    invoke-static {v0}, Ljqo;->a(Ljqo;)Lfub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Ljqp;->a:Ljqo;

    invoke-static {v0}, Ljqo;->a(Ljqo;)Lfub;

    move-result-object v0

    invoke-virtual {p0}, Ljqp;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfub;->setError(Lfvu;)V

    .line 116
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "codigoClasResposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iput-boolean v1, p0, Ljqp;->c:Z

    .line 89
    iget-object v0, p0, Ljqp;->h:Lfuc;

    iget-object v1, p0, Ljqp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuc;->a(Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v0, "codigoPergunta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iput-boolean v1, p0, Ljqp;->c:Z

    .line 92
    iget-object v0, p0, Ljqp;->h:Lfuc;

    iget-object v1, p0, Ljqp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "descPergunta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iput-boolean v1, p0, Ljqp;->c:Z

    .line 95
    iget-object v0, p0, Ljqp;->h:Lfuc;

    iget-object v1, p0, Ljqp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuc;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    const-string v0, "formatoResposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    iput-boolean v1, p0, Ljqp;->c:Z

    .line 98
    iget-object v0, p0, Ljqp;->h:Lfuc;

    iget-object v1, p0, Ljqp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuc;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_4
    const-string v0, "indRespostaCriptografada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    iput-boolean v1, p0, Ljqp;->c:Z

    .line 101
    iget-object v0, p0, Ljqp;->h:Lfuc;

    iget-object v1, p0, Ljqp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuc;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_5
    const-string v0, "tamanhoResposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    iput-boolean v1, p0, Ljqp;->c:Z

    .line 104
    iget-object v0, p0, Ljqp;->h:Lfuc;

    iget-object v1, p0, Ljqp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuc;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_6
    const-string v0, "perguntaQuiz"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-boolean v1, p0, Ljqp;->c:Z

    .line 107
    iget-object v0, p0, Ljqp;->a:Ljqo;

    invoke-static {v0}, Ljqo;->a(Ljqo;)Lfub;

    move-result-object v0

    invoke-virtual {v0}, Lfub;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljqp;->h:Lfuc;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 64
    const-string v0, "perguntaQuiz"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lfuc;

    invoke-direct {v0}, Lfuc;-><init>()V

    iput-object v0, p0, Ljqp;->h:Lfuc;

    .line 68
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

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "indRespostaCriptografada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tamanhoResposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljqp;->c:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljqp;->b:Ljava/lang/StringBuffer;

    .line 73
    :cond_2
    return-void
.end method
