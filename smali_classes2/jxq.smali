.class public Ljxq;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxp;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljxp;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Ljxq;->a:Ljxp;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ljxq;->b:Ljava/lang/StringBuffer;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxq;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 91
    iget-boolean v0, p0, Ljxq;->c:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Ljxq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 94
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Ljxq;->a:Ljxp;

    invoke-static {v0}, Ljxp;->a(Ljxp;)Lftd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ljxq;->a:Ljxp;

    invoke-static {v0}, Ljxp;->a(Ljxp;)Lftd;

    move-result-object v0

    invoke-virtual {p0}, Ljxq;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->setError(Lfvu;)V

    .line 128
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
    const-string v0, "prazo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iput-boolean v1, p0, Ljxq;->c:Z

    .line 103
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljxq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Ljxq;->a:Ljxp;

    invoke-static {v1}, Ljxp;->a(Ljxp;)Lftd;

    move-result-object v1

    invoke-virtual {v1}, Lftd;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iput-boolean v1, p0, Ljxq;->c:Z

    .line 107
    iget-object v0, p0, Ljxq;->a:Ljxp;

    invoke-static {v0}, Ljxp;->a(Ljxp;)Lftd;

    move-result-object v0

    iget-object v1, p0, Ljxq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    const-string v0, "descricaoSubProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iput-boolean v1, p0, Ljxq;->c:Z

    .line 110
    iget-object v0, p0, Ljxq;->a:Ljxp;

    invoke-static {v0}, Ljxp;->a(Ljxp;)Lftd;

    move-result-object v0

    iget-object v1, p0, Ljxq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v0, "prazoMaximo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    iput-boolean v1, p0, Ljxq;->c:Z

    .line 113
    iget-object v0, p0, Ljxq;->a:Ljxp;

    invoke-static {v0}, Ljxp;->a(Ljxp;)Lftd;

    move-result-object v0

    iget-object v1, p0, Ljxq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_4
    const-string v0, "valorMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iput-boolean v1, p0, Ljxq;->c:Z

    .line 116
    iget-object v0, p0, Ljxq;->a:Ljxp;

    invoke-static {v0}, Ljxp;->a(Ljxp;)Lftd;

    move-result-object v0

    iget-object v1, p0, Ljxq;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftd;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 75
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoSubProduto"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prazo"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prazoMaximo"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorMinimo"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxq;->c:Z

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxq;->b:Ljava/lang/StringBuffer;

    .line 84
    :cond_1
    return-void
.end method
