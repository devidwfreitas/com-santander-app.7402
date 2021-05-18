.class Ldbb;
.super Ljava/lang/Object;

# interfaces
.implements Lddh;


# instance fields
.field final synthetic a:Ldaz;


# direct methods
.method private constructor <init>(Ldaz;)V
    .locals 0

    iput-object p1, p0, Ldbb;->a:Ldaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldaz;Ldba;)V
    .locals 0

    invoke-direct {p0, p1}, Ldbb;-><init>(Ldaz;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->c(Ldaz;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->d(Ldaz;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->d(Ldaz;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ldbb;->a:Ldaz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldaz;->a(Ldaz;Z)Z

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0, p1, p2}, Ldaz;->a(Ldaz;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Ldbb;->a:Ldaz;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldaz;->a(Ldaz;Z)Z

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->e(Ldaz;)Ldcm;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldcm;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbb;->a:Ldaz;

    invoke-static {v1}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0, p1}, Ldaz;->a(Ldaz;Landroid/os/Bundle;)V

    iget-object v0, p0, Ldbb;->a:Ldaz;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->u:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Ldaz;->a(Ldaz;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->b(Ldaz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbb;->a:Ldaz;

    invoke-static {v1}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0, p1}, Ldaz;->a(Ldaz;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->b(Ldaz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldbb;->a:Ldaz;

    invoke-static {v0}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldbb;->a:Ldaz;

    invoke-static {v1}, Ldaz;->a(Ldaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
