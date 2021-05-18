.class Ldxd;
.super Ljava/lang/Object;

# interfaces
.implements Ldzp;


# instance fields
.field private final a:Landroid/app/Fragment;

.field private final b:Ldyu;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Ldyu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyu;

    iput-object v0, p0, Ldxd;->b:Ldyu;

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    iput-object v0, p0, Ldxd;->a:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3, v0}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Ldxd;->b:Ldyu;

    invoke-static {p1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v2

    invoke-static {p2}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Ldyu;->a(Lcwx;Lcwx;Landroid/os/Bundle;)Lcwx;

    move-result-object v1

    invoke-static {v0, p3}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcxo;->a(Lcwx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxd;->b:Ldyu;

    invoke-interface {v0}, Ldyu;->i()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "MapOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3, v1}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v2, p0, Ldxd;->b:Ldyu;

    invoke-static {p1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Ldyu;->a(Lcwx;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V

    invoke-static {v1, p3}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Ldxd;->a:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MapOptions"

    const-string v3, "MapOptions"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lean;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v1, p0, Ldxd;->b:Ldyu;

    invoke-interface {v1, v0}, Ldyu;->a(Landroid/os/Bundle;)V

    invoke-static {v0, p1}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Ldxk;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxd;->b:Ldyu;

    new-instance v1, Ldxe;

    invoke-direct {v1, p0, p1}, Ldxe;-><init>(Ldxd;Ldxk;)V

    invoke-interface {v0, v1}, Ldyu;->a(Lecr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxd;->b:Ldyu;

    invoke-interface {v0}, Ldyu;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Ldxd;->b:Ldyu;

    invoke-interface {v1, v0}, Ldyu;->b(Landroid/os/Bundle;)V

    invoke-static {v0, p1}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxd;->b:Ldyu;

    invoke-interface {v0}, Ldyu;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Ldxd;->b:Ldyu;

    invoke-interface {v1, v0}, Ldyu;->c(Landroid/os/Bundle;)V

    invoke-static {v0, p1}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxd;->b:Ldyu;

    invoke-interface {v0}, Ldyu;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxd;->b:Ldyu;

    invoke-interface {v0}, Ldyu;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public f()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxd;->b:Ldyu;

    invoke-interface {v0}, Ldyu;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxd;->b:Ldyu;

    invoke-interface {v0}, Ldyu;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxd;->b:Ldyu;

    invoke-interface {v0}, Ldyu;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
