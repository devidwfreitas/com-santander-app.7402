.class Ldxx;
.super Ljava/lang/Object;

# interfaces
.implements Ldzq;


# instance fields
.field private final a:Landroid/app/Fragment;

.field private final b:Ldzg;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Ldzg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldzg;

    iput-object v0, p0, Ldxx;->b:Ldzg;

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    iput-object v0, p0, Ldxx;->a:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3, v0}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Ldxx;->b:Ldzg;

    invoke-static {p1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v2

    invoke-static {p2}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Ldzg;->a(Lcwx;Lcwx;Landroid/os/Bundle;)Lcwx;

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
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3, v0}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Ldxx;->b:Ldzg;

    invoke-static {p1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Ldzg;->a(Lcwx;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Bundle;)V

    invoke-static {v0, p3}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
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

    iget-object v1, p0, Ldxx;->a:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "StreetViewPanoramaOptions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "StreetViewPanoramaOptions"

    const-string v3, "StreetViewPanoramaOptions"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lean;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v1, p0, Ldxx;->b:Ldzg;

    invoke-interface {v1, v0}, Ldzg;->a(Landroid/os/Bundle;)V

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

.method public a(Ldxl;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxx;->b:Ldzg;

    new-instance v1, Ldxy;

    invoke-direct {v1, p0, p1}, Ldxy;-><init>(Ldxx;Ldxl;)V

    invoke-interface {v0, v1}, Ldzg;->a(Leah;)V
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
    iget-object v0, p0, Ldxx;->b:Ldzg;

    invoke-interface {v0}, Ldzg;->b()V
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

    iget-object v1, p0, Ldxx;->b:Ldzg;

    invoke-interface {v1, v0}, Ldzg;->b(Landroid/os/Bundle;)V

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
    iget-object v0, p0, Ldxx;->b:Ldzg;

    invoke-interface {v0}, Ldzg;->c()V
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
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxx;->b:Ldzg;

    invoke-interface {v0}, Ldzg;->d()V
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
    iget-object v0, p0, Ldxx;->b:Ldzg;

    invoke-interface {v0}, Ldzg;->e()V
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
    iget-object v0, p0, Ldxx;->b:Ldzg;

    invoke-interface {v0}, Ldzg;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
