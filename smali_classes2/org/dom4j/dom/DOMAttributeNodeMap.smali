.class public Lorg/dom4j/dom/DOMAttributeNodeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# instance fields
.field private element:Lorg/dom4j/dom/DOMElement;


# direct methods
.method public constructor <init>(Lorg/dom4j/dom/DOMElement;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    .line 28
    return-void
.end method


# virtual methods
.method public foo()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lorg/dom4j/dom/DOMNodeHelper;->notSupported()V

    .line 35
    return-void
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0}, Lorg/dom4j/dom/DOMElement;->attributeCount()I

    move-result v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, p1}, Lorg/dom4j/dom/DOMElement;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/dom/DOMElement;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, p1}, Lorg/dom4j/dom/DOMElement;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/dom/DOMNodeHelper;->asDOMAttr(Lorg/dom4j/Node;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, p1}, Lorg/dom4j/dom/DOMElement;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No attribute named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v1, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v1, v0}, Lorg/dom4j/dom/DOMElement;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/dom/DOMElement;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    invoke-virtual {v1, v0}, Lorg/dom4j/dom/DOMElement;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 91
    :cond_0
    return-object v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 42
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-virtual {v0, p1}, Lorg/dom4j/dom/DOMElement;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node is not an Attr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4

    .prologue
    .line 74
    instance-of v0, p1, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/dom4j/dom/DOMAttributeNodeMap;->element:Lorg/dom4j/dom/DOMElement;

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-virtual {v0, p1}, Lorg/dom4j/dom/DOMElement;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node is not an Attr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
