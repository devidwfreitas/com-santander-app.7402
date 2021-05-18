.class public Ldjh;
.super Ldhu;


# instance fields
.field private final f:Ldjb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcpv;Lcpw;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lctn;->a(Landroid/content/Context;)Lctn;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Ldjh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcpv;Lcpw;Ljava/lang/String;Lctn;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcpv;Lcpw;Ljava/lang/String;Lctn;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Ldhu;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcpv;Lcpw;Ljava/lang/String;Lctn;)V

    new-instance v0, Ldjb;

    iget-object v1, p0, Ldjh;->e:Ldjo;

    invoke-direct {v0, p1, v1}, Ldjb;-><init>(Landroid/content/Context;Ldjo;)V

    iput-object v0, p0, Ldjh;->f:Ldjb;

    return-void
.end method


# virtual methods
.method public A()Lcom/google/android/gms/location/LocationAvailability;
    .locals 1

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0}, Ldjb;->b()Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    iget-object v1, p0, Ldjh;->f:Ldjb;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ldjh;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0}, Ldjb;->c()V

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0}, Ldjb;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Ldhu;->a()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(JLandroid/app/PendingIntent;)V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Ldjh;->u()V

    invoke-static {p3}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v0, v2}, Lcsp;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ldjh;->w()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-interface {v0, p1, p2, v1, p3}, Ldiv;->a(JZLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    invoke-virtual {p0}, Ldjh;->u()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ldjh;->w()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-interface {v0, p1}, Ldiv;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Landroid/app/PendingIntent;Ldip;)V
    .locals 1

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0, p1, p2}, Ldjb;->a(Landroid/app/PendingIntent;Ldip;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0, p1}, Ldjb;->a(Landroid/location/Location;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/zzasi;Lddn;Ldip;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzasi;",
            "Lddn",
            "<",
            "Ldtu;",
            ">;",
            "Ldip;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Ldjh;->f:Ldjb;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0, p1, p2, p3}, Ldjb;->a(Lcom/google/android/gms/internal/zzasi;Lddn;Ldip;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Ldao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            "Landroid/app/PendingIntent;",
            "Ldao",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ldjh;->u()V

    const-string v0, "geofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p3, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldji;

    invoke-direct {v1, p3}, Ldji;-><init>(Ldao;)V

    invoke-virtual {p0}, Ldjh;->w()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-interface {v0, p1, p2, v1}, Ldiv;->a(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Ldis;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Ldip;)V
    .locals 1

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0, p1, p2, p3}, Ldjb;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Ldip;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Lddn;Ldip;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lddn",
            "<",
            "Ldtv;",
            ">;",
            "Ldip;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Ldjh;->f:Ldjb;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0, p1, p2, p3}, Ldjb;->a(Lcom/google/android/gms/location/LocationRequest;Lddn;Ldip;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/location/LocationSettingsRequest;Ldao;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            "Ldao",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ldjh;->u()V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "locationSettingsRequest can\'t be null nor empty."

    invoke-static {v0, v3}, Lcsp;->b(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    :goto_1
    const-string v0, "listener can\'t be null."

    invoke-static {v1, v0}, Lcsp;->b(ZLjava/lang/Object;)V

    new-instance v1, Ldjk;

    invoke-direct {v1, p2}, Ldjk;-><init>(Ldao;)V

    invoke-virtual {p0}, Ldjh;->w()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-interface {v0, p1, v1, p3}, Ldiv;->a(Lcom/google/android/gms/location/LocationSettingsRequest;Ldiy;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/location/zzt;Ldao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/zzt;",
            "Ldao",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ldjh;->u()V

    const-string v0, "removeGeofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldjj;

    invoke-direct {v1, p2}, Ldjj;-><init>(Ldao;)V

    invoke-virtual {p0}, Ldjh;->w()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-interface {v0, p1, v1}, Ldiv;->a(Lcom/google/android/gms/location/zzt;Ldis;)V

    return-void
.end method

.method public a(Lddp;Ldip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddp",
            "<",
            "Ldtv;",
            ">;",
            "Ldip;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0, p1, p2}, Ldjb;->a(Lddp;Ldip;)V

    return-void
.end method

.method public a(Ldip;)V
    .locals 1

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0, p1}, Ldjb;->a(Ldip;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0, p1}, Ldjb;->a(Z)V

    return-void
.end method

.method public b(Lddp;Ldip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddp",
            "<",
            "Ldtu;",
            ">;",
            "Ldip;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0, p1, p2}, Ldjb;->b(Lddp;Ldip;)V

    return-void
.end method

.method public k()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Ldjh;->f:Ldjb;

    invoke-virtual {v0}, Ldjb;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
