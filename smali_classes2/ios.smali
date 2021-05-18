.class public Lios;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lior;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lioj;


# direct methods
.method public constructor <init>(Lior;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iput-object p1, p0, Lios;->a:Lior;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 57
    iput-object v1, p0, Lios;->b:Ljava/lang/StringBuffer;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lios;->c:Z

    .line 59
    iput-object v1, p0, Lios;->h:Lioj;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 79
    iget-boolean v0, p0, Lios;->c:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lios;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lios;->a:Lior;

    invoke-static {v0}, Lior;->a(Lior;)Liok;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lios;->a:Lior;

    invoke-static {v0}, Lior;->a(Lior;)Liok;

    move-result-object v0

    invoke-virtual {p0}, Lios;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Liok;->setError(Lfvu;)V

    .line 112
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-boolean v1, p0, Lios;->c:Z

    .line 88
    const-string v0, "listaPaises"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iput-boolean v1, p0, Lios;->c:Z

    .line 90
    iget-object v0, p0, Lios;->a:Lior;

    invoke-static {v0}, Lior;->a(Lior;)Liok;

    move-result-object v0

    invoke-virtual {v0}, Liok;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lios;->h:Lioj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "codigoPais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iput-boolean v1, p0, Lios;->c:Z

    .line 94
    iget-object v0, p0, Lios;->h:Lioj;

    iget-object v1, p0, Lios;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "nomePais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iput-boolean v1, p0, Lios;->c:Z

    .line 98
    iget-object v0, p0, Lios;->h:Lioj;

    iget-object v1, p0, Lios;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioj;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput-boolean v1, p0, Lios;->c:Z

    .line 102
    iget-object v0, p0, Lios;->a:Lior;

    invoke-static {v0}, Lior;->a(Lior;)Liok;

    move-result-object v0

    iget-object v1, p0, Lios;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liok;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 65
    const-string v0, "listaPaises"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lioj;

    invoke-direct {v0}, Lioj;-><init>()V

    iput-object v0, p0, Lios;->h:Lioj;

    .line 70
    :cond_0
    const-string v0, "codigoPais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nomePais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lios;->c:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lios;->b:Ljava/lang/StringBuffer;

    .line 74
    :cond_2
    return-void
.end method
