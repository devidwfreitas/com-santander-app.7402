.class public Lorg/dom4j/io/XMLResult;
.super Ljavax/xml/transform/sax/SAXResult;
.source "SourceFile"


# instance fields
.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0}, Lorg/dom4j/io/XMLWriter;-><init>()V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0, p1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0, p1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLResult;-><init>(Lorg/dom4j/io/XMLWriter;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/XMLWriter;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 54
    iput-object p1, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 55
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 64
    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    .line 65
    iget-object v0, p0, Lorg/dom4j/io/XMLResult;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 66
    return-void
.end method
