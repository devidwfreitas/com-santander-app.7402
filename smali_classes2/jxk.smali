.class public Ljxk;
.super Ljws;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/StringBuffer;

.field protected f:Lfvu;

.field protected g:Lfvv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljws;-><init>()V

    .line 20
    iput-object v1, p0, Ljxk;->f:Lfvu;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljxk;->a:Z

    .line 25
    iput-object v1, p0, Ljxk;->g:Lfvv;

    return-void
.end method


# virtual methods
.method public a()Lfvu;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ljxk;->f:Lfvu;

    return-object v0
.end method

.method public characters([CII)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Ljws;->characters([CII)V

    .line 36
    iget-boolean v0, p0, Ljxk;->a:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Ljxk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 40
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1, p2, p3}, Ljws;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Ljxk;->a:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Ljxk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "faultcode"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Ljxk;->f:Lfvu;

    invoke-virtual {v1, v0}, Lfvu;->setFaultcode(Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Ljxk;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 69
    :cond_1
    return-void

    .line 52
    :cond_2
    const-string v1, "faultactor"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Ljxk;->f:Lfvu;

    invoke-virtual {v1, v0}, Lfvu;->setFaultactor(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    const-string v1, "faultstring"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    iget-object v1, p0, Ljxk;->f:Lfvu;

    invoke-virtual {v1, v0}, Lfvu;->setFaultstring(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_4
    const-string v1, "detail"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const-string v1, "soap-env:Fault"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    iput-boolean v3, p0, Ljxk;->a:Z

    goto :goto_0

    .line 61
    :cond_5
    const-string v1, "mensagemAEA"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Lfvv;

    invoke-direct {v1}, Lfvv;-><init>()V

    .line 63
    const-string v2, "mensagemAEA"

    invoke-virtual {v1, v2}, Lfvv;->c(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v0}, Lfvv;->d(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Ljxk;->f:Lfvu;

    invoke-virtual {v0, v1}, Lfvu;->setErrorDetail(Lfvv;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Ljws;->startDocument()V

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxk;->b:Ljava/lang/StringBuffer;

    .line 76
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Ljws;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 82
    const-string v0, "soapenv:Fault"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemAEA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "faultstring"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Lfvu;

    invoke-direct {v0}, Lfvu;-><init>()V

    iput-object v0, p0, Ljxk;->f:Lfvu;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljxk;->a:Z

    .line 86
    :cond_1
    return-void
.end method
