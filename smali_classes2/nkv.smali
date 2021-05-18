.class final Lnkv;
.super Ljava/lang/Object;

# interfaces
.implements Lnhp;


# instance fields
.field final synthetic a:Lnhc;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lniw;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lnjg;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Lnhc;)V
    .locals 2

    iput-object p1, p0, Lnkv;->a:Lnhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnku;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnkv;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnkv;->c:Ljava/util/Collection;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnkv;->d:Ljava/util/Collection;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnkv;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lnkv;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lnkv;->c:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic a(Lnkv;Lnib;)V
    .locals 0

    invoke-direct {p0, p1}, Lnkv;->c(Lnib;)V

    return-void
.end method

.method private c(Lnib;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnjg;",
            ">(",
            "Lnib",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lnib;->f()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lnkv;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnjg;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-virtual {p1, v0}, Lnib;->a(Ljava/util/EventListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnkv;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lnkv;->b:Landroid/os/Handler;

    new-instance v1, Lnkw;

    invoke-direct {v1, p0, p1}, Lnkw;-><init>(Lnkv;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Ljava/util/EventListener;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lnjg;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnkv;->d:Ljava/util/Collection;

    move-object v0, p1

    check-cast v0, Lnjg;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v1

    :cond_0
    instance-of v2, p1, Lniw;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lnkv;->c:Ljava/util/Collection;

    check-cast p1, Lniw;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public a(Lnib;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnjg;",
            ">(",
            "Lnib",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lnip;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lnkv;->c(Lnib;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnkv;->b:Landroid/os/Handler;

    new-instance v1, Lnkx;

    invoke-direct {v1, p0, p1}, Lnkx;-><init>(Lnkv;Lnib;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnkv;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public b(Ljava/util/EventListener;)V
    .locals 1

    iget-object v0, p0, Lnkv;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnkv;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lnib;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lniw;",
            ">(",
            "Lnib",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lnkv;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lnky;

    invoke-direct {v1, p0, p1}, Lnky;-><init>(Lnkv;Lnib;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnkv;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
