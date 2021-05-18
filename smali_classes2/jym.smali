.class public Ljym;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyl;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyl;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Ljym;->a:Ljyl;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljym;->b:Ljava/lang/StringBuffer;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljym;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 112
    iget-boolean v0, p0, Ljym;->c:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Ljym;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 115
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->b(Ljyl;)Lfvz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->b(Ljyl;)Lfvz;

    move-result-object v0

    invoke-virtual {p0}, Ljym;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvz;->setError(Lfvu;)V

    .line 164
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 120
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "listaCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->b(Ljyl;)Lfvz;

    move-result-object v0

    invoke-virtual {v0}, Lfvz;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljym;->a:Ljyl;

    invoke-static {v1}, Ljyl;->a(Ljyl;)Lfvx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    const-string v0, "imagem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iput-boolean v3, p0, Ljym;->c:Z

    .line 127
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->a(Ljyl;)Lfvx;

    move-result-object v0

    invoke-virtual {v0}, Lfvx;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->a(Ljyl;)Lfvx;

    move-result-object v0

    iget-object v1, p0, Ljym;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvx;->a(Ljava/lang/String;)V

    .line 131
    :cond_1
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iput-boolean v3, p0, Ljym;->c:Z

    .line 133
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->a(Ljyl;)Lfvx;

    move-result-object v0

    iget-object v1, p0, Ljym;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvx;->d(Ljava/lang/String;)V

    .line 135
    :cond_2
    const-string v0, "valorTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iput-boolean v2, p0, Ljym;->c:Z

    .line 137
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->a(Ljyl;)Lfvx;

    move-result-object v0

    iget-object v1, p0, Ljym;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvx;->b(Ljava/lang/String;)V

    .line 139
    :cond_3
    const-string v0, "valorPagamentoMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    iput-boolean v2, p0, Ljym;->c:Z

    .line 141
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->a(Ljyl;)Lfvx;

    move-result-object v0

    iget-object v1, p0, Ljym;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvx;->e(Ljava/lang/String;)V

    .line 143
    :cond_4
    const-string v0, "valorSaldoParcial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    iput-boolean v2, p0, Ljym;->c:Z

    .line 145
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->a(Ljyl;)Lfvx;

    move-result-object v0

    iget-object v1, p0, Ljym;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvx;->c(Ljava/lang/String;)V

    .line 147
    :cond_5
    const-string v0, "mensagemFaturaAberto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    iput-boolean v2, p0, Ljym;->c:Z

    .line 149
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->a(Ljyl;)Lfvx;

    move-result-object v0

    iget-object v1, p0, Ljym;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvx;->f(Ljava/lang/String;)V

    .line 151
    :cond_6
    const-string v0, "valorSaldoParcial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    iput-boolean v2, p0, Ljym;->c:Z

    .line 153
    iget-object v0, p0, Ljym;->a:Ljyl;

    invoke-static {v0}, Ljyl;->a(Ljyl;)Lfvx;

    move-result-object v0

    iget-object v1, p0, Ljym;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvx;->g(Ljava/lang/String;)V

    .line 157
    :cond_7
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    const-string v0, "listaCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ljym;->a:Ljyl;

    new-instance v1, Lfvx;

    invoke-direct {v1}, Lfvx;-><init>()V

    invoke-static {v0, v1}, Ljyl;->a(Ljyl;Lfvx;)Lfvx;

    .line 76
    :cond_0
    const-string v0, "imagem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iput-boolean v2, p0, Ljym;->c:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljym;->b:Ljava/lang/StringBuffer;

    .line 81
    :cond_1
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iput-boolean v2, p0, Ljym;->c:Z

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljym;->b:Ljava/lang/StringBuffer;

    .line 85
    :cond_2
    const-string v0, "valorTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iput-boolean v2, p0, Ljym;->c:Z

    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljym;->b:Ljava/lang/StringBuffer;

    .line 89
    :cond_3
    const-string v0, "valorPagamentoMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iput-boolean v2, p0, Ljym;->c:Z

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljym;->b:Ljava/lang/StringBuffer;

    .line 94
    :cond_4
    const-string v0, "valorSaldoParcial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    iput-boolean v2, p0, Ljym;->c:Z

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljym;->b:Ljava/lang/StringBuffer;

    .line 99
    :cond_5
    const-string v0, "mensagemFaturaAberto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    iput-boolean v2, p0, Ljym;->c:Z

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljym;->b:Ljava/lang/StringBuffer;

    .line 105
    :cond_6
    return-void
.end method
