.class public final Ldva;
.super Ljava/lang/Object;


# static fields
.field private static a:Ldyl;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1}, Ldyl;->a()Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(F)Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1, p0}, Ldyl;->a(F)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(FF)Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ldyl;->a(FF)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(FLandroid/graphics/Point;)Lduz;
    .locals 4

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v1, p0, v2, v3}, Ldyl;->a(FII)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/maps/model/CameraPosition;)Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1, p0}, Ldyl;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLng;)Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1, p0}, Ldyl;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLng;F)Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ldyl;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ldyl;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Ldyl;->a(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Ldyl;)V
    .locals 1

    invoke-static {p0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyl;

    sput-object v0, Ldva;->a:Ldyl;

    return-void
.end method

.method public static b()Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1}, Ldyl;->b()Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static b(F)Lduz;
    .locals 2

    :try_start_0
    new-instance v0, Lduz;

    invoke-static {}, Ldva;->c()Ldyl;

    move-result-object v1

    invoke-interface {v1, p0}, Ldyl;->b(F)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Lduz;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method private static c()Ldyl;
    .locals 2

    sget-object v0, Ldva;->a:Ldyl;

    const-string v1, "CameraUpdateFactory is not initialized"

    invoke-static {v0, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyl;

    return-object v0
.end method
