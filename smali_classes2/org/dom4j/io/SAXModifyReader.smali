.class Lorg/dom4j/io/SAXModifyReader;
.super Lorg/dom4j/io/SAXReader;
.source "SourceFile"


# instance fields
.field private pruneElements:Z

.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/xml/sax/XMLReader;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/dom4j/io/SAXReader;-><init>(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method protected createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lorg/dom4j/io/SAXModifyContentHandler;

    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifyReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/dom4j/io/SAXModifyContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    .line 78
    iget-object v1, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXModifyContentHandler;->setXMLWriter(Lorg/dom4j/io/XMLWriter;)V

    .line 80
    return-object v0
.end method

.method protected getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public isPruneElements()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/dom4j/io/SAXModifyReader;->pruneElements:Z

    return v0
.end method

.method public setPruneElements(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/dom4j/io/SAXModifyReader;->pruneElements:Z

    .line 72
    return-void
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/dom4j/io/SAXModifyReader;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 64
    return-void
.end method
