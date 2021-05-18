.class public Lorg/dom4j/io/SAXValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 47
    return-void
.end method


# virtual methods
.method protected configureReader()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/validation"

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 152
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 153
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method protected createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/dom4j/io/SAXHelper;->createXMLReader(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 86
    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->configureReader()V

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 120
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 100
    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->configureReader()V

    .line 101
    return-void
.end method

.method public validate(Lorg/dom4j/Document;)V
    .locals 4

    .prologue
    .line 58
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 66
    :cond_0
    :try_start_0
    new-instance v1, Lorg/dom4j/io/DocumentInputSource;

    invoke-direct {v1, p1}, Lorg/dom4j/io/DocumentInputSource;-><init>(Lorg/dom4j/Document;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught and exception that should never happen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
