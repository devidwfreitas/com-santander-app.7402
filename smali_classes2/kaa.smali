.class public Lkaa;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzz;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzz;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lkaa;->a:Ljzz;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lkaa;->b:Ljava/lang/StringBuffer;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkaa;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 83
    iget-boolean v0, p0, Lkaa;->c:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lkaa;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lkaa;->a:Ljzz;

    invoke-static {v0}, Ljzz;->a(Ljzz;)Lfvj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lkaa;->a:Ljzz;

    invoke-static {v0}, Ljzz;->a(Ljzz;)Lfvj;

    move-result-object v0

    invoke-virtual {p0}, Lkaa;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvj;->setError(Lfvu;)V

    .line 105
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "retorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkaa;->c:Z

    .line 95
    iget-object v0, p0, Lkaa;->a:Ljzz;

    invoke-static {v0}, Ljzz;->a(Ljzz;)Lfvj;

    move-result-object v0

    iget-object v1, p0, Lkaa;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvj;->a(Ljava/lang/String;)V

    .line 98
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 67
    const-string v0, "transferenciaResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lkaa;->a:Ljzz;

    new-instance v1, Lfvj;

    invoke-direct {v1}, Lfvj;-><init>()V

    invoke-static {v0, v1}, Ljzz;->a(Ljzz;Lfvj;)Lfvj;

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "retorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkaa;->c:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkaa;->b:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
