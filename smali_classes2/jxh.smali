.class public Ljxh;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxg;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljxg;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Ljxh;->a:Ljxg;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxh;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 102
    iget-boolean v0, p0, Ljxh;->c:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    invoke-virtual {p0}, Ljxh;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->setError(Lfvu;)V

    .line 177
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "agenciaDebitoDoSeguro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 115
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->a(Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v0, "cnpjSeguradora"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 118
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    const-string v0, "contaCorrenteDebitoDoSeguro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 121
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    const-string v0, "cpfOuCnpj"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 124
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_4
    const-string v0, "dataContratacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 127
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_5
    const-string v0, "dataVencimentoParcela"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 130
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_6
    const-string v0, "descricaoMotivoCancelamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 133
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_7
    const-string v0, "indicadorAdesao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 136
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_8
    const-string v0, "nomeProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 139
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_9
    const-string v0, "nomeSegurado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 141
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 142
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_a
    const-string v0, "nomeSeguradora"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 144
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 145
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_b
    const-string v0, "numeroApolice"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 147
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 148
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_c
    const-string v0, "numeroCertificado"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 150
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 151
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_d
    const-string v0, "numeroProcessoSusep"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 153
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 154
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_e
    const-string v0, "numeroProposta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 156
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 157
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_f
    const-string v0, "valorPremioPago"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 159
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 160
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_10
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 162
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 163
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_11
    const-string v0, "referoper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iput-boolean v1, p0, Ljxh;->c:Z

    .line 166
    iget-object v0, p0, Ljxh;->a:Ljxg;

    invoke-static {v0}, Ljxg;->a(Ljxg;)Lfvr;

    move-result-object v0

    iget-object v1, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvr;->s(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 68
    const-string v0, "agenciaDebitoDoSeguro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cnpjSeguradora"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contaCorrenteDebitoDoSeguro"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cpfOuCnpj"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataContratacao"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataVencimentoParcela"

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "descricaoMotivoCancelamento"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "indicadorAdesao"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeProduto"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeSegurado"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nomeSeguradora"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroApolice"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroBanco"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroCertificado"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroProcessoSusep"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numeroProposta"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "valorPremioPago"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenTransacao"

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "referoper"

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxh;->c:Z

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxh;->b:Ljava/lang/StringBuffer;

    .line 91
    :cond_1
    return-void
.end method
