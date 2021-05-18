.class Lorg/dom4j/datatype/NamedTypeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected complexTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/dom4j/QName;",
            "Lorg/dom4j/DocumentFactory;",
            ">;"
        }
    .end annotation
.end field

.field protected documentFactory:Lorg/dom4j/DocumentFactory;

.field protected elementFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/dom4j/Element;",
            "Lorg/dom4j/DocumentFactory;",
            ">;"
        }
    .end annotation
.end field

.field protected simpleTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/dom4j/QName;",
            "Lcom/sun/msv/datatype/xsd/XSDatatype;",
            ">;"
        }
    .end annotation
.end field

.field protected typedElementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/dom4j/Element;",
            "Lorg/dom4j/QName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->complexTypeMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->simpleTypeMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->typedElementMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->elementFactoryMap:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lorg/dom4j/datatype/NamedTypeResolver;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 35
    return-void
.end method

.method private getQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method private getQNameOfSchemaElement(Lorg/dom4j/Element;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 76
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lorg/dom4j/datatype/NamedTypeResolver;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method registerComplexType(Lorg/dom4j/QName;Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->complexTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method registerSimpleType(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->simpleTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method registerTypedElement(Lorg/dom4j/Element;Lorg/dom4j/QName;Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->typedElementMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->elementFactoryMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method resolveElementTypes()V
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Lorg/dom4j/datatype/NamedTypeResolver;->typedElementMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 54
    invoke-direct {p0, v1}, Lorg/dom4j/datatype/NamedTypeResolver;->getQNameOfSchemaElement(Lorg/dom4j/Element;)Lorg/dom4j/QName;

    move-result-object v3

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/QName;

    .line 57
    iget-object v4, p0, Lorg/dom4j/datatype/NamedTypeResolver;->complexTypeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    iget-object v1, p0, Lorg/dom4j/datatype/NamedTypeResolver;->complexTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/DocumentFactory;

    .line 59
    invoke-virtual {v3, v0}, Lorg/dom4j/QName;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v4, p0, Lorg/dom4j/datatype/NamedTypeResolver;->simpleTypeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lorg/dom4j/datatype/NamedTypeResolver;->simpleTypeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/msv/datatype/xsd/XSDatatype;

    .line 62
    iget-object v4, p0, Lorg/dom4j/datatype/NamedTypeResolver;->elementFactoryMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/DocumentFactory;

    .line 64
    instance-of v4, v1, Lorg/dom4j/datatype/DatatypeElementFactory;

    if-eqz v4, :cond_0

    .line 65
    check-cast v1, Lorg/dom4j/datatype/DatatypeElementFactory;

    invoke-virtual {v1, v3, v0}, Lorg/dom4j/datatype/DatatypeElementFactory;->setChildElementXSDatatype(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method resolveNamedTypes()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/dom4j/datatype/NamedTypeResolver;->resolveElementTypes()V

    .line 73
    return-void
.end method
