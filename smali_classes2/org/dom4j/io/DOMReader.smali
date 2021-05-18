.class public Lorg/dom4j/io/DOMReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private factory:Lorg/dom4j/DocumentFactory;

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 38
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    iget-object v1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-direct {v0, v1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 43
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 44
    return-void
.end method

.method private getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    const/16 v0, 0x3a

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 269
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 270
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected clearNamespaceStack()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    .line 261
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 264
    :cond_0
    return-void
.end method

.method protected createDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method protected getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/w3c/dom/Document;)Lorg/dom4j/Document;
    .locals 5

    .prologue
    .line 72
    instance-of v0, p1, Lorg/dom4j/Document;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lorg/dom4j/Document;

    .line 86
    :goto_0
    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->clearNamespaceStack()V

    .line 80
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 82
    const/4 v1, 0x0

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_1

    .line 83
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/dom4j/io/DOMReader;->readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 86
    goto :goto_0
.end method

.method protected readElement(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v3

    .line 178
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 181
    if-nez v2, :cond_0

    .line 182
    const-string v2, ""

    .line 185
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 189
    const-string v4, "xmlns"

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 191
    if-eqz v4, :cond_1

    .line 192
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string v4, ""

    .line 197
    :cond_1
    iget-object v4, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 199
    invoke-interface {p2, v0}, Lorg/dom4j/Branch;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v4

    .line 201
    if-eqz v2, :cond_4

    .line 202
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    .line 203
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 205
    :goto_0
    if-ge v0, v5, :cond_3

    .line 206
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 209
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 211
    const-string v9, "xmlns"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 212
    invoke-direct {p0, v8}, Lorg/dom4j/io/DOMReader;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 215
    iget-object v9, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v9, v8, v7}, Lorg/dom4j/tree/NamespaceStack;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v7

    .line 217
    invoke-interface {v4, v7}, Lorg/dom4j/Element;->add(Lorg/dom4j/Namespace;)V

    .line 205
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    .line 226
    :goto_2
    if-ge v2, v5, :cond_4

    .line 227
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 229
    iget-object v7, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v7

    .line 232
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 226
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 237
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 239
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    move v0, v1

    :goto_3
    if-ge v0, v5, :cond_5

    .line 240
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 241
    invoke-virtual {p0, v1, v4}, Lorg/dom4j/io/DOMReader;->readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 245
    :cond_5
    :goto_4
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    .line 246
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_4

    .line 248
    :cond_6
    return-void
.end method

.method protected readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 92
    .line 95
    instance-of v0, p2, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 96
    check-cast v0, Lorg/dom4j/Element;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 101
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 170
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Unknown DOM node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    :goto_1
    return-void

    :cond_0
    move-object v0, p2

    .line 98
    check-cast v0, Lorg/dom4j/Document;

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/DOMReader;->readElement(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    goto :goto_1

    .line 109
    :pswitch_2
    instance-of v0, p2, Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 110
    check-cast p2, Lorg/dom4j/Element;

    .line 111
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/dom4j/Element;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 114
    :cond_1
    check-cast p2, Lorg/dom4j/Document;

    .line 115
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_1

    .line 123
    :pswitch_3
    instance-of v0, p2, Lorg/dom4j/Element;

    if-eqz v0, :cond_2

    .line 124
    check-cast p2, Lorg/dom4j/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 126
    :cond_2
    check-cast p2, Lorg/dom4j/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/dom4j/Document;->addComment(Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_1

    .line 133
    :pswitch_4
    check-cast p1, Lorg/w3c/dom/DocumentType;

    .line 135
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/dom4j/Document;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_1

    .line 141
    :pswitch_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 146
    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/dom4j/Element;->addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 153
    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_3

    .line 156
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 159
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_1

    .line 165
    :pswitch_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto/16 :goto_1

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 2

    .prologue
    .line 67
    iput-object p1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 68
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iget-object v1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 69
    return-void
.end method
