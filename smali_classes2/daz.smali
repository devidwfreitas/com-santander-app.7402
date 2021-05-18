.class final Ldaz;
.super Ljava/lang/Object;

# interfaces
.implements Lddg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ldce;

.field private final c:Landroid/os/Looper;

.field private final d:Ldcm;

.field private final e:Ldcm;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Ldcm;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lddz;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcph;

.field private i:Landroid/os/Bundle;

.field private j:Lcom/google/android/gms/common/ConnectionResult;

.field private k:Lcom/google/android/gms/common/ConnectionResult;

.field private l:Z

.field private final m:Ljava/util/concurrent/locks/Lock;

.field private n:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ldce;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Ljava/util/Map;Lctn;Lcpd;Lcph;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldce;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcwn;",
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcph;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcpf",
            "<*>;",
            "Lcph;",
            ">;",
            "Lctn;",
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;",
            "Lcph;",
            "Ljava/util/ArrayList",
            "<",
            "Ldax;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ldax;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcox",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ldaz;->g:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-object v1, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldaz;->l:Z

    const/4 v1, 0x0

    iput v1, p0, Ldaz;->n:I

    iput-object p1, p0, Ldaz;->a:Landroid/content/Context;

    iput-object p2, p0, Ldaz;->b:Ldce;

    move-object/from16 v0, p3

    iput-object v0, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p4

    iput-object v0, p0, Ldaz;->c:Landroid/os/Looper;

    move-object/from16 v0, p10

    iput-object v0, p0, Ldaz;->h:Lcph;

    new-instance v1, Ldcm;

    iget-object v3, p0, Ldaz;->b:Ldce;

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v12, Ldbb;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Ldbb;-><init>(Ldaz;Ldba;)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p14

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v12}, Ldcm;-><init>(Landroid/content/Context;Ldce;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Lctn;Ljava/util/Map;Lcpd;Ljava/util/ArrayList;Lddh;)V

    iput-object v1, p0, Ldaz;->d:Ldcm;

    new-instance v1, Ldcm;

    iget-object v3, p0, Ldaz;->b:Ldce;

    new-instance v12, Ldbc;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Ldbc;-><init>(Ldaz;Ldba;)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p13

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v12}, Ldcm;-><init>(Landroid/content/Context;Ldce;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Lctn;Ljava/util/Map;Lcpd;Ljava/util/ArrayList;Lddh;)V

    iput-object v1, p0, Ldaz;->e:Ldcm;

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcpf;

    iget-object v4, p0, Ldaz;->d:Ldcm;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcpf;

    iget-object v4, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Ldaz;->f:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Ldaz;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ldce;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Lctn;Ljava/util/Map;Lcpd;Ljava/util/ArrayList;)Ldaz;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldce;",
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
            ">;)",
            "Ldaz;"
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v7, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v7}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcph;

    invoke-interface {v2}, Lcph;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v11, v2

    :cond_0
    invoke-interface {v2}, Lcph;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcpf;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcpf;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    const-string v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v1, v2}, Lcsp;->a(ZLjava/lang/Object;)V

    new-instance v14, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v14}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v15, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v15}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcox;

    invoke-virtual {v1}, Lcox;->c()Lcpf;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldax;

    iget-object v3, v1, Ldax;->c:Lcox;

    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object v3, v1, Ldax;->c:Lcox;

    invoke-interface {v15, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ldaz;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v15}, Ldaz;-><init>(Landroid/content/Context;Ldce;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcwn;Ljava/util/Map;Ljava/util/Map;Lctn;Lcpd;Lcph;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method

.method static synthetic a(Ldaz;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ldaz;->b:Ldce;

    invoke-virtual {v0, p1, p2}, Ldce;->a(IZ)V

    iput-object v1, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Ldaz;->i:Landroid/os/Bundle;

    if-nez v0, :cond_1

    iput-object p1, p0, Ldaz;->i:Landroid/os/Bundle;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldaz;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget v0, p0, Ldaz;->n:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ldaz;->n:I

    return-void

    :pswitch_0
    iget-object v0, p0, Ldaz;->b:Ldce;

    invoke-virtual {v0, p1}, Ldce;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :pswitch_1
    invoke-direct {p0}, Ldaz;->l()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Ldaz;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldaz;->a(IZ)V

    return-void
.end method

.method static synthetic a(Ldaz;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Ldaz;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Ldaz;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldaz;->l:Z

    return p1
.end method

.method static synthetic b(Ldaz;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic b(Ldaz;)V
    .locals 0

    invoke-direct {p0}, Ldaz;->j()V

    return-void
.end method

.method private static b(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ldan;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldan",
            "<+",
            "Lcqg;",
            "+",
            "Lcpe;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ldan;->b()Lcpf;

    move-result-object v0

    iget-object v1, p0, Ldaz;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v1, v2}, Lcsp;->b(ZLjava/lang/Object;)V

    iget-object v1, p0, Ldaz;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcm;

    iget-object v1, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Ldaz;)Z
    .locals 1

    iget-boolean v0, p0, Ldaz;->l:Z

    return v0
.end method

.method static synthetic d(Ldaz;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic e(Ldaz;)Ldcm;
    .locals 1

    iget-object v0, p0, Ldaz;->e:Ldcm;

    return-object v0
.end method

.method static synthetic f(Ldaz;)Ldcm;
    .locals 1

    iget-object v0, p0, Ldaz;->d:Ldcm;

    return-object v0
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Ldaz;->d:Ldcm;

    invoke-virtual {v0}, Ldcm;->a()V

    iget-object v0, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0}, Ldcm;->a()V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Ldaz;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Ldaz;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ldaz;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Ldaz;->k()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget v0, p0, Ldaz;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Ldaz;->l()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Ldaz;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Ldaz;->d:Ldcm;

    invoke-virtual {v0}, Ldcm;->c()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Ldaz;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0}, Ldcm;->c()V

    iget-object v0, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Ldaz;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Ldaz;->e:Ldcm;

    iget v1, v1, Ldcm;->h:I

    iget-object v2, p0, Ldaz;->d:Ldcm;

    iget v2, v2, Ldcm;->h:I

    if-ge v1, v2, :cond_6

    iget-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    :cond_6
    invoke-direct {p0, v0}, Ldaz;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    iget v0, p0, Ldaz;->n:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ldaz;->n:I

    return-void

    :pswitch_0
    iget-object v0, p0, Ldaz;->b:Ldce;

    iget-object v1, p0, Ldaz;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ldce;->a(Landroid/os/Bundle;)V

    :pswitch_1
    invoke-direct {p0}, Ldaz;->l()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Ldaz;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddz;

    invoke-interface {v0}, Lddz;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldaz;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private m()Z
    .locals 2

    iget-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Landroid/app/PendingIntent;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ldaz;->h:Lcph;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldaz;->a:Landroid/content/Context;

    iget-object v1, p0, Ldaz;->b:Ldce;

    invoke-virtual {v1}, Ldce;->r()I

    move-result v1

    iget-object v2, p0, Ldaz;->h:Lcph;

    invoke-interface {v2}, Lcph;->g()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcox;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
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

    iget-object v0, p0, Ldaz;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcox;->c()Lcpf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcm;

    iget-object v1, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldaz;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {p0}, Ldaz;->n()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0, p1}, Ldcm;->a(Lcox;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldaz;->d:Ldcm;

    invoke-virtual {v0, p1}, Ldcm;->a(Lcox;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ldan;)Ldan;
    .locals 4
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

    invoke-direct {p0, p1}, Ldaz;->c(Ldan;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldaz;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Ldaz;->n()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Ldan;->a(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0, p1}, Ldcm;->a(Ldan;)Ldan;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldaz;->d:Ldcm;

    invoke-virtual {v0, p1}, Ldcm;->a(Ldan;)Ldan;

    move-result-object p1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ldaz;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldaz;->l:Z

    invoke-direct {p0}, Ldaz;->i()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Ldaz;->e:Ldcm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ldcm;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "anonClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Ldaz;->d:Ldcm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ldcm;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Lddz;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ldaz;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ldaz;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Ldaz;->h()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ldaz;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v1, p0, Ldaz;->n:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Ldaz;->n:I

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v1}, Ldcm;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Ldan;)Ldan;
    .locals 4
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

    invoke-direct {p0, p1}, Ldaz;->c(Ldan;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldaz;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Ldaz;->n()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Ldan;->a(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0, p1}, Ldcm;->b(Ldan;)Ldan;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldaz;->d:Ldcm;

    invoke-virtual {v0, p1}, Ldcm;->b(Ldan;)Ldan;

    move-result-object p1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Ldaz;->j:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput v0, p0, Ldaz;->n:I

    iget-object v0, p0, Ldaz;->d:Ldcm;

    invoke-virtual {v0}, Ldcm;->c()V

    iget-object v0, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0}, Ldcm;->c()V

    invoke-direct {p0}, Ldaz;->l()V

    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Ldaz;->d:Ldcm;

    invoke-virtual {v1}, Ldcm;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ldaz;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Ldaz;->m()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Ldaz;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Ldaz;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ldaz;->d:Ldcm;

    invoke-virtual {v0}, Ldcm;->f()V

    iget-object v0, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0}, Ldcm;->f()V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Ldaz;->e()Z

    move-result v0

    iget-object v1, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v1}, Ldcm;->c()V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iput-object v1, p0, Ldaz;->k:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ldaz;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ldba;

    invoke-direct {v1, p0}, Ldba;-><init>(Ldaz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Ldaz;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldaz;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Ldaz;->e:Ldcm;

    invoke-virtual {v0}, Ldcm;->d()Z

    move-result v0

    return v0
.end method
