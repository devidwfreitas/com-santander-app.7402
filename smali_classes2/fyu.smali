.class public Lfyu;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfyt;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lfyt;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lfyu;->a:Lfyt;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lfyu;->b:Ljava/lang/StringBuffer;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfyu;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 72
    iget-boolean v0, p0, Lfyu;->c:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lfyu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 75
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lfyu;->a:Lfyt;

    invoke-static {v0}, Lfyt;->a(Lfyt;)Lfyi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lfyu;->a:Lfyt;

    invoke-static {v0}, Lfyt;->a(Lfyt;)Lfyi;

    move-result-object v0

    invoke-virtual {p0}, Lfyu;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyi;->setError(Lfvu;)V

    .line 101
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iput-boolean v1, p0, Lfyu;->c:Z

    .line 83
    iget-object v0, p0, Lfyu;->a:Lfyt;

    invoke-static {v0}, Lfyt;->a(Lfyt;)Lfyi;

    move-result-object v0

    iget-object v1, p0, Lfyu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyi;->a(Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iput-boolean v1, p0, Lfyu;->c:Z

    .line 86
    iget-object v0, p0, Lfyu;->a:Lfyt;

    invoke-static {v0}, Lfyt;->a(Lfyt;)Lfyi;

    move-result-object v0

    iget-object v1, p0, Lfyu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyi;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    const-string v0, "dataHash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iput-boolean v1, p0, Lfyu;->c:Z

    .line 89
    iget-object v0, p0, Lfyu;->a:Lfyt;

    invoke-static {v0}, Lfyt;->a(Lfyt;)Lfyi;

    move-result-object v0

    iget-object v1, p0, Lfyu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyi;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v0, "status"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iput-boolean v1, p0, Lfyu;->c:Z

    .line 92
    iget-object v0, p0, Lfyu;->a:Lfyt;

    invoke-static {v0}, Lfyt;->a(Lfyt;)Lfyi;

    move-result-object v0

    iget-object v1, p0, Lfyu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyi;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 59
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lfyu;->a:Lfyt;

    new-instance v1, Lfyi;

    invoke-direct {v1}, Lfyi;-><init>()V

    invoke-static {v0, v1}, Lfyt;->a(Lfyt;Lfyi;)Lfyi;

    .line 63
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

    const-string v0, "status"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfyu;->c:Z

    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfyu;->b:Ljava/lang/StringBuffer;

    .line 67
    :cond_2
    return-void
.end method
