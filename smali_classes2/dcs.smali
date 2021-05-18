.class public Ldcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcpv;
.implements Lcpw;
.implements Lday;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcoy;",
        ">",
        "Ljava/lang/Object;",
        "Lcpv;",
        "Lcpw;",
        "Lday;"
    }
.end annotation


# instance fields
.field final synthetic c:Ldcq;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ldta;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcph;

.field private final f:Lcpe;

.field private final g:Ldth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldth",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final h:Ldbi;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ldaj;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lddp",
            "<*>;",
            "Lddw;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I

.field private final l:Ldea;

.field private m:Z

.field private n:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Ldcq;Lcqn;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqn",
            "<TO;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Ldcs;->c:Ldcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldcs;->d:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldcs;->i:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldcs;->j:Ljava/util/Map;

    iput-object v1, p0, Ldcs;->n:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcqn;->a(Landroid/os/Looper;Ldcs;)Lcph;

    move-result-object v0

    iput-object v0, p0, Ldcs;->e:Lcph;

    iget-object v0, p0, Ldcs;->e:Lcph;

    instance-of v0, v0, Lcsu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcs;->e:Lcph;

    check-cast v0, Lcsu;

    invoke-virtual {v0}, Lcsu;->k()Lcpj;

    move-result-object v0

    iput-object v0, p0, Ldcs;->f:Lcpe;

    :goto_0
    invoke-virtual {p2}, Lcqn;->c()Ldth;

    move-result-object v0

    iput-object v0, p0, Ldcs;->g:Ldth;

    new-instance v0, Ldbi;

    invoke-direct {v0}, Ldbi;-><init>()V

    iput-object v0, p0, Ldcs;->h:Ldbi;

    invoke-virtual {p2}, Lcqn;->d()I

    move-result v0

    iput v0, p0, Ldcs;->k:I

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ldcq;->b(Ldcq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcqn;->a(Landroid/content/Context;Landroid/os/Handler;)Ldea;

    move-result-object v0

    iput-object v0, p0, Ldcs;->l:Ldea;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Ldcs;->e:Lcph;

    iput-object v0, p0, Ldcs;->f:Lcpe;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Ldcs;->l:Ldea;

    goto :goto_1
.end method

.method static synthetic a(Ldcs;)V
    .locals 0

    invoke-direct {p0}, Ldcs;->n()V

    return-void
.end method

.method static synthetic b(Ldcs;)V
    .locals 0

    invoke-direct {p0}, Ldcs;->o()V

    return-void
.end method

.method private b(Ldta;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->h:Ldbi;

    invoke-virtual {p0}, Ldcs;->k()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Ldta;->a(Ldbi;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Ldta;->a(Ldcs;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldcs;->a(I)V

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->a()V

    goto :goto_0
.end method

.method private c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldaj;

    iget-object v2, p0, Ldcs;->g:Ldth;

    invoke-virtual {v0, v2, p1}, Ldaj;->a(Ldth;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldcs;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private n()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldcs;->d()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Ldcs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Ldcs;->q()V

    iget-object v0, p0, Ldcs;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :try_start_0
    new-instance v1, Legw;

    invoke-direct {v1}, Legw;-><init>()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldcs;->a(I)V

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->a()V

    :cond_0
    invoke-direct {p0}, Ldcs;->p()V

    invoke-direct {p0}, Ldcs;->r()V

    return-void

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private o()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Ldcs;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldcs;->m:Z

    iget-object v0, p0, Ldcs;->h:Ldbi;

    invoke-virtual {v0}, Ldbi;->c()V

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Ldcs;->g:Ldth;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Ldcs;->c:Ldcq;

    invoke-static {v2}, Ldcq;->c(Ldcq;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    iget-object v3, p0, Ldcs;->g:Ldth;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Ldcs;->c:Ldcq;

    invoke-static {v2}, Ldcq;->d(Ldcq;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Ldcs;->c:Ldcq;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ldcq;->a(Ldcq;I)I

    return-void
.end method

.method private p()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :goto_0
    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcs;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldcs;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldta;

    invoke-direct {p0, v0}, Ldcs;->b(Ldta;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Ldcs;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Ldcs;->g:Ldth;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Ldcs;->g:Ldth;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldcs;->m:Z

    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    const/16 v3, 0xc

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldcs;->g:Ldth;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Ldcs;->g:Ldth;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Ldcs;->c:Ldcq;

    invoke-static {v2}, Ldcq;->h(Ldcq;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    sget-object v0, Ldcq;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Ldcs;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Ldcs;->h:Ldbi;

    invoke-virtual {v0}, Ldbi;->b()V

    iget-object v0, p0, Ldcs;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddp;

    new-instance v2, Ldtf;

    new-instance v3, Legw;

    invoke-direct {v3}, Legw;-><init>()V

    invoke-direct {v2, v0, v3}, Ldtf;-><init>(Lddp;Legw;)V

    invoke-virtual {p0, v2}, Ldcs;->a(Ldta;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Ldcs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->a()V

    return-void
.end method

.method public a(I)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ldcs;->o()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldcu;

    invoke-direct {v1, p0}, Ldcu;-><init>(Ldcs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ldcs;->n()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldct;

    invoke-direct {v1, p0}, Ldct;-><init>(Ldcs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Ldcs;->l:Ldea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcs;->l:Ldea;

    invoke-virtual {v0}, Ldea;->b()V

    :cond_0
    invoke-virtual {p0}, Ldcs;->d()V

    iget-object v0, p0, Ldcs;->c:Ldcq;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ldcq;->a(Ldcq;I)I

    invoke-direct {p0, p1}, Ldcs;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-static {}, Ldcq;->g()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldcs;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ldcs;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Ldcs;->n:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_3
    invoke-static {}, Ldcq;->h()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->e(Ldcq;)Ldbl;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->f(Ldcq;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Ldcs;->g:Ldth;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->e(Ldcq;)Ldbl;

    move-result-object v0

    iget v2, p0, Ldcs;->k:I

    invoke-virtual {v0, p1, v2}, Ldbl;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Ldcs;->c:Ldcq;

    iget v1, p0, Ldcs;->k:I

    invoke-virtual {v0, p1, v1}, Ldcq;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldcs;->m:Z

    :cond_5
    iget-boolean v0, p0, Ldcs;->m:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Ldcs;->g:Ldth;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Ldcs;->c:Ldcq;

    invoke-static {v2}, Ldcq;->c(Ldcq;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Ldcs;->g:Ldth;

    invoke-virtual {v2}, Ldth;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "API: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ldcs;->a(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;Lcox;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcox",
            "<*>;Z)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ldcs;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldcv;

    invoke-direct {v1, p0, p1}, Ldcv;-><init>(Ldcs;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Ldcs;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldta;

    invoke-virtual {v0, p1}, Ldta;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldcs;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public a(Ldaj;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Ldcs;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ldta;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ldcs;->b(Ldta;)V

    invoke-direct {p0}, Ldcs;->r()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldcs;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldcs;->n:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldcs;->n:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldcs;->n:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Ldcs;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ldcs;->i()V

    goto :goto_0
.end method

.method public b()Lcph;
    .locals 1

    iget-object v0, p0, Ldcs;->e:Lcph;

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->a()V

    invoke-virtual {p0, p1}, Ldcs;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lddp",
            "<*>;",
            "Lddw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldcs;->j:Ljava/util/Map;

    return-object v0
.end method

.method public d()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ldcs;->n:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public e()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Ldcs;->n:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public f()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-boolean v0, p0, Ldcs;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldcs;->i()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v2, 0x8

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-boolean v0, p0, Ldcs;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldcs;->q()V

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->g(Ldcq;)Lcon;

    move-result-object v0

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->b(Ldcq;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcon;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Ldcs;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->a()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public h()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcs;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldcs;->h:Ldbi;

    invoke-virtual {v0}, Ldbi;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldcs;->r()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->a()V

    goto :goto_0
.end method

.method public i()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->a(Ldcq;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcsp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->i(Ldcq;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldcs;->c:Ldcq;

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->g(Ldcq;)Lcon;

    move-result-object v1

    iget-object v2, p0, Ldcs;->c:Ldcq;

    invoke-static {v2}, Ldcq;->b(Ldcq;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcon;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ldcq;->a(Ldcq;I)I

    iget-object v0, p0, Ldcs;->c:Ldcq;

    invoke-static {v0}, Ldcq;->i(Ldcq;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Ldcs;->c:Ldcq;

    invoke-static {v1}, Ldcq;->i(Ldcq;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ldcs;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ldcw;

    iget-object v1, p0, Ldcs;->c:Ldcq;

    iget-object v2, p0, Ldcs;->e:Lcph;

    iget-object v3, p0, Ldcs;->g:Ldth;

    invoke-direct {v0, v1, v2, v3}, Ldcw;-><init>(Ldcq;Lcph;Ldth;)V

    iget-object v1, p0, Ldcs;->e:Lcph;

    invoke-interface {v1}, Lcph;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldcs;->l:Ldea;

    invoke-virtual {v1, v0}, Ldea;->a(Ldec;)V

    :cond_3
    iget-object v1, p0, Ldcs;->e:Lcph;

    invoke-interface {v1, v0}, Lcph;->a(Lcth;)V

    goto :goto_0
.end method

.method j()Z
    .locals 1

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->b()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Ldcs;->e:Lcph;

    invoke-interface {v0}, Lcph;->d()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Ldcs;->k:I

    return v0
.end method

.method m()Ldpx;
    .locals 1

    iget-object v0, p0, Ldcs;->l:Ldea;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldcs;->l:Ldea;

    invoke-virtual {v0}, Ldea;->a()Ldpx;

    move-result-object v0

    goto :goto_0
.end method
