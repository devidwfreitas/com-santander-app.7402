.class public Ljyc;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyb;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyb;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Ljyc;->a:Ljyb;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljyc;->b:Ljava/lang/StringBuffer;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljyc;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 89
    iget-boolean v0, p0, Ljyc;->c:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Ljyc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 92
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Ljyc;->a:Ljyb;

    invoke-static {v0}, Ljyb;->a(Ljyb;)Lftp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Ljyc;->a:Ljyb;

    invoke-static {v0}, Ljyb;->a(Ljyb;)Lftp;

    move-result-object v0

    invoke-virtual {p0}, Ljyc;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftp;->setError(Lfvu;)V

    .line 120
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "aceito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iput-boolean v1, p0, Ljyc;->c:Z

    .line 101
    iget-object v0, p0, Ljyc;->a:Ljyb;

    invoke-static {v0}, Ljyb;->a(Ljyb;)Lftp;

    move-result-object v0

    iget-object v1, p0, Ljyc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lftp;->a(Z)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v0, "descricaoDesenquadramento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iput-boolean v1, p0, Ljyc;->c:Z

    .line 104
    iget-object v0, p0, Ljyc;->a:Ljyb;

    invoke-static {v0}, Ljyb;->a(Ljyb;)Lftp;

    move-result-object v0

    iget-object v1, p0, Ljyc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftp;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    const-string v0, "desenquadramento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iput-boolean v1, p0, Ljyc;->c:Z

    .line 107
    iget-object v0, p0, Ljyc;->a:Ljyb;

    invoke-static {v0}, Ljyb;->a(Ljyb;)Lftp;

    move-result-object v0

    iget-object v1, p0, Ljyc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lftp;->b(Z)V

    goto :goto_0

    .line 109
    :cond_3
    const-string v0, "dispensado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-boolean v1, p0, Ljyc;->c:Z

    .line 111
    iget-object v0, p0, Ljyc;->a:Ljyb;

    invoke-static {v0}, Ljyb;->a(Ljyb;)Lftp;

    move-result-object v0

    iget-object v1, p0, Ljyc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lftp;->c(Z)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 73
    const-string v0, "aceito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoDesenquadramento"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "desenquadramento"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dispensado"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljyc;->c:Z

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyc;->b:Ljava/lang/StringBuffer;

    .line 82
    :cond_1
    return-void
.end method
