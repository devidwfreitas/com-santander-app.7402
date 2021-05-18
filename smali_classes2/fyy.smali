.class public Lfyy;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfyx;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lfyx;)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lfyy;->a:Lfyx;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfyy;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 84
    iget-boolean v0, p0, Lfyy;->c:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lfyy;->a:Lfyx;

    invoke-static {v0}, Lfyx;->a(Lfyx;)Lfyo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lfyy;->a:Lfyx;

    invoke-static {v0}, Lfyx;->a(Lfyx;)Lfyo;

    move-result-object v0

    invoke-virtual {p0}, Lfyy;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyo;->setError(Lfvu;)V

    .line 116
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iput-boolean v1, p0, Lfyy;->c:Z

    .line 95
    iget-object v0, p0, Lfyy;->a:Lfyx;

    invoke-static {v0}, Lfyx;->a(Lfyx;)Lfyo;

    move-result-object v0

    iget-object v1, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyo;->a(Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iput-boolean v1, p0, Lfyy;->c:Z

    .line 99
    iget-object v0, p0, Lfyy;->a:Lfyx;

    invoke-static {v0}, Lfyx;->a(Lfyx;)Lfyo;

    move-result-object v0

    iget-object v1, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyo;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "dataHash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iput-boolean v1, p0, Lfyy;->c:Z

    .line 103
    iget-object v0, p0, Lfyy;->a:Lfyx;

    invoke-static {v0}, Lfyx;->a(Lfyx;)Lfyo;

    move-result-object v0

    iget-object v1, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyo;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v0, "referOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iput-boolean v1, p0, Lfyy;->c:Z

    .line 107
    iget-object v0, p0, Lfyy;->a:Lfyx;

    invoke-static {v0}, Lfyx;->a(Lfyx;)Lfyo;

    move-result-object v0

    iget-object v1, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyo;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 59
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "usuarioSNNMResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    iget-object v0, p0, Lfyy;->a:Lfyx;

    new-instance v1, Lfyo;

    invoke-direct {v1}, Lfyo;-><init>()V

    invoke-static {v0, v1}, Lfyx;->a(Lfyx;Lfyo;)Lfyo;

    .line 63
    :cond_1
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iput-boolean v2, p0, Lfyy;->c:Z

    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    .line 79
    :cond_2
    :goto_0
    return-void

    .line 67
    :cond_3
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    iput-boolean v2, p0, Lfyy;->c:Z

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 71
    :cond_4
    const-string v0, "dataHash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    iput-boolean v2, p0, Lfyy;->c:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 75
    :cond_5
    const-string v0, "referOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iput-boolean v2, p0, Lfyy;->c:Z

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfyy;->b:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
