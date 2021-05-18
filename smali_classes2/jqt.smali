.class public Ljqt;
.super Ljxk;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/StringBuffer;

.field protected b:Z

.field final synthetic c:Ljqs;


# direct methods
.method public constructor <init>(Ljqs;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Ljqt;->c:Ljqs;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljqt;->b:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 89
    iget-boolean v0, p0, Ljqt;->b:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 92
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Ljqt;->c:Ljqs;

    invoke-static {v0}, Ljqs;->a(Ljqs;)Ljqm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Ljqt;->c:Ljqs;

    invoke-static {v0}, Ljqs;->a(Ljqs;)Ljqm;

    move-result-object v0

    invoke-virtual {p0}, Ljqt;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqm;->setError(Lfvu;)V

    .line 125
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-boolean v1, p0, Ljqt;->b:Z

    .line 100
    iget-object v0, p0, Ljqt;->c:Ljqs;

    invoke-static {v0}, Ljqs;->a(Ljqs;)Ljqm;

    move-result-object v0

    iget-object v1, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqm;->a(Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iput-boolean v1, p0, Ljqt;->b:Z

    .line 105
    iget-object v0, p0, Ljqt;->c:Ljqs;

    invoke-static {v0}, Ljqs;->a(Ljqs;)Ljqm;

    move-result-object v0

    iget-object v1, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqm;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    const-string v0, "dataHash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iput-boolean v1, p0, Ljqt;->b:Z

    .line 110
    iget-object v0, p0, Ljqt;->c:Ljqs;

    invoke-static {v0}, Ljqs;->a(Ljqs;)Ljqm;

    move-result-object v0

    iget-object v1, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqm;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "referOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iput-boolean v1, p0, Ljqt;->b:Z

    .line 115
    iget-object v0, p0, Ljqt;->c:Ljqs;

    invoke-static {v0}, Ljqs;->a(Ljqs;)Ljqm;

    move-result-object v0

    iget-object v1, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqm;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 64
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "usuarioSNNMResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Ljqt;->c:Ljqs;

    new-instance v1, Ljqm;

    invoke-direct {v1}, Ljqm;-><init>()V

    invoke-static {v0, v1}, Ljqs;->a(Ljqs;Ljqm;)Ljqm;

    .line 68
    :cond_1
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iput-boolean v2, p0, Ljqt;->b:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    .line 84
    :cond_2
    :goto_0
    return-void

    .line 72
    :cond_3
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iput-boolean v2, p0, Ljqt;->b:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 76
    :cond_4
    const-string v0, "dataHash"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    iput-boolean v2, p0, Ljqt;->b:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 80
    :cond_5
    const-string v0, "referOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iput-boolean v2, p0, Ljqt;->b:Z

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljqt;->a:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
