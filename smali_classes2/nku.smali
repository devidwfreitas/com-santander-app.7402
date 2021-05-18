.class final Lnku;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static synthetic a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lnku;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static declared-synchronized a(Lnhc;)Lnhp;
    .locals 2

    const-class v1, Lnku;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnku;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lnku;->a:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    new-instance v0, Lnkv;

    invoke-direct {v0, p0}, Lnkv;-><init>(Lnhc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
