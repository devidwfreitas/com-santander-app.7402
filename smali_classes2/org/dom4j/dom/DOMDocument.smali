.class public Lorg/dom4j/dom/DOMDocument;
.super Lorg/dom4j/tree/DefaultDocument;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Document;


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dom/DOMDocumentFactory;

    sput-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/dom4j/tree/DefaultDocument;-><init>()V

    .line 34
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/dom/DOMElement;Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/dom4j/tree/DefaultDocument;-><init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 60
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/DocumentType;)V

    .line 49
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMElement;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/Element;)V

    .line 44
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMElement;Lorg/dom4j/dom/DOMDocumentType;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultDocument;-><init>(Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V

    .line 54
    invoke-direct {p0}, Lorg/dom4j/dom/DOMDocument;->init()V

    .line 55
    return-void
.end method

.method private checkNewChildNode(Lorg/w3c/dom/Node;)V
    .locals 3

    .prologue
    .line 165
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 167
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 171
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const-string v2, "Given node cannot be a child of document"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMDocument;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 65
    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 160
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 181
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 2

    .prologue
    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 4

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v2}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/CDATASection;

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Comment;

    return-object v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/DocumentFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/EntityReference;

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Text;

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->content()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMDocumentType(Lorg/dom4j/DocumentType;)Lorg/w3c/dom/DocumentType;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    .line 299
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    goto :goto_0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lorg/dom4j/dom/DOMDocument;->elementByID(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-static {v0, p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V

    .line 199
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-static {v0, p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMDocument;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/DOMImplementation;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/DOMImplementation;

    .line 217
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/dom4j/dom/DOMDocument;->DOCUMENT_FACTORY:Lorg/dom4j/dom/DOMDocumentFactory;

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->nodeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMDocument;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "#document"

    return-object v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 106
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 122
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getStrictErrorChecking()Z
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getXmlStandalone()Z
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 189
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocument;->nodeCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 141
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 185
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public normalizeDocument()V
    .locals 2

    .prologue
    .line 352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 153
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocument;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 148
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 372
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setXmlStandalone(Z)V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
