.class public final Ldvb;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4


# instance fields
.field private final f:Ldyo;

.field private g:Ldyk;


# direct methods
.method protected constructor <init>(Ldyo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyo;

    iput-object v0, p0, Ldvb;->f:Ldyo;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->a()Lcom/google/android/gms/maps/model/CameraPosition;
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

.method public final a(Lcom/google/android/gms/maps/model/CircleOptions;)Ledp;
    .locals 2

    :try_start_0
    new-instance v0, Ledp;

    iget-object v1, p0, Ldvb;->f:Ldyo;

    invoke-interface {v1, p1}, Ldyo;->a(Lcom/google/android/gms/maps/model/CircleOptions;)Leem;

    move-result-object v1

    invoke-direct {v0, v1}, Ledp;-><init>(Leem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Ledq;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Leep;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ledq;

    invoke-direct {v0, v1}, Ledq;-><init>(Leep;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Ledv;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Leey;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ledv;

    invoke-direct {v0, v1}, Ledv;-><init>(Leey;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/model/PolygonOptions;)Ledw;
    .locals 2

    :try_start_0
    new-instance v0, Ledw;

    iget-object v1, p0, Ldvb;->f:Ldyo;

    invoke-interface {v1, p1}, Ldyo;->a(Lcom/google/android/gms/maps/model/PolygonOptions;)Lefb;

    move-result-object v1

    invoke-direct {v0, v1}, Ledw;-><init>(Lefb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/model/PolylineOptions;)Ledx;
    .locals 2

    :try_start_0
    new-instance v0, Ledx;

    iget-object v1, p0, Ldvb;->f:Ldyo;

    invoke-interface {v1, p1}, Ldyo;->a(Lcom/google/android/gms/maps/model/PolylineOptions;)Leeg;

    move-result-object v1

    invoke-direct {v0, v1}, Ledx;-><init>(Leeg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Leeb;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lefe;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Leeb;

    invoke-direct {v0, v1}, Leeb;-><init>(Lefe;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(F)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(IIII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1, p2, p3, p4}, Ldyo;->a(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lduz;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-virtual {p1}, Lduz;->a()Lcwx;

    move-result-object v1

    invoke-interface {v0, v1}, Ldyo;->a(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lduz;ILdwb;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Ldvb;->f:Ldyo;

    invoke-virtual {p1}, Lduz;->a()Lcwx;

    move-result-object v2

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, p2, v0}, Ldyo;->a(Lcwx;ILeap;)V

    return-void

    :cond_0
    new-instance v0, Ldwz;

    invoke-direct {v0, p3}, Ldwz;-><init>(Ldwb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lduz;Ldwb;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Ldvb;->f:Ldyo;

    invoke-virtual {p1}, Lduz;->a()Lcwx;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Ldyo;->a(Lcwx;Leap;)V

    return-void

    :cond_0
    new-instance v0, Ldwz;

    invoke-direct {v0, p2}, Ldwz;-><init>(Ldwb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwc;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Leav;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvy;

    invoke-direct {v1, p0, p1}, Ldvy;-><init>(Ldvb;Ldwc;)V

    invoke-interface {v0, v1}, Ldyo;->a(Leav;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwd;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Leay;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvm;

    invoke-direct {v1, p0, p1}, Ldvm;-><init>(Ldvb;Ldwd;)V

    invoke-interface {v0, v1}, Ldyo;->a(Leay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwe;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lebb;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvr;

    invoke-direct {v1, p0, p1}, Ldvr;-><init>(Ldvb;Ldwe;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lebb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwf;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lebe;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvq;

    invoke-direct {v1, p0, p1}, Ldvq;-><init>(Ldvb;Ldwf;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lebe;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwg;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lebh;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvp;

    invoke-direct {v1, p0, p1}, Ldvp;-><init>(Ldvb;Ldwg;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lebh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwh;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lebk;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvn;

    invoke-direct {v1, p0, p1}, Ldvn;-><init>(Ldvb;Ldwh;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lebk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwi;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lebn;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvh;

    invoke-direct {v1, p0, p1}, Ldvh;-><init>(Ldvb;Ldwi;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lebn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwj;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lebq;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldve;

    invoke-direct {v1, p0, p1}, Ldve;-><init>(Ldvb;Ldwj;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lebq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwk;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lebt;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvc;

    invoke-direct {v1, p0, p1}, Ldvc;-><init>(Ldvb;Ldwk;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lebt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwl;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lebw;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvv;

    invoke-direct {v1, p0, p1}, Ldvv;-><init>(Ldvb;Ldwl;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lebw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwm;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lebz;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvx;

    invoke-direct {v1, p0, p1}, Ldvx;-><init>(Ldvb;Ldwm;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lebz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwn;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lecc;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvw;

    invoke-direct {v1, p0, p1}, Ldvw;-><init>(Ldvb;Ldwn;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lecc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwo;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Leci;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvs;

    invoke-direct {v1, p0, p1}, Ldvs;-><init>(Ldvb;Ldwo;)V

    invoke-interface {v0, v1}, Ldyo;->a(Leci;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Ldwp;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lecl;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvd;

    invoke-direct {v1, p0, p1}, Ldvd;-><init>(Ldvb;Ldwp;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lecl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwq;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Leco;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvt;

    invoke-direct {v1, p0, p1}, Ldvt;-><init>(Ldvb;Ldwq;)V

    invoke-interface {v0, v1}, Ldyo;->a(Leco;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwr;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lecu;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvo;

    invoke-direct {v1, p0, p1}, Ldvo;-><init>(Ldvb;Ldwr;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lecu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldws;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Lecx;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvu;

    invoke-direct {v1, p0, p1}, Ldvu;-><init>(Ldvb;Ldws;)V

    invoke-interface {v0, v1}, Ldyo;->a(Lecx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwt;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Leda;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldwa;

    invoke-direct {v1, p0, p1}, Ldwa;-><init>(Ldvb;Ldwt;)V

    invoke-interface {v0, v1}, Ldyo;->a(Leda;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwu;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Ledd;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvz;

    invoke-direct {v1, p0, p1}, Ldvz;-><init>(Ldvb;Ldwu;)V

    invoke-interface {v0, v1}, Ldyo;->a(Ledd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwv;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Ledg;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvl;

    invoke-direct {v1, p0, p1}, Ldvl;-><init>(Ldvb;Ldwv;)V

    invoke-interface {v0, v1}, Ldyo;->a(Ledg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldww;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Ledj;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvi;

    invoke-direct {v1, p0, p1}, Ldvi;-><init>(Ldvb;Ldww;)V

    invoke-interface {v0, v1}, Ldyo;->a(Ledj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwx;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Ldzs;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvj;

    invoke-direct {v1, p0, p1}, Ldvj;-><init>(Ldvb;Ldwx;)V

    invoke-interface {v0, v1}, Ldyo;->a(Ldzs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldwy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldvb;->a(Ldwy;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final a(Ldwy;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v0

    :goto_0
    check-cast v0, Lcxo;

    :try_start_0
    iget-object v1, p0, Ldvb;->f:Ldyo;

    new-instance v2, Ldvk;

    invoke-direct {v2, p0, p1}, Ldvk;-><init>(Ldvb;Ldwy;)V

    invoke-interface {v1, v2, v0}, Ldyo;->a(Leak;Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ldxa;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldyo;->a(Ldyr;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    new-instance v1, Ldvf;

    invoke-direct {v1, p0, p1}, Ldvf;-><init>(Ldvb;Ldxa;)V

    invoke-interface {v0, v1}, Ldyo;->a(Ldyr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->a(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z
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

.method public final b()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->b()F
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

.method public b(F)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Lduz;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-virtual {p1}, Lduz;->a()Lcwx;

    move-result-object v1

    invoke-interface {v0, v1}, Ldyo;->b(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->b(Z)Z
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

.method public final c()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->c()F
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

.method public final c(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->d(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0, p1}, Ldyo;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public f()Ledr;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->n()Lees;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ledr;

    invoke-direct {v0, v1}, Ledr;-><init>(Lees;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final g()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->f()I
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

.method public final h()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->g()Z
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

.method public final i()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->h()Z
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

.method public final j()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->m()Z
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

.method public final k()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->i()Z
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

.method public final l()Landroid/location/Location;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->j()Landroid/location/Location;
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

.method public final m()Ldyk;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->g:Ldyk;

    if-nez v0, :cond_0

    new-instance v0, Ldyk;

    iget-object v1, p0, Ldvb;->f:Ldyo;

    invoke-interface {v1}, Ldyo;->k()Ldzm;

    move-result-object v1

    invoke-direct {v0, v1}, Ldyk;-><init>(Ldzm;)V

    iput-object v0, p0, Ldvb;->g:Ldyk;

    :cond_0
    iget-object v0, p0, Ldvb;->g:Ldyk;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final n()Ldxm;
    .locals 2

    :try_start_0
    new-instance v0, Ldxm;

    iget-object v1, p0, Ldvb;->f:Ldyo;

    invoke-interface {v1}, Ldyo;->l()Ldza;

    move-result-object v1

    invoke-direct {v0, v1}, Ldxm;-><init>(Ldza;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public o()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldvb;->f:Ldyo;

    invoke-interface {v0}, Ldyo;->u()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
