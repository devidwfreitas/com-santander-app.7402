.class public Lfob;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfoa;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lfoa;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lfob;->a:Lfoa;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lfob;->b:Ljava/lang/StringBuffer;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfob;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 77
    iget-boolean v0, p0, Lfob;->c:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 80
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v0

    invoke-virtual {p0}, Lfob;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfny;->setError(Lfvu;)V

    .line 144
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "codErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iput-boolean v1, p0, Lfob;->c:Z

    .line 88
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v0

    iget-object v1, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfny;->a(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v0, "msgErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iput-boolean v1, p0, Lfob;->c:Z

    .line 91
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v0

    iget-object v1, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfny;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "segmentoNome"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iput-boolean v1, p0, Lfob;->c:Z

    .line 97
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 99
    :try_start_0
    iget-object v1, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lfob;->a:Lfoa;

    invoke-static {v1}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lfny;->c(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lfob;->a:Lfoa;

    invoke-static {v1}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lfny;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_3
    const-string v0, "codRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iput-boolean v1, p0, Lfob;->c:Z

    .line 109
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v0

    iget-object v1, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfny;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_4
    const-string v0, "dadosRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iput-boolean v1, p0, Lfob;->c:Z

    .line 113
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v0

    iget-object v1, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfny;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_5
    const-string v0, "tokenSession"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    iput-boolean v1, p0, Lfob;->c:Z

    .line 117
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v0

    iget-object v1, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfny;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_6
    const-string v0, "listaAgenciaContasCorrente"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    iput-boolean v1, p0, Lfob;->c:Z

    .line 121
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v0

    iget-object v1, p0, Lfob;->a:Lfoa;

    invoke-static {v1}, Lfoa;->b(Lfoa;)Lfyl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfny;->a(Lfyl;)V

    goto/16 :goto_0

    .line 123
    :cond_7
    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 124
    iput-boolean v1, p0, Lfob;->c:Z

    .line 125
    iget-object v0, p0, Lfob;->a:Lfoa;

    new-instance v1, Lfyl;

    invoke-direct {v1}, Lfyl;-><init>()V

    invoke-static {v0, v1}, Lfoa;->a(Lfoa;Lfyl;)Lfyl;

    .line 126
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->b(Lfoa;)Lfyl;

    move-result-object v0

    iget-object v1, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_8
    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    iput-boolean v1, p0, Lfob;->c:Z

    .line 130
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->b(Lfoa;)Lfyl;

    move-result-object v0

    iget-object v1, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfyl;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_9
    const-string v0, "paas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iput-boolean v1, p0, Lfob;->c:Z

    .line 134
    iget-object v0, p0, Lfob;->a:Lfoa;

    invoke-static {v0}, Lfoa;->a(Lfoa;)Lfny;

    move-result-object v0

    iget-object v1, p0, Lfob;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfny;->h(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 66
    const-string v0, "codErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "msgErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "segmentoNome"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "codRetorno"

    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dadosRetorno"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tokenSession"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listaAgenciaContasCorrente"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "agencia"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conta"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "paas"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfob;->c:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfob;->b:Ljava/lang/StringBuffer;

    .line 72
    :cond_1
    return-void
.end method
