.class public Ljxw;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxv;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lftq;


# direct methods
.method public constructor <init>(Ljxv;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Ljxw;->a:Ljxv;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljxw;->b:Ljava/lang/StringBuffer;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxw;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 91
    iget-boolean v0, p0, Ljxw;->c:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Ljxw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 94
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Ljxw;->a:Ljxv;

    invoke-static {v0}, Ljxv;->a(Ljxv;)Lftm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Ljxw;->a:Ljxv;

    invoke-static {v0}, Ljxv;->a(Ljxv;)Lftm;

    move-result-object v0

    invoke-virtual {p0}, Ljxw;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftm;->setError(Lfvu;)V

    .line 120
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "listaProdutos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iput-boolean v1, p0, Ljxw;->c:Z

    .line 103
    iget-object v0, p0, Ljxw;->a:Ljxv;

    invoke-static {v0}, Ljxv;->a(Ljxv;)Lftm;

    move-result-object v0

    invoke-virtual {v0}, Lftm;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljxw;->h:Lftq;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v0, "codigoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iput-boolean v1, p0, Ljxw;->c:Z

    .line 106
    iget-object v0, p0, Ljxw;->h:Lftq;

    iget-object v1, p0, Ljxw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "nomeProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-boolean v1, p0, Ljxw;->c:Z

    .line 109
    iget-object v0, p0, Ljxw;->h:Lftq;

    iget-object v1, p0, Ljxw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftq;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 76
    const-string v0, "codigoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeProduto"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxw;->c:Z

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxw;->b:Ljava/lang/StringBuffer;

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    const-string v0, "listaProdutos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lftq;

    invoke-direct {v0}, Lftq;-><init>()V

    iput-object v0, p0, Ljxw;->h:Lftq;

    goto :goto_0
.end method
