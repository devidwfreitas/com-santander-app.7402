.class public final Leha;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Legv;
    .locals 1
    .param p0    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Lehr;

    invoke-direct {v0}, Lehr;-><init>()V

    invoke-virtual {v0, p0}, Lehr;->a(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Legv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v0, Lehr;

    invoke-direct {v0}, Lehr;-><init>()V

    invoke-virtual {v0, p0}, Lehr;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Legv;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Legv",
            "<*>;>;)",
            "Legv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Leha;->a(Ljava/lang/Object;)Legv;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legv;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null tasks are not accepted"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lehr;

    invoke-direct {v1}, Lehr;-><init>()V

    new-instance v2, Lehe;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0, v1}, Lehe;-><init>(ILehr;)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legv;

    invoke-static {v0, v2}, Leha;->a(Legv;Lehd;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Legv;
    .locals 1
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Legx;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Leha;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Legv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Legv;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Legv",
            "<TTResult;>;"
        }
    .end annotation

    const-string v0, "Executor must not be null"

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lehr;

    invoke-direct {v0}, Lehr;-><init>()V

    new-instance v1, Lehb;

    invoke-direct {v1, v0, p1}, Lehb;-><init>(Lehr;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs a([Legv;)Legv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Legv",
            "<*>;)",
            "Legv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Leha;->a(Ljava/lang/Object;)Legv;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Leha;->a(Ljava/util/Collection;)Legv;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Legv;)Ljava/lang/Object;
    .locals 2
    .param p0    # Legv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Legv",
            "<TTResult;>;)TTResult;"
        }
    .end annotation

    invoke-static {}, Lcsp;->a()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Legv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Leha;->b(Legv;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lehc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lehc;-><init>(Lehb;)V

    invoke-static {p0, v0}, Leha;->a(Legv;Lehd;)V

    invoke-virtual {v0}, Lehc;->a()V

    invoke-static {p0}, Leha;->b(Legv;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Legv;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p0    # Legv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Legv",
            "<TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    invoke-static {}, Lcsp;->a()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Legv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Leha;->b(Legv;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lehc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lehc;-><init>(Lehb;)V

    invoke-static {p0, v0}, Leha;->a(Legv;Lehd;)V

    invoke-virtual {v0, p1, p2, p3}, Lehc;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timed out waiting for Task"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Leha;->b(Legv;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Legv;Lehd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legv",
            "<*>;",
            "Lehd;",
            ")V"
        }
    .end annotation

    sget-object v0, Legx;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Legv;->a(Ljava/util/concurrent/Executor;Legt;)Legv;

    sget-object v0, Legx;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Legv;->a(Ljava/util/concurrent/Executor;Legs;)Legv;

    return-void
.end method

.method private static b(Legv;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Legv",
            "<TTResult;>;)TTResult;"
        }
    .end annotation

    invoke-virtual {p0}, Legv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Legv;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Legv;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
