.class public Ljzu;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljzt;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Ljzt;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Ljzu;->a:Ljzt;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljzu;->b:Ljava/lang/StringBuffer;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzu;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 84
    iget-boolean v0, p0, Ljzu;->c:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Ljzu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Ljzu;->a:Ljzt;

    invoke-static {v0}, Ljzt;->a(Ljzt;)Lfuk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Ljzu;->a:Ljzt;

    invoke-static {v0}, Ljzt;->a(Ljzt;)Lfuk;

    move-result-object v0

    invoke-virtual {p0}, Ljzu;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuk;->setError(Lfvu;)V

    .line 125
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iput-boolean v2, p0, Ljzu;->c:Z

    .line 97
    iget-object v0, p0, Ljzu;->a:Ljzt;

    invoke-static {v0}, Ljzt;->a(Ljzt;)Lfuk;

    move-result-object v0

    iget-object v1, p0, Ljzu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuk;->a(Ljava/lang/String;)V

    .line 100
    :cond_0
    const-string v0, "PR_COD_ERRO"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iput-boolean v2, p0, Ljzu;->c:Z

    .line 102
    iget-object v0, p0, Ljzu;->a:Ljzt;

    invoke-static {v0}, Ljzt;->a(Ljzt;)Lfuk;

    move-result-object v0

    iget-object v1, p0, Ljzu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuk;->b(Ljava/lang/String;)V

    .line 104
    :cond_1
    const-string v0, "PR_DAT_TRAN"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iput-boolean v2, p0, Ljzu;->c:Z

    .line 106
    iget-object v0, p0, Ljzu;->a:Ljzt;

    invoke-static {v0}, Ljzt;->a(Ljzt;)Lfuk;

    move-result-object v0

    iget-object v1, p0, Ljzu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuk;->c(Ljava/lang/String;)V

    .line 108
    :cond_2
    const-string v0, "PR_DESC_ERRO"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iput-boolean v2, p0, Ljzu;->c:Z

    .line 110
    iget-object v0, p0, Ljzu;->a:Ljzt;

    invoke-static {v0}, Ljzt;->a(Ljzt;)Lfuk;

    move-result-object v0

    iget-object v1, p0, Ljzu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuk;->d(Ljava/lang/String;)V

    .line 112
    :cond_3
    const-string v0, "PR_HOR_TRAN"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iput-boolean v2, p0, Ljzu;->c:Z

    .line 114
    iget-object v0, p0, Ljzu;->a:Ljzt;

    invoke-static {v0}, Ljzt;->a(Ljzt;)Lfuk;

    move-result-object v0

    iget-object v1, p0, Ljzu;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfuk;->e(Ljava/lang/String;)V

    .line 118
    :cond_4
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 68
    const-string v0, "autenticacaoBancaria"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PR_COD_ERRO"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PR_DAT_TRAN"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PR_DESC_ERRO"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PR_HOR_TRAN"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljzu;->c:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljzu;->b:Ljava/lang/StringBuffer;

    .line 77
    :cond_1
    return-void
.end method
