.class public Ldrw;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ldsa",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ldrv;

.field private final c:Ldpr;

.field private final d:Ldsh;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ldrv;Ldpr;Ldsh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ldsa",
            "<*>;>;",
            "Ldrv;",
            "Ldpr;",
            "Ldsh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldrw;->e:Z

    iput-object p1, p0, Ldrw;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Ldrw;->b:Ldrv;

    iput-object p3, p0, Ldrw;->c:Ldpr;

    iput-object p4, p0, Ldrw;->d:Ldsh;

    return-void
.end method

.method private a(Ldsa;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsa",
            "<*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Ldsa;->b()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method

.method private a(Ldsa;Ldsl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsa",
            "<*>;",
            "Ldsl;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ldsa;->a(Ldsl;)Ldsl;

    move-result-object v0

    iget-object v1, p0, Ldrw;->d:Ldsh;

    invoke-interface {v1, p1, v0}, Ldsh;->a(Ldsa;Ldsl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldrw;->e:Z

    invoke-virtual {p0}, Ldrw;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 8

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Ldrw;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsa;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Ldsa;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ldrw;->a(Ldsa;)V

    iget-object v1, p0, Ldrw;->b:Ldrv;

    invoke-interface {v1, v0}, Ldrv;->a(Ldsa;)Ldry;

    move-result-object v1

    const-string v4, "network-http-complete"

    invoke-virtual {v0, v4}, Ldsa;->b(Ljava/lang/String;)V

    iget-boolean v4, v1, Ldry;->d:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ldsa;->q()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Ldsa;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ldsl; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ldsl;->a(J)V

    invoke-direct {p0, v0, v1}, Ldrw;->a(Ldsa;Ldsl;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Ldrw;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0, v1}, Ldsa;->a(Ldry;)Ldse;

    move-result-object v1

    const-string v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Ldsa;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldsa;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Ldse;->b:Ldps;

    if-eqz v4, :cond_2

    iget-object v4, p0, Ldrw;->c:Ldpr;

    invoke-virtual {v0}, Ldsa;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Ldse;->b:Ldps;

    invoke-interface {v4, v5, v6}, Ldpr;->a(Ljava/lang/String;Ldps;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v0, v4}, Ldsa;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ldsa;->p()V

    iget-object v4, p0, Ldrw;->d:Ldsh;

    invoke-interface {v4, v0, v1}, Ldsh;->a(Ldsa;Ldse;)V
    :try_end_2
    .catch Ldsl; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Ldsm;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ldsl;

    invoke-direct {v4, v1}, Ldsl;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ldsl;->a(J)V

    iget-object v1, p0, Ldrw;->d:Ldsh;

    invoke-interface {v1, v0, v4}, Ldsh;->a(Ldsa;Ldsl;)V

    goto/16 :goto_0
.end method
