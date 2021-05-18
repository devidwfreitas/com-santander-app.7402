.class public Lkap;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkao;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lkao;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Lkap;->a:Lkao;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lkap;->b:Ljava/lang/StringBuffer;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkap;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 85
    iget-boolean v0, p0, Lkap;->c:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lkap;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 88
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lkap;->a:Lkao;

    invoke-static {v0}, Lkao;->a(Lkao;)Lfwu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lkap;->a:Lkao;

    invoke-static {v0}, Lkao;->a(Lkao;)Lfwu;

    move-result-object v0

    invoke-virtual {p0}, Lkap;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwu;->setError(Lfvu;)V

    .line 106
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkap;->c:Z

    .line 97
    iget-object v0, p0, Lkap;->a:Lkao;

    invoke-static {v0}, Lkao;->a(Lkao;)Lfwu;

    move-result-object v0

    iget-object v1, p0, Lkap;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwu;->a(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 73
    const-string v0, "return"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkap;->c:Z

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkap;->b:Ljava/lang/StringBuffer;

    .line 78
    :cond_0
    return-void
.end method
