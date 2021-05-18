.class public Lorg/dom4j/DocumentFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static singleton:Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field protected transient cache:Lorg/dom4j/tree/QNameCache;

.field private xpathNamespaceURIs:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->init()V

    .line 75
    return-void
.end method

.method protected static createSingleton(Ljava/lang/String;)Lorg/dom4j/DocumentFactory;
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lorg/dom4j/DocumentFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/DocumentFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-object v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Cannot load DocumentFactory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    goto :goto_0
.end method

.method private static createSingleton()Lorg/dom4j/util/SingletonStrategy;
    .locals 3

    .prologue
    .line 52
    :try_start_0
    const-string v0, "org.dom4j.factory"

    const-string v1, "org.dom4j.DocumentFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 59
    :goto_0
    :try_start_1
    const-string v0, "org.dom4j.DocumentFactory.singleton.strategy"

    const-string v2, "org.dom4j.util.SimpleSingleton"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/util/SingletonStrategy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_1
    invoke-interface {v0, v1}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V

    .line 70
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v0, "org.dom4j.DocumentFactory"

    move-object v1, v0

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    new-instance v0, Lorg/dom4j/util/SimpleSingleton;

    invoke-direct {v0}, Lorg/dom4j/util/SimpleSingleton;-><init>()V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lorg/dom4j/DocumentFactory;
    .locals 2

    .prologue
    .line 86
    const-class v1, Lorg/dom4j/DocumentFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lorg/dom4j/DocumentFactory;->createSingleton()Lorg/dom4j/util/SingletonStrategy;

    move-result-object v0

    sput-object v0, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 89
    :cond_0
    sget-object v0, Lorg/dom4j/DocumentFactory;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v0}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/DocumentFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .prologue
    .line 383
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 384
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->init()V

    .line 385
    return-void
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lorg/dom4j/tree/DefaultAttribute;

    invoke-direct {v0, p2, p3}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lorg/dom4j/tree/DefaultCDATA;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultCDATA;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/dom4j/Comment;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lorg/dom4j/tree/DefaultComment;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultComment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lorg/dom4j/tree/DefaultDocumentType;

    invoke-direct {v0, p1, p2, p3}, Lorg/dom4j/tree/DefaultDocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lorg/dom4j/tree/DefaultDocument;

    invoke-direct {v0}, Lorg/dom4j/tree/DefaultDocument;-><init>()V

    .line 96
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultDocument;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 98
    return-object v0
.end method

.method public createDocument(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 114
    instance-of v0, v1, Lorg/dom4j/tree/AbstractDocument;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 115
    check-cast v0, Lorg/dom4j/tree/AbstractDocument;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/AbstractDocument;->setXMLEncoding(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-object v1
.end method

.method public createDocument(Lorg/dom4j/Element;)Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 123
    invoke-interface {v0, p1}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    .line 125
    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/DocumentFactory;->createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lorg/dom4j/tree/DefaultElement;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Entity;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lorg/dom4j/tree/DefaultEntity;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/tree/DefaultEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 175
    invoke-static {p1, p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lorg/dom4j/xpath/XPathPattern;

    invoke-direct {v0, p1}, Lorg/dom4j/xpath/XPathPattern;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lorg/dom4j/tree/DefaultProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/tree/DefaultProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lorg/dom4j/tree/DefaultProcessingInstruction;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/tree/DefaultProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public createQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-static {p2, p3}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method protected createQNameCache()Lorg/dom4j/tree/QNameCache;
    .locals 1

    .prologue
    .line 378
    new-instance v0, Lorg/dom4j/tree/QNameCache;

    invoke-direct {v0, p0}, Lorg/dom4j/tree/QNameCache;-><init>(Lorg/dom4j/DocumentFactory;)V

    return-object v0
.end method

.method public createText(Ljava/lang/String;)Lorg/dom4j/Text;
    .locals 2

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const-string v0, "Adding text to an XML document must not be null"

    .line 164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    new-instance v0, Lorg/dom4j/tree/DefaultText;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/DefaultText;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lorg/dom4j/xpath/DefaultXPath;

    invoke-direct {v0, p1}, Lorg/dom4j/xpath/DefaultXPath;-><init>(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/dom4j/xpath/DefaultXPath;->setNamespaceURIs(Ljava/util/Map;)V

    .line 222
    :cond_0
    return-object v0
.end method

.method public createXPath(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/XPath;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 238
    invoke-interface {v0, p2}, Lorg/dom4j/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 240
    return-object v0
.end method

.method public createXPathFilter(Ljava/lang/String;)Lorg/dom4j/NodeFilter;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    return-object v0
.end method

.method public createXPathFilter(Ljava/lang/String;Lorg/jaxen/VariableContext;)Lorg/dom4j/NodeFilter;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lorg/dom4j/DocumentFactory;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v0

    .line 259
    invoke-interface {v0, p2}, Lorg/dom4j/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 261
    return-object v0
.end method

.method public getQNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/dom4j/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0}, Lorg/dom4j/tree/QNameCache;->getQNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXPathNamespaceURIs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/dom4j/DocumentFactory;->createQNameCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    .line 389
    return-void
.end method

.method protected intern(Lorg/dom4j/QName;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/dom4j/DocumentFactory;->cache:Lorg/dom4j/tree/QNameCache;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/QNameCache;->intern(Lorg/dom4j/QName;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public setXPathNamespaceURIs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    iput-object p1, p0, Lorg/dom4j/DocumentFactory;->xpathNamespaceURIs:Ljava/util/Map;

    .line 329
    return-void
.end method
