.class public Lorg/dom4j/tree/NamespaceCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONCURRENTREADERHASHMAP_CLASS:Ljava/lang/String; = "EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap"

.field protected static cache:Ljava/util/Map;

.field protected static noPrefixCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    :try_start_0
    const-string v0, "java.util.concurrent.ConcurrentHashMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v0, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v0, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 58
    :try_start_1
    const-string v0, "EDU.oswego.cs.dl.util.concurrent.ConcurrentReaderHashMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 63
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>()V

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    .line 64
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>()V

    sput-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lorg/dom4j/Namespace;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 4

    .prologue
    .line 110
    sget-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 111
    const/4 v1, 0x0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v1, v0

    .line 117
    :cond_0
    if-nez v1, :cond_3

    .line 118
    sget-object v2, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    monitor-enter v2

    .line 119
    :try_start_0
    sget-object v0, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 121
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    .line 125
    :goto_0
    if-nez v0, :cond_1

    .line 126
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/tree/NamespaceCache;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 127
    sget-object v1, Lorg/dom4j/tree/NamespaceCache;->noPrefixCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_1
    monitor-exit v2

    .line 132
    :goto_1
    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/NamespaceCache;->getURICache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 78
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 79
    const/4 v1, 0x0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    move-object v1, v0

    .line 85
    :cond_0
    if-nez v1, :cond_3

    .line 86
    monitor-enter v2

    .line 87
    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 89
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    .line 93
    :goto_0
    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/tree/NamespaceCache;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    monitor-exit v2

    .line 100
    :goto_1
    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected getURICache(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 143
    sget-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 145
    if-nez v0, :cond_1

    .line 146
    sget-object v1, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v0, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 149
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>()V

    .line 151
    sget-object v2, Lorg/dom4j/tree/NamespaceCache;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    monitor-exit v1

    .line 156
    :cond_1
    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
