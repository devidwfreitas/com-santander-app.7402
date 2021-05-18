.class public Lorg/dom4j/io/STAXEventReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private factory:Lorg/dom4j/DocumentFactory;

.field private inputFactory:Ljavax/xml/stream/XMLInputFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    .line 48
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    goto :goto_0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Ljavax/xml/stream/events/Attribute;)Lorg/dom4j/Attribute;
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-interface {p2}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/STAXEventReader;->createQName(Ljavax/xml/namespace/QName;)Lorg/dom4j/QName;

    move-result-object v1

    invoke-interface {p2}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public createCharacterData(Ljavax/xml/stream/events/Characters;)Lorg/dom4j/CharacterData;
    .locals 2

    .prologue
    .line 504
    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->isCData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    goto :goto_0
.end method

.method public createComment(Ljavax/xml/stream/events/Comment;)Lorg/dom4j/Comment;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-interface {p1}, Ljavax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Ljavax/xml/stream/events/StartElement;)Lorg/dom4j/Element;
    .locals 4

    .prologue
    .line 450
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 451
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->createQName(Ljavax/xml/namespace/QName;)Lorg/dom4j/QName;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v1

    .line 456
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    .line 458
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/io/STAXEventReader;->createQName(Ljavax/xml/namespace/QName;)Lorg/dom4j/QName;

    move-result-object v3

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 462
    :cond_0
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Namespace;

    .line 464
    invoke-interface {v0}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 467
    :cond_1
    return-object v1
.end method

.method public createEntity(Ljavax/xml/stream/events/EntityReference;)Lorg/dom4j/Entity;
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-interface {p1}, Ljavax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/events/EntityReference;->getDeclaration()Ljavax/xml/stream/events/EntityDeclaration;

    move-result-object v2

    invoke-interface {v2}, Ljavax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object v0

    return-object v0
.end method

.method public createNamespace(Ljavax/xml/stream/events/Namespace;)Lorg/dom4j/Namespace;
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public createProcessingInstruction(Ljavax/xml/stream/events/ProcessingInstruction;)Lorg/dom4j/ProcessingInstruction;
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-interface {p1}, Ljavax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljavax/xml/namespace/QName;)Lorg/dom4j/QName;
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public readAttribute(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Attribute;
    .locals 4

    .prologue
    .line 312
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    .line 317
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/STAXEventReader;->createAttribute(Lorg/dom4j/Element;Ljavax/xml/stream/events/Attribute;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0

    .line 319
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected Attribute event, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readCharacters(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/CharacterData;
    .locals 4

    .prologue
    .line 358
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v0

    .line 363
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->createCharacterData(Ljavax/xml/stream/events/Characters;)Lorg/dom4j/CharacterData;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected Characters event, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readComment(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Comment;
    .locals 4

    .prologue
    .line 381
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 383
    instance-of v1, v0, Ljavax/xml/stream/events/Comment;

    if-eqz v1, :cond_0

    .line 384
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Comment;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->createComment(Ljavax/xml/stream/events/Comment;)Lorg/dom4j/Comment;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected Comment event, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readDocument(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public readDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v0, p2, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    .line 119
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 121
    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->close()V

    throw v1
.end method

.method public readDocument(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public readDocument(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->inputFactory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v0, p2, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    .line 140
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 142
    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->close()V

    throw v1
.end method

.method public readDocument(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 198
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v0

    .line 202
    packed-switch v0, :pswitch_data_0

    .line 235
    :pswitch_0
    if-nez v1, :cond_3

    .line 237
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 240
    :goto_1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readNode(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Node;

    move-result-object v1

    .line 241
    invoke-interface {v0, v1}, Lorg/dom4j/Document;->add(Lorg/dom4j/Node;)V

    move-object v1, v0

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/StartDocument;

    .line 207
    if-nez v1, :cond_1

    .line 209
    invoke-interface {v0}, Ljavax/xml/stream/events/StartDocument;->encodingSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v0}, Ljavax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    goto :goto_0

    .line 218
    :cond_1
    const-string v1, "Unexpected StartDocument event"

    .line 219
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartDocument;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 229
    :pswitch_2
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    goto :goto_0

    .line 245
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 202
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public readElement(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Element;
    .locals 5

    .prologue
    .line 261
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    .line 266
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->createElement(Ljavax/xml/stream/events/StartElement;)Lorg/dom4j/Element;

    move-result-object v1

    .line 270
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    const-string v0, "Unexpected end of stream while reading element content"

    .line 273
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    .line 278
    invoke-interface {v2}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    invoke-interface {v2}, Ljavax/xml/stream/events/XMLEvent;->asEndElement()Ljavax/xml/stream/events/EndElement;

    move-result-object v2

    .line 281
    invoke-interface {v2}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 282
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " end-tag, but found"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readNode(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Node;

    move-result-object v2

    .line 291
    invoke-interface {v1, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 296
    :cond_2
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected Element event, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_3
    return-object v1
.end method

.method public readEntityReference(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Entity;
    .locals 4

    .prologue
    .line 404
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 406
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEntityReference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/EntityReference;

    .line 409
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->createEntity(Ljavax/xml/stream/events/EntityReference;)Lorg/dom4j/Entity;

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected EntityRef event, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readNamespace(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Namespace;
    .locals 4

    .prologue
    .line 335
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Namespace;

    .line 340
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->createNamespace(Ljavax/xml/stream/events/Namespace;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected Namespace event, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readNode(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Node;
    .locals 4

    .prologue
    .line 164
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readElement(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Element;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 168
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readCharacters(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/CharacterData;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readDocument(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_2
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isProcessingInstruction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readProcessingInstruction(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_3
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEntityReference()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readEntityReference(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Entity;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_4
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 177
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readAttribute(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Attribute;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_5
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isNamespace()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 179
    invoke-virtual {p0, p1}, Lorg/dom4j/io/STAXEventReader;->readNamespace(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/Namespace;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_6
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readProcessingInstruction(Ljavax/xml/stream/XMLEventReader;)Lorg/dom4j/ProcessingInstruction;
    .locals 4

    .prologue
    .line 429
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 431
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isProcessingInstruction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/ProcessingInstruction;

    .line 435
    invoke-virtual {p0, v0}, Lorg/dom4j/io/STAXEventReader;->createProcessingInstruction(Ljavax/xml/stream/events/ProcessingInstruction;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    return-object v0

    .line 437
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected PI event, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/STAXEventReader;->factory:Lorg/dom4j/DocumentFactory;

    goto :goto_0
.end method
