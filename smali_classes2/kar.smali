.class public Lkar;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkaq;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lkaq;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lkar;->a:Lkaq;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lkar;->b:Ljava/lang/StringBuffer;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkar;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 79
    iget-boolean v0, p0, Lkar;->c:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lkar;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lkar;->a:Lkaq;

    invoke-static {v0}, Lkaq;->a(Lkaq;)Lfty;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lkar;->a:Lkaq;

    invoke-static {v0}, Lkaq;->a(Lkaq;)Lfty;

    move-result-object v0

    invoke-virtual {p0}, Lkar;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfty;->setError(Lfvu;)V

    .line 112
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "segmentoPrimario"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iput-boolean v2, p0, Lkar;->c:Z

    .line 91
    iget-object v0, p0, Lkar;->a:Lkaq;

    invoke-static {v0}, Lkaq;->a(Lkaq;)Lfty;

    move-result-object v0

    iget-object v1, p0, Lkar;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfty;->a(Ljava/lang/String;)V

    .line 93
    :cond_0
    const-string v0, "segmentoSecundario"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iput-boolean v2, p0, Lkar;->c:Z

    .line 95
    iget-object v0, p0, Lkar;->a:Lkaq;

    invoke-static {v0}, Lkaq;->a(Lkaq;)Lfty;

    move-result-object v0

    iget-object v1, p0, Lkar;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfty;->b(Ljava/lang/String;)V

    .line 97
    :cond_1
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iput-boolean v2, p0, Lkar;->c:Z

    .line 99
    iget-object v0, p0, Lkar;->a:Lkaq;

    invoke-static {v0}, Lkaq;->a(Lkaq;)Lfty;

    move-result-object v0

    iget-object v1, p0, Lkar;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfty;->c(Ljava/lang/String;)V

    .line 101
    :cond_2
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iput-boolean v2, p0, Lkar;->c:Z

    .line 103
    iget-object v0, p0, Lkar;->a:Lkaq;

    invoke-static {v0}, Lkaq;->a(Lkaq;)Lfty;

    move-result-object v0

    iget-object v1, p0, Lkar;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfty;->d(Ljava/lang/String;)V

    .line 105
    :cond_3
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 64
    const-string v0, "segmentoPrimario"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "segmentoSecundario"

    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoRetorno"

    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemRetorno"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkar;->c:Z

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkar;->b:Ljava/lang/StringBuffer;

    .line 72
    :cond_1
    return-void
.end method
