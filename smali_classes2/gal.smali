.class public Lgal;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgak;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lgak;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput-object p1, p0, Lgal;->a:Lgak;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 55
    iput-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgal;->c:Z

    .line 57
    iput-object v1, p0, Lgal;->h:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 85
    iget-boolean v0, p0, Lgal;->c:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 88
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->b(Lgak;)Lgad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->b(Lgak;)Lgad;

    move-result-object v0

    invoke-virtual {p0}, Lgal;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgad;->a(Lfvu;)V

    .line 132
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "empresasConveniadas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->b(Lgak;)Lgad;

    move-result-object v0

    iget-object v1, p0, Lgal;->a:Lgak;

    invoke-static {v1}, Lgak;->a(Lgak;)Lgae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgad;->a(Lgae;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iput-boolean v1, p0, Lgal;->c:Z

    .line 99
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->a(Lgak;)Lgae;

    move-result-object v0

    iget-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgae;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "banco"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iput-boolean v1, p0, Lgal;->c:Z

    .line 102
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->a(Lgak;)Lgae;

    move-result-object v0

    iget-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgae;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iput-boolean v1, p0, Lgal;->c:Z

    .line 105
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->a(Lgak;)Lgae;

    move-result-object v0

    iget-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgae;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_4
    const-string v0, "nome"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    iput-boolean v1, p0, Lgal;->c:Z

    .line 108
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->a(Lgak;)Lgae;

    move-result-object v0

    iget-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgae;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "tamanhoMax"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    iput-boolean v1, p0, Lgal;->c:Z

    .line 111
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->a(Lgak;)Lgae;

    move-result-object v0

    iget-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgae;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_6
    const-string v0, "codigoErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    iput-boolean v1, p0, Lgal;->c:Z

    .line 114
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->b(Lgak;)Lgad;

    move-result-object v0

    iget-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgad;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_7
    const-string v0, "mensagemErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    iput-boolean v1, p0, Lgal;->c:Z

    .line 117
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->b(Lgak;)Lgad;

    move-result-object v0

    iget-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgad;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_8
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 119
    iput-boolean v1, p0, Lgal;->c:Z

    .line 120
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->b(Lgak;)Lgad;

    move-result-object v0

    iget-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgad;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_9
    const-string v0, "descricaoIdConsumidor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iput-boolean v1, p0, Lgal;->c:Z

    .line 123
    iget-object v0, p0, Lgal;->a:Lgak;

    invoke-static {v0}, Lgak;->a(Lgak;)Lgae;

    move-result-object v0

    iget-object v1, p0, Lgal;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgae;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 63
    const-string v0, "empresasConveniadas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lgal;->a:Lgak;

    new-instance v1, Lgae;

    invoke-direct {v1}, Lgae;-><init>()V

    invoke-static {v0, v1}, Lgak;->a(Lgak;Lgae;)Lgae;

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "agencia"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "banco"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "conta"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "nome"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tokenTransacao"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tamanhoMax"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "descricaoIdConsumidor"

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgal;->c:Z

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lgal;->b:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
