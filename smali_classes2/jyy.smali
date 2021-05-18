.class public Ljyy;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyx;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyx;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Ljyy;->a:Ljyx;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljyy;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 119
    iget-boolean v0, p0, Ljyy;->c:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 122
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Ljyy;->a:Ljyx;

    invoke-static {v0}, Ljyx;->b(Ljyx;)Lfux;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Ljyy;->a:Ljyx;

    invoke-static {v0}, Ljyx;->b(Ljyx;)Lfux;

    move-result-object v0

    invoke-virtual {p0}, Ljyy;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfux;->setError(Lfvu;)V

    .line 174
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Ljyy;->a:Ljyx;

    invoke-static {v0}, Ljyx;->a(Ljyx;)Lfuw;

    move-result-object v0

    invoke-virtual {v0}, Lfuw;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljyy;->a:Ljyx;

    invoke-static {v0}, Ljyx;->a(Ljyx;)Lfuw;

    move-result-object v0

    invoke-virtual {v0}, Lfuw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Ljyy;->a:Ljyx;

    invoke-static {v0}, Ljyx;->b(Ljyx;)Lfux;

    move-result-object v0

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljyy;->a:Ljyx;

    invoke-static {v1}, Ljyx;->a(Ljyx;)Lfuw;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iput-boolean v3, p0, Ljyy;->c:Z

    .line 136
    iget-object v0, p0, Ljyy;->a:Ljyx;

    invoke-static {v0}, Ljyx;->a(Ljyx;)Lfuw;

    move-result-object v0

    iget-object v1, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuw;->a(Ljava/lang/String;)V

    .line 139
    :cond_1
    const-string v0, "nome"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iput-boolean v3, p0, Ljyy;->c:Z

    .line 141
    iget-object v0, p0, Ljyy;->a:Ljyx;

    invoke-static {v0}, Ljyx;->a(Ljyx;)Lfuw;

    move-result-object v0

    iget-object v1, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuw;->b(Ljava/lang/String;)V

    .line 144
    :cond_2
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    iput-boolean v3, p0, Ljyy;->c:Z

    .line 146
    iget-object v0, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_3
    iget-object v1, p0, Ljyy;->a:Ljyx;

    invoke-static {v1}, Ljyx;->a(Ljyx;)Lfuw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfuw;->c(Ljava/lang/String;)V

    .line 156
    :cond_4
    const-string v0, "pagamentoMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    iput-boolean v3, p0, Ljyy;->c:Z

    .line 158
    iget-object v0, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_5
    iget-object v1, p0, Ljyy;->a:Ljyx;

    invoke-static {v1}, Ljyx;->a(Ljyx;)Lfuw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfuw;->d(Ljava/lang/String;)V

    .line 167
    :cond_6
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 87
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Ljyy;->a:Ljyx;

    new-instance v1, Lfuw;

    invoke-direct {v1}, Lfuw;-><init>()V

    invoke-static {v0, v1}, Ljyx;->a(Ljyx;Lfuw;)Lfuw;

    .line 91
    :cond_0
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iput-boolean v2, p0, Ljyy;->c:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    .line 96
    :cond_1
    const-string v0, "nome"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iput-boolean v2, p0, Ljyy;->c:Z

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    .line 102
    :cond_2
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iput-boolean v2, p0, Ljyy;->c:Z

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    .line 107
    :cond_3
    const-string v0, "pagamentoMinimo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iput-boolean v2, p0, Ljyy;->c:Z

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljyy;->b:Ljava/lang/StringBuffer;

    .line 112
    :cond_4
    return-void
.end method
