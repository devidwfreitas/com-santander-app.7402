.class public Ljzc;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzb;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzb;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Ljzc;->a:Ljzb;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzc;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 93
    iget-boolean v0, p0, Ljzc;->c:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 96
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    invoke-virtual {p0}, Ljzc;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->setError(Lfvu;)V

    .line 170
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "cotacaoDolar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 106
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->a(Ljava/lang/String;)V

    .line 108
    :cond_0
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 110
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->i(Ljava/lang/String;)V

    .line 112
    :cond_1
    const-string v0, "contratoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 114
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->b(Ljava/lang/String;)V

    .line 116
    :cond_2
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 118
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->c(Ljava/lang/String;)V

    .line 120
    :cond_3
    const-string v0, "despesaConvertida"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 122
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->d(Ljava/lang/String;)V

    .line 125
    :cond_4
    const-string v0, "despesaReal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 127
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->e(Ljava/lang/String;)V

    .line 129
    :cond_5
    const-string v0, "referOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 131
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->f(Ljava/lang/String;)V

    .line 133
    :cond_6
    const-string v0, "valorPagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 135
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->j(Ljava/lang/String;)V

    .line 137
    :cond_7
    const-string v0, "valorPagamentoParcial"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 139
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->n(Ljava/lang/String;)V

    .line 141
    :cond_8
    const-string v0, "valorPagamentoMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 142
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 143
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->g(Ljava/lang/String;)V

    .line 145
    :cond_9
    const-string v0, "valorTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 146
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 147
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->h(Ljava/lang/String;)V

    .line 149
    :cond_a
    const-string v0, "valorAtualizadoFatura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 150
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 151
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->m(Ljava/lang/String;)V

    .line 153
    :cond_b
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 154
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 155
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->k(Ljava/lang/String;)V

    .line 157
    :cond_c
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 158
    iput-boolean v2, p0, Ljzc;->c:Z

    .line 159
    iget-object v0, p0, Ljzc;->a:Ljzb;

    invoke-static {v0}, Ljzb;->a(Ljzb;)Lfud;

    move-result-object v0

    iget-object v1, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfud;->l(Ljava/lang/String;)V

    .line 163
    :cond_d
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 68
    const-string v0, "cotacaoDolar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codigoRetorno"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contratoCartao"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataVencimento"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "despesaConvertida"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "despesaReal"

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "referOper"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorPagamento"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemRetorno"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorPagamentoMinimo"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorTotal"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorAtualizadoFatura"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorPagamentoParcial"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljzc;->c:Z

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzc;->b:Ljava/lang/StringBuffer;

    .line 86
    :cond_1
    return-void
.end method
