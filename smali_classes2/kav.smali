.class public Lkav;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkau;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lkau;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lkav;->a:Lkau;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lkav;->b:Ljava/lang/StringBuffer;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkav;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 83
    iget-boolean v0, p0, Lkav;->c:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lkav;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lkav;->a:Lkau;

    invoke-static {v0}, Lkau;->a(Lkau;)Lftz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lkav;->a:Lkau;

    invoke-static {v0}, Lkau;->a(Lkau;)Lftz;

    move-result-object v0

    invoke-virtual {p0}, Lkav;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftz;->setError(Lfvu;)V

    .line 115
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
    const-string v0, "codigo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iput-boolean v1, p0, Lkav;->c:Z

    .line 95
    iget-object v0, p0, Lkav;->a:Lkau;

    invoke-static {v0}, Lkau;->a(Lkau;)Lftz;

    move-result-object v0

    iget-object v1, p0, Lkav;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftz;->a(Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v0, "mensagem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iput-boolean v1, p0, Lkav;->c:Z

    .line 98
    iget-object v0, p0, Lkav;->a:Lkau;

    invoke-static {v0}, Lkau;->a(Lkau;)Lftz;

    move-result-object v0

    iget-object v1, p0, Lkav;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftz;->b(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lkav;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "validado com sucesso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lkav;->a:Lkau;

    invoke-static {v0}, Lkau;->a(Lkau;)Lftz;

    move-result-object v0

    iget-object v1, p0, Lkav;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftz;->setFaultstring(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lkav;->a:Lkau;

    invoke-static {v0}, Lkau;->a(Lkau;)Lftz;

    move-result-object v0

    iget-object v1, p0, Lkav;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lftz;->setFaultcode(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lfvv;

    invoke-direct {v0}, Lfvv;-><init>()V

    .line 103
    iget-object v1, p0, Lkav;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvv;->d(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lkav;->a:Lkau;

    invoke-static {v1}, Lkau;->a(Lkau;)Lftz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lftz;->setErrorDetail(Lfvv;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 70
    const-string v0, "codigo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagem"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkav;->c:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkav;->b:Ljava/lang/StringBuffer;

    .line 76
    :cond_1
    return-void
.end method
