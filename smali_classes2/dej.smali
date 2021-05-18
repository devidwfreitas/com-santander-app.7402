.class public Ldej;
.super Lcqk;

# interfaces
.implements Lcqh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcqg;",
        ">",
        "Lcqk",
        "<TR;>;",
        "Lcqh",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private a:Lcqj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcqj",
            "<-TR;+",
            "Lcqg;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldej",
            "<+",
            "Lcqg;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcqi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcqi",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private d:Lcpy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpy",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/common/api/Status;

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcpt;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ldel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldel;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcpt;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcqk;-><init>()V

    iput-object v1, p0, Ldej;->a:Lcqj;

    iput-object v1, p0, Ldej;->b:Ldej;

    iput-object v1, p0, Ldej;->c:Lcqi;

    iput-object v1, p0, Ldej;->d:Lcpy;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldej;->e:Ljava/lang/Object;

    iput-object v1, p0, Ldej;->f:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldej;->i:Z

    const-string v0, "GoogleApiClient reference must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ldej;->g:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Ldej;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpt;

    new-instance v1, Ldel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcpt;->c()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {v1, p0, v0}, Ldel;-><init>(Ldej;Landroid/os/Looper;)V

    iput-object v1, p0, Ldej;->h:Ldel;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ldej;)Lcqj;
    .locals 1

    iget-object v0, p0, Ldej;->a:Lcqj;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Ldej;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Ldej;->f:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Ldej;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Ldej;->b(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcqg;)V
    .locals 6

    instance-of v1, p1, Lcqe;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcqe;

    move-object v1, v0

    invoke-interface {v1}, Lcqe;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "TransformedResultImpl"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to release "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Ldej;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Ldej;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic a(Ldej;Lcqg;)V
    .locals 0

    invoke-direct {p0, p1}, Ldej;->a(Lcqg;)V

    return-void
.end method

.method static synthetic b(Ldej;)Ldel;
    .locals 1

    iget-object v0, p0, Ldej;->h:Ldel;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Ldej;->a:Lcqj;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldej;->c:Lcqi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ldej;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpt;

    iget-boolean v1, p0, Ldej;->i:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ldej;->a:Lcqj;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcpt;->a(Ldej;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldej;->i:Z

    :cond_2
    iget-object v0, p0, Ldej;->f:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldej;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Ldej;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldej;->d:Lcpy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldej;->d:Lcpy;

    invoke-virtual {v0, p0}, Lcpy;->a(Lcqh;)V

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v1, p0, Ldej;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldej;->a:Lcqj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldej;->a:Lcqj;

    invoke-virtual {v0, p1}, Lcqj;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ldej;->b:Ldej;

    invoke-direct {v2, v0}, Ldej;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-direct {p0}, Ldej;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldej;->c:Lcqi;

    invoke-virtual {v0, p1}, Lcqi;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Ldej;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Ldej;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Ldej;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpt;

    iget-object v1, p0, Ldej;->c:Lcqi;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Ldej;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldej;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Ldej;)Ldej;
    .locals 1

    iget-object v0, p0, Ldej;->b:Ldej;

    return-object v0
.end method


# virtual methods
.method public a(Lcqj;)Lcqk;
    .locals 5
    .param p1    # Lcqj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcqg;",
            ">(",
            "Lcqj",
            "<-TR;+TS;>;)",
            "Lcqk",
            "<TS;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Ldej;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ldej;->a:Lcqj;

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    const-string v4, "Cannot call then() twice."

    invoke-static {v2, v4}, Lcsp;->a(ZLjava/lang/Object;)V

    iget-object v2, p0, Ldej;->c:Lcqi;

    if-nez v2, :cond_1

    :goto_1
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v0, v1}, Lcsp;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Ldej;->a:Lcqj;

    new-instance v0, Ldej;

    iget-object v1, p0, Ldej;->g:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ldej;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Ldej;->b:Ldej;

    invoke-direct {p0}, Ldej;->b()V

    monitor-exit v3

    return-object v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ldej;->c:Lcqi;

    return-void
.end method

.method public a(Lcpy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpy",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Ldej;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Ldej;->d:Lcpy;

    invoke-direct {p0}, Ldej;->b()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcqi;)V
    .locals 5
    .param p1    # Lcqi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqi",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Ldej;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Ldej;->c:Lcqi;

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    const-string v4, "Cannot call andFinally() twice."

    invoke-static {v2, v4}, Lcsp;->a(ZLjava/lang/Object;)V

    iget-object v2, p0, Ldej;->a:Lcqj;

    if-nez v2, :cond_1

    :goto_1
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v0, v1}, Lcsp;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Ldej;->c:Lcqi;

    invoke-direct {p0}, Ldej;->b()V

    monitor-exit v3

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcqg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v1, p0, Ldej;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcqg;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldej;->a:Lcqj;

    if-eqz v0, :cond_1

    invoke-static {}, Lddx;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Ldek;

    invoke-direct {v2, p0, p1}, Ldek;-><init>(Ldej;Lcqg;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-direct {p0}, Ldej;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldej;->c:Lcqi;

    invoke-virtual {v0, p1}, Lcqi;->a(Lcqg;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcqg;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Ldej;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, p1}, Ldej;->a(Lcqg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
