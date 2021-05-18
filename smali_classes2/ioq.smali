.class public Lioq;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Liop;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lioi;


# direct methods
.method public constructor <init>(Liop;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iput-object p1, p0, Lioq;->a:Liop;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 56
    iput-object v1, p0, Lioq;->b:Ljava/lang/StringBuffer;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lioq;->c:Z

    .line 58
    iput-object v1, p0, Lioq;->h:Lioi;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 80
    iget-boolean v0, p0, Lioq;->c:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lioq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 83
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lioq;->a:Liop;

    invoke-static {v0}, Liop;->a(Liop;)Lioh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lioq;->a:Liop;

    invoke-static {v0}, Liop;->a(Liop;)Lioh;

    move-result-object v0

    invoke-virtual {p0}, Lioq;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioh;->setError(Lfvu;)V

    .line 118
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-boolean v1, p0, Lioq;->c:Z

    .line 89
    const-string v0, "dadosComprovante"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iput-boolean v1, p0, Lioq;->c:Z

    .line 91
    iget-object v0, p0, Lioq;->a:Liop;

    invoke-static {v0}, Liop;->a(Liop;)Lioh;

    move-result-object v0

    invoke-virtual {v0}, Lioh;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lioq;->h:Lioi;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "nomePais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iput-boolean v1, p0, Lioq;->c:Z

    .line 94
    iget-object v0, p0, Lioq;->h:Lioi;

    iget-object v1, p0, Lioq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "codigoPais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iput-boolean v1, p0, Lioq;->c:Z

    .line 97
    iget-object v0, p0, Lioq;->h:Lioi;

    iget-object v1, p0, Lioq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "dataInicio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    iput-boolean v1, p0, Lioq;->c:Z

    .line 100
    iget-object v0, p0, Lioq;->h:Lioi;

    iget-object v1, p0, Lioq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_4
    const-string v0, "dataFim"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    iput-boolean v1, p0, Lioq;->c:Z

    .line 103
    iget-object v0, p0, Lioq;->h:Lioi;

    iget-object v1, p0, Lioq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_5
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    iput-boolean v1, p0, Lioq;->c:Z

    .line 106
    iget-object v0, p0, Lioq;->a:Liop;

    invoke-static {v0}, Liop;->a(Liop;)Lioh;

    move-result-object v0

    iget-object v1, p0, Lioq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioh;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_6
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-boolean v1, p0, Lioq;->c:Z

    .line 109
    iget-object v0, p0, Lioq;->a:Liop;

    invoke-static {v0}, Liop;->a(Liop;)Lioh;

    move-result-object v0

    iget-object v1, p0, Lioq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioh;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 65
    const-string v0, "dadosComprovante"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lioi;

    invoke-direct {v0}, Lioi;-><init>()V

    iput-object v0, p0, Lioq;->h:Lioi;

    .line 70
    :cond_0
    const-string v0, "nomePais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoPais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataInicio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataFim"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lioq;->c:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lioq;->b:Ljava/lang/StringBuffer;

    .line 75
    :cond_2
    return-void
.end method
