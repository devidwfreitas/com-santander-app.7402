.class public Ljzq;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzp;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzp;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Ljzq;->a:Ljzp;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljzq;->b:Ljava/lang/StringBuffer;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzq;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 85
    iget-boolean v0, p0, Ljzq;->c:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Ljzq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 88
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Ljzq;->a:Ljzp;

    invoke-static {v0}, Ljzp;->a(Ljzp;)Lfwo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Ljzq;->a:Ljzp;

    invoke-static {v0}, Ljzp;->a(Ljzp;)Lfwo;

    move-result-object v0

    invoke-virtual {p0}, Ljzq;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwo;->setError(Lfvu;)V

    .line 111
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "chaveAES"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iput-boolean v2, p0, Ljzq;->c:Z

    .line 97
    iget-object v0, p0, Ljzq;->a:Ljzp;

    invoke-static {v0}, Ljzp;->a(Ljzp;)Lfwo;

    move-result-object v0

    iget-object v1, p0, Ljzq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwo;->a(Ljava/lang/String;)V

    .line 100
    :cond_0
    const-string v0, "connUUID"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iput-boolean v2, p0, Ljzq;->c:Z

    .line 102
    iget-object v0, p0, Ljzq;->a:Ljzp;

    invoke-static {v0}, Ljzp;->a(Ljzp;)Lfwo;

    move-result-object v0

    iget-object v1, p0, Ljzq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwo;->b(Ljava/lang/String;)V

    .line 104
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 73
    const-string v0, "chaveAES"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "connUUID"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljzq;->c:Z

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzq;->b:Ljava/lang/StringBuffer;

    .line 78
    :cond_1
    return-void
.end method
