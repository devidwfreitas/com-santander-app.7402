.class public Lorg/dom4j/dom/DOMNodeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_NODE_LIST:Lorg/w3c/dom/NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/dom4j/dom/DOMNodeHelper$EmptyNodeList;

    invoke-direct {v0}, Lorg/dom4j/dom/DOMNodeHelper$EmptyNodeList;-><init>()V

    sput-object v0, Lorg/dom4j/dom/DOMNodeHelper;->EMPTY_NODE_LIST:Lorg/w3c/dom/NodeList;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 181
    instance-of v0, p0, Lorg/dom4j/Branch;

    if-eqz v0, :cond_1

    .line 182
    check-cast p0, Lorg/dom4j/Branch;

    .line 183
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    move-object v0, p1

    .line 189
    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {p0, v0}, Lorg/dom4j/Branch;->add(Lorg/dom4j/Node;)V

    .line 191
    return-object p1

    .line 194
    :cond_1
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Children not allowed for this node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public static appendData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 264
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharacterData node is read only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 270
    if-nez v0, :cond_1

    .line 271
    invoke-interface {p0, v0}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 364
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 366
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 367
    invoke-interface {p1, v1}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 369
    instance-of v4, v0, Lorg/dom4j/Element;

    if-eqz v4, :cond_2

    .line 370
    check-cast v0, Lorg/dom4j/Element;

    .line 372
    if-nez v2, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    invoke-static {p0, v0, p2}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagName(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;)V

    .line 366
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 379
    :cond_3
    return-void
.end method

