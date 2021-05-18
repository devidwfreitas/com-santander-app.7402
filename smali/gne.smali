.class public abstract Lgne;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AsyncTask"

.field private static final b:I = 0xa

.field private static final c:I = 0x80

.field private static final d:I = 0x1

.field public static final e:Ljava/util/concurrent/Executor;

.field public static final f:Ljava/util/concurrent/Executor;

.field private static final g:Ljava/util/concurrent/ThreadFactory;

.field private static final h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:Lgnk;

.field private static volatile l:Ljava/util/concurrent/Executor;


# instance fields
.field private final m:Lgno;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgno",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile o:Lgnn;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v3, 0x80

    .line 189
    new-instance v0, Lgnf;

    invoke-direct {v0}, Lgnf;-><init>()V

    sput-object v0, Lgne;->g:Ljava/util/concurrent/ThreadFactory;

    .line 197
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lgne;->h:Ljava/util/concurrent/BlockingQueue;

    .line 203
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0xa

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lgne;->h:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lgne;->g:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lgne;->e:Ljava/util/concurrent/Executor;

    .line 211
    new-instance v0, Lgnl;

    invoke-direct {v0, v9}, Lgnl;-><init>(Lgnf;)V

    sput-object v0, Lgne;->f:Ljava/util/concurrent/Executor;

    .line 216
    new-instance v0, Lgnk;

    invoke-direct {v0, v9}, Lgnk;-><init>(Lgnf;)V

    sput-object v0, Lgne;->k:Lgnk;

    .line 218
    sget-object v0, Lgne;->f:Ljava/util/concurrent/Executor;

    sput-object v0, Lgne;->l:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    sget-object v0, Lgnn;->PENDING:Lgnn;

    iput-object v0, p0, Lgne;->o:Lgnn;

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lgne;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lgne;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 286
    new-instance v0, Lgng;

    invoke-direct {v0, p0}, Lgng;-><init>(Lgne;)V

    iput-object v0, p0, Lgne;->m:Lgno;

    .line 296
    new-instance v0, Lgnh;

    iget-object v1, p0, Lgne;->m:Lgno;

    invoke-direct {v0, p0, v1}, Lgnh;-><init>(Lgne;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lgne;->n:Ljava/util/concurrent/FutureTask;

    .line 311
    return-void
.end method

.method static synthetic a(Lgne;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lgne;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lgne;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lgne;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 607
    sget-object v0, Lgne;->l:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 608
    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 279
    sput-object p0, Lgne;->l:Ljava/util/concurrent/Executor;

    .line 280
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lgne;->k:Lgnk;

    invoke-virtual {v0}, Lgnk;->getLooper()Landroid/os/Looper;

    .line 275
    return-void
.end method

.method static synthetic b(Lgne;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lgne;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lgne;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lgne;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lgne;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 315
    if-nez v0, :cond_0

    .line 316
    invoke-direct {p0, p1}, Lgne;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 321
    sget-object v0, Lgne;->k:Lgnk;

    new-instance v1, Lgnj;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lgnj;-><init>(Lgne;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lgnk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 324
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p0}, Lgne;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljcd;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    :cond_0
    invoke-virtual {p0, p1}, Lgne;->b(Ljava/lang/Object;)V

    .line 638
    :goto_0
    sget-object v0, Lgnn;->FINISHED:Lgnn;

    iput-object v0, p0, Lgne;->o:Lgnn;

    .line 639
    return-void

    .line 636
    :cond_1
    invoke-virtual {p0, p1}, Lgne;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lgne;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lgne",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lgne;->o:Lgnn;

    sget-object v1, Lgnn;->PENDING:Lgnn;

    if-eq v0, v1, :cond_0

    .line 576
    sget-object v0, Lgni;->a:[I

    iget-object v1, p0, Lgne;->o:Lgnn;

    invoke-virtual {v1}, Lgnn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 588
    :cond_0
    sget-object v0, Lgnn;->RUNNING:Lgnn;

    iput-object v0, p0, Lgne;->o:Lgnn;

    .line 590
    invoke-virtual {p0}, Lgne;->a()V

    .line 592
    iget-object v0, p0, Lgne;->m:Lgno;

    iput-object p2, v0, Lgno;->b:[Ljava/lang/Object;

    .line 593
    iget-object v0, p0, Lgne;->n:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 595
    return-object p0

    .line 578
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lgne;->n:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 376
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0}, Lgne;->d()V

    .line 406
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 388
    return-void
.end method

.method public final b(Z)Z
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lgne;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 468
    iget-object v0, p0, Lgne;->n:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final varargs c([Ljava/lang/Object;)Lgne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lgne",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 536
    sget-object v0, Lgne;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lgne;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lgne;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lgnn;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lgne;->o:Lgnn;

    return-object v0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method protected final varargs d([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p0}, Lgne;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    sget-object v0, Lgne;->k:Lgnk;

    const/4 v1, 0x2

    new-instance v2, Lgnj;

    invoke-direct {v2, p0, p1}, Lgnj;-><init>(Lgne;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lgnk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 630
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lgne;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lgne;->n:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
