.class public Lorg/dom4j/bean/BeanMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

.field protected static final NULL_ARGS:[Ljava/lang/Object;

.field private static singletonCache:Ljava/util/Map;


# instance fields
.field private beanClass:Ljava/lang/Class;

.field private nameMap:Ljava/util/Map;

.field private propertyDescriptors:[Ljava/beans/PropertyDescriptor;

.field private qNames:[Lorg/dom4j/QName;

.field private readMethods:[Ljava/lang/reflect/Method;

.field private writeMethods:[Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/dom4j/bean/BeanMetaData;->NULL_ARGS:[Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/dom4j/bean/BeanMetaData;->singletonCache:Ljava/util/Map;

    .line 40
    invoke-static {}, Lorg/dom4j/bean/BeanDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    sput-object v0, Lorg/dom4j/bean/BeanMetaData;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lorg/dom4j/bean/BeanMetaData;->beanClass:Ljava/lang/Class;

    .line 76
    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    invoke-static {p1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    if-nez v0, :cond_1

    .line 86
    new-array v0, v1, [Ljava/beans/PropertyDescriptor;

    iput-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    array-length v2, v0

    .line 90
    new-array v0, v2, [Lorg/dom4j/QName;

    iput-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->qNames:[Lorg/dom4j/QName;

    .line 91
    new-array v0, v2, [Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->readMethods:[Ljava/lang/reflect/Method;

    .line 92
    new-array v0, v2, [Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->writeMethods:[Ljava/lang/reflect/Method;

    move v0, v1

    .line 94
    :goto_1
    if-ge v0, v2, :cond_2

    .line 95
    iget-object v1, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    aget-object v1, v1, v0

    .line 96
    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 97
    sget-object v4, Lorg/dom4j/bean/BeanMetaData;->DOCUMENT_FACTORY:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v4, v3}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v4

    .line 98
    iget-object v5, p0, Lorg/dom4j/bean/BeanMetaData;->qNames:[Lorg/dom4j/QName;

    aput-object v4, v5, v0

    .line 99
    iget-object v5, p0, Lorg/dom4j/bean/BeanMetaData;->readMethods:[Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    aput-object v6, v5, v0

    .line 100
    iget-object v5, p0, Lorg/dom4j/bean/BeanMetaData;->writeMethods:[Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    aput-object v1, v5, v0

    .line 102
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 103
    iget-object v5, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v3, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {p0, v0}, Lorg/dom4j/bean/BeanMetaData;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 106
    :cond_2
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lorg/dom4j/bean/BeanMetaData;
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lorg/dom4j/bean/BeanMetaData;->singletonCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/bean/BeanMetaData;

    .line 117
    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lorg/dom4j/bean/BeanMetaData;

    invoke-direct {v0, p0}, Lorg/dom4j/bean/BeanMetaData;-><init>(Ljava/lang/Class;)V

    .line 119
    sget-object v1, Lorg/dom4j/bean/BeanMetaData;->singletonCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    return-object v0
.end method


# virtual methods
.method public attributeCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->propertyDescriptors:[Ljava/beans/PropertyDescriptor;

    array-length v0, v0

    return v0
.end method

.method public createAttributeList(Lorg/dom4j/bean/BeanElement;)Lorg/dom4j/bean/BeanAttributeList;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lorg/dom4j/bean/BeanAttributeList;

    invoke-direct {v0, p1, p0}, Lorg/dom4j/bean/BeanAttributeList;-><init>(Lorg/dom4j/bean/BeanElement;Lorg/dom4j/bean/BeanMetaData;)V

    return-object v0
.end method

.method public getData(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->readMethods:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    .line 158
    sget-object v1, Lorg/dom4j/bean/BeanMetaData;->NULL_ARGS:[Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {p0, v0}, Lorg/dom4j/bean/BeanMetaData;->handleException(Ljava/lang/Exception;)V

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIndex(Lorg/dom4j/QName;)I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 151
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getQName(I)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->qNames:[Lorg/dom4j/QName;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public setData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/bean/BeanMetaData;->writeMethods:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    .line 169
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 170
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {p0, v0}, Lorg/dom4j/bean/BeanMetaData;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
