.class public final Lela;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lejv",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lejv",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lela;->a:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/Class;)Leml;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Leml",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 103
    :cond_0
    new-instance v0, Leli;

    invoke-direct {v0, p0, v1}, Leli;-><init>(Lela;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Leml;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Leml",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lelj;

    invoke-direct {v0, p0}, Lelj;-><init>(Lela;)V

    .line 213
    :goto_0
    return-object v0

    .line 141
    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lelk;

    invoke-direct {v0, p0, p1}, Lelk;-><init>(Lela;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 157
    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lell;

    invoke-direct {v0, p0}, Lell;-><init>(Lela;)V

    goto :goto_0

    .line 163
    :cond_2
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    new-instance v0, Lelm;

    invoke-direct {v0, p0}, Lelm;-><init>(Lela;)V

    goto :goto_0

    .line 170
    :cond_3
    new-instance v0, Leln;

    invoke-direct {v0, p0}, Leln;-><init>(Lela;)V

    goto :goto_0

    .line 178
    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    new-instance v0, Lelo;

    invoke-direct {v0, p0}, Lelo;-><init>(Lela;)V

    goto :goto_0

    .line 185
    :cond_5
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    new-instance v0, Lelc;

    invoke-direct {v0, p0}, Lelc;-><init>(Lela;)V

    goto :goto_0

    .line 191
    :cond_6
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    new-instance v0, Leld;

    invoke-direct {v0, p0}, Leld;-><init>(Lela;)V

    goto :goto_0

    .line 197
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 198
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lepn;->get(Ljava/lang/reflect/Type;)Lepn;

    move-result-object v1

    invoke-virtual {v1}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 199
    new-instance v0, Lele;

    invoke-direct {v0, p0}, Lele;-><init>(Lela;)V

    goto/16 :goto_0

    .line 205
    :cond_8
    new-instance v0, Lelf;

    invoke-direct {v0, p0}, Lelf;-><init>(Lela;)V

    goto/16 :goto_0

    .line 213
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Leml;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Leml",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lelg;

    invoke-direct {v0, p0, p2, p1}, Lelg;-><init>(Lela;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public a(Lepn;)Leml;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lepn",
            "<TT;>;)",
            "Leml",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 62
    iget-object v0, p0, Lela;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejv;

    .line 63
    if-eqz v0, :cond_1

    .line 64
    new-instance v1, Lelb;

    invoke-direct {v1, p0, v0, v2}, Lelb;-><init>(Lela;Lejv;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget-object v0, p0, Lela;->a:Ljava/util/Map;

    .line 74
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejv;

    .line 75
    if-eqz v0, :cond_2

    .line 76
    new-instance v1, Lelh;

    invoke-direct {v1, p0, v0, v2}, Lelh;-><init>(Lela;Lejv;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0, v1}, Lela;->a(Ljava/lang/Class;)Leml;

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, v2, v1}, Lela;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Leml;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, v2, v1}, Lela;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Leml;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lela;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
