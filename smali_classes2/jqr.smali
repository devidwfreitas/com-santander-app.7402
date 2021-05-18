.class public Ljqr;
.super Ljxk;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/StringBuffer;

.field protected b:Z

.field final synthetic c:Ljqq;


# direct methods
.method public constructor <init>(Ljqq;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Ljqr;->c:Ljqq;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljqr;->b:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 77
    iget-boolean v0, p0, Ljqr;->b:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 80
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    invoke-virtual {p0}, Ljqr;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->setError(Lfvu;)V

    .line 142
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "codigoRetorno"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 88
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->a(Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v2, "csoAtivo"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 93
    iget-object v2, p0, Ljqr;->c:Ljqq;

    invoke-static {v2}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v2

    iget-object v3, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljqj;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 95
    :cond_3
    const-string v2, "mensagemRetorno"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 97
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_4
    const-string v2, "possuiCSO"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 100
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 101
    iget-object v2, p0, Ljqr;->c:Ljqq;

    invoke-static {v2}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v2

    iget-object v3, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljqj;->b(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    .line 103
    :cond_6
    const-string v2, "idCartao"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 104
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 105
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_7
    const-string v2, "desafio"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 108
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 109
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_8
    const-string v2, "sequencia"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 112
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 113
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_9
    const-string v2, "statusCSO"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 116
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 117
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_a
    const-string v2, "finalCSO"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 120
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 121
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_b
    const-string v2, "dataHash"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 124
    iput-boolean v1, p0, Ljqr;->b:Z

    .line 125
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_c
    const-string v1, "referOper"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 128
    iput-boolean v0, p0, Ljqr;->b:Z

    .line 129
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_d
    const-string v1, "perfil"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iput-boolean v0, p0, Ljqr;->b:Z

    .line 133
    iget-object v0, p0, Ljqr;->c:Ljqq;

    invoke-static {v0}, Ljqq;->a(Ljqq;)Ljqj;

    move-result-object v0

    iget-object v1, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqj;->j(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 61
    const-string v0, "solicitarCartaoNMResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ativarCsoResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Ljqr;->c:Ljqq;

    new-instance v1, Ljqj;

    invoke-direct {v1}, Ljqj;-><init>()V

    invoke-static {v0, v1}, Ljqq;->a(Ljqq;Ljqj;)Ljqj;

    .line 65
    :cond_1
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "csoAtivo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "possuiCSO"

    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "idCartao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "desafio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "sequencia"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "statusCSO"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "finalCSO"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataHash"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "referOper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OfertaCSOResponse"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "perfil"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljqr;->b:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljqr;->a:Ljava/lang/StringBuffer;

    .line 72
    :cond_3
    return-void
.end method
