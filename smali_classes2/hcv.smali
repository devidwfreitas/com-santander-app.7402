.class public Lhcv;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhcu;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lhcu;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iput-object p1, p0, Lhcv;->a:Lhcu;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 60
    iput-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhcv;->c:Z

    .line 62
    iput-object v1, p0, Lhcv;->h:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 91
    iget-boolean v0, p0, Lhcv;->c:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 94
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->b(Lhcu;)Lhcs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->b(Lhcu;)Lhcs;

    move-result-object v0

    invoke-virtual {p0}, Lhcv;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->setError(Lfvu;)V

    .line 140
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->b(Lhcu;)Lhcs;

    move-result-object v0

    iget-object v1, p0, Lhcv;->a:Lhcu;

    invoke-static {v1}, Lhcu;->a(Lhcu;)Lhct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->a(Lhct;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v0, "bandeira"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 104
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->a(Lhcu;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    const-string v0, "indicaDebito"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 107
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->a(Lhcu;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    const-string v0, "nomeTitular"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 110
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->a(Lhcu;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_4
    const-string v0, "numReduzido"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 113
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->a(Lhcu;)Lhct;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhct;->p(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_5
    const-string v0, "autenticacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 116
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->b(Lhcu;)Lhcs;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_6
    const-string v0, "dataTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 119
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->b(Lhcu;)Lhcs;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_7
    const-string v0, "horaTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 121
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 122
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->b(Lhcu;)Lhcs;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_8
    const-string v0, "confirmacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 125
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->b(Lhcu;)Lhcs;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_9
    const-string v0, "codigoErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 127
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 128
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->b(Lhcu;)Lhcs;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_a
    const-string v0, "mensagemErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iput-boolean v1, p0, Lhcv;->c:Z

    .line 131
    iget-object v0, p0, Lhcv;->a:Lhcu;

    invoke-static {v0}, Lhcu;->b(Lhcu;)Lhcs;

    move-result-object v0

    iget-object v1, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcs;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 68
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lhcv;->a:Lhcu;

    new-instance v1, Lhct;

    invoke-direct {v1}, Lhct;-><init>()V

    invoke-static {v0, v1}, Lhcu;->a(Lhcu;Lhct;)Lhct;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v0, "bandeira"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "indicaDebito"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "nomeTitular"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "numReduzido"

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "confirmacao"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataTransacao"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "horaTransacao"

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "autenticacao"

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mensagemErro"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "codigoErro"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhcv;->c:Z

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lhcv;->b:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
