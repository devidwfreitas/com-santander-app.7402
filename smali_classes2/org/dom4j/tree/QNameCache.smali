.class public Lorg/dom4j/tree/QNameCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field protected namespaceCache:Ljava/util/Map;

.field protected noNamespaceCache:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/QNameCache;->noNamespaceCache:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/QNameCache;->namespaceCache:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/QNameCache;->noNamespaceCache:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/QNameCache;->namespaceCache:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lorg/dom4j/tree/QNameCache;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 51
    return-void
.end method


# virtual methods
.method protected createMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected createQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lorg/dom4j/QName;

    invoke-direct {v0, p1}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lorg/dom4j/QName;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    return-object v0
.end method

.method protected createQName(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lorg/dom4j/QName;

    invoke-direct {v0, p1, p2, p3}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lorg/dom4j/tree/QNameCache;->noNamespaceCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/QName;

    .line 85
    :goto_0
    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/QNameCache;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lorg/dom4j/tree/QNameCache;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, v1}, Lorg/dom4j/QName;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 88
    iget-object v1, p0, Lorg/dom4j/tree/QNameCache;->noNamespaceCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    return-object v0

    .line 82
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 3

    .prologue
    .line 148
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 150
    if-gez v0, :cond_0

    .line 151
    invoke-static {p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 153
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0, p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/QNameCache;->getNamespaceCache(Lorg/dom4j/Namespace;)Ljava/util/Map;

    move-result-object v1

    .line 103
    const/4 v0, 0x0

    .line 105
    if-eqz p1, :cond_1

    .line 106
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/QName;

    .line 111
    :goto_0
    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/QNameCache;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lorg/dom4j/tree/QNameCache;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, v2}, Lorg/dom4j/QName;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 114
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    return-object v0

    .line 108
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/QNameCache;->getNamespaceCache(Lorg/dom4j/Namespace;)Ljava/util/Map;

    move-result-object v1

    .line 130
    const/4 v0, 0x0

    .line 132
    if-eqz p1, :cond_1

    .line 133
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/QName;

    .line 138
    :goto_0
    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lorg/dom4j/tree/QNameCache;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 140
    iget-object v2, p0, Lorg/dom4j/tree/QNameCache;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, v2}, Lorg/dom4j/QName;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 141
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    return-object v0

    .line 135
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method protected getNamespaceCache(Lorg/dom4j/Namespace;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    if-ne p1, v0, :cond_1

    .line 181
    iget-object v0, p0, Lorg/dom4j/tree/QNameCache;->noNamespaceCache:Ljava/util/Map;

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    const/4 v0, 0x0

    .line 186
    if-eqz p1, :cond_2

    .line 187
    iget-object v0, p0, Lorg/dom4j/tree/QNameCache;->namespaceCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 190
    :cond_2
    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/dom4j/tree/QNameCache;->createMap()Ljava/util/Map;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lorg/dom4j/tree/QNameCache;->namespaceCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getQNames()Ljava/util/List;
    .locals 3

    .prologue
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v0, p0, Lorg/dom4j/tree/QNameCache;->noNamespaceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v0, p0, Lorg/dom4j/tree/QNameCache;->namespaceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 64
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 67
    :cond_0
    return-object v1
.end method

.method public intern(Lorg/dom4j/QName;)Lorg/dom4j/QName;
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {p1}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method
