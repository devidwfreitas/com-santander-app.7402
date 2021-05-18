.class public abstract Lorg/dom4j/tree/AbstractAttribute;
.super Lorg/dom4j/tree/AbstractNode;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/Attribute;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 0

    .prologue
    .line 82
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Attribute;)V

    .line 83
    return-void
.end method

.method public asXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lorg/dom4j/tree/DefaultAttribute;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeTypeEnum()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/dom4j/NodeType;->ATTRIBUTE_NODE:Lorg/dom4j/NodeType;

    return-object v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 114
    invoke-interface {v1, p1}, Lorg/dom4j/Element;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    .line 123
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 124
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 138
    invoke-interface {v1, p1}, Lorg/dom4j/Element;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    .line 147
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 148
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/AbstractAttribute;->setValue(Ljava/lang/String;)V

    .line 57
    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNamespace(Lorg/dom4j/Namespace;)V
    .locals 2

    .prologue
    .line 32
    const-string v0, "This Attribute is read only and cannot be changed"

    .line 33
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractAttribute;->setValue(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    const-string v0, "This Attribute is read only and cannot be changed"

    .line 48
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractNode;->toString(Ljava/lang/StringBuilder;)V

    .line 62
    const-string v0, " [Attribute: name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, " value \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "\"]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    return-void
.end method
