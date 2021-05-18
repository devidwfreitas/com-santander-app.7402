.class public Lgan;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgam;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lgam;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput-object p1, p0, Lgan;->a:Lgam;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 55
    iput-object v1, p0, Lgan;->b:Ljava/lang/StringBuffer;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgan;->c:Z

    .line 57
    iput-object v1, p0, Lgan;->h:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 84
    iget-boolean v0, p0, Lgan;->c:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lgan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lgan;->a:Lgam;

    invoke-static {v0}, Lgam;->b(Lgam;)Lgag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lgan;->a:Lgam;

    invoke-static {v0}, Lgam;->b(Lgam;)Lgag;

    move-result-object v0

    invoke-virtual {p0}, Lgan;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgag;->a(Lfvu;)V

    .line 122
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
    const-string v0, "tipoConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lgan;->a:Lgam;

    invoke-static {v0}, Lgam;->b(Lgam;)Lgag;

    move-result-object v0

    iget-object v1, p0, Lgan;->a:Lgam;

    invoke-static {v1}, Lgam;->a(Lgam;)Lgaf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgag;->a(Lgaf;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v0, "requestId"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iput-boolean v1, p0, Lgan;->c:Z

    .line 98
    iget-object v0, p0, Lgan;->a:Lgam;

    invoke-static {v0}, Lgam;->b(Lgam;)Lgag;

    move-result-object v0

    iget-object v1, p0, Lgan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgag;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v0, "descricao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iput-boolean v1, p0, Lgan;->c:Z

    .line 101
    iget-object v0, p0, Lgan;->a:Lgam;

    invoke-static {v0}, Lgam;->a(Lgam;)Lgaf;

    move-result-object v0

    iget-object v1, p0, Lgan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaf;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_3
    const-string v0, "produto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    iput-boolean v1, p0, Lgan;->c:Z

    .line 104
    iget-object v0, p0, Lgan;->a:Lgam;

    invoke-static {v0}, Lgam;->a(Lgam;)Lgaf;

    move-result-object v0

    iget-object v1, p0, Lgan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaf;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "subProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iput-boolean v1, p0, Lgan;->c:Z

    .line 107
    iget-object v0, p0, Lgan;->a:Lgam;

    invoke-static {v0}, Lgam;->a(Lgam;)Lgaf;

    move-result-object v0

    iget-object v1, p0, Lgan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgaf;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_5
    const-string v0, "codigoErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    iput-boolean v1, p0, Lgan;->c:Z

    .line 110
    iget-object v0, p0, Lgan;->a:Lgam;

    invoke-static {v0}, Lgam;->b(Lgam;)Lgag;

    move-result-object v0

    iget-object v1, p0, Lgan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgag;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_6
    const-string v0, "mensagemErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iput-boolean v1, p0, Lgan;->c:Z

    .line 113
    iget-object v0, p0, Lgan;->a:Lgam;

    invoke-static {v0}, Lgam;->b(Lgam;)Lgag;

    move-result-object v0

    iget-object v1, p0, Lgan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgag;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 63
    const-string v0, "tipoConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lgan;->a:Lgam;

    new-instance v1, Lgaf;

    invoke-direct {v1}, Lgaf;-><init>()V

    invoke-static {v0, v1}, Lgam;->a(Lgam;Lgaf;)Lgaf;

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "requestId"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "descricao"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "produto"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "subProduto"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "codigoErro"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mensagemErro"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgan;->c:Z

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lgan;->b:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
