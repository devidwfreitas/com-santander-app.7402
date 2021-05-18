.class public Ldcq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field private static final b:Lcom/google/android/gms/common/api/Status;

.field private static final f:Ljava/lang/Object;

.field private static g:Ldcq;


# instance fields
.field private c:J

.field private d:J

.field private e:J

.field private final h:Landroid/content/Context;

.field private final i:Lcon;

.field private j:I

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldth",
            "<*>;",
            "Ldcs",
            "<*>;>;"
        }
    .end annotation
.end field

.field private n:Ldbl;

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ldth",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ldth",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Ldcq;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Ldcq;->b:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldcq;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcon;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Ldcq;->c:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Ldcq;->d:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ldcq;->e:J

    const/4 v0, -0x1

    iput v0, p0, Ldcq;->j:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ldcq;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ldcq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Ldcq;->m:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Ldcq;->n:Ldbl;

    new-instance v0, Lcvk;

    invoke-direct {v0}, Lcvk;-><init>()V

    iput-object v0, p0, Ldcq;->o:Ljava/util/Set;

    new-instance v0, Lcvk;

    invoke-direct {v0}, Lcvk;-><init>()V

    iput-object v0, p0, Ldcq;->p:Ljava/util/Set;

    iput-object p1, p0, Ldcq;->h:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    iput-object p3, p0, Ldcq;->i:Lcon;

    iget-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v1, p0, Ldcq;->q:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Ldcq;I)I
    .locals 0

    iput p1, p0, Ldcq;->j:I

    return p1
.end method

