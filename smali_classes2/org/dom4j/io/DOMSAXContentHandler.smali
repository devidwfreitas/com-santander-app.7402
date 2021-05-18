.class public Lorg/dom4j/io/DOMSAXContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field private availableNamespaceMap:Ljava/util/Map;

.field private cdataText:Ljava/lang/StringBuffer;

.field private currentElement:Lorg/dom4j/Element;

.field private declaredNamespaceIndex:I

.field private declaredNamespaceList:Ljava/util/List;

.field private document:Lorg/dom4j/Document;

.field private documentFactory:Lorg/dom4j/dom/DOMDocumentFactory;

.field private elementStack:Lorg/dom4j/io/ElementStack;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private ignoreComments:Z

.field private inputSource:Lorg/xml/sax/InputSource;

.field private insideCDATASection:Z

.field private locator:Lorg/xml/sax/Locator;

.field private mergeAdjacentText:Z

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;

.field private stripWhitespaceText:Z

.field private textBuffer:Ljava/lang/StringBuffer;

.field private textInTextBuffer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lorg/dom4j/dom/DOMDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    check-cast v0, Lorg/dom4j/dom/DOMDocumentFactory;

    invoke-direct {p0, v0}, Lorg/dom4j/io/DOMSAXContentHandler;-><init>(Lorg/dom4j/dom/DOMDocumentFactory;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/dom/DOMDocumentFactory;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->availableNamespaceMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->declaredNamespaceList:Ljava/util/List;

    .line 101
    iput-boolean v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    .line 106
    iput-boolean v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textInTextBuffer:Z

    .line 111
    iput-boolean v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->ignoreComments:Z

    .line 121
    iput-boolean v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->stripWhitespaceText:Z

    .line 128
    iput-object p1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->documentFactory:Lorg/dom4j/dom/DOMDocumentFactory;

    .line 129
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->createElementStack()Lorg/dom4j/io/ElementStack;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    .line 130
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 131
    return-void
.end method

.method private getEncoding()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 490
    :goto_0
    return-object v0

    .line 479
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getEncoding"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_1

    .line 483
    iget-object v2, p0, Lorg/dom4j/io/DOMSAXContentHandler;->locator:Lorg/xml/sax/Locator;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    .line 490
    goto :goto_0
.end method


# virtual methods
.method protected addAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)V
    .locals 7

    .prologue
    .line 504
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 505
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 506
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    const-string v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 508
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    .line 509
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 511
    iget-object v6, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v6, v3, v4, v0}, Lorg/dom4j/tree/NamespaceStack;->getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 513
    new-instance v3, Lorg/dom4j/dom/DOMAttribute;

    invoke-direct {v3, v0, v5}, Lorg/dom4j/dom/DOMAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    move-object v0, p1

    .line 514
    check-cast v0, Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, v3}, Lorg/dom4j/dom/DOMElement;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 505
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 517
    :cond_1
    return-void
.end method

.method protected addDeclaredNamespaces(Lorg/dom4j/Element;)V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v1

    :goto_0
    iget v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->declaredNamespaceIndex:I

    if-ge v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iget v2, p0, Lorg/dom4j/io/DOMSAXContentHandler;->declaredNamespaceIndex:I

    invoke-virtual {v0, v2}, Lorg/dom4j/tree/NamespaceStack;->getNamespace(I)Lorg/dom4j/Namespace;

    move-result-object v2

    .line 498
    invoke-virtual {p0, v2}, Lorg/dom4j/io/DOMSAXContentHandler;->attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    .line 499
    check-cast v0, Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/dom4j/dom/DOMElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->declaredNamespaceIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->declaredNamespaceIndex:I

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method protected attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 524
    const-string v0, "xmlns"

    .line 525
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    :cond_0
    return-object v0
.end method

.method public characters([CII)V
    .locals 2

    .prologue
    .line 239
    if-nez p3, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 244
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->insideCDATASection:Z

    if-eqz v0, :cond_3

    .line 245
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->completeCurrentTextNode()V

    .line 248
    :cond_2
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->cdataText:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 250
    :cond_3
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textInTextBuffer:Z

    goto :goto_0

    .line 254
    :cond_4
    new-instance v1, Lorg/dom4j/dom/DOMText;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v0}, Lorg/dom4j/dom/DOMText;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    check-cast v0, Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, v1}, Lorg/dom4j/dom/DOMElement;->add(Lorg/dom4j/Text;)V

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->ignoreComments:Z

    if-nez v0, :cond_1

    .line 330
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->completeCurrentTextNode()V

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 337
    new-instance v1, Lorg/dom4j/dom/DOMComment;

    invoke-direct {v1, v0}, Lorg/dom4j/dom/DOMComment;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    check-cast v0, Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, v1}, Lorg/dom4j/dom/DOMElement;->add(Lorg/dom4j/Comment;)V

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method protected completeCurrentTextNode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->stripWhitespaceText:Z

    if-eqz v0, :cond_3

    .line 436
    const/4 v0, 0x1

    .line 437
    iget-object v2, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 438
    iget-object v4, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 444
    :cond_0
    if-nez v0, :cond_1

    .line 445
    new-instance v2, Lorg/dom4j/dom/DOMText;

    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/dom4j/dom/DOMText;-><init>(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    check-cast v0, Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, v2}, Lorg/dom4j/dom/DOMElement;->add(Lorg/dom4j/Text;)V

    .line 453
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 454
    iput-boolean v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textInTextBuffer:Z

    .line 455
    return-void

    .line 437
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    :cond_3
    new-instance v2, Lorg/dom4j/dom/DOMText;

    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/dom4j/dom/DOMText;-><init>(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    check-cast v0, Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, v2}, Lorg/dom4j/dom/DOMElement;->add(Lorg/dom4j/Text;)V

    goto :goto_1
