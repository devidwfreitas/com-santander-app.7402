.class public Lorg/dom4j/io/STAXEventWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private consumer:Ljavax/xml/stream/util/XMLEventConsumer;

.field private factory:Ljavax/xml/stream/XMLEventFactory;

.field private outputFactory:Ljavax/xml/stream/XMLOutputFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    .line 43
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    .line 43
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 57
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLEventWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    .line 43
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 81
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLEventWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    .line 43
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 69
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLEventWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLEventWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    .line 43
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->outputFactory:Ljavax/xml/stream/XMLOutputFactory;

    .line 91
    iput-object p1, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/dom4j/io/STAXEventWriter;)Ljavax/xml/stream/XMLEventFactory;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method private createEntityReference(Lorg/dom4j/Entity;)Ljavax/xml/stream/events/EntityReference;
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Attribute;)Ljavax/xml/stream/events/Attribute;
    .locals 3

    .prologue
    .line 275
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventWriter;->createQName(Lorg/dom4j/QName;)Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 276
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v2, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public createCharacters(Lorg/dom4j/CDATA;)Ljavax/xml/stream/events/Characters;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    return-object v0
.end method

.method public createCharacters(Lorg/dom4j/Text;)Ljavax/xml/stream/events/Characters;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    return-object v0
.end method

.method public createComment(Lorg/dom4j/Comment;)Ljavax/xml/stream/events/Comment;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-interface {p1}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;

    move-result-object v0

    return-object v0
.end method

.method public createDTD(Lorg/dom4j/DocumentType;)Ljavax/xml/stream/events/DTD;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 437
    :try_start_0
    invoke-interface {p1, v0}, Lorg/dom4j/DocumentType;->write(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    iget-object v1, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/xml/stream/XMLEventFactory;->createDTD(Ljava/lang/String;)Ljavax/xml/stream/events/DTD;

    move-result-object v0

    return-object v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error writing DTD"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createEndDocument(Lorg/dom4j/Document;)Ljavax/xml/stream/events/EndDocument;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v0}, Ljavax/xml/stream/XMLEventFactory;->createEndDocument()Ljavax/xml/stream/events/EndDocument;

    move-result-object v0

    return-object v0
.end method

.method public createEndElement(Lorg/dom4j/Element;)Ljavax/xml/stream/events/EndElement;
    .locals 3

    .prologue
    .line 249
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventWriter;->createQName(Lorg/dom4j/QName;)Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 250
    new-instance v1, Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;

    invoke-interface {p1}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;-><init>(Lorg/dom4j/io/STAXEventWriter;Ljava/util/Iterator;)V

    .line 253
    iget-object v2, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v2, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object v0

    return-object v0
.end method

.method public createNamespace(Lorg/dom4j/Namespace;)Ljavax/xml/stream/events/Namespace;
    .locals 3

    .prologue
    .line 299
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v2, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public createProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)Ljavax/xml/stream/events/ProcessingInstruction;
    .locals 3

    .prologue
    .line 388
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v2, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Lorg/dom4j/QName;)Ljavax/xml/namespace/QName;
    .locals 4

    .prologue
    .line 496
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createStartDocument(Lorg/dom4j/Document;)Ljavax/xml/stream/events/StartDocument;
    .locals 2

    .prologue
    .line 468
    invoke-interface {p1}, Lorg/dom4j/Document;->getXMLEncoding()Ljava/lang/String;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    .line 471
    iget-object v1, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v0}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument()Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    goto :goto_0
.end method

.method public createStartElement(Lorg/dom4j/Element;)Ljavax/xml/stream/events/StartElement;
    .locals 4

    .prologue
    .line 231
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventWriter;->createQName(Lorg/dom4j/QName;)Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 234
    new-instance v1, Lorg/dom4j/io/STAXEventWriter$AttributeIterator;

    invoke-interface {p1}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/dom4j/io/STAXEventWriter$AttributeIterator;-><init>(Lorg/dom4j/io/STAXEventWriter;Ljava/util/Iterator;)V

    .line 235
    new-instance v2, Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;

    invoke-interface {p1}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;-><init>(Lorg/dom4j/io/STAXEventWriter;Ljava/util/Iterator;)V

    .line 239
    iget-object v3, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v3, v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    return-object v0
