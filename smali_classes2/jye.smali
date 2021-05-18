.class public Ljye;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyd;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyd;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Ljye;->a:Ljyd;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljye;->b:Ljava/lang/StringBuffer;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljye;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 96
    iget-boolean v0, p0, Ljye;->c:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 99
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    invoke-virtual {p0}, Ljye;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->setError(Lfvu;)V

    .line 169
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "agenciaCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-boolean v2, p0, Ljye;->c:Z

    .line 108
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->b(Ljava/lang/String;)V

    .line 110
    :cond_0
    const-string v0, "agenciaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iput-boolean v2, p0, Ljye;->c:Z

    .line 112
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->c(Ljava/lang/String;)V

    .line 114
    :cond_1
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iput-boolean v2, p0, Ljye;->c:Z

    .line 116
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->d(Ljava/lang/String;)V

    .line 118
    :cond_2
    const-string v0, "contaCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iput-boolean v2, p0, Ljye;->c:Z

    .line 120
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->e(Ljava/lang/String;)V

    .line 122
    :cond_3
    const-string v0, "contaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iput-boolean v2, p0, Ljye;->c:Z

    .line 124
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->A(Ljava/lang/String;)V

    .line 126
    :cond_4
    const-string v0, "cpf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    iput-boolean v2, p0, Ljye;->c:Z

    .line 128
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->f(Ljava/lang/String;)V

    .line 130
    :cond_5
    const-string v0, "dataHoraTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    iput-boolean v2, p0, Ljye;->c:Z

    .line 132
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->g(Ljava/lang/String;)V

    .line 134
    :cond_6
    const-string v0, "modalidade"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    iput-boolean v2, p0, Ljye;->c:Z

    .line 136
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->h(Ljava/lang/String;)V

    .line 138
    :cond_7
    const-string v0, "subProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    iput-boolean v2, p0, Ljye;->c:Z

    .line 140
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->i(Ljava/lang/String;)V

    .line 142
    :cond_8
    const-string v0, "titular"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    iput-boolean v2, p0, Ljye;->c:Z

    .line 144
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->j(Ljava/lang/String;)V

    .line 146
    :cond_9
    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    iput-boolean v2, p0, Ljye;->c:Z

    .line 148
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->x(Ljava/lang/String;)V

    .line 150
    :cond_a
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 151
    iput-boolean v2, p0, Ljye;->c:Z

    .line 152
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->p(Ljava/lang/String;)V

    .line 154
    :cond_b
    const-string v0, "mensagemErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    iput-boolean v2, p0, Ljye;->c:Z

    .line 156
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->a(Ljava/lang/String;)V

    .line 158
    :cond_c
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 159
    iput-boolean v2, p0, Ljye;->c:Z

    .line 160
    iget-object v0, p0, Ljye;->a:Ljyd;

    invoke-static {v0}, Ljyd;->a(Ljyd;)Lfts;

    move-result-object v0

    iget-object v1, p0, Ljye;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfts;->z(Ljava/lang/String;)V

    .line 162
    :cond_d
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 70
    const-string v0, "agenciaCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agenciaDebito"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autenticacaoBancaria"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contaCredito"

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contaDebitocontaDebito"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cpf"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataHoraTransacao"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "modalidade"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subProduto"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataContabil"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valor"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemErro"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "titular"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljye;->c:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljye;->b:Ljava/lang/StringBuffer;

    .line 89
    :cond_1
    return-void
.end method
