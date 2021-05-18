.class public Lorg/dom4j/io/SAXWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# static fields
.field protected static final FEATURE_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final FEATURE_NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field protected static final LEXICAL_HANDLER_NAMES:[Ljava/lang/String;


# instance fields
.field private attributes:Lorg/xml/sax/helpers/AttributesImpl;

.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private declareNamespaceAttributes:Z

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    aput-object v2, v0, v1

    sput-object v0, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXWriter;->features:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    .line 85
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 98
    iput-object p2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 105
    iput-object p2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 106
    iput-object p3, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 107
    return-void
.end method


# virtual methods
.method protected addNamespaceAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/dom4j/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;
    .locals 6

    .prologue
    .line 768
    iget-boolean v0, p0, Lorg/dom4j/io/SAXWriter;->declareNamespaceAttributes:Z

    if-eqz v0, :cond_2

    .line 769
    if-nez p1, :cond_1

    .line 770
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 773
    :goto_0
    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 774
    const-string v3, "xmlns"

    .line 776
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 780
    :cond_0
    const-string v1, ""

    .line 782
    const-string v4, "CDATA"

    .line 783
    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    .line 785
    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method protected checkForNullHandlers()V
    .locals 0

    .prologue
    .line 820
    return-void
.end method

.method protected createAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 7

    .prologue
    .line 741
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 743
    if-eqz p2, :cond_0

    .line 744
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 747
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/dom4j/Attribute;

    .line 749
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v5}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    invoke-interface {v5}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_1
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    return-object v0
.end method

