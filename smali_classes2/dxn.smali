.class public Ldxn;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ldzd;


# direct methods
.method protected constructor <init>(Ldzd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldzd;

    iput-object v0, p0, Ldxn;->a:Ldzd;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Landroid/graphics/Point;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0, p1}, Ldzd;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcwx;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcxo;->a(Lcwx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-static {p1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v1

    invoke-interface {v0, v1}, Ldzd;->a(Lcwx;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
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

.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0, p1}, Ldzd;->a(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0, p1, p2}, Ldzd;->a(Lcom/google/android/gms/maps/model/LatLng;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0, p1, p2, p3}, Ldzd;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldxs;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldzd;->a(Ldzv;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    new-instance v1, Ldxp;

    invoke-direct {v1, p0, p1}, Ldxp;-><init>(Ldxn;Ldxs;)V

    invoke-interface {v0, v1}, Ldzd;->a(Ldzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldxt;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldzd;->a(Ldzy;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    new-instance v1, Ldxo;

    invoke-direct {v1, p0, p1}, Ldxo;-><init>(Ldxn;Ldxt;)V

    invoke-interface {v0, v1}, Ldzd;->a(Ldzy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldxu;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldzd;->a(Leab;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    new-instance v1, Ldxq;

    invoke-direct {v1, p0, p1}, Ldxq;-><init>(Ldxn;Ldxu;)V

    invoke-interface {v0, v1}, Ldzd;->a(Leab;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldxv;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldzd;->a(Leae;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    new-instance v1, Ldxr;

    invoke-direct {v1, p0, p1}, Ldxr;-><init>(Ldxn;Ldxv;)V

    invoke-interface {v0, v1}, Ldzd;->a(Leae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0, p1}, Ldzd;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0, p1}, Ldzd;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0}, Ldzd;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0, p1}, Ldzd;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0}, Ldzd;->b()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public c(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0, p1}, Ldzd;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public c()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0}, Ldzd;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public d(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0, p1}, Ldzd;->d(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public d()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0}, Ldzd;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public e()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0}, Ldzd;->e()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
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

.method public f()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxn;->a:Ldzd;

    invoke-interface {v0}, Ldzd;->f()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
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
