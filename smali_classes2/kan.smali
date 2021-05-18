.class public Lkan;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkam;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z


# direct methods
.method public constructor <init>(Lkam;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Lkan;->a:Lkam;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lkan;->b:Ljava/lang/StringBuffer;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkan;->c:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 88
    iget-boolean v0, p0, Lkan;->c:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lkan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 91
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lkan;->a:Lkam;

    invoke-static {v0}, Lkam;->a(Lkam;)Lfwt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lkan;->a:Lkam;

    invoke-static {v0}, Lkam;->a(Lkam;)Lfwt;

    move-result-object v0

    invoke-virtual {p0}, Lkan;->a()Lfvu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwt;->setError(Lfvu;)V

    .line 113
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "arg1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-boolean v1, p0, Lkan;->c:Z

    .line 100
    iget-object v0, p0, Lkan;->a:Lkam;

    invoke-static {v0}, Lkam;->a(Lkam;)Lfwt;

    move-result-object v0

    iget-object v1, p0, Lkan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwt;->b(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v0, "arg2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-boolean v1, p0, Lkan;->c:Z

    .line 103
    iget-object v0, p0, Lkan;->a:Lkam;

    invoke-static {v0}, Lkam;->a(Lkam;)Lfwt;

    move-result-object v0

    iget-object v1, p0, Lkan;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfwt;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    const-string v0, "arg1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iput-boolean v1, p0, Lkan;->c:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkan;->b:Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v0, "arg2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput-boolean v1, p0, Lkan;->c:Z

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lkan;->b:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
