.class Lehl;
.super Ljava/lang/Object;

# interfaces
.implements Lehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lehp",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Legs;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Legs;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lehl;->b:Ljava/lang/Object;

    iput-object p1, p0, Lehl;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lehl;->c:Legs;

    return-void
.end method

.method static synthetic a(Lehl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lehl;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lehl;)Legs;
    .locals 1

    iget-object v0, p0, Lehl;->c:Legs;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v1, p0, Lehl;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lehl;->c:Legs;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Legv;)V
    .locals 2
    .param p1    # Legv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legv",
            "<TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Legv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lehl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lehl;->c:Legs;

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lehl;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lehm;

    invoke-direct {v1, p0, p1}, Lehm;-><init>(Lehl;Legv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
