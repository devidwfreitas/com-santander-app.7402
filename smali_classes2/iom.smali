.class public Liom;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Liol;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lioi;


# direct methods
.method public constructor <init>(Liol;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput-object p1, p0, Liom;->a:Liol;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 54
    iput-object v1, p0, Liom;->b:Ljava/lang/StringBuffer;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Liom;->c:Z

    .line 56
    iput-object v1, p0, Liom;->h:Lioi;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 79
    iget-boolean v0, p0, Liom;->c:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Liom;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Liom;->a:Liol;

    invoke-static {v0}, Liol;->a(Liol;)Lioh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Liom;->a:Liol;

    invoke-static {v0}, Liol;->a(Liol;)Lioh;

    move-result-object v0

    invoke-virtual {p0}, Liom;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioh;->setError(Lfvu;)V

    .line 120
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-boolean v1, p0, Liom;->c:Z

    .line 88
    const-string v0, "dadosComprovante"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iput-boolean v1, p0, Liom;->c:Z

    .line 90
    iget-object v0, p0, Liom;->a:Liol;

    invoke-static {v0}, Liol;->a(Liol;)Lioh;

    move-result-object v0

    invoke-virtual {v0}, Lioh;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Liom;->h:Lioi;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v0, "nomePais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iput-boolean v1, p0, Liom;->c:Z

    .line 93
    iget-object v0, p0, Liom;->h:Lioi;

    iget-object v1, p0, Liom;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "codigoPais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iput-boolean v1, p0, Liom;->c:Z

    .line 96
    iget-object v0, p0, Liom;->h:Lioi;

    iget-object v1, p0, Liom;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    const-string v0, "dataInicio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    iput-boolean v1, p0, Liom;->c:Z

    .line 99
    iget-object v0, p0, Liom;->h:Lioi;

    iget-object v1, p0, Liom;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_4
    const-string v0, "dataFim"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    iput-boolean v1, p0, Liom;->c:Z

    .line 102
    iget-object v0, p0, Liom;->h:Lioi;

    iget-object v1, p0, Liom;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_5
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    iput-boolean v1, p0, Liom;->c:Z

    .line 105
    iget-object v0, p0, Liom;->a:Liol;

    invoke-static {v0}, Liol;->a(Liol;)Lioh;

    move-result-object v0

    iget-object v1, p0, Liom;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioh;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_6
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    iput-boolean v1, p0, Liom;->c:Z

    .line 108
    iget-object v0, p0, Liom;->a:Liol;

    invoke-static {v0}, Liol;->a(Liol;)Lioh;

    move-result-object v0

    iget-object v1, p0, Liom;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioh;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_7
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-boolean v1, p0, Liom;->c:Z

    .line 111
    iget-object v0, p0, Liom;->a:Liol;

    invoke-static {v0}, Liol;->a(Liol;)Lioh;

    move-result-object v0

    iget-object v1, p0, Liom;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioh;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 63
    const-string v0, "dadosComprovante"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lioi;

    invoke-direct {v0}, Lioi;-><init>()V

    iput-object v0, p0, Liom;->h:Lioi;

    .line 68
    :cond_0
    const-string v0, "nomePais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoPais"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataInicio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataFim"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "autenticacaoBancaria"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Liom;->c:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Liom;->b:Ljava/lang/StringBuffer;

    .line 74
    :cond_2
    return-void
.end method
