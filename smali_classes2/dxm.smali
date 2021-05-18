.class public final Ldxm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ldza;


# direct methods
.method constructor <init>(Ldza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxm;->a:Ldza;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxm;->a:Ldza;

    invoke-interface {v0, p1}, Ldza;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcwx;

    move-result-object v0

    invoke-static {v0}, Lcxo;->a(Lcwx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxm;->a:Ldza;

    invoke-static {p1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v1

    invoke-interface {v0, v1}, Ldza;->a(Lcwx;)Lcom/google/android/gms/maps/model/LatLng;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a()Lcom/google/android/gms/maps/model/VisibleRegion;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxm;->a:Ldza;

    invoke-interface {v0}, Ldza;->a()Lcom/google/android/gms/maps/model/VisibleRegion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
