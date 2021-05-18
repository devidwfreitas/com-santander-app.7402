.class public Lkai;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkah;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lkah;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iput-object p1, p0, Lkai;->a:Lkah;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lkai;->b:Ljava/lang/StringBuffer;

    .line 66
    iput-boolean v1, p0, Lkai;->c:Z

    .line 67
    iput-boolean v1, p0, Lkai;->h:Z

    .line 68
    iput-boolean v1, p0, Lkai;->i:Z

    .line 69
    iput-boolean v1, p0, Lkai;->j:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 102
    iget-boolean v0, p0, Lkai;->c:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lkai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lkai;->a:Lkah;

    invoke-static {v0}, Lkah;->a(Lkah;)Lfwe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lkai;->a:Lkah;

    invoke-static {v0}, Lkah;->a(Lkah;)Lfwe;

    move-result-object v0

    invoke-virtual {p0}, Lkai;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwe;->setError(Lfvu;)V

    .line 140
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "listaCdbHomeLogadaResultListResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iput-boolean v1, p0, Lkai;->h:Z

    .line 116
    :cond_0
    const-string v0, "listaPoupancaHomeLogadaResultListResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iput-boolean v1, p0, Lkai;->i:Z

    .line 120
    :cond_1
    const-string v0, "listaFundosHomeLogadaResultListResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iput-boolean v1, p0, Lkai;->j:Z

    .line 124
    :cond_2
    const-string v0, "valorDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iput-boolean v1, p0, Lkai;->c:Z

    .line 126
    iget-boolean v0, p0, Lkai;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkai;->a:Lkah;

    invoke-static {v0}, Lkah;->a(Lkah;)Lfwe;

    move-result-object v0

    iget-object v1, p0, Lkai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwe;->a(Ljava/lang/String;)V

    .line 127
    :cond_3
    iget-boolean v0, p0, Lkai;->i:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkai;->a:Lkah;

    invoke-static {v0}, Lkah;->a(Lkah;)Lfwe;

    move-result-object v0

    iget-object v1, p0, Lkai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwe;->b(Ljava/lang/String;)V

    .line 128
    :cond_4
    iget-boolean v0, p0, Lkai;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkai;->a:Lkah;

    invoke-static {v0}, Lkah;->a(Lkah;)Lfwe;

    move-result-object v0

    iget-object v1, p0, Lkai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwe;->c(Ljava/lang/String;)V

    .line 132
    :cond_5
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 77
    const-string v0, "listaCdbHomeLogadaResultListResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-boolean v1, p0, Lkai;->h:Z

    .line 81
    :cond_0
    const-string v0, "listaPoupancaHomeLogadaResultListResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iput-boolean v1, p0, Lkai;->i:Z

    .line 85
    :cond_1
    const-string v0, "listaFundosHomeLogadaResultListResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iput-boolean v1, p0, Lkai;->j:Z

    .line 90
    :cond_2
    const-string v0, "valorDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iput-boolean v1, p0, Lkai;->c:Z

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkai;->b:Ljava/lang/StringBuffer;

    .line 95
    :cond_3
    return-void
.end method
