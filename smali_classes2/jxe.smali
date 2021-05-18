.class public Ljxe;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljxd;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljxd;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Ljxe;->a:Ljxd;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxe;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 97
    iget-boolean v0, p0, Ljxe;->c:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 100
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->a(Ljxd;)Lfva;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->a(Ljxd;)Lfva;

    move-result-object v0

    invoke-virtual {p0}, Ljxe;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfva;->setError(Lfvu;)V

    .line 177
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "OESC_001"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 109
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->a(Ljxd;)Lfva;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfva;->a(Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v0, "index"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 113
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->b(Ljxd;)Lfvl;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvl;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "maxResults"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 117
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->b(Ljxd;)Lfvl;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvl;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "nextIndex"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 121
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->b(Ljxd;)Lfvl;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvl;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string v0, "paginator"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 125
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->a(Ljxd;)Lfva;

    move-result-object v0

    iget-object v1, p0, Ljxe;->a:Ljxd;

    invoke-static {v1}, Ljxd;->b(Ljxd;)Lfvl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfva;->a(Lfvl;)V

    goto :goto_0

    .line 127
    :cond_5
    const-string v0, "codigoRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 129
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->a(Ljxd;)Lfva;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfva;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_6
    const-string v0, "codigo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 133
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->c(Ljxd;)Lfvc;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvc;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_7
    const-string v0, "data"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 137
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->c(Ljxd;)Lfvc;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvc;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_8
    const-string v0, "descHistorico"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 141
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->c(Ljxd;)Lfvc;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvc;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_9
    const-string v0, "importe"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 145
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->c(Ljxd;)Lfvc;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvc;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_a
    const-string v0, "indCarAbo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 149
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->c(Ljxd;)Lfvc;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvc;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_b
    const-string v0, "numDocumento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 152
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 153
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->c(Ljxd;)Lfvc;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfvc;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_c
    const-string v0, "listaLancamentosFuturos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 156
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 157
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->a(Ljxd;)Lfva;

    move-result-object v0

    invoke-virtual {v0}, Lfva;->g()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljxe;->a:Ljxd;

    .line 158
    invoke-static {v1}, Ljxd;->c(Ljxd;)Lfvc;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 160
    :cond_d
    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 161
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 162
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->a(Ljxd;)Lfva;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfva;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_e
    const-string v0, "mensagemRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iput-boolean v1, p0, Ljxe;->c:Z

    .line 166
    iget-object v0, p0, Ljxe;->a:Ljxd;

    invoke-static {v0}, Ljxd;->a(Ljxd;)Lfva;

    move-result-object v0

    iget-object v1, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfva;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 73
    const-string v0, "paginator"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Ljxe;->a:Ljxd;

    new-instance v1, Lfvl;

    invoke-direct {v1}, Lfvl;-><init>()V

    invoke-static {v0, v1}, Ljxd;->a(Ljxd;Lfvl;)Lfvl;

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v0, "listaLancamentosFuturos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Ljxe;->a:Ljxd;

    new-instance v1, Lfvc;

    invoke-direct {v1}, Lfvc;-><init>()V

    invoke-static {v0, v1}, Ljxd;->a(Ljxd;Lfvc;)Lfvc;

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "OESC_001"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "paginator"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "codigoRetorno"

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "codigo"

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "data"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "descHistorico"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "importe"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "indCarAbo"

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "numDocumento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mensagemAEA"

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mensagemRetorno"

    .line 83
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "index"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "maxResults"

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "nextIndex"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxe;->c:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxe;->b:Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