.method static synthetic a(Ldcq;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Ldcq;
    .locals 3

    sget-object v1, Ldcq;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldcq;->g:Ldcq;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v0, v2}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldcq;->g:Ldcq;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ldcq;
    .locals 5

    sget-object v1, Ldcq;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldcq;->g:Ldcq;

    if-nez v0, :cond_0

    invoke-static {}, Ldcq;->i()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Ldcq;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcon;->a()Lcon;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Ldcq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcon;)V

    sput-object v2, Ldcq;->g:Ldcq;

    :cond_0
    sget-object v0, Ldcq;->g:Ldcq;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    invoke-virtual {v0}, Ldcs;->l()I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    iget-object v3, p0, Ldcq;->i:Lcon;

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcon;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ldcs;->a(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "GoogleApiManager"

    const/16 v1, 0x4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while trying to fail enqueued calls."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ldaj;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Ldaj;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldth;

    iget-object v1, p0, Ldcq;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldcs;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Ldaj;->a(Ldth;Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ldcs;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0, v1}, Ldaj;->a(Ldth;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ldcs;->e()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ldcs;->e()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ldaj;->a(Ldth;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ldcs;->a(Ldaj;)V

    goto :goto_0
.end method

.method private a(Lddu;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    iget-object v1, p1, Lddu;->c:Lcqn;

    invoke-virtual {v1}, Lcqn;->c()Ldth;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    if-nez v0, :cond_0

    iget-object v0, p1, Lddu;->c:Lcqn;

    invoke-direct {p0, v0}, Ldcq;->b(Lcqn;)V

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    iget-object v1, p1, Lddu;->c:Lcqn;

    invoke-virtual {v1}, Lcqn;->c()Ldth;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    :cond_0
    invoke-virtual {v0}, Ldcs;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldcq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lddu;->b:I

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lddu;->a:Ldta;

    sget-object v2, Ldcq;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v2}, Ldta;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Ldcs;->a()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lddu;->a:Ldta;

    invoke-virtual {v0, v1}, Ldcs;->a(Ldta;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v6, 0xc

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x2710

    :goto_0
    iput-wide v0, p0, Ldcq;->e:J

    iget-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldth;

    iget-object v2, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v3, p0, Ldcq;->q:Landroid/os/Handler;

    invoke-virtual {v3, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v4, p0, Ldcq;->e:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Ldcq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ldcq;->h:Landroid/content/Context;

    return-object v0
.end method

.method public static b()V
    .locals 2

    sget-object v1, Ldcq;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldcq;->g:Ldcq;

    if-eqz v0, :cond_0

    sget-object v0, Ldcq;->g:Ldcq;

    invoke-virtual {v0}, Ldcq;->e()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Lcqn;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqn",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcqn;->c()Ldth;

    move-result-object v1

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    if-nez v0, :cond_0

    new-instance v0, Ldcs;

    invoke-direct {v0, p0, p1}, Ldcs;-><init>(Ldcq;Lcqn;)V

    iget-object v2, p0, Ldcq;->m:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ldcs;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldcq;->p:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ldcs;->i()V

    return-void
.end method

.method static synthetic c(Ldcq;)J
    .locals 2

    iget-wide v0, p0, Ldcq;->c:J

    return-wide v0
.end method

.method static synthetic d(Ldcq;)J
    .locals 2

    iget-wide v0, p0, Ldcq;->d:J

    return-wide v0
.end method

.method static synthetic e(Ldcq;)Ldbl;
    .locals 1

    iget-object v0, p0, Ldcq;->n:Ldbl;

    return-object v0
.end method

.method static synthetic f(Ldcq;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ldcq;->o:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic g()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Ldcq;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic g(Ldcq;)Lcon;
    .locals 1

    iget-object v0, p0, Ldcq;->i:Lcon;

    return-object v0
.end method

.method static synthetic h(Ldcq;)J
    .locals 2

    iget-wide v0, p0, Ldcq;->e:J

    return-wide v0
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    sget-object v0, Ldcq;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Ldcq;)I
    .locals 1

    iget v0, p0, Ldcq;->j:I

    return v0
.end method

.method private static i()Landroid/os/Looper;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GoogleApiHandler"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Ldcq;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    return-object v0
.end method

.method private j()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcwd;->c()Z

    iget-object v0, p0, Ldcq;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcq;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Ldak;->a(Landroid/app/Application;)V

    invoke-static {}, Ldak;->a()Ldak;

    move-result-object v0

    new-instance v1, Ldcr;

    invoke-direct {v1, p0}, Ldcr;-><init>(Ldcq;)V

    invoke-virtual {v0, v1}, Ldak;->a(Ldal;)V

    invoke-static {}, Ldak;->a()Ldak;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldak;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Ldcq;->e:J

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    invoke-virtual {v0}, Ldcs;->d()V

    invoke-virtual {v0}, Ldcs;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcq;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldth;

    iget-object v2, p0, Ldcq;->m:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    invoke-virtual {v0}, Ldcs;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldcq;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method a(Ldth;I)Landroid/app/PendingIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldth",
            "<*>;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    invoke-virtual {v0}, Ldcs;->m()Ldpx;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldcq;->h:Landroid/content/Context;

    invoke-interface {v0}, Ldpx;->g()Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x8000000

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcqn;Lddp;)Legv;
    .locals 7
    .param p1    # Lcqn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lddp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcoy;",
            ">(",
            "Lcqn",
            "<TO;>;",
            "Lddp",
            "<*>;)",
            "Legv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Legw;

    invoke-direct {v0}, Legw;-><init>()V

    new-instance v1, Ldtf;

    invoke-direct {v1, p2, v0}, Ldtf;-><init>(Lddp;Legw;)V

    iget-object v2, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v3, p0, Ldcq;->q:Landroid/os/Handler;

    const/16 v4, 0xd

    new-instance v5, Lddu;

    iget-object v6, p0, Ldcq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {v5, v1, v6, p1}, Lddu;-><init>(Ldta;ILcqn;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Legw;->a()Legv;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcqn;Lddv;Ldeq;)Legv;
    .locals 7
    .param p1    # Lcqn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lddv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ldeq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcoy;",
            ">(",
            "Lcqn",
            "<TO;>;",
            "Lddv",
            "<",
            "Lcpe;",
            "*>;",
            "Ldeq",
            "<",
            "Lcpe;",
            "*>;)",
            "Legv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Legw;

    invoke-direct {v0}, Legw;-><init>()V

    new-instance v1, Ldtd;

    new-instance v2, Lddw;

    invoke-direct {v2, p2, p3}, Lddw;-><init>(Lddv;Ldeq;)V

    invoke-direct {v1, v2, v0}, Ldtd;-><init>(Lddw;Legw;)V

    iget-object v2, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v3, p0, Ldcq;->q:Landroid/os/Handler;

    const/16 v4, 0x8

    new-instance v5, Lddu;

    iget-object v6, p0, Ldcq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {v5, v1, v6, p1}, Lddu;-><init>(Ldta;ILcqn;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Legw;->a()Legv;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)Legv;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcqn",
            "<*>;>;)",
            "Legv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v1, Ldaj;

    invoke-direct {v1, p1}, Ldaj;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqn;

    iget-object v3, p0, Ldcq;->m:Ljava/util/Map;

    invoke-virtual {v0}, Lcqn;->c()Ldth;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldcs;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v2, p0, Ldcq;->q:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v1}, Ldaj;->b()Legv;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1}, Ldaj;->c()V

    invoke-virtual {v1}, Ldaj;->b()Legv;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcqn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqn",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v1, p0, Ldcq;->q:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcqn;ILdan;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcoy;",
            ">(",
            "Lcqn",
            "<TO;>;I",
            "Ldan",
            "<+",
            "Lcqg;",
            "Lcpe;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ldtc;

    invoke-direct {v0, p2, p3}, Ldtc;-><init>(ILdan;)V

    iget-object v1, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v2, p0, Ldcq;->q:Landroid/os/Handler;

    const/4 v3, 0x4

    new-instance v4, Lddu;

    iget-object v5, p0, Ldcq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v4, v0, v5, p1}, Lddu;-><init>(Ldta;ILcqn;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcqn;ILdeh;Legw;Lded;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcoy;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcqn",
            "<TO;>;I",
            "Ldeh",
            "<",
            "Lcpe;",
            "TTResult;>;",
            "Legw",
            "<TTResult;>;",
            "Lded;",
            ")V"
        }
    .end annotation

    new-instance v0, Ldte;

    invoke-direct {v0, p2, p3, p4, p5}, Ldte;-><init>(ILdeh;Legw;Lded;)V

    iget-object v1, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v2, p0, Ldcq;->q:Landroid/os/Handler;

    const/4 v3, 0x4

    new-instance v4, Lddu;

    iget-object v5, p0, Ldcq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v4, v0, v5, p1}, Lddu;-><init>(Ldta;ILcqn;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ldbl;)V
    .locals 3
    .param p1    # Ldbl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v1, Ldcq;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldcq;->n:Ldbl;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Ldcq;->n:Ldbl;

    iget-object v0, p0, Ldcq;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Ldcq;->o:Ljava/util/Set;

    invoke-virtual {p1}, Ldbl;->e()Lcvk;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    iget-object v0, p0, Ldcq;->i:Lcon;

    iget-object v1, p0, Ldcq;->h:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcon;->a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Ldcq;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v1, p0, Ldcq;->q:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method b(Ldbl;)V
    .locals 2
    .param p1    # Ldbl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v1, Ldcq;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldcq;->n:Ldbl;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ldcq;->n:Ldbl;

    iget-object v0, p0, Ldcq;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Ldcq;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v1, p0, Ldcq;->q:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Ldcq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v1, p0, Ldcq;->q:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method f()V
    .locals 3

    iget-object v0, p0, Ldcq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Ldcq;->q:Landroid/os/Handler;

    iget-object v1, p0, Ldcq;->q:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "GoogleApiManager"

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown message id: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Ldcq;->a(Z)V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldaj;

    invoke-direct {p0, v0}, Ldcq;->a(Ldaj;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Ldcq;->k()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lddu;

    invoke-direct {p0, v0}, Ldcq;->a(Lddu;)V

    goto :goto_1

    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1, v0}, Ldcq;->a(ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Ldcq;->j()V

    goto :goto_1

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcqn;

    invoke-direct {p0, v0}, Ldcq;->b(Lcqn;)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    invoke-virtual {v0}, Ldcs;->f()V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0}, Ldcq;->l()V

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    invoke-virtual {v0}, Ldcs;->g()V

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcq;->m:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    invoke-virtual {v0}, Ldcs;->h()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
    .end packed-switch
.end method
