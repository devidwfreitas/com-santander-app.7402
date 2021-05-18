.class Lehs;
.super Lddj;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lehp",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lddk;)V
    .locals 2

    invoke-direct {p0, p1}, Lddj;-><init>(Lddk;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lehs;->a:Ljava/util/List;

    iget-object v0, p0, Lehs;->d:Lddk;

    const-string v1, "TaskOnStopCallback"

    invoke-interface {v0, v1, p0}, Lddk;->a(Ljava/lang/String;Lddj;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)Lehs;
    .locals 3

    invoke-static {p0}, Lehs;->a(Landroid/app/Activity;)Lddk;

    move-result-object v1

    const-string v0, "TaskOnStopCallback"

    const-class v2, Lehs;

    invoke-interface {v1, v0, v2}, Lddk;->a(Ljava/lang/String;Ljava/lang/Class;)Lddj;

    move-result-object v0

    check-cast v0, Lehs;

    if-nez v0, :cond_0

    new-instance v0, Lehs;

    invoke-direct {v0, v1}, Lehs;-><init>(Lddk;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lehp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lehp",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lehs;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lehs;->a:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v1, p0, Lehs;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lehs;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehp;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lehp;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lehs;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
