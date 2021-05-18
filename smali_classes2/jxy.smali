.class public Ljxy;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxx;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lftk;


# direct methods
.method public constructor <init>(Ljxx;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Ljxy;->a:Ljxx;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljxy;->b:Ljava/lang/StringBuffer;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxy;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 94
    iget-boolean v0, p0, Ljxy;->c:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Ljxy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 97
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Ljxy;->a:Ljxx;

    invoke-static {v0}, Ljxx;->a(Ljxx;)Lftn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ljxy;->a:Ljxx;

    invoke-static {v0}, Ljxx;->a(Ljxx;)Lftn;

    move-result-object v0

    invoke-virtual {p0}, Ljxy;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftn;->setError(Lfvu;)V

    .line 128
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iput-boolean v1, p0, Ljxy;->c:Z

    .line 105
    iget-object v0, p0, Ljxy;->a:Ljxx;

    invoke-static {v0}, Ljxx;->a(Ljxx;)Lftn;

    move-result-object v0

    iget-object v1, p0, Ljxy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftn;->a(Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v0, "codigoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iput-boolean v1, p0, Ljxy;->c:Z

    .line 108
    iget-object v0, p0, Ljxy;->h:Lftk;

    iget-object v1, p0, Ljxy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "nomeProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iput-boolean v1, p0, Ljxy;->c:Z

    .line 111
    iget-object v0, p0, Ljxy;->h:Lftk;

    iget-object v1, p0, Ljxy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftk;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    const-string v0, "resgateCanal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iput-boolean v1, p0, Ljxy;->c:Z

    .line 114
    iget-object v0, p0, Ljxy;->h:Lftk;

    iget-object v1, p0, Ljxy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftk;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, "listaProdutos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Ljxy;->a:Ljxx;

    invoke-static {v0}, Ljxx;->a(Ljxx;)Lftn;

    move-result-object v0

    invoke-virtual {v0}, Lftn;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljxy;->h:Lftk;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 77
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoProduto"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeProduto"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "resgateCanal"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxy;->c:Z

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxy;->b:Ljava/lang/StringBuffer;

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    const-string v0, "listaProdutos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lftk;

    invoke-direct {v0}, Lftk;-><init>()V

    iput-object v0, p0, Ljxy;->h:Lftk;

    goto :goto_0
.end method
