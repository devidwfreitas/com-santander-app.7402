.class public Ljyw;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyv;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyv;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Ljyw;->a:Ljyv;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljyw;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 142
    iget-boolean v0, p0, Ljyw;->c:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 145
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->b(Ljyv;)Lfwa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->b(Ljyv;)Lfwa;

    move-result-object v0

    invoke-virtual {p0}, Ljyw;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwa;->setError(Lfvu;)V

    .line 241
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 154
    iget-object v0, p0, Ljyw;->a:Ljyv;

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljyv;->a(Ljyv;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    :cond_0
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 159
    iget-object v0, p0, Ljyw;->a:Ljyv;

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljyv;->b(Ljyv;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    :cond_1
    const-string v0, "listFundo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljyv;->a(Ljyv;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 164
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->b(Ljyv;)Lfwa;

    move-result-object v0

    invoke-virtual {v0}, Lfwa;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljyw;->a:Ljyv;

    invoke-static {v1}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    const-string v0, "listaFamilias"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->b(Ljyv;)Lfwa;

    move-result-object v0

    invoke-virtual {v0}, Lfwa;->b()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljyw;->a:Ljyv;

    invoke-static {v1}, Ljyv;->c(Ljyv;)Lfwf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_3
    const-string v0, "codigoCor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 173
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->d(Ljyv;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 174
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v0

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwg;->a(Ljava/lang/String;)V

    .line 178
    :cond_4
    :goto_0
    const-string v0, "codigoFundo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 180
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v0

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwg;->b(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v0

    iget-object v1, p0, Ljyw;->a:Ljyv;

    invoke-static {v1}, Ljyv;->e(Ljyv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwg;->h(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v0

    iget-object v1, p0, Ljyw;->a:Ljyv;

    invoke-static {v1}, Ljyv;->f(Ljyv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwg;->i(Ljava/lang/String;)V

    .line 185
    :cond_5
    const-string v0, "contaFundo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 187
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v0

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwg;->c(Ljava/lang/String;)V

    .line 190
    :cond_6
    const-string v0, "dataCota"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 191
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 192
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v0

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwg;->d(Ljava/lang/String;)V

    .line 195
    :cond_7
    const-string v0, "nomeReduzidoIb"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 196
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 197
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v0

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwg;->e(Ljava/lang/String;)V

    .line 200
    :cond_8
    const-string v0, "saldoBruto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 201
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 202
    iget-object v0, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 205
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_9
    iget-object v1, p0, Ljyw;->a:Ljyv;

    invoke-static {v1}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfwg;->f(Ljava/lang/String;)V

    .line 212
    :cond_a
    const-string v0, "valorDisponivelRegaste"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 213
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 214
    iget-object v0, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 217
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_b
    iget-object v1, p0, Ljyw;->a:Ljyv;

    invoke-static {v1}, Ljyv;->a(Ljyv;)Lfwg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfwg;->g(Ljava/lang/String;)V

    .line 223
    :cond_c
    const-string v0, "nomeFamilia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 224
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 225
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->c(Ljyv;)Lfwf;

    move-result-object v0

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwf;->b(Ljava/lang/String;)V

    .line 228
    :cond_d
    const-string v0, "tipoFamilia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 229
    iput-boolean v3, p0, Ljyw;->c:Z

    .line 230
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->c(Ljyv;)Lfwf;

    move-result-object v0

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwf;->c(Ljava/lang/String;)V

    .line 234
    :cond_e
    return-void

    .line 176
    :cond_f
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v0}, Ljyv;->c(Ljyv;)Lfwf;

    move-result-object v0

    iget-object v1, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwf;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 111
    const-string v0, "listFundo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Ljyw;->a:Ljyv;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljyv;->a(Ljyv;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 113
    iget-object v0, p0, Ljyw;->a:Ljyv;

    new-instance v1, Lfwg;

    invoke-direct {v1}, Lfwg;-><init>()V

    invoke-static {v0, v1}, Ljyv;->a(Ljyv;Lfwg;)Lfwg;

    .line 116
    :cond_0
    const-string v0, "listaFamilias"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Ljyw;->a:Ljyv;

    new-instance v1, Lfwf;

    invoke-direct {v1}, Lfwf;-><init>()V

    invoke-static {v0, v1}, Ljyv;->a(Ljyv;Lfwf;)Lfwf;

    .line 120
    :cond_1
    const-string v0, "codigoCor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "codigoFundo"

    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "contaFundo"

    .line 122
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dataCota"

    .line 123
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "nomeReduzidoIb"

    .line 124
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "saldoBruto"

    .line 125
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "valorDisponivelRegaste"

    .line 126
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "nomeFamilia"

    .line 127
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tipoFamilia"

    .line 128
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "agencia"

    .line 129
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "conta"

    .line 130
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    :cond_2
    iput-boolean v2, p0, Ljyw;->c:Z

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyw;->b:Ljava/lang/StringBuffer;

    .line 135
    :cond_3
    return-void
.end method
