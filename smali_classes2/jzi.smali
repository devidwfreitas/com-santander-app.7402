.class public Ljzi;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzh;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzh;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Ljzi;->a:Ljzh;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljzi;->b:Ljava/lang/StringBuffer;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzi;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 97
    iget-boolean v0, p0, Ljzi;->c:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ljzi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 100
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Ljzi;->a:Ljzh;

    invoke-static {v0}, Ljzh;->b(Ljzh;)Lfuf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Ljzi;->a:Ljzh;

    invoke-static {v0}, Ljzh;->b(Ljzh;)Lfuf;

    move-result-object v0

    invoke-virtual {p0}, Ljzi;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuf;->setError(Lfvu;)V

    .line 137
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "resultList"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Ljzi;->a:Ljzh;

    invoke-static {v0}, Ljzh;->b(Ljzh;)Lfuf;

    move-result-object v0

    invoke-virtual {v0}, Lfuf;->g()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljzi;->a:Ljzh;

    invoke-static {v1}, Ljzh;->a(Ljzh;)Lfun;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    const-string v0, "SOE_EMAIL"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iput-boolean v2, p0, Ljzi;->c:Z

    .line 113
    iget-object v0, p0, Ljzi;->a:Ljzh;

    invoke-static {v0}, Ljzh;->a(Ljzh;)Lfun;

    move-result-object v0

    iget-object v1, p0, Ljzi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfun;->a(Ljava/lang/String;)V

    .line 116
    :cond_1
    const-string v0, "TSOE_SEQ_END"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iput-boolean v2, p0, Ljzi;->c:Z

    .line 118
    iget-object v0, p0, Ljzi;->a:Ljzh;

    invoke-static {v0}, Ljzh;->a(Ljzh;)Lfun;

    move-result-object v0

    iget-object v1, p0, Ljzi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfun;->b(Ljava/lang/String;)V

    .line 120
    :cond_2
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iput-boolean v2, p0, Ljzi;->c:Z

    .line 122
    iget-object v0, p0, Ljzi;->a:Ljzh;

    invoke-static {v0}, Ljzh;->b(Ljzh;)Lfuf;

    move-result-object v0

    iget-object v1, p0, Ljzi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuf;->a(Ljava/lang/String;)V

    .line 124
    :cond_3
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iput-boolean v2, p0, Ljzi;->c:Z

    .line 126
    iget-object v0, p0, Ljzi;->a:Ljzh;

    invoke-static {v0}, Ljzh;->b(Ljzh;)Lfuf;

    move-result-object v0

    iget-object v1, p0, Ljzi;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuf;->d(Ljava/lang/String;)V

    .line 130
    :cond_4
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    const-string v0, "resultList"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ljzi;->a:Ljzh;

    new-instance v1, Lfun;

    invoke-direct {v1}, Lfun;-><init>()V

    invoke-static {v0, v1}, Ljzh;->a(Ljzh;Lfun;)Lfun;

    .line 76
    :cond_0
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hash"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mensagemAEA"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mensagemRetorno"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OESC_001"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "index"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "maxResults"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nextIndex"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SOE_EMAIL"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TSOE_SEQ_END"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljzi;->c:Z

    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzi;->b:Ljava/lang/StringBuffer;

    .line 90
    :cond_2
    return-void
.end method
