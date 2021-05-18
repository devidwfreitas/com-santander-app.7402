.class public Lorg/dom4j/dom/DOMText;
.super Lorg/dom4j/tree/DefaultText;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Text;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultText;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultText;-><init>(Lorg/dom4j/Element;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private checkNewChildNode(Lorg/w3c/dom/Node;)V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const-string v2, "Text nodes cannot have children"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMText;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 126
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public appendData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->appendData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 140
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->cloneNode(Lorg/dom4j/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createText(Ljava/lang/String;)Lorg/dom4j/Text;
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lorg/dom4j/dom/DOMText;

    invoke-direct {v0, p1}, Lorg/dom4j/dom/DOMText;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteData(II)V
    .locals 0

    .prologue
    .line 183
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->deleteData(Lorg/dom4j/CharacterData;II)V

    .line 184
    return-void
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
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

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getData(Lorg/dom4j/CharacterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 278
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

.method public getLength()I
    .locals 1

    .prologue
    .line 167
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getLength(Lorg/dom4j/CharacterData;)I

    move-result v0

    return v0
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
    const-string v0, "#text"

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

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->getPrefix(Lorg/dom4j/Node;)Ljava/lang/String;

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
    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasAttributes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 136
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->hasChildNodes(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMText;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 107
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertBefore(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->insertData(Lorg/dom4j/CharacterData;ILjava/lang/String;)V

    .line 180
    return-void
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isElementContentWhitespace()Z
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 148
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->isSupported(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0}, Lorg/dom4j/dom/DOMNodeHelper;->normalize(Lorg/dom4j/Node;)V

    .line 145
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 119
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->removeChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lorg/dom4j/dom/DOMText;->checkNewChildNode(Lorg/w3c/dom/Node;)V

    .line 114
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->replaceChild(Lorg/dom4j/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    invoke-static {p0, p1, p2, p3}, Lorg/dom4j/dom/DOMNodeHelper;->replaceData(Lorg/dom4j/CharacterData;IILjava/lang/String;)V

    .line 189
    return-void
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0, p1}, Lorg/dom4j/dom/DOMNodeHelper;->setData(Lorg/dom4j/CharacterData;Ljava/lang/String;)V

    .line 164
    return-void
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
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMText;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
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

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMText;->getText()Ljava/lang/String;

    move-result-object v2

    .line 200
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 202
    :goto_0
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 203
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

    .line 200
    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p0, v0}, Lorg/dom4j/dom/DOMText;->setText(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lorg/dom4j/dom/DOMText;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 211
    invoke-virtual {p0, v1}, Lorg/dom4j/dom/DOMText;->createText(Ljava/lang/String;)Lorg/dom4j/Text;

    move-result-object v1

    .line 213
    if-eqz v0, :cond_4

    .line 214
    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Text;)V

    .line 217
    :cond_4
    invoke-static {v1}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMText(Lorg/dom4j/CharacterData;)Lorg/w3c/dom/Text;

    move-result-object v0

    return-object v0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->substringData(Lorg/dom4j/CharacterData;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lorg/dom4j/dom/DOMNodeHelper;->supports(Lorg/dom4j/Node;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
