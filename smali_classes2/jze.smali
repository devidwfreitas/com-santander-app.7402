.class public Ljze;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzd;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljzd;)V
    .locals 2

    .prologue
    .line 61
    iput-object p1, p0, Ljze;->a:Ljzd;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljze;->b:Ljava/lang/StringBuffer;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljze;->c:Z

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljze;->h:Ljava/util/Set;

    .line 63
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "codigoDeBarra"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "codigoMenu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "codigoMenuLinx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "dataVencimento"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "horarioLimitePagamento"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "indicadorBoletoVR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "indicadorLeitura"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "indicativoVal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "nomeConvenio"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "tamanhoIdentificador"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "transacaoProduto"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "valorBoletoVR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    const-string v1, "valorTotalPagar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 93
    iget-boolean v0, p0, Ljze;->c:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 96
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    invoke-virtual {p0}, Ljze;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->setError(Lfvu;)V

    .line 150
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "codigoDeBarra"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iput-boolean v1, p0, Ljze;->c:Z

    .line 105
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->a(Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v0, "codigoMenu"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iput-boolean v1, p0, Ljze;->c:Z

    .line 108
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "codigoMenuLinx"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iput-boolean v1, p0, Ljze;->c:Z

    .line 111
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    const-string v0, "dataVencimento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iput-boolean v1, p0, Ljze;->c:Z

    .line 114
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, "horarioLimitePagamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    iput-boolean v1, p0, Ljze;->c:Z

    .line 117
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_5
    const-string v0, "indicadorBoletoVR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    iput-boolean v1, p0, Ljze;->c:Z

    .line 120
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_6
    const-string v0, "indicadorLeitura"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    iput-boolean v1, p0, Ljze;->c:Z

    .line 123
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_7
    const-string v0, "indicativoVal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    iput-boolean v1, p0, Ljze;->c:Z

    .line 126
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_8
    const-string v0, "nomeConvenio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    iput-boolean v1, p0, Ljze;->c:Z

    .line 129
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_9
    const-string v0, "tamanhoIdentificador"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 131
    iput-boolean v1, p0, Ljze;->c:Z

    .line 132
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_a
    const-string v0, "transacaoProduto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    iput-boolean v1, p0, Ljze;->c:Z

    .line 135
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_b
    const-string v0, "valorBoletoVR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 137
    iput-boolean v1, p0, Ljze;->c:Z

    .line 138
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_c
    const-string v0, "valorTotalPagar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iput-boolean v1, p0, Ljze;->c:Z

    .line 141
    iget-object v0, p0, Ljze;->a:Ljzd;

    invoke-static {v0}, Ljzd;->a(Ljzd;)Lfuz;

    move-result-object v0

    iget-object v1, p0, Ljze;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuz;->m(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 83
    iget-object v0, p0, Ljze;->h:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljze;->c:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljze;->b:Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    return-void
.end method
