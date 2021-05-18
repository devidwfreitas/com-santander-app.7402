.class public Lhcx;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhcw;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lhcw;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iput-object p1, p0, Lhcx;->a:Lhcw;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 63
    iput-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhcx;->c:Z

    .line 65
    iput-object v1, p0, Lhcx;->h:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 88
    iget-boolean v0, p0, Lhcx;->c:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 91
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->b(Lhcw;)Lhcs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->b(Lhcw;)Lhcs;

    move-result-object v0

    invoke-virtual {p0}, Lhcx;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->setError(Lfvu;)V

    .line 149
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "listaDesbloqueioCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->b(Lhcw;)Lhcs;

    move-result-object v0

    iget-object v1, p0, Lhcx;->a:Lhcw;

    invoke-static {v1}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->a(Lhct;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 101
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->b(Lhcw;)Lhcs;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    const-string v0, "bandeira"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 104
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_3
    const-string v0, "codSituacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 107
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_4
    const-string v0, "descSituacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 110
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_5
    const-string v0, "descSubProd"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 113
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_6
    const-string v0, "imagem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 116
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_7
    const-string v0, "indicaAdicional"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 119
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_8
    const-string v0, "indicaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 122
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_9
    const-string v0, "nomeTitular"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 125
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_a
    const-string v0, "numeroCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 127
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 128
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_b
    const-string v0, "numeroReduzido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "numReduzido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 130
    :cond_c
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 131
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_d
    const-string v0, "numeroReduzidoScreen"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 133
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 134
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_e
    const-string v0, "tipoCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 136
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 137
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_f
    const-string v0, "indicaCpf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v1, p0, Lhcx;->c:Z

    .line 140
    iget-object v0, p0, Lhcx;->a:Lhcw;

    invoke-static {v0}, Lhcw;->a(Lhcw;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->v(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 71
    const-string v0, "listaDesbloqueioCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lhcx;->a:Lhcw;

    new-instance v1, Lhct;

    invoke-direct {v1}, Lhct;-><init>()V

    invoke-static {v0, v1}, Lhcw;->a(Lhcw;Lhct;)Lhct;

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "bandeira"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "codSituacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "descSituacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "descSubProd"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "imagem"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "indicaAdicional"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "indicaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "nomeTitular"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "numeroCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "numeroReduzido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "numReduzido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "indicaCpf"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tipoCartao"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "numeroReduzidoScreen"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tokenTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhcx;->c:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lhcx;->b:Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
