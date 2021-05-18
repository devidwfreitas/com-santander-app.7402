.class public Lorg/dom4j/dom/DOMDocumentType;
.super Lorg/dom4j/tree/DefaultDocumentType;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DocumentType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/dom4j/tree/DefaultDocumentType;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/dom4j/tree/DefaultDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private checkNewChildNode(Lorg/w3c/dom/Node;)V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const-string v2, "DocumentType nodes cannot have children"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocumentType;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 128
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 142
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getChildNodes(Lorg/dom4j/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getEntities()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 82
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getFirstChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocumentType;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 86
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLastChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 94
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocumentType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotations()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 102
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 90
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMDocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 154
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 138
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasChildNodes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocumentType;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 109
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 150
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 146
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->normalize(Lorg/dom4j/Node;)V

    .line 147
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 121
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMDocumentType;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 116
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
