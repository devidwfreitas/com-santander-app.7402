.class final Lehr;
.super Legv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Legv",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lehq",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Legv;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lehr;->a:Ljava/lang/Object;

    new-instance v0, Lehq;

    invoke-direct {v0}, Lehq;-><init>()V

    iput-object v0, p0, Lehr;->b:Lehq;

    return-void
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lehr;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcsp;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lehr;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcsp;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lehr;->c:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lehr;->b:Lehq;

    invoke-virtual {v0, p0}, Lehq;->a(Legv;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Legr;)Legv;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Legr",
            "<TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Lehj;

    sget-object v1, Legx;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lehj;-><init>(Ljava/util/concurrent/Executor;Legr;)V

    iget-object v1, p0, Lehr;->b:Lehq;

    invoke-virtual {v1, v0}, Lehq;->a(Lehp;)V

    invoke-static {p1}, Lehs;->b(Landroid/app/Activity;)Lehs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehs;->a(Lehp;)V

    invoke-direct {p0}, Lehr;->g()V

    return-object p0
.end method

.method public a(Landroid/app/Activity;Legs;)Legv;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Legs;",
            ")",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Lehl;

    sget-object v1, Legx;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lehl;-><init>(Ljava/util/concurrent/Executor;Legs;)V

    iget-object v1, p0, Lehr;->b:Lehq;

    invoke-virtual {v1, v0}, Lehq;->a(Lehp;)V

    invoke-static {p1}, Lehs;->b(Landroid/app/Activity;)Lehs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehs;->a(Lehp;)V

    invoke-direct {p0}, Lehr;->g()V

    return-object p0
.end method

.method public a(Landroid/app/Activity;Legt;)Legv;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Legt",
            "<-TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Lehn;

    sget-object v1, Legx;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lehn;-><init>(Ljava/util/concurrent/Executor;Legt;)V

    iget-object v1, p0, Lehr;->b:Lehq;

    invoke-virtual {v1, v0}, Lehq;->a(Lehp;)V

    invoke-static {p1}, Lehs;->b(Landroid/app/Activity;)Lehs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehs;->a(Lehp;)V

    invoke-direct {p0}, Lehr;->g()V

    return-object p0
.end method

.method public a(Legq;)Legv;
    .locals 1
    .param p1    # Legq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Legq",
            "<TTResult;TTContinuationResult;>;)",
            "Legv",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Legx;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lehr;->a(Ljava/util/concurrent/Executor;Legq;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public a(Legr;)Legv;
    .locals 1
    .param p1    # Legr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legr",
            "<TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Legx;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lehr;->a(Ljava/util/concurrent/Executor;Legr;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public a(Legs;)Legv;
    .locals 1
    .param p1    # Legs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legs;",
            ")",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Legx;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lehr;->a(Ljava/util/concurrent/Executor;Legs;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public a(Legt;)Legv;
    .locals 1
    .param p1    # Legt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legt",
            "<-TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Legx;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lehr;->a(Ljava/util/concurrent/Executor;Legt;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/concurrent/Executor;Legq;)Legv;
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Legq",
            "<TTResult;TTContinuationResult;>;)",
            "Legv",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lehr;

    invoke-direct {v0}, Lehr;-><init>()V

    iget-object v1, p0, Lehr;->b:Lehq;

    new-instance v2, Lehf;

    invoke-direct {v2, p1, p2, v0}, Lehf;-><init>(Ljava/util/concurrent/Executor;Legq;Lehr;)V

    invoke-virtual {v1, v2}, Lehq;->a(Lehp;)V

    invoke-direct {p0}, Lehr;->g()V

    return-object v0
.end method

.method public a(Ljava/util/concurrent/Executor;Legr;)Legv;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Legr",
            "<TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lehr;->b:Lehq;

    new-instance v1, Lehj;

    invoke-direct {v1, p1, p2}, Lehj;-><init>(Ljava/util/concurrent/Executor;Legr;)V

    invoke-virtual {v0, v1}, Lehq;->a(Lehp;)V

    invoke-direct {p0}, Lehr;->g()V

    return-object p0
.end method

.method public a(Ljava/util/concurrent/Executor;Legs;)Legv;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Legs;",
            ")",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lehr;->b:Lehq;

    new-instance v1, Lehl;

    invoke-direct {v1, p1, p2}, Lehl;-><init>(Ljava/util/concurrent/Executor;Legs;)V

    invoke-virtual {v0, v1}, Lehq;->a(Lehp;)V

    invoke-direct {p0}, Lehr;->g()V

    return-object p0
.end method

.method public a(Ljava/util/concurrent/Executor;Legt;)Legv;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Legt",
            "<-TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lehr;->b:Lehq;

    new-instance v1, Lehn;

    invoke-direct {v1, p1, p2}, Lehn;-><init>(Ljava/util/concurrent/Executor;Legt;)V

    invoke-virtual {v0, v1}, Lehq;->a(Lehp;)V

    invoke-direct {p0}, Lehr;->g()V

    return-object p0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;)TTResult;^TX;"
        }
    .end annotation

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lehr;->e()V

    iget-object v0, p0, Lehr;->e:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lehr;->e:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lehr;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    new-instance v0, Legu;

    iget-object v2, p0, Lehr;->e:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Legu;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lehr;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lehr;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lehr;->c:Z

    iput-object p1, p0, Lehr;->e:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lehr;->b:Lehq;

    invoke-virtual {v0, p0}, Lehq;->a(Legv;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lehr;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lehr;->c:Z

    iput-object p1, p0, Lehr;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lehr;->b:Lehq;

    invoke-virtual {v0, p0}, Lehq;->a(Legv;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 2

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lehr;->c:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Legq;)Legv;
    .locals 1
    .param p1    # Legq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Legq",
            "<TTResult;",
            "Legv",
            "<TTContinuationResult;>;>;)",
            "Legv",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Legx;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lehr;->b(Ljava/util/concurrent/Executor;Legq;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/concurrent/Executor;Legq;)Legv;
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Legq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Legq",
            "<TTResult;",
            "Legv",
            "<TTContinuationResult;>;>;)",
            "Legv",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lehr;

    invoke-direct {v0}, Lehr;-><init>()V

    iget-object v1, p0, Lehr;->b:Lehq;

    new-instance v2, Lehh;

    invoke-direct {v2, p1, p2, v0}, Lehh;-><init>(Ljava/util/concurrent/Executor;Legq;Lehr;)V

    invoke-virtual {v1, v2}, Lehq;->a(Lehp;)V

    invoke-direct {p0}, Lehr;->g()V

    return-object v0
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lehr;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lehr;->e:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Exception;)Z
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lehr;->c:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lehr;->c:Z

    iput-object p1, p0, Lehr;->e:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lehr;->b:Lehq;

    invoke-virtual {v1, p0}, Lehq;->a(Legv;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lehr;->c:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lehr;->c:Z

    iput-object p1, p0, Lehr;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lehr;->b:Lehq;

    invoke-virtual {v1, p0}, Lehq;->a(Legv;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lehr;->e()V

    iget-object v0, p0, Lehr;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    new-instance v0, Legu;

    iget-object v2, p0, Lehr;->e:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Legu;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lehr;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public d()Ljava/lang/Exception;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lehr;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lehr;->e:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
