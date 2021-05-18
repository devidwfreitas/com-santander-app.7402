.class public Ljza;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljyz;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljyz;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Ljza;->a:Ljyz;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Ljza;->b:Ljava/lang/StringBuffer;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljza;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 114
    iget-boolean v0, p0, Ljza;->c:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Ljza;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 117
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Ljza;->a:Ljyz;

    invoke-static {v0}, Ljyz;->b(Ljyz;)Lfux;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ljza;->a:Ljyz;

    invoke-static {v0}, Ljyz;->b(Ljyz;)Lfux;

    move-result-object v0

    invoke-virtual {p0}, Ljza;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfux;->setError(Lfvu;)V

    .line 156
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "lista"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ljza;->a:Ljyz;

    invoke-static {v0}, Ljyz;->b(Ljyz;)Lfux;

    move-result-object v0

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljza;->a:Ljyz;

    invoke-static {v1}, Ljyz;->a(Ljyz;)Lfuw;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iput-boolean v2, p0, Ljza;->c:Z

    .line 130
    iget-object v0, p0, Ljza;->a:Ljyz;

    invoke-static {v0}, Ljyz;->a(Ljyz;)Lfuw;

    move-result-object v0

    iget-object v1, p0, Ljza;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuw;->a(Ljava/lang/String;)V

    .line 133
    :cond_1
    const-string v0, "nome"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iput-boolean v2, p0, Ljza;->c:Z

    .line 135
    iget-object v0, p0, Ljza;->a:Ljyz;

    invoke-static {v0}, Ljyz;->a(Ljyz;)Lfuw;

    move-result-object v0

    iget-object v1, p0, Ljza;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuw;->b(Ljava/lang/String;)V

    .line 138
    :cond_2
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    iput-boolean v2, p0, Ljza;->c:Z

    .line 140
    iget-object v0, p0, Ljza;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_3
    iget-object v1, p0, Ljza;->a:Ljyz;

    invoke-static {v1}, Ljyz;->a(Ljyz;)Lfuw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfuw;->c(Ljava/lang/String;)V

    .line 149
    :cond_4
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 87
    const-string v0, "lista"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Ljza;->a:Ljyz;

    new-instance v1, Lfuw;

    invoke-direct {v1}, Lfuw;-><init>()V

    invoke-static {v0, v1}, Ljyz;->a(Ljyz;Lfuw;)Lfuw;

    .line 91
    :cond_0
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iput-boolean v2, p0, Ljza;->c:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljza;->b:Ljava/lang/StringBuffer;

    .line 96
    :cond_1
    const-string v0, "nome"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iput-boolean v2, p0, Ljza;->c:Z

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljza;->b:Ljava/lang/StringBuffer;

    .line 102
    :cond_2
    const-string v0, "saldoDisponivel"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iput-boolean v2, p0, Ljza;->c:Z

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljza;->b:Ljava/lang/StringBuffer;

    .line 107
    :cond_3
    return-void
.end method
