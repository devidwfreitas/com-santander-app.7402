.class public Ldjb;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ldjo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldjo",
            "<",
            "Ldiv;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Landroid/content/ContentProviderClient;

.field private d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lddp",
            "<",
            "Ldtv;",
            ">;",
            "Ldjf;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lddp",
            "<",
            "Ldtu;",
            ">;",
            "Ldjc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldjo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldjo",
            "<",
            "Ldiv;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldjb;->c:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjb;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjb;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjb;->f:Ljava/util/Map;

    iput-object p1, p0, Ldjb;->b:Landroid/content/Context;

    iput-object p2, p0, Ldjb;->a:Ldjo;

    return-void
.end method

.method private a(Lddn;)Ldjf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddn",
            "<",
            "Ldtv;",
            ">;)",
            "Ldjf;"
        }
    .end annotation

    iget-object v1, p0, Ldjb;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldjb;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lddn;->c()Lddp;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjf;

    if-nez v0, :cond_0

    new-instance v0, Ldjf;

    invoke-direct {v0, p1}, Ldjf;-><init>(Lddn;)V

    :cond_0
    iget-object v2, p0, Ldjb;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lddn;->c()Lddp;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Lddn;)Ldjc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddn",
            "<",
            "Ldtu;",
            ">;)",
            "Ldjc;"
        }
    .end annotation

    iget-object v1, p0, Ldjb;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ldjb;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lddn;->c()Lddp;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjc;

    if-nez v0, :cond_0

    new-instance v0, Ldjc;

    invoke-direct {v0, p1}, Ldjc;-><init>(Lddn;)V

    :cond_0
    iget-object v2, p0, Ldjb;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lddn;->c()Lddp;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    :try_start_0
    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    iget-object v1, p0, Ldjb;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldiv;->b(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/app/PendingIntent;Ldip;)V
    .locals 2

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzask;->a(Landroid/app/PendingIntent;Ldip;)Lcom/google/android/gms/internal/zzask;

    move-result-object v1

    invoke-interface {v0, v1}, Ldiv;->a(Lcom/google/android/gms/internal/zzask;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-interface {v0, p1}, Ldiv;->a(Landroid/location/Location;)V

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

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    invoke-direct {p0, p2}, Ldjb;->b(Lddn;)Ldjc;

    move-result-object v1

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-static {p1, v1, p3}, Lcom/google/android/gms/internal/zzask;->a(Lcom/google/android/gms/internal/zzasi;Ldul;Ldip;)Lcom/google/android/gms/internal/zzask;

    move-result-object v1

    invoke-interface {v0, v1}, Ldiv;->a(Lcom/google/android/gms/internal/zzask;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Ldip;)V
    .locals 2

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzasi;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzasi;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/google/android/gms/internal/zzask;->a(Lcom/google/android/gms/internal/zzasi;Landroid/app/PendingIntent;Ldip;)Lcom/google/android/gms/internal/zzask;

    move-result-object v1

    invoke-interface {v0, v1}, Ldiv;->a(Lcom/google/android/gms/internal/zzask;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Lddn;Ldip;)V
    .locals 3
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

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    invoke-direct {p0, p2}, Ldjb;->a(Lddn;)Ldjf;

    move-result-object v1

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzasi;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzasi;

    move-result-object v2

    invoke-static {v2, v1, p3}, Lcom/google/android/gms/internal/zzask;->a(Lcom/google/android/gms/internal/zzasi;Lduo;Ldip;)Lcom/google/android/gms/internal/zzask;

    move-result-object v1

    invoke-interface {v0, v1}, Ldiv;->a(Lcom/google/android/gms/internal/zzask;)V

    return-void
.end method

.method public a(Lddp;Ldip;)V
    .locals 3
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

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ldjb;->e:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Ldjb;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldjf;->a()V

    iget-object v1, p0, Ldjb;->a:Ldjo;

    invoke-interface {v1}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Ldiv;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzask;->a(Lduo;Ldip;)Lcom/google/android/gms/internal/zzask;

    move-result-object v0

    invoke-interface {v1, v0}, Ldiv;->a(Lcom/google/android/gms/internal/zzask;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ldip;)V
    .locals 1

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-interface {v0, p1}, Ldiv;->a(Ldip;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    invoke-interface {v0, p1}, Ldiv;->a(Z)V

    iput-boolean p1, p0, Ldjb;->d:Z

    return-void
.end method

.method public b()Lcom/google/android/gms/location/LocationAvailability;
    .locals 2

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    :try_start_0
    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    iget-object v1, p0, Ldjb;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldiv;->c(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lddp;Ldip;)V
    .locals 3
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

    iget-object v0, p0, Ldjb;->a:Ldjo;

    invoke-interface {v0}, Ldjo;->a()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ldjb;->f:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Ldjb;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldjc;->a()V

    iget-object v1, p0, Ldjb;->a:Ldjo;

    invoke-interface {v1}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Ldiv;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzask;->a(Ldul;Ldip;)Lcom/google/android/gms/internal/zzask;

    move-result-object v0

    invoke-interface {v1, v0}, Ldiv;->a(Lcom/google/android/gms/internal/zzask;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Ldjb;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Ldjb;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldjb;->a:Ldjo;

    invoke-interface {v1}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Ldiv;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzask;->a(Lduo;Ldip;)Lcom/google/android/gms/internal/zzask;

    move-result-object v0

    invoke-interface {v1, v0}, Ldiv;->a(Lcom/google/android/gms/internal/zzask;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Ldjb;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Ldjb;->f:Ljava/util/Map;

    monitor-enter v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Ldjb;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjc;

    if-eqz v0, :cond_2

    iget-object v1, p0, Ldjb;->a:Ldjo;

    invoke-interface {v1}, Ldjo;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Ldiv;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzask;->a(Ldul;Ldip;)Lcom/google/android/gms/internal/zzask;

    move-result-object v0

    invoke-interface {v1, v0}, Ldiv;->a(Lcom/google/android/gms/internal/zzask;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :try_start_7
    iget-object v0, p0, Ldjb;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Ldjb;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ldjb;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
