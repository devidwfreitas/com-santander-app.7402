.class Lehj;
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

.field private c:Legr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Legr",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Legr;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Legr",
            "<TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lehj;->b:Ljava/lang/Object;

    iput-object p1, p0, Lehj;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lehj;->c:Legr;

    return-void
.end method

.method static synthetic a(Lehj;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lehj;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lehj;)Legr;
    .locals 1

    iget-object v0, p0, Lehj;->c:Legr;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v1, p0, Lehj;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lehj;->c:Legr;

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

    iget-object v1, p0, Lehj;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lehj;->c:Legr;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lehj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lehk;

    invoke-direct {v1, p0, p1}, Lehk;-><init>(Lehj;Legv;)V

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
