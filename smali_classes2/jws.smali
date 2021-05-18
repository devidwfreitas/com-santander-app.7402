.class public Ljws;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/StringBuffer;

.field private c:Lmip;

.field protected d:Lfvu;

.field protected e:Lfvv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 22
    iput-object v1, p0, Ljws;->d:Lfvu;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljws;->a:Z

    .line 27
    iput-object v1, p0, Ljws;->e:Lfvv;

    .line 29
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljws;->c:Lmip;

    return-void
.end method


# virtual methods
.method public a()Lfvu;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ljws;->d:Lfvu;

    return-object v0
.end method

.method public characters([CII)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 39
    iget-boolean v0, p0, Ljws;->a:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Ljws;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 41
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Ljws;->a:Z

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Ljws;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "tokenTransacao"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Ljws;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmir;->i(Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-object v0, p0, Ljws;->b:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 54
    :cond_1
    return-void
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljws;->b:Ljava/lang/StringBuffer;

    .line 61
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 67
    return-void
.end method
