.class public Ljyk;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyj;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyj;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Ljyk;->a:Ljyj;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljyk;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 83
    iget-boolean v0, p0, Ljyk;->c:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Ljyk;->a:Ljyj;

    invoke-static {v0}, Ljyj;->a(Ljyj;)Lfsu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Ljyk;->a:Ljyj;

    invoke-static {v0}, Ljyj;->a(Ljyj;)Lfsu;

    move-result-object v0

    invoke-virtual {p0}, Ljyk;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsu;->setError(Lfvu;)V

    .line 128
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "segmento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-boolean v4, p0, Ljyk;->c:Z

    .line 95
    iget-object v0, p0, Ljyk;->a:Ljyj;

    invoke-static {v0}, Ljyj;->a(Ljyj;)Lfsu;

    move-result-object v0

    iget-object v1, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsu;->a(Ljava/lang/String;)V

    .line 97
    :cond_0
    const-string v0, "imagem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iput-boolean v4, p0, Ljyk;->c:Z

    .line 99
    iget-object v0, p0, Ljyk;->a:Ljyj;

    invoke-static {v0}, Ljyj;->a(Ljyj;)Lfsu;

    move-result-object v0

    iget-object v1, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsu;->b(Ljava/lang/String;)V

    .line 101
    :cond_1
    const-string v0, "dataAtualizacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iput-boolean v4, p0, Ljyk;->c:Z

    .line 103
    iget-object v0, p0, Ljyk;->a:Ljyj;

    invoke-static {v0}, Ljyj;->a(Ljyj;)Lfsu;

    move-result-object v0

    iget-object v1, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfsu;->a(J)V

    .line 105
    :cond_2
    const-string v0, "link"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iput-boolean v4, p0, Ljyk;->c:Z

    .line 107
    iget-object v0, p0, Ljyk;->a:Ljyj;

    invoke-static {v0}, Ljyj;->a(Ljyj;)Lfsu;

    move-result-object v0

    iget-object v1, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsu;->c(Ljava/lang/String;)V

    .line 109
    :cond_3
    const-string v0, "popup"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iput-boolean v4, p0, Ljyk;->c:Z

    .line 111
    iget-object v0, p0, Ljyk;->a:Ljyj;

    invoke-static {v0}, Ljyj;->a(Ljyj;)Lfsu;

    move-result-object v0

    iget-object v1, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lfsu;->a(Z)V

    .line 113
    :cond_4
    const-string v0, "dataInicioVigencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    iput-boolean v4, p0, Ljyk;->c:Z

    .line 115
    iget-object v0, p0, Ljyk;->a:Ljyj;

    invoke-static {v0}, Ljyj;->a(Ljyj;)Lfsu;

    move-result-object v0

    iget-object v1, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfsu;->b(J)V

    .line 117
    :cond_5
    const-string v0, "dataFimVigencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    iput-boolean v4, p0, Ljyk;->c:Z

    .line 119
    iget-object v0, p0, Ljyk;->a:Ljyj;

    invoke-static {v0}, Ljyj;->a(Ljyj;)Lfsu;

    move-result-object v0

    iget-object v1, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lfsu;->c(J)V

    .line 121
    :cond_6
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 65
    const-string v0, "segmento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "imagem"

    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataAtualizacao"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "link"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "popup"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataInicioVigencia"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataFimVigencia"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljyk;->c:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyk;->b:Ljava/lang/StringBuffer;

    .line 76
    :cond_1
    return-void
.end method
