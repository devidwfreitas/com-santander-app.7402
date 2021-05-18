.class Ldcb;
.super Ljava/lang/Object;

# interfaces
.implements Lcpv;
.implements Lcpw;


# instance fields
.field final synthetic c:Ldbs;


# direct methods
.method private constructor <init>(Ldbs;)V
    .locals 0

    iput-object p1, p0, Ldcb;->c:Ldbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldbs;Ldbt;)V
    .locals 0

    invoke-direct {p0, p1}, Ldcb;-><init>(Ldbs;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Ldcb;->c:Ldbs;

    invoke-static {v0}, Ldbs;->f(Ldbs;)Ldpx;

    move-result-object v0

    new-instance v1, Ldbz;

    iget-object v2, p0, Ldcb;->c:Ldbs;

    invoke-direct {v1, v2}, Ldbz;-><init>(Ldbs;)V

    invoke-interface {v0, v1}, Ldpx;->a(Ldqe;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldcb;->c:Ldbs;

    invoke-static {v0}, Ldbs;->c(Ldbs;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldcb;->c:Ldbs;

    invoke-static {v0, p1}, Ldbs;->b(Ldbs;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcb;->c:Ldbs;

    invoke-static {v0}, Ldbs;->i(Ldbs;)V

    iget-object v0, p0, Ldcb;->c:Ldbs;

    invoke-static {v0}, Ldbs;->j(Ldbs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Ldcb;->c:Ldbs;

    invoke-static {v0}, Ldbs;->c(Ldbs;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ldcb;->c:Ldbs;

    invoke-static {v0, p1}, Ldbs;->a(Ldbs;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldcb;->c:Ldbs;

    invoke-static {v1}, Ldbs;->c(Ldbs;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
