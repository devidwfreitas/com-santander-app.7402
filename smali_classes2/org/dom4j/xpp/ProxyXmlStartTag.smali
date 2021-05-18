.class public Lorg/dom4j/xpp/ProxyXmlStartTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/gjt/xpp/XmlStartTag;


# instance fields
.field private element:Lorg/dom4j/Element;

.field private factory:Lorg/dom4j/DocumentFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    .line 45
    iput-object p1, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    .line 46
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    invoke-static {p3, p1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v1, v0, p4}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 178
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 183
    if-eqz p5, :cond_1

    .line 184
    const-string v0, ""

    .line 185
    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 187
    if-lez v1, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    iget-object v1, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v1, v0, p1}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {p3, p1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v1, v0, p4}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0
.end method

.method public ensureAttributesCapacity(I)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    instance-of v0, v0, Lorg/dom4j/tree/AbstractElement;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    check-cast v0, Lorg/dom4j/tree/AbstractElement;

    .line 202
    invoke-virtual {v0, p1}, Lorg/dom4j/tree/AbstractElement;->ensureAttributesCapacity(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->attributeCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeNamespaceUri(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeRawName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeValueFromName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 143
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeValueFromRawName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    .line 128
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getElement()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAttributeNamespaceDeclaration(I)Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    const-string v1, "xmlns"

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p3, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    .line 239
    return-void
.end method

.method public removeAttributeByName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAttributeByRawName(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAttributes()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setAttributes(Ljava/util/List;)V

    .line 219
    :cond_0
    return-void
.end method

.method public resetStartTag()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    .line 53
    return-void
.end method

.method public resetTag()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    .line 243
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    .line 254
    return-void
.end method
