.class public Ljwu;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljwt;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfur;


# direct methods
.method public constructor <init>(Ljwt;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iput-object p1, p0, Ljwu;->a:Ljwt;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 58
    iput-object v1, p0, Ljwu;->b:Ljava/lang/StringBuffer;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljwu;->c:Z

    .line 61
    iput-object v1, p0, Ljwu;->h:Lfur;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 82
    iget-boolean v0, p0, Ljwu;->c:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Ljwu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 85
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Ljwu;->a:Ljwt;

    invoke-static {v0}, Ljwt;->a(Ljwt;)Lfuq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Ljwu;->a:Ljwt;

    invoke-static {v0}, Ljwt;->a(Ljwt;)Lfuq;

    move-result-object v0

    invoke-virtual {p0}, Ljwu;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuq;->setError(Lfvu;)V

    .line 116
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "listApelido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Ljwu;->a:Ljwt;

    invoke-static {v0}, Ljwt;->a(Ljwt;)Lfuq;

    move-result-object v0

    invoke-virtual {v0}, Lfuq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljwu;->h:Lfur;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "apelido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iput-boolean v1, p0, Ljwu;->c:Z

    .line 94
    iget-object v0, p0, Ljwu;->h:Lfur;

    iget-object v1, p0, Ljwu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfur;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "cedente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iput-boolean v1, p0, Ljwu;->c:Z

    .line 97
    iget-object v0, p0, Ljwu;->h:Lfur;

    iget-object v1, p0, Ljwu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfur;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "favorecido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    iput-boolean v1, p0, Ljwu;->c:Z

    .line 100
    iget-object v0, p0, Ljwu;->h:Lfur;

    iget-object v1, p0, Ljwu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfur;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_4
    const-string v0, "pgeCctr"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    iput-boolean v1, p0, Ljwu;->c:Z

    .line 103
    iget-object v0, p0, Ljwu;->h:Lfur;

    iget-object v1, p0, Ljwu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfur;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_5
    const-string v0, "tipoApelido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iput-boolean v1, p0, Ljwu;->c:Z

    .line 106
    iget-object v0, p0, Ljwu;->h:Lfur;

    iget-object v1, p0, Ljwu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfur;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 67
    const-string v0, "listApelido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lfur;

    invoke-direct {v0}, Lfur;-><init>()V

    iput-object v0, p0, Ljwu;->h:Lfur;

    .line 71
    :cond_0
    const-string v0, "apelido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cedente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "favorecido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pgeCctr"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tipoApelido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljwu;->c:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljwu;->b:Ljava/lang/StringBuffer;

    .line 76
    :cond_2
    return-void
.end method
