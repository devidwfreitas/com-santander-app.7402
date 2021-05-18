.class public Lioo;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lion;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lion;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lioo;->a:Lion;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lioo;->b:Ljava/lang/StringBuffer;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lioo;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 70
    iget-boolean v0, p0, Lioo;->c:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lioo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 73
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lioo;->a:Lion;

    invoke-static {v0}, Lion;->a(Lion;)Liog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lioo;->a:Lion;

    invoke-static {v0}, Lion;->a(Lion;)Liog;

    move-result-object v0

    invoke-virtual {p0}, Lioo;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Liog;->setError(Lfvu;)V

    .line 105
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "pais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iput-boolean v1, p0, Lioo;->c:Z

    .line 81
    iget-object v0, p0, Lioo;->a:Lion;

    invoke-static {v0}, Lion;->a(Lion;)Liog;

    move-result-object v0

    iget-object v1, p0, Lioo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liog;->a(Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v0, "dataIni"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iput-boolean v1, p0, Lioo;->c:Z

    .line 84
    iget-object v0, p0, Lioo;->a:Lion;

    invoke-static {v0}, Lion;->a(Lion;)Liog;

    move-result-object v0

    iget-object v1, p0, Lioo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liog;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v0, "dataFim"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iput-boolean v1, p0, Lioo;->c:Z

    .line 87
    iget-object v0, p0, Lioo;->a:Lion;

    invoke-static {v0}, Lion;->a(Lion;)Liog;

    move-result-object v0

    iget-object v1, p0, Lioo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liog;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    iput-boolean v1, p0, Lioo;->c:Z

    .line 90
    iget-object v0, p0, Lioo;->a:Lion;

    invoke-static {v0}, Lion;->a(Lion;)Liog;

    move-result-object v0

    iget-object v1, p0, Lioo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_4
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    iput-boolean v1, p0, Lioo;->c:Z

    .line 93
    iget-object v0, p0, Lioo;->a:Lion;

    invoke-static {v0}, Lion;->a(Lion;)Liog;

    move-result-object v0

    iget-object v1, p0, Lioo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_5
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-boolean v1, p0, Lioo;->c:Z

    .line 96
    iget-object v0, p0, Lioo;->a:Lion;

    invoke-static {v0}, Lion;->a(Lion;)Liog;

    move-result-object v0

    iget-object v1, p0, Lioo;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liog;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 60
    const-string v0, "pais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataIni"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataFim"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autenticacaoBancaria"

    .line 61
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lioo;->c:Z

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lioo;->b:Ljava/lang/StringBuffer;

    .line 65
    :cond_1
    return-void
.end method