.end method

.method public getConsumer()Ljavax/xml/stream/util/XMLEventConsumer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    return-object v0
.end method

.method public getEventFactory()Ljavax/xml/stream/XMLEventFactory;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method public setConsumer(Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    .line 111
    return-void
.end method

.method public setEventFactory(Ljavax/xml/stream/XMLEventFactory;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/dom4j/io/STAXEventWriter;->factory:Ljavax/xml/stream/XMLEventFactory;

    .line 129
    return-void
.end method

.method public writeAttribute(Lorg/dom4j/Attribute;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createAttribute(Lorg/dom4j/Attribute;)Ljavax/xml/stream/events/Attribute;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 264
    return-void
.end method

.method public writeCDATA(Lorg/dom4j/CDATA;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createCharacters(Lorg/dom4j/CDATA;)Ljavax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 333
    return-void
.end method

.method public writeChildNodes(Lorg/dom4j/Branch;)V
    .locals 3

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 205
    invoke-interface {p1, v0}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 206
    invoke-virtual {p0, v2}, Lorg/dom4j/io/STAXEventWriter;->writeNode(Lorg/dom4j/Node;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public writeComment(Lorg/dom4j/Comment;)V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createComment(Lorg/dom4j/Comment;)Ljavax/xml/stream/events/Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 353
    return-void
.end method

.method public writeDocument(Lorg/dom4j/Document;)V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createStartDocument(Lorg/dom4j/Document;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 455
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeChildNodes(Lorg/dom4j/Branch;)V

    .line 457
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createEndDocument(Lorg/dom4j/Document;)Ljavax/xml/stream/events/EndDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 458
    return-void
.end method

.method public writeDocumentType(Lorg/dom4j/DocumentType;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createDTD(Lorg/dom4j/DocumentType;)Ljavax/xml/stream/events/DTD;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 424
    return-void
.end method

.method public writeElement(Lorg/dom4j/Element;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createStartElement(Lorg/dom4j/Element;)Ljavax/xml/stream/events/StartElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 218
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeChildNodes(Lorg/dom4j/Branch;)V

    .line 219
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createEndElement(Lorg/dom4j/Element;)Ljavax/xml/stream/events/EndElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 220
    return-void
.end method

.method public writeEntity(Lorg/dom4j/Entity;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-direct {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createEntityReference(Lorg/dom4j/Entity;)Ljavax/xml/stream/events/EntityReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 402
    return-void
.end method

.method public writeNamespace(Lorg/dom4j/Namespace;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createNamespace(Lorg/dom4j/Namespace;)Ljavax/xml/stream/events/Namespace;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 289
    return-void
.end method

.method public writeNode(Lorg/dom4j/Node;)V
    .locals 3

    .prologue
    .line 139
    sget-object v0, Lorg/dom4j/io/STAXEventWriter$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported DOM4J Node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_0
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeElement(Lorg/dom4j/Element;)V

    .line 193
    :goto_0
    return-void

    .line 146
    :pswitch_1
    check-cast p1, Lorg/dom4j/Text;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeText(Lorg/dom4j/Text;)V

    goto :goto_0

    .line 151
    :pswitch_2
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeAttribute(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 156
    :pswitch_3
    check-cast p1, Lorg/dom4j/Namespace;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    goto :goto_0

    .line 161
    :pswitch_4
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeComment(Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 166
    :pswitch_5
    check-cast p1, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeCDATA(Lorg/dom4j/CDATA;)V

    goto :goto_0

    .line 171
    :pswitch_6
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 176
    :pswitch_7
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeEntity(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 181
    :pswitch_8
    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeDocument(Lorg/dom4j/Document;)V

    goto :goto_0

    .line 186
    :pswitch_9
    check-cast p1, Lorg/dom4j/DocumentType;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->writeDocumentType(Lorg/dom4j/DocumentType;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 375
    return-void
.end method

.method public writeText(Lorg/dom4j/Text;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter;->consumer:Ljavax/xml/stream/util/XMLEventConsumer;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventWriter;->createCharacters(Lorg/dom4j/Text;)Ljavax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 313
    return-void
.end method