.method protected documentLocator(Lorg/dom4j/Document;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 592
    new-instance v2, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 596
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v3

    .line 598
    if-eqz v3, :cond_2

    .line 599
    invoke-interface {v3}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-interface {v3}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_0
    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {v2, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 607
    :cond_0
    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {v2, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 611
    :cond_1
    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 612
    invoke-virtual {v2, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 614
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 615
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method protected dtdHandler(Lorg/dom4j/Document;)V
    .locals 0

    .prologue
    .line 645
    return-void
.end method

.method protected endDocument()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 653
    return-void
.end method

.method protected endElement(Lorg/dom4j/Element;)V
    .locals 4

    .prologue
    .line 735
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method protected endPrefixMapping(Lorg/dom4j/tree/NamespaceStack;I)V
    .locals 2

    .prologue
    .line 718
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 719
    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_0

    .line 722
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_1
    return-void
.end method

.method protected entityResolver(Lorg/dom4j/Document;)V
    .locals 6

    .prologue
    .line 618
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_1

    .line 619
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_1

    .line 622
    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    .line 625
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 627
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :cond_1
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not resolve publicID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " systemID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->features:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 450
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 504
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 505
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v0

    .line 510
    :goto_1
    return-object v0

    .line 504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public isDeclareNamespaceAttributes()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/dom4j/io/SAXWriter;->declareNamespaceAttributes:Z

    return v0
.end method

.method protected isIgnoreableNamespace(Lorg/dom4j/Namespace;Lorg/dom4j/tree/NamespaceStack;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 802
    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, v1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, v1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    :cond_0
    :goto_0
    return v0

    .line 807
    :cond_1
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 809
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 813
    invoke-virtual {p2, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 520
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "This XMLReader can only accept <dom4j> InputSource objects"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2

    .prologue
    .line 533
    instance-of v0, p1, Lorg/dom4j/io/DocumentInputSource;

    if-eqz v0, :cond_0

    .line 534
    check-cast p1, Lorg/dom4j/io/DocumentInputSource;

    .line 535
    invoke-virtual {p1}, Lorg/dom4j/io/DocumentInputSource;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 536
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Document;)V

    .line 542
    return-void

    .line 538
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "This XMLReader can only accept <dom4j> InputSource objects"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 350
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 368
    return-void
.end method

.method public setDeclareNamespaceAttributes(Z)V
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lorg/dom4j/io/SAXWriter;->declareNamespaceAttributes:Z

    .line 327
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 405
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 386
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 464
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p0, p2}, Lorg/dom4j/io/SAXWriter;->setDeclareNamespaceAttributes(Z)V

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->features:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    return-void

    .line 466
    :cond_1
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    if-nez p2, :cond_0

    .line 468
    const-string v0, "Namespace feature is always supported in dom4j"

    .line 469
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 424
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 483
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 484
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, p2}, Lorg/dom4j/io/SAXWriter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 492
    :goto_1
    return-void

    .line 483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1

    .prologue
    .line 432
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 433
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 434
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 435
    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 436
    return-void
.end method

.method protected startDocument()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 649
    return-void
.end method

.method protected startElement(Lorg/dom4j/Element;Lorg/xml/sax/helpers/AttributesImpl;)V
    .locals 5

    .prologue
    .line 729
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/SAXWriter;->createAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 732
    return-void
.end method

.method protected startPrefixMapping(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)Lorg/xml/sax/helpers/AttributesImpl;
    .locals 8

    .prologue
    .line 677
    const/4 v0, 0x0

    .line 680
    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    .line 682
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p2}, Lorg/dom4j/io/SAXWriter;->isIgnoreableNamespace(Lorg/dom4j/Namespace;Lorg/dom4j/tree/NamespaceStack;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    invoke-virtual {p2, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 685
    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/io/SAXWriter;->addNamespaceAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/dom4j/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v0

    .line 691
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v3

    .line 693
    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    move-object v1, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 694
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    .line 696
    invoke-virtual {p0, v0, p2}, Lorg/dom4j/io/SAXWriter;->isIgnoreableNamespace(Lorg/dom4j/Namespace;Lorg/dom4j/tree/NamespaceStack;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 697
    invoke-virtual {p2, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 698
    iget-object v5, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/SAXWriter;->addNamespaceAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/dom4j/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v0

    .line 693
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 705
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public write(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 239
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 241
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/CDATA;)V
    .locals 2

    .prologue
    .line 250
    invoke-interface {p1}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 254
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write(Lorg/dom4j/Comment;)V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {p1}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 271
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 273
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Document;)V
    .locals 1

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->checkForNullHandlers()V

    .line 185
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->documentLocator(Lorg/dom4j/Document;)V

    .line 186
    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->startDocument()V

    .line 187
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->entityResolver(Lorg/dom4j/Document;)V

    .line 188
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->dtdHandler(Lorg/dom4j/Document;)V

    .line 190
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->writeContent(Lorg/dom4j/Branch;Lorg/dom4j/tree/NamespaceStack;)V

    .line 191
    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->endDocument()V

    .line 193
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)V

    .line 203
    return-void
.end method

.method protected write(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)V
    .locals 2

    .prologue
    .line 657
    invoke-virtual {p2}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    .line 658
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/SAXWriter;->startPrefixMapping(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v1

    .line 660
    invoke-virtual {p0, p1, v1}, Lorg/dom4j/io/SAXWriter;->startElement(Lorg/dom4j/Element;Lorg/xml/sax/helpers/AttributesImpl;)V

    .line 661
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/SAXWriter;->writeContent(Lorg/dom4j/Branch;Lorg/dom4j/tree/NamespaceStack;)V

    .line 662
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->endElement(Lorg/dom4j/Element;)V

    .line 663
    invoke-virtual {p0, p2, v0}, Lorg/dom4j/io/SAXWriter;->endPrefixMapping(Lorg/dom4j/tree/NamespaceStack;I)V

    .line 664
    return-void
.end method

.method public write(Lorg/dom4j/Entity;)V
    .locals 3

    .prologue
    .line 282
    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_0

    .line 285
    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v2, v1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write(Lorg/dom4j/Node;)V
    .locals 3

    .prologue
    .line 116
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    .line 118
    sget-object v1, Lorg/dom4j/io/SAXWriter$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-virtual {v0}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 171
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Element;)V

    .line 173
    :goto_0
    :pswitch_1
    return-void

    .line 125
    :pswitch_2
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 130
    :pswitch_3
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_4
    check-cast p1, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/CDATA;)V

    goto :goto_0

    .line 140
    :pswitch_5
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 145
    :pswitch_6
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 150
    :pswitch_7
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 155
    :pswitch_8
    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Document;)V

    goto :goto_0

    .line 160
    :pswitch_9
    check-cast p1, Lorg/dom4j/DocumentType;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
    .end packed-switch
.end method

.method public write(Lorg/dom4j/ProcessingInstruction;)V
    .locals 3

    .prologue
    .line 301
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, v0, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public writeClose(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->endElement(Lorg/dom4j/Element;)V

    .line 228
    return-void
.end method

.method protected writeContent(Lorg/dom4j/Branch;Lorg/dom4j/tree/NamespaceStack;)V
    .locals 4

    .prologue
    .line 549
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 550
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 552
    instance-of v2, v0, Lorg/dom4j/Element;

    if-eqz v2, :cond_0

    .line 553
    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)V

    goto :goto_0

    .line 554
    :cond_0
    instance-of v2, v0, Lorg/dom4j/CharacterData;

    if-eqz v2, :cond_4

    .line 555
    instance-of v2, v0, Lorg/dom4j/Text;

    if-eqz v2, :cond_1

    .line 556
    check-cast v0, Lorg/dom4j/Text;

    .line 557
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_1
    instance-of v2, v0, Lorg/dom4j/CDATA;

    if-eqz v2, :cond_2

    .line 559
    check-cast v0, Lorg/dom4j/CDATA;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/CDATA;)V

    goto :goto_0

    .line 560
    :cond_2
    instance-of v2, v0, Lorg/dom4j/Comment;

    if-eqz v2, :cond_3

    .line 561
    check-cast v0, Lorg/dom4j/Comment;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 563
    :cond_3
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Node in DOM4J content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 567
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_5
    instance-of v2, v0, Lorg/dom4j/Entity;

    if-eqz v2, :cond_6

    .line 569
    check-cast v0, Lorg/dom4j/Entity;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 570
    :cond_6
    instance-of v2, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v2, :cond_7

    .line 571
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 572
    :cond_7
    instance-of v2, v0, Lorg/dom4j/Namespace;

    if-eqz v2, :cond_8

    .line 573
    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Node;)V

    goto/16 :goto_0

    .line 575
    :cond_8
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Node in DOM4J content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_9
    return-void
.end method

.method public writeOpen(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->startElement(Lorg/dom4j/Element;Lorg/xml/sax/helpers/AttributesImpl;)V

    .line 216
    return-void
.end method
