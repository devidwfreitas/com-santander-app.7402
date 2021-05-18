.class public Ljzk;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzj;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzj;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Ljzk;->a:Ljzj;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljzk;->b:Ljava/lang/StringBuffer;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzk;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 81
    iget-boolean v0, p0, Ljzk;->c:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Ljzk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Ljzk;->a:Ljzj;

    invoke-static {v0}, Ljzj;->a(Ljzj;)Lfuh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ljzk;->a:Ljzj;

    invoke-static {v0}, Ljzj;->a(Ljzj;)Lfuh;

    move-result-object v0

    invoke-virtual {p0}, Ljzk;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuh;->setError(Lfvu;)V

    .line 109
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "codigo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-boolean v2, p0, Ljzk;->c:Z

    .line 93
    iget-object v0, p0, Ljzk;->a:Ljzj;

    invoke-static {v0}, Ljzj;->a(Ljzj;)Lfuh;

    move-result-object v0

    iget-object v1, p0, Ljzk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuh;->a(Ljava/lang/String;)V

    .line 96
    :cond_0
    const-string v0, "descricao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iput-boolean v2, p0, Ljzk;->c:Z

    .line 98
    iget-object v0, p0, Ljzk;->a:Ljzj;

    invoke-static {v0}, Ljzj;->a(Ljzj;)Lfuh;

    move-result-object v0

    iget-object v1, p0, Ljzk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuh;->b(Ljava/lang/String;)V

    .line 102
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 68
    const-string v0, "codigo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricao"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljzk;->c:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzk;->b:Ljava/lang/StringBuffer;

    .line 74
    :cond_1
    return-void
.end method
