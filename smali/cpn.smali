.class Lcpn;
.super Ljava/lang/Object;

# interfaces
.implements Lcpz;


# instance fields
.field final synthetic a:Lcpm;


# direct methods
.method constructor <init>(Lcpm;)V
    .locals 0

    iput-object p1, p0, Lcpn;->a:Lcpm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    iget-object v0, p0, Lcpn;->a:Lcpm;

    invoke-static {v0}, Lcpm;->a(Lcpm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcpn;->a:Lcpm;

    invoke-virtual {v0}, Lcpm;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcpn;->a:Lcpm;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcpm;->a(Lcpm;Z)Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcpn;->a:Lcpm;

    invoke-static {v0}, Lcpm;->b(Lcpm;)I

    iget-object v0, p0, Lcpn;->a:Lcpm;

    invoke-static {v0}, Lcpm;->c(Lcpm;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcpn;->a:Lcpm;

    invoke-static {v0}, Lcpm;->d(Lcpm;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcpn;->a:Lcpm;

    invoke-static {v0}, Lcpm;->e(Lcpm;)V

    :cond_2
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcpn;->a:Lcpm;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcpm;->b(Lcpm;Z)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcpn;->a:Lcpm;

    invoke-static {v0}, Lcpm;->f(Lcpm;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    :goto_3
    iget-object v2, p0, Lcpn;->a:Lcpm;

    new-instance v3, Lcpp;

    iget-object v4, p0, Lcpn;->a:Lcpm;

    invoke-static {v4}, Lcpm;->g(Lcpm;)[Lcpy;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcpp;-><init>(Lcom/google/android/gms/common/api/Status;[Lcpy;)V

    invoke-virtual {v2, v3}, Lcpm;->a(Lcqg;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