.end method

.method protected createDocument()Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 458
    invoke-direct {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->documentFactory:Lorg/dom4j/dom/DOMDocumentFactory;

    invoke-virtual {v1, v0}, Lorg/dom4j/dom/DOMDocumentFactory;->createDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 464
    iget-object v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->inputSource:Lorg/xml/sax/InputSource;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 468
    :cond_0
    return-object v0
.end method

.method protected createElementStack()Lorg/dom4j/io/ElementStack;
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lorg/dom4j/io/ElementStack;

    invoke-direct {v0}, Lorg/dom4j/io/ElementStack;-><init>()V

    return-object v0
.end method

.method public endCDATA()V
    .locals 2

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->insideCDATASection:Z

    .line 324
    new-instance v1, Lorg/dom4j/dom/DOMCDATA;

    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->cdataText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/dom4j/dom/DOMCDATA;-><init>(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    check-cast v0, Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, v1}, Lorg/dom4j/dom/DOMElement;->add(Lorg/dom4j/CDATA;)V

    .line 326
    return-void
.end method

.method public endDTD()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    .line 194
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {v0}, Lorg/dom4j/io/ElementStack;->clear()V

    .line 195
    iput-object v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    .line 196
    iput-object v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    .line 197
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->completeCurrentTextNode()V

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {v0}, Lorg/dom4j/io/ElementStack;->popElement()Lorg/dom4j/Element;

    .line 235
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {v0}, Lorg/dom4j/io/ElementStack;->peekElement()Lorg/dom4j/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    .line 236
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/NamespaceStack;->pop(Ljava/lang/String;)Lorg/dom4j/Namespace;

    .line 173
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    iput v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->declaredNamespaceIndex:I

    .line 174
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    .prologue
    .line 283
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    .prologue
    .line 294
    throw p1
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->document:Lorg/dom4j/Document;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->document:Lorg/dom4j/Document;

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->document:Lorg/dom4j/Document;

    check-cast v0, Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getElementStack()Lorg/dom4j/io/ElementStack;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getInputSource()Lorg/xml/sax/InputSource;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->inputSource:Lorg/xml/sax/InputSource;

    return-object v0
.end method

.method public isIgnoreComments()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->ignoreComments:Z

    return v0
.end method

.method public isMergeAdjacentText()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    return v0
.end method

.method public isStripWhitespaceText()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->stripWhitespaceText:Z

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->completeCurrentTextNode()V

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->documentFactory:Lorg/dom4j/dom/DOMDocumentFactory;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/dom/DOMDocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    .line 159
    iget-object v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->locator:Lorg/xml/sax/Locator;

    .line 151
    return-void
.end method

.method public setElementStack(Lorg/dom4j/io/ElementStack;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    .line 356
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 364
    return-void
.end method

.method public setIgnoreComments(Z)V
    .locals 0

    .prologue
    .line 428
    iput-boolean p1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->ignoreComments:Z

    .line 429
    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->inputSource:Lorg/xml/sax/InputSource;

    .line 372
    return-void
.end method

.method public setMergeAdjacentText(Z)V
    .locals 0

    .prologue
    .line 390
    iput-boolean p1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    .line 391
    return-void
.end method

.method public setStripWhitespaceText(Z)V
    .locals 0

    .prologue
    .line 410
    iput-boolean p1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->stripWhitespaceText:Z

    .line 411
    return-void
.end method

.method public startCDATA()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->insideCDATASection:Z

    .line 319
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->cdataText:Ljava/lang/StringBuffer;

    .line 320
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->document:Lorg/dom4j/Document;

    .line 178
    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    .line 180
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {v0}, Lorg/dom4j/io/ElementStack;->clear()V

    .line 182
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    .line 183
    iput v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->declaredNamespaceIndex:I

    .line 185
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    .line 189
    :cond_0
    iput-boolean v1, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textInTextBuffer:Z

    .line 190
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    .line 201
    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->completeCurrentTextNode()V

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    .line 208
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    .line 210
    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lorg/dom4j/io/DOMSAXContentHandler;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Document;

    .line 214
    :cond_1
    new-instance v2, Lorg/dom4j/dom/DOMElement;

    invoke-direct {v2, v1}, Lorg/dom4j/dom/DOMElement;-><init>(Lorg/dom4j/QName;)V

    .line 215
    invoke-interface {v0, v2}, Lorg/dom4j/Branch;->add(Lorg/dom4j/Element;)V

    .line 218
    invoke-virtual {p0, v2}, Lorg/dom4j/io/DOMSAXContentHandler;->addDeclaredNamespaces(Lorg/dom4j/Element;)V

    .line 221
    invoke-virtual {p0, v2, p4}, Lorg/dom4j/io/DOMSAXContentHandler;->addAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)V

    .line 223
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/ElementStack;->pushElement(Lorg/dom4j/Element;)V

    .line 224
    iput-object v2, p0, Lorg/dom4j/io/DOMSAXContentHandler;->currentElement:Lorg/dom4j/Element;

    .line 226
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/dom4j/io/DOMSAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method
