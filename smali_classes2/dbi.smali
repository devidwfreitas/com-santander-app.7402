.class public Ldbi;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldat",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Legw",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldbi;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldbi;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Ldbi;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldbi;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(ZLcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v1, p0, Ldbi;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Ldbi;->a:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ldbi;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Ldbi;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldat;

    invoke-virtual {v0, p2}, Ldat;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez p1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legw;

    new-instance v1, Lcql;

    invoke-direct {v1, p2}, Lcql;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Legw;->b(Ljava/lang/Exception;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method static synthetic b(Ldbi;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldbi;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method a(Ldat;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldat",
            "<+",
            "Lcqg;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Ldbi;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldbj;

    invoke-direct {v0, p0, p1}, Ldbj;-><init>(Ldbi;Ldat;)V

    invoke-virtual {p1, v0}, Ldat;->a(Lcpz;)V

    return-void
.end method

.method a(Legw;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Legw",
            "<TTResult;>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Ldbi;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Legw;->a()Legv;

    move-result-object v0

    new-instance v1, Ldbk;

    invoke-direct {v1, p0, p1}, Ldbk;-><init>(Ldbi;Legw;)V

    invoke-virtual {v0, v1}, Legv;->a(Legr;)Legv;

    return-void
.end method

.method a()Z
    .locals 1

    iget-object v0, p0, Ldbi;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldbi;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Ldcq;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0, v1}, Ldbi;->a(ZLcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Ldem;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0, v1}, Ldbi;->a(ZLcom/google/android/gms/common/api/Status;)V

    return-void
.end method
