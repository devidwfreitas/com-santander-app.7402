.class Ljxm;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxl;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljxl;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Ljxm;->a:Ljxl;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxm;->c:Z

    .line 70
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 103
    iget-boolean v0, p0, Ljxm;->c:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 106
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    invoke-virtual {p0}, Ljxm;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->setError(Lfvu;)V

    .line 168
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "agenciaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 114
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->a(Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v0, "agenciaCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 117
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 120
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_3
    const-string v0, "contaCredito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 123
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_4
    const-string v0, "contaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 126
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_5
    const-string v0, "cpf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 129
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_6
    const-string v0, "dataContabil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 132
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_7
    const-string v0, "dataHoraTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 135
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_8
    const-string v0, "modalidade"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 137
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 138
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_9
    const-string v0, "produto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 140
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 141
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_a
    const-string v0, "subProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 143
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 144
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_b
    const-string v0, "titular"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 147
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_c
    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 149
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 150
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_d
    const-string v0, "mensagemErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 152
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 153
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_e
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iput-boolean v1, p0, Ljxm;->c:Z

    .line 156
    iget-object v0, p0, Ljxm;->a:Ljxl;

    invoke-virtual {v0}, Ljxl;->a()Lfsy;

    move-result-object v0

    iget-object v1, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfsy;->o(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 77
    const-string v0, "agenciaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agenciaCredito"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autenticacaoBancaria"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contaCredito"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contaDebito"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cpf"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataContabil"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataHoraTransacao"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "modalidade"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "produto"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subProduto"

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "titular"

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valor"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemErro"

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxm;->c:Z

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxm;->b:Ljava/lang/StringBuffer;

    .line 96
    :cond_1
    return-void
.end method
