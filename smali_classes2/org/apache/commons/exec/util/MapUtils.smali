.class public Lorg/apache/commons/exec/util/MapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 90
    .line 92
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/exec/util/MapUtils;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 96
    :cond_2
    invoke-static {p0}, Lorg/apache/commons/exec/util/MapUtils;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/exec/util/MapUtils;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 100
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static prefix(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 74
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 77
    goto :goto_0
.end method
