.class Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;


# direct methods
.method private constructor <init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$1;)V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-virtual {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->clear()V

    .line 950
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 930
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return v0

    .line 932
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 933
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 934
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 926
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;

    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {v0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 938
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 939
    const/4 v0, 0x0

    .line 940
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->findAndRemoveEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-virtual {v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->size()I

    move-result v0

    return v0
.end method
