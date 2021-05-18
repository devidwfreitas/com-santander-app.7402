.class public Lorg/dom4j/dom/DOMNamespace;
.super Lorg/dom4j/tree/DefaultNamespace;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/dom4j/tree/DefaultNamespace;-><init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 120
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 128
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 96
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getAttributes(Lorg/dom4j/Node;)Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getChildNodes(Lorg/dom4j/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getFirstChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLastChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 92
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMNamespace;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNodeValue(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 100
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 72
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 88
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 140
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasChildNodes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 105
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 136
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 132
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->normalize(Lorg/dom4j/Node;)V

    .line 133
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 115
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 110
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setNodeValue(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
