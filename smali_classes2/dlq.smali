.class public Ldlq;
.super Ldmu;


# static fields
.field private static final k:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ldlu;

.field private c:Ldlu;

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final g:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/util/concurrent/Semaphore;

.field private volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ldlq;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Ldlv;)V
    .locals 2

    invoke-direct {p0, p1}, Ldmu;-><init>(Ldlv;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldlq;->h:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Ldlq;->i:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Ldlq;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ldlq;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ldls;

    const-string v1, "Thread death: Uncaught exception on worker thread"

    invoke-direct {v0, p0, v1}, Ldls;-><init>(Ldlq;Ljava/lang/String;)V

    iput-object v0, p0, Ldlq;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Ldls;

    const-string v1, "Thread death: Uncaught exception on network thread"

    invoke-direct {v0, p0, v1}, Ldls;-><init>(Ldlq;Ljava/lang/String;)V

    iput-object v0, p0, Ldlq;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic A()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Ldlq;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic a(Ldlq;Ldlu;)Ldlu;
    .locals 0

    iput-object p1, p0, Ldlq;->b:Ldlu;

    return-object p1
.end method

.method static synthetic a(Ldlq;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Ldlq;->i:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private a(Ldlt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldlt",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Ldlq;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldlq;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldlq;->b:Ldlu;

    if-nez v0, :cond_0

    new-instance v0, Ldlu;

    const-string v2, "Measurement Worker"

    iget-object v3, p0, Ldlq;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0, p0, v2, v3}, Ldlu;-><init>(Ldlq;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Ldlq;->b:Ldlu;

    iget-object v0, p0, Ldlq;->b:Ldlu;

    iget-object v2, p0, Ldlq;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v2}, Ldlu;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Ldlq;->b:Ldlu;

    invoke-virtual {v0}, Ldlu;->start()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Ldlq;->b:Ldlu;

    invoke-virtual {v0}, Ldlu;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/concurrent/FutureTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Ldlq;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldlq;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldlq;->c:Ldlu;

    if-nez v0, :cond_0

    new-instance v0, Ldlu;

    const-string v2, "Measurement Network"

    iget-object v3, p0, Ldlq;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v2, v3}, Ldlu;-><init>(Ldlq;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Ldlq;->c:Ldlu;

    iget-object v0, p0, Ldlq;->c:Ldlu;

    iget-object v2, p0, Ldlq;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v2}, Ldlu;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Ldlq;->c:Ldlu;

    invoke-virtual {v0}, Ldlu;->start()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Ldlq;->c:Ldlu;

    invoke-virtual {v0}, Ldlu;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Ldlq;Ldlu;)Ldlu;
    .locals 0

    iput-object p1, p0, Ldlq;->c:Ldlu;

    return-object p1
.end method

.method static synthetic b(Ldlq;)Z
    .locals 1

    iget-boolean v0, p0, Ldlq;->j:Z

    return v0
.end method

.method static synthetic c(Ldlq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldlq;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Ldlq;)Ldlu;
    .locals 1

    iget-object v0, p0, Ldlq;->b:Ldlu;

    return-object v0
.end method

.method static synthetic e(Ldlq;)Ldlu;
    .locals 1

    iget-object v0, p0, Ldlq;->c:Ldlu;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ldlq;->R()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldlt;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Ldlt;-><init>(Ldlq;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Ldlq;->b:Ldlu;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ldlt;->run()V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Ldlq;->a(Ldlt;)V

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Ldlq;->R()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldlt;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Ldlt;-><init>(Ldlq;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Ldlq;->a(Ldlt;)V

    return-void
.end method

.method public b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ldlq;->R()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldlt;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Ldlt;-><init>(Ldlq;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Ldlq;->b:Ldlu;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ldlt;->run()V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Ldlq;->a(Ldlt;)V

    goto :goto_0
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Ldmu;->b()V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Ldlq;->R()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldlt;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Ldlt;-><init>(Ldlq;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Ldlq;->a(Ljava/util/concurrent/FutureTask;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Ldmu;->c()V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ldlq;->c:Ldlu;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ldlq;->b:Ldlu;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public bridge synthetic f()Ldjs;
    .locals 1

    invoke-super {p0}, Ldmu;->f()Ldjs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ldjy;
    .locals 1

    invoke-super {p0}, Ldmu;->g()Ldjy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ldmw;
    .locals 1

    invoke-super {p0}, Ldmu;->h()Ldmw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Ldks;
    .locals 1

    invoke-super {p0}, Ldmu;->i()Ldks;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ldkh;
    .locals 1

    invoke-super {p0}, Ldmu;->j()Ldkh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ldno;
    .locals 1

    invoke-super {p0}, Ldmu;->k()Ldno;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ldnk;
    .locals 1

    invoke-super {p0}, Ldmu;->l()Ldnk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Lcvo;
    .locals 1

    invoke-super {p0}, Ldmu;->m()Lcvo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Ldmu;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ldkt;
    .locals 1

    invoke-super {p0}, Ldmu;->o()Ldkt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ldkb;
    .locals 1

    invoke-super {p0}, Ldmu;->p()Ldkb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ldou;
    .locals 1

    invoke-super {p0}, Ldmu;->q()Ldou;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Ldlp;
    .locals 1

    invoke-super {p0}, Ldmu;->r()Ldlp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Ldok;
    .locals 1

    invoke-super {p0}, Ldmu;->s()Ldok;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Ldlq;
    .locals 1

    invoke-super {p0}, Ldmu;->t()Ldlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ldkw;
    .locals 1

    invoke-super {p0}, Ldmu;->u()Ldkw;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ldlh;
    .locals 1

    invoke-super {p0}, Ldmu;->v()Ldlh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ldka;
    .locals 1

    invoke-super {p0}, Ldmu;->w()Ldka;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ldlq;->b:Ldlu;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method z()Ljava/util/concurrent/ExecutorService;
    .locals 9

    iget-object v8, p0, Ldlq;->h:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Ldlq;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x64

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Ldlq;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Ldlq;->a:Ljava/util/concurrent/ExecutorService;

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
