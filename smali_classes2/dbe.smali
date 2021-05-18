.class public Ldbe;
.super Ljava/lang/Object;

# interfaces
.implements Lddg;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Ldbd",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Ldbd",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ldcq;

.field private final e:Ldce;

.field private final f:Ljava/util/concurrent/locks/Lock;

.field private final g:Landroid/os/Looper;

.field private final h:Lcwn;

.field private final i:Ljava/util/concurrent/locks/Condition;

.field private final j:Lctn;

.field private final k:Z

.field private final l:Z

.field private final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ldan",
            "<**>;>;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldth",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldth",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ldbh;

.field private r:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Lctn;Ljava/util/Map;Lcpd;Ljava/util/ArrayList;Ldce;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcwn;",
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcph;",
            ">;",
            "Lctn;",
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ldax;",
            ">;",
            "Ldce;",
            "Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Ldbe;->a:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Ldbe;->b:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Ldbe;->m:Ljava/util/Queue;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Ldbe;->g:Landroid/os/Looper;

    invoke-interface/range {p2 .. p2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ldbe;->i:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Ldbe;->h:Lcwn;

    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Ldbe;->e:Ldce;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Ldbe;->c:Ljava/util/Map;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Ldbe;->j:Lctn;

    move/from16 v0, p11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldbe;->k:Z

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcox;

    invoke-virtual {v2}, Lcox;->c()Lcpf;

    move-result-object v4

    invoke-interface {v14, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldax;

    iget-object v4, v2, Ldax;->c:Lcox;

    invoke-interface {v15, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v5, v3

    move v7, v4

    move v3, v2

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcox;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcph;

    invoke-interface {v6}, Lcph;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Ldbe;->c:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v7, 0x1

    move v12, v5

    move v13, v7

    :goto_3
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldax;

    new-instance v2, Ldbd;

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Ldbd;-><init>(Landroid/content/Context;Lcox;Landroid/os/Looper;Lcph;Ldax;Lctn;Lcpd;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Ldbe;->a:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcpf;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Lcph;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Ldbe;->b:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcpf;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v3, v11

    move v5, v12

    move v7, v13

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    move v11, v3

    move v12, v5

    move v13, v7

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Ldbe;->l:Z

    invoke-static {}, Ldcq;->a()Ldcq;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ldbe;->d:Ldcq;

    return-void

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    move v12, v5

    move v13, v7

    goto :goto_3
.end method

.method private a(Lcpf;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 2
    .param p1    # Lcpf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpf",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldbe;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbd;

    iget-object v1, p0, Ldbe;->o:Ljava/util/Map;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldbe;->o:Ljava/util/Map;

    invoke-virtual {v0}, Ldbd;->c()Ldth;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Ldbe;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Ldbe;->r:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic a(Ldbe;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Ldbe;->o:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Ldbe;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Ldbd;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldbd",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbe;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ldbd;->a()Lcox;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldbd;->h()Lcph;

    move-result-object v0

    invoke-interface {v0}, Lcph;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldbe;->h:Lcwn;

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcwn;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ldbe;Ldbd;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ldbe;->a(Ldbd;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ldbe;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldbe;->n:Z

    return p1
.end method

.method static synthetic b(Ldbe;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Ldbe;->p:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Ldbe;)Z
    .locals 1

    iget-boolean v0, p0, Ldbe;->n:Z

    return v0
.end method

.method static synthetic c(Ldbe;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldbe;->a:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ldan;)Z
    .locals 6
    .param p1    # Ldan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ldan",
            "<+",
            "Lcqg;",
            "+",
            "Lcpe;",
            ">;>(TT;)Z"
        }
    .end annotation

    const/4 v5, 0x4

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v0

    invoke-direct {p0, v0}, Ldbe;->a(Lcpf;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    if-ne v1, v5, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    iget-object v3, p0, Ldbe;->d:Ldcq;

    iget-object v4, p0, Ldbe;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbd;

    invoke-virtual {v0}, Ldbd;->c()Ldth;

    move-result-object v0

    iget-object v4, p0, Ldbe;->e:Ldce;

    invoke-virtual {v4}, Ldce;->r()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ldcq;->a(Ldth;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v1, v5, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v1}, Ldan;->a(Lcom/google/android/gms/common/api/Status;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Ldbe;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldbe;->o:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Ldbe;)Z
    .locals 1

    iget-boolean v0, p0, Ldbe;->l:Z

    return v0
.end method

.method static synthetic f(Ldbe;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    invoke-direct {p0}, Ldbe;->k()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Ldbe;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldbe;->p:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Ldbe;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Ldbe;->r:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Ldbe;->j:Lctn;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbe;->e:Ldce;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Ldce;->f:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Ldbe;->j:Lctn;

    invoke-virtual {v0}, Lctn;->e()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Ldbe;->j:Lctn;

    invoke-virtual {v0}, Lctn;->g()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcox;

    invoke-virtual {p0, v0}, Ldbe;->a(Lcox;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcto;

    iget-object v0, v0, Lcto;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ldbe;->e:Ldce;

    iput-object v1, v0, Ldce;->f:Ljava/util/Set;

    goto :goto_0
.end method

.method static synthetic i(Ldbe;)V
    .locals 0

    invoke-direct {p0}, Ldbe;->i()V

    return-void
.end method

.method private j()V
    .locals 2

    :goto_0
    iget-object v0, p0, Ldbe;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbe;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldan;

    invoke-virtual {p0, v0}, Ldbe;->b(Ldan;)Ldan;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldbe;->e:Ldce;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldce;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic j(Ldbe;)V
    .locals 0

    invoke-direct {p0}, Ldbe;->j()V

    return-void
.end method

.method private k()Lcom/google/android/gms/common/ConnectionResult;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Ldbe;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v0

    move-object v5, v1

    move v2, v0

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbd;

    invoke-virtual {v0}, Ldbd;->a()Lcox;

    move-result-object v7

    invoke-virtual {v0}, Ldbd;->c()Ldth;

    move-result-object v0

    iget-object v1, p0, Ldbe;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldbe;->c:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ldbe;->h:Lcwn;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v8

    invoke-virtual {v1, v8}, Lcwn;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_3

    iget-boolean v1, p0, Ldbe;->k:Z

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lcox;->a()Lcpg;

    move-result-object v1

    invoke-virtual {v1}, Lcpg;->a()I

    move-result v1

    if-eqz v5, :cond_2

    if-le v4, v1, :cond_0

    :cond_2
    move v4, v1

    move-object v5, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcox;->a()Lcpg;

    move-result-object v1

    invoke-virtual {v1}, Lcpg;->a()I

    move-result v1

    if-eqz v3, :cond_4

    if-le v2, v1, :cond_7

    :cond_4
    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_1
    move v2, v0

    move-object v3, v1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    if-le v2, v4, :cond_6

    :goto_2
    return-object v5

    :cond_6
    move-object v5, v3

    goto :goto_2

    :cond_7
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method static synthetic k(Ldbe;)Ldce;
    .locals 1

    iget-object v0, p0, Ldbe;->e:Ldce;

    return-object v0
.end method

.method static synthetic l(Ldbe;)Ljava/util/concurrent/locks/Condition;
    .locals 1

    iget-object v0, p0, Ldbe;->i:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic m(Ldbe;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldbe;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ldbe;->a()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Ldbe;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ldbe;->c()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Ldbe;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ldbe;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ldbe;->r:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldbe;->r:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public a(Lcox;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
    .param p1    # Lcox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcox;->c()Lcpf;

    move-result-object v0

    invoke-direct {p0, v0}, Ldbe;->a(Lcpf;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldan;)Ldan;
    .locals 2
    .param p1    # Ldan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "R::",
            "Lcqg;",
            "T:",
            "Ldan",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Ldbe;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ldbe;->c(Ldan;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Ldbe;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldbe;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldbe;->e:Ldce;

    iget-object v0, v0, Ldce;->k:Ldem;

    invoke-virtual {v0, p1}, Ldem;->a(Ldat;)V

    iget-object v0, p0, Ldbe;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbd;

    invoke-virtual {v0, p1}, Ldbd;->a(Ldan;)Ldan;

    move-result-object p1

    goto :goto_0
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Ldbe;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ldbe;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldbe;->o:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Ldbe;->p:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Ldbe;->q:Ldbh;

    const/4 v0, 0x0

    iput-object v0, p0, Ldbe;->r:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Ldbe;->d:Ldcq;

    invoke-virtual {v0}, Ldcq;->d()V

    iget-object v0, p0, Ldbe;->d:Ldcq;

    iget-object v1, p0, Ldbe;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldcq;->a(Ljava/lang/Iterable;)Legv;

    move-result-object v0

    new-instance v1, Ldgg;

    iget-object v2, p0, Ldbe;->g:Landroid/os/Looper;

    invoke-direct {v1, v2}, Ldgg;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ldbg;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ldbg;-><init>(Ldbe;Ldbf;)V

    invoke-virtual {v0, v1, v2}, Legv;->a(Ljava/util/concurrent/Executor;Legr;)Legv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lddz;)Z
    .locals 3

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Ldbe;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldbe;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbe;->d:Ldcq;

    invoke-virtual {v0}, Ldcq;->d()V

    new-instance v0, Ldbh;

    invoke-direct {v0, p0, p1}, Ldbh;-><init>(Ldbe;Lddz;)V

    iput-object v0, p0, Ldbe;->q:Ldbh;

    iget-object v0, p0, Ldbe;->d:Ldcq;

    iget-object v1, p0, Ldbe;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldcq;->a(Ljava/lang/Iterable;)Legv;

    move-result-object v0

    new-instance v1, Ldgg;

    iget-object v2, p0, Ldbe;->g:Landroid/os/Looper;

    invoke-direct {v1, v2}, Ldgg;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Ldbe;->q:Ldbh;

    invoke-virtual {v0, v1, v2}, Legv;->a(Ljava/util/concurrent/Executor;Legr;)Legv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ldbe;->a()V

    :goto_0
    invoke-virtual {p0}, Ldbe;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ldbe;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ldbe;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ldbe;->r:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldbe;->r:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public b(Ldan;)Ldan;
    .locals 2
    .param p1    # Ldan;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcpe;",
            "T:",
            "Ldan",
            "<+",
            "Lcqg;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v0

    iget-boolean v1, p0, Ldbe;->k:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Ldbe;->c(Ldan;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v1, p0, Ldbe;->e:Ldce;

    iget-object v1, v1, Ldce;->k:Ldem;

    invoke-virtual {v1, p1}, Ldem;->a(Ldat;)V

    iget-object v1, p0, Ldbe;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbd;

    invoke-virtual {v0, p1}, Ldbd;->b(Ldan;)Ldan;

    move-result-object p1

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ldbe;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldbe;->o:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Ldbe;->p:Ljava/util/Map;

    iget-object v0, p0, Ldbe;->q:Ldbh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldbe;->q:Ldbh;

    invoke-virtual {v0}, Ldbh;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldbe;->q:Ldbh;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldbe;->r:Lcom/google/android/gms/common/ConnectionResult;

    :goto_0
    iget-object v0, p0, Ldbe;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldbe;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldan;->a(Ldep;)V

    invoke-virtual {v0}, Ldan;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ldbe;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldbe;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldbe;->r:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldbe;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldbe;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldbe;->d:Ldcq;

    invoke-virtual {v0}, Ldcq;->f()V

    iget-object v0, p0, Ldbe;->q:Ldbh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldbe;->q:Ldbh;

    invoke-virtual {v0}, Ldbh;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldbe;->q:Ldbh;

    :cond_0
    iget-object v0, p0, Ldbe;->p:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, Ldbe;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Ldbe;->p:Ljava/util/Map;

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iget-object v0, p0, Ldbe;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbd;

    iget-object v3, p0, Ldbe;->p:Ljava/util/Map;

    invoke-virtual {v0}, Ldbd;->c()Ldth;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Ldbe;->o:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldbe;->o:Ljava/util/Map;

    iget-object v1, p0, Ldbe;->p:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public h()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Ldbe;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldbe;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ldbe;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    invoke-direct {p0, v0}, Ldbe;->a(Lcpf;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbe;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
