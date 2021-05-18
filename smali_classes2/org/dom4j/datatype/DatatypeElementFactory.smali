.class public Lorg/dom4j/datatype/DatatypeElementFactory;
.super Lorg/dom4j/DocumentFactory;
.source "SourceFile"


# instance fields
.field private attributeXSDatatypes:Ljava/util/Map;

.field private childrenXSDatatypes:Ljava/util/Map;

.field private elementQName:Lorg/dom4j/QName;


# direct methods
.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->attributeXSDatatypes:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->childrenXSDatatypes:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->elementQName:Lorg/dom4j/QName;

    .line 46
    return-void
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0, p2}, Lorg/dom4j/datatype/DatatypeElementFactory;->getAttributeXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v1

    .line 123
    if-nez v1, :cond_0

    .line 124
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/dom4j/datatype/DatatypeAttribute;

    invoke-direct {v0, p2, v1, p3}, Lorg/dom4j/datatype/DatatypeAttribute;-><init>(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/dom4j/datatype/DatatypeElementFactory;->getChildElementXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    new-instance v0, Lorg/dom4j/datatype/DatatypeElement;

    invoke-direct {v0, p1, v1}, Lorg/dom4j/datatype/DatatypeElement;-><init>(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    .line 117
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    if-eqz v1, :cond_1

    .line 109
    check-cast v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    .line 110
    invoke-virtual {v0, p1}, Lorg/dom4j/datatype/DatatypeElementFactory;->getChildElementXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_1

    .line 113
    new-instance v0, Lorg/dom4j/datatype/DatatypeElement;

    invoke-direct {v0, p1, v1}, Lorg/dom4j/datatype/DatatypeElement;-><init>(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-super {p0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->attributeXSDatatypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/msv/datatype/xsd/XSDatatype;

    return-object v0
.end method

.method public getChildElementXSDatatype(Lorg/dom4j/QName;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->childrenXSDatatypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/msv/datatype/xsd/XSDatatype;

    return-object v0
.end method

.method public getQName()Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->elementQName:Lorg/dom4j/QName;

    return-object v0
.end method

.method public setAttributeXSDatatype(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->attributeXSDatatypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setChildElementXSDatatype(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeElementFactory;->childrenXSDatatypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method