.method public static appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 383
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 384
    const-string v0, "*"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 386
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_6

    .line 387
    invoke-interface {p1, v1}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 389
    instance-of v5, v0, Lorg/dom4j/Element;

    if-eqz v5, :cond_5

    .line 390
    check-cast v0, Lorg/dom4j/Element;

    .line 392
    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-eqz p2, :cond_4

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    if-nez v3, :cond_3

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 400
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_4
    invoke-static {p0, v0, p2, p3}, Lorg/dom4j/dom/DOMNodeHelper;->appendElementsByTagNameNS(Ljava/util/List;Lorg/dom4j/Branch;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 406
    :cond_6
    return-void
.end method

.method public static asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 510
    if-nez p0, :cond_0

    move-object p0, v0

    .line 520
    :goto_0
    return-object p0

    .line 514
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_1

    .line 515
    check-cast p0, Lorg/w3c/dom/Attr;

    goto :goto_0

    .line 518
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object p0, v0

    .line 520
    goto :goto_0
.end method

.method public static asDOMDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 450
    if-nez p0, :cond_0

    move-object p0, v0

    .line 460
    :goto_0
    return-object p0

    .line 454
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_1

    .line 455
    check-cast p0, Lorg/w3c/dom/Document;

    goto :goto_0

    .line 458
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object p0, v0

    .line 460
    goto :goto_0
.end method

.method public static asDOMDocumentType(Lorg/dom4j/DocumentType;)Lorg/w3c/dom/DocumentType;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 465
    if-nez p0, :cond_0

    move-object p0, v0

    .line 475
    :goto_0
    return-object p0

    .line 469
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/DocumentType;

    if-eqz v1, :cond_1

    .line 470
    check-cast p0, Lorg/w3c/dom/DocumentType;

    goto :goto_0

    .line 473
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object p0, v0

    .line 475
    goto :goto_0
.end method

.method public static asDOMElement(Lorg/dom4j/Node;)Lorg/w3c/dom/Element;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 495
    if-nez p0, :cond_0

    move-object p0, v0

    .line 505
    :goto_0
    return-object p0

    .line 499
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1

    .line 500
    check-cast p0, Lorg/w3c/dom/Element;

    goto :goto_0

    .line 503
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object p0, v0

    .line 505
    goto :goto_0
.end method

.method public static asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 433
    if-nez p0, :cond_0

    move-object p0, v0

    .line 445
    :goto_0
    return-object p0

    .line 437
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Node;

    if-eqz v1, :cond_1

    .line 438
    check-cast p0, Lorg/w3c/dom/Node;

    goto :goto_0

    .line 441
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot convert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into a W3C DOM Node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object p0, v0

    .line 445
    goto :goto_0
.end method

.method public static asDOMText(Lorg/dom4j/CharacterData;)Lorg/w3c/dom/Text;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 480
    if-nez p0, :cond_0

    move-object p0, v0

    .line 490
    :goto_0
    return-object p0

    .line 484
    :cond_0
    instance-of v1, p0, Lorg/w3c/dom/Text;

    if-eqz v1, :cond_1

    .line 485
    check-cast p0, Lorg/w3c/dom/Text;

    goto :goto_0

    .line 488
    :cond_1
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    move-object p0, v0

    .line 490
    goto :goto_0
.end method

.method public static cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 203
    invoke-interface {p0}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public static createNodeList(Ljava/util/List;)Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 412
    new-instance v0, Lorg/dom4j/dom/DOMNodeHelper$1;

    invoke-direct {v0, p0}, Lorg/dom4j/dom/DOMNodeHelper$1;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static deleteData(Lorg/dom4j/CharacterData;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 305
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharacterData node is read only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    if-gez p2, :cond_1

    .line 310
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value for count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_4

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 319
    if-ltz p1, :cond_2

    if-lt p1, v1, :cond_3

    .line 320
    :cond_2
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No text at offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 323
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 324
    add-int v0, p1, p2

    invoke-virtual {v1, p1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 329
    :cond_4
    return-void
.end method

.method public static getAttributes(Lorg/dom4j/Node;)Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getChildNodes(Lorg/dom4j/Node;)Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/dom4j/dom/DOMNodeHelper;->EMPTY_NODE_LIST:Lorg/w3c/dom/NodeList;

    return-object v0
.end method

.method public static getData(Lorg/dom4j/CharacterData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLastChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLength(Lorg/dom4j/CharacterData;)I
    .locals 1

    .prologue
    .line 235
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 3

    .prologue
    .line 97
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->indexOf(Lorg/dom4j/Node;)I

    move-result v1

    .line 102
    if-ltz v1, :cond_0

    .line 103
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lorg/dom4j/Element;->nodeCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 104
    invoke-interface {v0, v1}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNodeValue(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-interface {p0}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 119
    invoke-interface {p0}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 65
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 81
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p0}, Lorg/dom4j/Element;->indexOf(Lorg/dom4j/Node;)I

    move-result v1

    .line 86
    if-lez v1, :cond_0

    .line 87
    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasAttributes(Lorg/dom4j/Node;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 215
    if-eqz p0, :cond_0

    instance-of v1, p0, Lorg/dom4j/Element;

    if-eqz v1, :cond_0

    .line 216
    check-cast p0, Lorg/dom4j/Element;

    invoke-interface {p0}, Lorg/dom4j/Element;->attributeCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 218
    :cond_0
    return v0
.end method

.method public static hasChildNodes(Lorg/dom4j/Node;)Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public static insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 125
    instance-of v0, p0, Lorg/dom4j/Branch;

    if-eqz v0, :cond_1

    .line 126
    check-cast p0, Lorg/dom4j/Branch;

    .line 127
    invoke-interface {p0}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 130
    if-gez v1, :cond_0

    move-object v0, p1

    .line 131
    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {p0, v0}, Lorg/dom4j/Branch;->add(Lorg/dom4j/Node;)V

    .line 136
    :goto_0
    return-object p1

    .line 133
    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_1
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Children not allowed for this node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public static insertData(Lorg/dom4j/CharacterData;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 280
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharacterData node is read only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 286
    if-nez v0, :cond_1

    .line 287
    invoke-interface {p0, p2}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 291
    if-ltz p1, :cond_2

    if-le p1, v1, :cond_3

    .line 292
    :cond_2
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No text at offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 295
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public static normalize(Lorg/dom4j/Node;)V
    .locals 0

    .prologue
    .line 207
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 208
    return-void
.end method

.method public static notSupported()V
    .locals 3

    .prologue
    .line 530
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Not supported yet"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public static removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 168
    instance-of v0, p0, Lorg/dom4j/Branch;

    if-eqz v0, :cond_0

    .line 169
    check-cast p0, Lorg/dom4j/Branch;

    move-object v0, p1

    .line 170
    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {p0, v0}, Lorg/dom4j/Branch;->remove(Lorg/dom4j/Node;)Z

    .line 172
    return-object p1

    .line 175
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Children not allowed for this node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public static replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 146
    instance-of v0, p0, Lorg/dom4j/Branch;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 147
    check-cast v0, Lorg/dom4j/Branch;

    .line 148
    invoke-interface {v0}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 151
    if-gez v1, :cond_0

    .line 152
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to replace a non existing child for node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object p2

    .line 161
    :cond_1
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Children not allowed for this node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public static replaceData(Lorg/dom4j/CharacterData;IILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 333
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharacterData node is read only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    if-gez p2, :cond_1

    .line 338
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value for count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 347
    if-ltz p1, :cond_2

    if-lt p1, v1, :cond_3

    .line 348
    :cond_2
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No text at offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 351
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 352
    add-int v0, p1, p2

    invoke-virtual {v1, p1, v0, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 357
    :cond_4
    return-void
.end method

.method public static setData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    invoke-interface {p0, p1}, Lorg/dom4j/CharacterData;->setText(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static setNodeValue(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-interface {p0, p1}, Lorg/dom4j/Node;->setText(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 53
    return-void
.end method

.method public static substringData(Lorg/dom4j/CharacterData;II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 242
    if-gez p2, :cond_0

    .line 243
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value for count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    invoke-interface {p0}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 250
    :goto_0
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 251
    :cond_1
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No text at offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 248
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :cond_3
    add-int v2, p1, p2

    if-le v2, v0, :cond_4

    .line 256
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_1
    return-object v0

    :cond_4
    add-int v0, p1, p2

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
