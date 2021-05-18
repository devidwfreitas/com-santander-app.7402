.class public Ldob;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lctd;
.implements Lcte;


# instance fields
.field final synthetic a:Ldno;

.field private volatile b:Z

.field private volatile c:Ldkv;


# direct methods
.method protected constructor <init>(Ldno;)V
    .locals 0

    iput-object p1, p0, Ldob;->a:Ldno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ldob;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldob;->b:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->e()V

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->n()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ldob;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Ldob;->c:Ldkv;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v1, Ldkv;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Ldkv;-><init>(Landroid/content/Context;Landroid/os/Looper;Lctd;Lcte;)V

    iput-object v1, p0, Ldob;->c:Ldkv;

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldob;->b:Z

    iget-object v0, p0, Ldob;->c:Ldkv;

    invoke-virtual {v0}, Ldkv;->n()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Service connection suspended"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->t()Ldlq;

    move-result-object v0

    new-instance v1, Ldof;

    invoke-direct {v1, p0}, Ldof;-><init>(Ldob;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->e()V

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcvf;->a()Lcvf;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ldob;->b:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->D()Ldky;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Ldob;->b:Z

    iget-object v2, p0, Ldob;->a:Ldno;

    invoke-static {v2}, Ldno;->a(Ldno;)Ldob;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcvf;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onConnected"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldob;->c:Ldkv;

    invoke-virtual {v0}, Ldkv;->w()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldkp;

    const/4 v1, 0x0

    iput-object v1, p0, Ldob;->c:Ldkv;

    iget-object v1, p0, Ldob;->a:Ldno;

    invoke-virtual {v1}, Ldno;->t()Ldlq;

    move-result-object v1

    new-instance v2, Ldoe;

    invoke-direct {v2, p0, v0}, Ldoe;-><init>(Ldob;Ldkp;)V

    invoke-virtual {v1, v2}, Ldlq;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldob;->c:Ldkv;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldob;->b:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldob;->a:Ldno;

    iget-object v0, v0, Ldno;->n:Ldlv;

    invoke-virtual {v0}, Ldlv;->g()Ldkw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ldob;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldob;->c:Ldkv;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ldob;->b:Z

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->x()Ldky;

    move-result-object v0

    const-string v1, "Service connected with null binder"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Ldkq;->a(Landroid/os/IBinder;)Ldkp;

    move-result-object v0

    iget-object v1, p0, Ldob;->a:Ldno;

    invoke-virtual {v1}, Ldno;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->D()Ldky;

    move-result-object v1

    const-string v2, "Bound to IMeasurementService interface"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ldob;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcvf;->a()Lcvf;

    move-result-object v0

    iget-object v1, p0, Ldob;->a:Ldno;

    invoke-virtual {v1}, Ldno;->n()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldob;->a:Ldno;

    invoke-static {v2}, Ldno;->a(Ldno;)Ldob;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcvf;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :try_start_5
    iget-object v2, p0, Ldob;->a:Ldno;

    invoke-virtual {v2}, Ldno;->u()Ldkw;

    move-result-object v2

    invoke-virtual {v2}, Ldkw;->x()Ldky;

    move-result-object v2

    const-string v3, "Got binder with a wrong descriptor"

    invoke-virtual {v2, v3, v1}, Ldky;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_6
    iget-object v1, p0, Ldob;->a:Ldno;

    invoke-virtual {v1}, Ldno;->u()Ldkw;

    move-result-object v1

    invoke-virtual {v1}, Ldkw;->x()Ldky;

    move-result-object v1

    const-string v2, "Service connect failed to get IMeasurementService"

    invoke-virtual {v1, v2}, Ldky;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ldob;->a:Ldno;

    invoke-virtual {v1}, Ldno;->t()Ldlq;

    move-result-object v1

    new-instance v2, Ldoc;

    invoke-direct {v2, p0, v0}, Ldoc;-><init>(Ldob;Ldkp;)V

    invoke-virtual {v1, v2}, Ldlq;->a(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->C()Ldky;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ldob;->a:Ldno;

    invoke-virtual {v0}, Ldno;->t()Ldlq;

    move-result-object v0

    new-instance v1, Ldod;

    invoke-direct {v1, p0, p1}, Ldod;-><init>(Ldob;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Ldlq;->a(Ljava/lang/Runnable;)V

    return-void
.end method
