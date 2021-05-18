.class public Lfys;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfyr;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfyl;


# direct methods
.method public constructor <init>(Lfyr;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iput-object p1, p0, Lfys;->a:Lfyr;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 56
    iput-object v1, p0, Lfys;->b:Ljava/lang/StringBuffer;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfys;->c:Z

    .line 58
    iput-object v1, p0, Lfys;->h:Lfyl;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 81
    iget-boolean v0, p0, Lfys;->c:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lfys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lfys;->a:Lfyr;

    invoke-static {v0}, Lfyr;->a(Lfyr;)Lfyh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lfys;->a:Lfyr;

    invoke-static {v0}, Lfyr;->a(Lfyr;)Lfyh;

    move-result-object v0

    invoke-virtual {p0}, Lfys;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyh;->setError(Lfvu;)V

    .line 123
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iput-boolean v1, p0, Lfys;->c:Z

    .line 92
    iget-object v0, p0, Lfys;->a:Lfyr;

    invoke-static {v0}, Lfyr;->a(Lfyr;)Lfyh;

    move-result-object v0

    iget-object v1, p0, Lfys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyh;->a(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iput-boolean v1, p0, Lfys;->c:Z

    .line 95
    iget-object v0, p0, Lfys;->a:Lfyr;

    invoke-static {v0}, Lfyr;->a(Lfyr;)Lfyh;

    move-result-object v0

    iget-object v1, p0, Lfys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyh;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "dataHash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iput-boolean v1, p0, Lfys;->c:Z

    .line 98
    iget-object v0, p0, Lfys;->a:Lfyr;

    invoke-static {v0}, Lfyr;->a(Lfyr;)Lfyh;

    move-result-object v0

    iget-object v1, p0, Lfys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyh;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "listaAgenciaContasCorrente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    iput-boolean v1, p0, Lfys;->c:Z

    .line 101
    iget-object v0, p0, Lfys;->a:Lfyr;

    invoke-static {v0}, Lfyr;->a(Lfyr;)Lfyh;

    move-result-object v0

    invoke-virtual {v0}, Lfyh;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfys;->h:Lfyl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_4
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iput-boolean v1, p0, Lfys;->c:Z

    .line 104
    new-instance v0, Lfyl;

    invoke-direct {v0}, Lfyl;-><init>()V

    iput-object v0, p0, Lfys;->h:Lfyl;

    .line 105
    iget-object v0, p0, Lfys;->h:Lfyl;

    iget-object v1, p0, Lfys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyl;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_5
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    iput-boolean v1, p0, Lfys;->c:Z

    .line 108
    iget-object v0, p0, Lfys;->h:Lfyl;

    iget-object v1, p0, Lfys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_6
    const-string v0, "qtdeTentativaRestanteQuiz"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    iput-boolean v1, p0, Lfys;->c:Z

    .line 111
    iget-object v0, p0, Lfys;->a:Lfyr;

    invoke-static {v0}, Lfyr;->a(Lfyr;)Lfyh;

    move-result-object v0

    iget-object v1, p0, Lfys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyh;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_7
    const-string v0, "qtdeTentativaTotalQuiz"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iput-boolean v1, p0, Lfys;->c:Z

    .line 114
    iget-object v0, p0, Lfys;->a:Lfyr;

    invoke-static {v0}, Lfyr;->a(Lfyr;)Lfyh;

    move-result-object v0

    iget-object v1, p0, Lfys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyh;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 65
    const-string v0, "quizRespostaNMResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lfyl;

    invoke-direct {v0}, Lfyl;-><init>()V

    iput-object v0, p0, Lfys;->h:Lfyl;

    .line 70
    :cond_0
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataHash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "listaAgenciaContasCorrente"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "qtdeTentativaRestanteQuiz"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "qtdeTentativaTotalQuiz"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfys;->c:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfys;->b:Ljava/lang/StringBuffer;

    .line 76
    :cond_2
    return-void
.end method
