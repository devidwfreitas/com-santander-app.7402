.class public Lhez;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhey;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lhey;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lhez;->a:Lhey;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lhez;->b:Ljava/lang/StringBuffer;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhez;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 77
    iget-boolean v0, p0, Lhez;->c:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lhez;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 80
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-static {v0}, Lhey;->a(Lhey;)Lheo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-static {v0}, Lhey;->a(Lhey;)Lheo;

    move-result-object v0

    invoke-virtual {p0}, Lhez;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheo;->setError(Lfvu;)V

    .line 114
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-boolean v1, p0, Lhez;->c:Z

    .line 87
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iput-boolean v1, p0, Lhez;->c:Z

    .line 89
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-static {v0}, Lhey;->a(Lhey;)Lheo;

    move-result-object v0

    iget-object v1, p0, Lhez;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheo;->a(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iput-boolean v1, p0, Lhez;->c:Z

    .line 93
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-static {v0}, Lhey;->a(Lhey;)Lheo;

    move-result-object v0

    iget-object v1, p0, Lhez;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheo;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iput-boolean v1, p0, Lhez;->c:Z

    .line 97
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-static {v0}, Lhey;->a(Lhey;)Lheo;

    move-result-object v0

    iget-object v1, p0, Lhez;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheo;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "valorMiminoDPP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    iput-boolean v1, p0, Lhez;->c:Z

    .line 101
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-static {v0}, Lhey;->a(Lhey;)Lheo;

    move-result-object v0

    iget-object v1, p0, Lhez;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheo;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_4
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v1, p0, Lhez;->c:Z

    .line 105
    iget-object v0, p0, Lhez;->a:Lhey;

    invoke-static {v0}, Lhey;->a(Lhey;)Lheo;

    move-result-object v0

    iget-object v1, p0, Lhez;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lheo;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 66
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemRetorno"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorMiminoDPP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhez;->c:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lhez;->b:Ljava/lang/StringBuffer;

    .line 72
    :cond_1
    return-void
.end method
