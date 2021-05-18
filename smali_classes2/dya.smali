.class public Ldya;
.super Ljava/lang/Object;

# interfaces
.implements Ldzq;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Ldzj;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ldzj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldzj;

    iput-object v0, p0, Ldya;->b:Ldzj;

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ldya;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onCreateView not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onInflate not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Ldya;->b:Ldzj;

    invoke-interface {v1, v0}, Ldzj;->a(Landroid/os/Bundle;)V

    invoke-static {v0, p1}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v0, p0, Ldya;->b:Ldzj;

    invoke-interface {v0}, Ldzj;->f()Lcwx;

    move-result-object v0

    invoke-static {v0}, Lcxo;->a(Lcwx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Ldya;->c:Landroid/view/View;

    iget-object v0, p0, Ldya;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Ldya;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Ldya;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
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
    iget-object v0, p0, Ldya;->b:Ldzj;

    new-instance v1, Ldyb;

    invoke-direct {v1, p0, p1}, Ldyb;-><init>(Ldya;Ldxl;)V

    invoke-interface {v0, v1}, Ldzj;->a(Leah;)V
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
    iget-object v0, p0, Ldya;->b:Ldzj;

    invoke-interface {v0}, Ldzj;->b()V
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

    iget-object v1, p0, Ldya;->b:Ldzj;

    invoke-interface {v1, v0}, Ldzj;->b(Landroid/os/Bundle;)V

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
    iget-object v0, p0, Ldya;->b:Ldzj;

    invoke-interface {v0}, Ldzj;->c()V
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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onDestroyView not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldya;->b:Ldzj;

    invoke-interface {v0}, Ldzj;->d()V
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
    iget-object v0, p0, Ldya;->b:Ldzj;

    invoke-interface {v0}, Ldzj;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
