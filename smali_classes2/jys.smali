.class public Ljys;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyr;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyr;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Ljys;->a:Ljyr;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljys;->b:Ljava/lang/StringBuffer;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljys;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 111
    iget-boolean v0, p0, Ljys;->c:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Ljys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 114
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Ljys;->a:Ljyr;

    invoke-static {v0}, Ljyr;->b(Ljyr;)Lfuv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Ljys;->a:Ljyr;

    invoke-static {v0}, Ljyr;->b(Ljyr;)Lfuv;

    move-result-object v0

    invoke-virtual {p0}, Ljys;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuv;->setError(Lfvu;)V

    .line 164
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "listaSaldoHomeLogada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Ljys;->a:Ljyr;

    invoke-static {v0}, Ljyr;->b(Ljyr;)Lfuv;

    move-result-object v0

    invoke-virtual {v0}, Lfuv;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljys;->a:Ljyr;

    invoke-static {v1}, Ljyr;->a(Ljyr;)Lfuu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iput-boolean v3, p0, Ljys;->c:Z

    .line 127
    iget-object v0, p0, Ljys;->a:Ljyr;

    invoke-static {v0}, Ljyr;->a(Ljyr;)Lfuu;

    move-result-object v0

    iget-object v1, p0, Ljys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuu;->setAgencia(Ljava/lang/String;)V

    .line 130
    :cond_1
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iput-boolean v3, p0, Ljys;->c:Z

    .line 132
    iget-object v0, p0, Ljys;->a:Ljyr;

    invoke-static {v0}, Ljyr;->a(Ljyr;)Lfuu;

    move-result-object v0

    iget-object v1, p0, Ljys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuu;->setCuenta(Ljava/lang/String;)V

    .line 135
    :cond_2
    const-string v0, "tipoConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iput-boolean v3, p0, Ljys;->c:Z

    .line 137
    iget-object v0, p0, Ljys;->a:Ljyr;

    invoke-static {v0}, Ljyr;->a(Ljyr;)Lfuu;

    move-result-object v0

    iget-object v1, p0, Ljys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuu;->setTipoConta(Ljava/lang/String;)V

    .line 140
    :cond_3
    const-string v0, "saldoDisponivelTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iput-boolean v3, p0, Ljys;->c:Z

    .line 142
    iget-object v0, p0, Ljys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_4
    iget-object v1, p0, Ljys;->a:Ljyr;

    invoke-static {v1}, Ljyr;->a(Ljyr;)Lfuu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfuu;->setValor(Ljava/lang/String;)V

    .line 152
    :cond_5
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    iput-boolean v3, p0, Ljys;->c:Z

    .line 154
    iget-object v0, p0, Ljys;->a:Ljyr;

    invoke-static {v0}, Ljyr;->a(Ljyr;)Lfuu;

    move-result-object v0

    invoke-virtual {v0}, Lfuu;->getExtractoHome()Lfuy;

    move-result-object v0

    iget-object v1, p0, Ljys;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuy;->u(Ljava/lang/String;)V

    .line 157
    :cond_6
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 74
    const-string v0, "listaSaldoHomeLogada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Ljys;->a:Ljyr;

    new-instance v1, Lfuu;

    invoke-direct {v1}, Lfuu;-><init>()V

    invoke-static {v0, v1}, Ljyr;->a(Ljyr;Lfuu;)Lfuu;

    .line 76
    iget-object v0, p0, Ljys;->a:Ljyr;

    invoke-static {v0}, Ljyr;->a(Ljyr;)Lfuu;

    move-result-object v0

    new-instance v1, Lfuy;

    invoke-direct {v1}, Lfuy;-><init>()V

    invoke-virtual {v0, v1}, Lfuu;->setExtractoHome(Lfuy;)V

    .line 79
    :cond_0
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iput-boolean v2, p0, Ljys;->c:Z

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljys;->b:Ljava/lang/StringBuffer;

    .line 84
    :cond_1
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iput-boolean v2, p0, Ljys;->c:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljys;->b:Ljava/lang/StringBuffer;

    .line 89
    :cond_2
    const-string v0, "tipoConta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iput-boolean v2, p0, Ljys;->c:Z

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljys;->b:Ljava/lang/StringBuffer;

    .line 94
    :cond_3
    const-string v0, "saldoDisponivelTotal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    iput-boolean v2, p0, Ljys;->c:Z

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljys;->b:Ljava/lang/StringBuffer;

    .line 99
    :cond_4
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    iput-boolean v2, p0, Ljys;->c:Z

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljys;->b:Ljava/lang/StringBuffer;

    .line 104
    :cond_5
    return-void
.end method
