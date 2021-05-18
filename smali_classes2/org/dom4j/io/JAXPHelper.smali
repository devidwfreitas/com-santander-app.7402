.class Lorg/dom4j/io/JAXPHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static createDocument(ZZ)Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 54
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 56
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createXMLReader(ZZ)Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 43
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 45
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method
