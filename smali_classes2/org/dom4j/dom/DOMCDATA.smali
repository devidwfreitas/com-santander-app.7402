.class public Lorg/dom4j/dom/DOMCDATA;
.super Lorg/dom4j/tree/DefaultCDATA;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Lorg/dom4j/Element;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private checkNewChildNode(Lorg/w3c/dom/Node;)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const-string v2, "CDATASection nodes cannot have children"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMCDATA;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 127
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public appendData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lorg/dom4j/dom/DOMCDATA;

    invoke-direct {v0, p1}, Lorg/dom4j/dom/DOMCDATA;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteData(II)V
    .locals 0

    .prologue
    .line 184
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->deleteData(Lorg/dom4j/CharacterData;II)V

    .line 185
    return-void
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getChildNodes(Lorg/dom4j/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getData(Lorg/dom4j/CharacterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 81
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getFirstChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 85
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLastChild(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 168
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLength(Lorg/dom4j/CharacterData;)I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLocalName(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNamespaceURI(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNextSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "#cdata-section"

    return-object v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getNodeValue(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getOwnerDocument(Lorg/dom4j/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getParentNode(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPreviousSibling(Lorg/dom4j/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWholeText()Ljava/lang/String;
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
    .line 153
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasChildNodes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMCDATA;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 108
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertData(Lorg/dom4j/CharacterData;ILjava/lang/String;)V

    .line 181
    return-void
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isElementContentWhitespace()Z
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 149
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 145
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->normalize(Lorg/dom4j/Node;)V

    .line 146
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 120
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMCDATA;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 115
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-static {p0, p1, p2, p3}, Lorg/dom4j/dom/DOMNodeHelper;->replaceData(Lorg/dom4j/CharacterData;IILjava/lang/String;)V

    .line 190
    return-void
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setNodeValue(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setPrefix(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMCDATA;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
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

    .line 200
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMCDATA;->getText()Ljava/lang/String;

    move-result-object v2

    .line 201
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 203
    :goto_0
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 204
    :cond_1
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

    :cond_2
    move v0, v1

    .line 201
    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMCDATA;->setText(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMCDATA;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v1}, Lorg/dom4j/dom/DOMCDATA;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v1

    .line 214
    if-eqz v0, :cond_4

    .line 215
    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/CDATA;)V

    .line 218
    :cond_4
    invoke-static {v1}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMText(Lorg/dom4j/CharacterData;)Lorg/w3c/dom/Text;

    move-result-object v0

    return-object v0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->substringData(Lorg/dom4j/CharacterData;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
