.class public Ljwx;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljww;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljww;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Ljwx;->a:Ljww;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ljwx;->b:Ljava/lang/StringBuffer;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljwx;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 78
    iget-boolean v0, p0, Ljwx;->c:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Ljwx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Ljwx;->a:Ljww;

    invoke-static {v0}, Ljww;->a(Ljww;)Ljxf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ljwx;->a:Ljww;

    invoke-static {v0}, Ljww;->a(Ljww;)Ljxf;

    move-result-object v0

    invoke-virtual {p0}, Ljwx;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxf;->setError(Lfvu;)V

    .line 100
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljwx;->c:Z

    .line 91
    iget-object v0, p0, Ljwx;->a:Ljww;

    invoke-static {v0}, Ljww;->a(Ljww;)Ljxf;

    move-result-object v0

    iget-object v1, p0, Ljwx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxf;->a(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 66
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljwx;->c:Z

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljwx;->b:Ljava/lang/StringBuffer;

    .line 71
    :cond_0
    return-void
.end method
