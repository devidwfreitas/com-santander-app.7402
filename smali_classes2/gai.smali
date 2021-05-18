.class public Lgai;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgah;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lgah;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iput-object p1, p0, Lgai;->a:Lgah;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 56
    iput-object v1, p0, Lgai;->b:Ljava/lang/StringBuffer;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgai;->c:Z

    .line 58
    iput-object v1, p0, Lgai;->h:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 84
    iget-boolean v0, p0, Lgai;->c:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lgai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lgai;->a:Lgah;

    invoke-static {v0}, Lgah;->a(Lgah;)Lgac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lgai;->a:Lgah;

    invoke-static {v0}, Lgah;->a(Lgah;)Lgac;

    move-result-object v0

    invoke-virtual {p0}, Lgai;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->setError(Lfvu;)V

    .line 119
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "autenticacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iput-boolean v1, p0, Lgai;->c:Z

    .line 95
    iget-object v0, p0, Lgai;->a:Lgah;

    invoke-static {v0}, Lgah;->a(Lgah;)Lgac;

    move-result-object v0

    iget-object v1, p0, Lgai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->h(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v0, "confirmacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iput-boolean v1, p0, Lgai;->c:Z

    .line 98
    iget-object v0, p0, Lgai;->a:Lgah;

    invoke-static {v0}, Lgah;->a(Lgah;)Lgac;

    move-result-object v0

    iget-object v1, p0, Lgai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v0, "dataTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iput-boolean v1, p0, Lgai;->c:Z

    .line 101
    iget-object v0, p0, Lgai;->a:Lgah;

    invoke-static {v0}, Lgah;->a(Lgah;)Lgac;

    move-result-object v0

    iget-object v1, p0, Lgai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_3
    const-string v0, "horaTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    iput-boolean v1, p0, Lgai;->c:Z

    .line 104
    iget-object v0, p0, Lgai;->a:Lgah;

    invoke-static {v0}, Lgah;->a(Lgah;)Lgac;

    move-result-object v0

    iget-object v1, p0, Lgai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "codigoErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iput-boolean v1, p0, Lgai;->c:Z

    .line 107
    iget-object v0, p0, Lgai;->a:Lgah;

    invoke-static {v0}, Lgah;->a(Lgah;)Lgac;

    move-result-object v0

    iget-object v1, p0, Lgai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_5
    const-string v0, "mensagemErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iput-boolean v1, p0, Lgai;->c:Z

    .line 110
    iget-object v0, p0, Lgai;->a:Lgah;

    invoke-static {v0}, Lgah;->a(Lgah;)Lgac;

    move-result-object v0

    iget-object v1, p0, Lgai;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgac;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 64
    const-string v0, "autenticacao"

    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirmacao"

    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataTransacao"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "horaTransacao"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoErro"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemErro"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgai;->c:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lgai;->b:Ljava/lang/StringBuffer;

    .line 78
    :cond_1
    return-void
.end method
