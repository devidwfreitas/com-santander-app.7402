.class public Lfyw;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfyv;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lfyv;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lfyw;->a:Lfyv;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lfyw;->b:Ljava/lang/StringBuffer;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfyw;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 73
    iget-boolean v0, p0, Lfyw;->c:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lfyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 76
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lfyw;->a:Lfyv;

    invoke-static {v0}, Lfyv;->a(Lfyv;)Lfyj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lfyw;->a:Lfyv;

    invoke-static {v0}, Lfyv;->a(Lfyv;)Lfyj;

    move-result-object v0

    invoke-virtual {p0}, Lfyw;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyj;->setError(Lfvu;)V

    .line 99
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iput-boolean v1, p0, Lfyw;->c:Z

    .line 84
    iget-object v0, p0, Lfyw;->a:Lfyv;

    invoke-static {v0}, Lfyv;->a(Lfyv;)Lfyj;

    move-result-object v0

    iget-object v1, p0, Lfyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyj;->a(Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iput-boolean v1, p0, Lfyw;->c:Z

    .line 87
    iget-object v0, p0, Lfyw;->a:Lfyv;

    invoke-static {v0}, Lfyv;->a(Lfyv;)Lfyj;

    move-result-object v0

    iget-object v1, p0, Lfyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyj;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "dataHash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-boolean v1, p0, Lfyw;->c:Z

    .line 90
    iget-object v0, p0, Lfyw;->a:Lfyv;

    invoke-static {v0}, Lfyv;->a(Lfyv;)Lfyj;

    move-result-object v0

    iget-object v1, p0, Lfyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyj;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 60
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lfyw;->a:Lfyv;

    new-instance v1, Lfyj;

    invoke-direct {v1}, Lfyj;-><init>()V

    invoke-static {v0, v1}, Lfyv;->a(Lfyv;Lfyj;)Lfyj;

    .line 64
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

    .line 65
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfyw;->c:Z

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfyw;->b:Ljava/lang/StringBuffer;

    .line 68
    :cond_2
    return-void
.end method
