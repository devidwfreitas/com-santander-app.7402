.class public Lfod;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfoc;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lfoc;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lfod;->a:Lfoc;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lfod;->b:Ljava/lang/StringBuffer;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfod;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 75
    iget-boolean v0, p0, Lfod;->c:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lfod;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 78
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lfod;->a:Lfoc;

    invoke-static {v0}, Lfoc;->a(Lfoc;)Lfnz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lfod;->a:Lfoc;

    invoke-static {v0}, Lfoc;->a(Lfoc;)Lfnz;

    move-result-object v0

    invoke-virtual {p0}, Lfod;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfnz;->setError(Lfvu;)V

    .line 100
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iput-boolean v2, p0, Lfod;->c:Z

    .line 86
    iget-object v0, p0, Lfod;->a:Lfoc;

    invoke-static {v0}, Lfoc;->a(Lfoc;)Lfnz;

    move-result-object v0

    iget-object v1, p0, Lfod;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfnz;->a(Ljava/lang/String;)V

    .line 89
    :cond_0
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iput-boolean v2, p0, Lfod;->c:Z

    .line 91
    iget-object v0, p0, Lfod;->a:Lfoc;

    invoke-static {v0}, Lfoc;->a(Lfoc;)Lfnz;

    move-result-object v0

    iget-object v1, p0, Lfod;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfnz;->b(Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 64
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfod;->c:Z

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfod;->b:Ljava/lang/StringBuffer;

    .line 68
    :cond_1
    return-void
.end method
