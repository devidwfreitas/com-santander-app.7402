.class Ldbg;
.super Ljava/lang/Object;

# interfaces
.implements Legr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Legr",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldbe;


# direct methods
.method private constructor <init>(Ldbe;)V
    .locals 0

    iput-object p1, p0, Ldbg;->a:Ldbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldbe;Ldbf;)V
    .locals 0

    invoke-direct {p0, p1}, Ldbg;-><init>(Ldbe;)V

    return-void
.end method


# virtual methods
.method public a(Legv;)V
    .locals 6
    .param p1    # Legv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->a(Ldbe;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->b(Ldbe;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->a(Ldbe;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Legv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldbg;->a:Ldbe;

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p0, Ldbg;->a:Ldbe;

    invoke-static {v2}, Ldbe;->c(Ldbe;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-static {v0, v1}, Ldbe;->a(Ldbe;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->c(Ldbe;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbd;

    iget-object v2, p0, Ldbg;->a:Ldbe;

    invoke-static {v2}, Ldbe;->d(Ldbe;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Ldbd;->c()Ldth;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-static {v1}, Ldbe;->a(Ldbe;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Legv;->d()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcqm;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Legv;->d()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcqm;

    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-static {v1}, Ldbe;->e(Ldbe;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldbg;->a:Ldbe;

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    iget-object v3, p0, Ldbg;->a:Ldbe;

    invoke-static {v3}, Ldbe;->c(Ldbe;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-static {v1, v2}, Ldbe;->a(Ldbe;Ljava/util/Map;)Ljava/util/Map;

    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-static {v1}, Ldbe;->c(Ldbe;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbd;

    invoke-virtual {v1}, Ldbd;->c()Ldth;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcqm;->a(Lcqn;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    iget-object v5, p0, Ldbg;->a:Ldbe;

    invoke-static {v5, v1, v4}, Ldbe;->a(Ldbe;Ldbd;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-static {v1}, Ldbe;->d(Ldbe;)Ljava/util/Map;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-static {v1}, Ldbe;->d(Ldbe;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-virtual {v0}, Lcqm;->a()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-static {v1, v0}, Ldbe;->a(Ldbe;Ljava/util/Map;)Ljava/util/Map;

    :cond_4
    iget-object v0, p0, Ldbg;->a:Ldbe;

    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-static {v1}, Ldbe;->f(Ldbe;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-static {v0, v1}, Ldbe;->a(Ldbe;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    :cond_5
    :goto_3
    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->g(Ldbe;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->d(Ldbe;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-static {v1}, Ldbe;->g(Ldbe;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Ldbg;->a:Ldbe;

    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-static {v1}, Ldbe;->f(Ldbe;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-static {v0, v1}, Ldbe;->a(Ldbe;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    :cond_6
    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->h(Ldbe;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->i(Ldbe;)V

    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->j(Ldbe;)V

    :goto_4
    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->l(Ldbe;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->a(Ldbe;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :cond_7
    :try_start_3
    const-string v0, "ConnectionlessGAC"

    const-string v1, "Unexpected availability exception"

    invoke-virtual {p1}, Legv;->d()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Ldbe;->a(Ldbe;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Ldbg;->a:Ldbe;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-static {v0, v1}, Ldbe;->a(Ldbe;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Ldbg;->a:Ldbe;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldbe;->a(Ldbe;Z)Z

    iget-object v0, p0, Ldbg;->a:Ldbe;

    invoke-static {v0}, Ldbe;->k(Ldbe;)Ldce;

    move-result-object v0

    iget-object v1, p0, Ldbg;->a:Ldbe;

    invoke-static {v1}, Ldbe;->h(Ldbe;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldce;->a(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method
