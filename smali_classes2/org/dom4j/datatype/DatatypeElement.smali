.class public Lorg/dom4j/datatype/DatatypeElement;
.super Lorg/dom4j/tree/DefaultElement;
.source "SourceFile"

# interfaces
.implements Lcom/sun/msv/datatype/SerializationContext;
.implements Lorg/relaxng/datatype/ValidationContext;


# instance fields
.field private data:Ljava/lang/Object;

.field private datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;


# direct methods
.method public constructor <init>(Lorg/dom4j/QName;ILcom/sun/msv/datatype/xsd/XSDatatype;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;I)V

    .line 50
    iput-object p3, p0, Lorg/dom4j/datatype/DatatypeElement;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    .line 45
    iput-object p2, p0, Lorg/dom4j/datatype/DatatypeElement;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    .line 46
    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lorg/dom4j/datatype/DatatypeElement;->validate(Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected childAdded(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeElement;->data:Ljava/lang/Object;

    .line 153
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childAdded(Lorg/dom4j/Node;)V

    .line 154
    return-void
.end method

.method protected childRemoved(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeElement;->data:Ljava/lang/Object;

    .line 163
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->childRemoved(Lorg/dom4j/Node;)V

    .line 164
    return-void
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElement;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeElement;->getTextTrim()Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/dom4j/datatype/DatatypeElement;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    instance-of v1, v1, Lcom/sun/msv/datatype/DatabindableDatatype;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lorg/dom4j/datatype/DatatypeElement;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    .line 115
    invoke-interface {v1, v0, p0}, Lcom/sun/msv/datatype/DatabindableDatatype;->createJavaObject(Ljava/lang/String;Lorg/relaxng/datatype/ValidationContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeElement;->data:Ljava/lang/Object;

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElement;->data:Ljava/lang/Object;

    return-object v0

    .line 117
    :cond_1
    iget-object v1, p0, Lorg/dom4j/datatype/DatatypeElement;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    invoke-interface {v1, v0, p0}, Lcom/sun/msv/datatype/xsd/XSDatatype;->createValue(Ljava/lang/String;Lorg/relaxng/datatype/ValidationContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeElement;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lorg/dom4j/datatype/DatatypeElement;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXSDatatype()Lcom/sun/msv/datatype/xsd/XSDatatype;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElement;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    return-object v0
.end method

.method public isNotation(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public resolveNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/dom4j/datatype/DatatypeElement;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElement;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    invoke-interface {v0, p1, p0}, Lcom/sun/msv/datatype/xsd/XSDatatype;->convertToLexicalValue(Ljava/lang/Object;Lcom/sun/msv/datatype/SerializationContext;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lorg/dom4j/datatype/DatatypeElement;->validate(Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lorg/dom4j/datatype/DatatypeElement;->data:Ljava/lang/Object;

    .line 129
    invoke-virtual {p0, v0}, Lorg/dom4j/datatype/DatatypeElement;->setText(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lorg/dom4j/datatype/DatatypeElement;->validate(Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->setText(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Element: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeElement;->attributeList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/datatype/DatatypeElement;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " />]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElement;->datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;

    invoke-interface {v0, p1, p0}, Lcom/sun/msv/datatype/xsd/XSDatatype;->checkValid(Ljava/lang/String;Lorg/relaxng/datatype/ValidationContext;)V
    :try_end_0
    .catch Lorg/relaxng/datatype/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/relaxng/datatype/DatatypeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
