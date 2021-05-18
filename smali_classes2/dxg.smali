.class public Ldxg;
.super Ljava/lang/Object;

# interfaces
.implements Ldzp;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Ldyx;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ldyx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyx;

    iput-object v0, p0, Ldxg;->b:Ldyx;

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ldxg;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onCreateView not allowed on MapViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxg;->b:Ldyx;

    invoke-interface {v0}, Ldyx;->h()V
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
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onInflate not allowed on MapViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Ldxg;->b:Ldyx;

    invoke-interface {v1, v0}, Ldyx;->a(Landroid/os/Bundle;)V

    invoke-static {v0, p1}, Lean;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v0, p0, Ldxg;->b:Ldyx;

    invoke-interface {v0}, Ldyx;->f()Lcwx;

    move-result-object v0

    invoke-static {v0}, Lcxo;->a(Lcwx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Ldxg;->c:Landroid/view/View;

    iget-object v0, p0, Ldxg;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Ldxg;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Ldxg;->c:Landroid/view/View;

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

.method public a(Ldxk;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxg;->b:Ldyx;

    new-instance v1, Ldxh;

    invoke-direct {v1, p0, p1}, Ldxh;-><init>(Ldxg;Ldxk;)V

    invoke-interface {v0, v1}, Ldyx;->a(Lecr;)V
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
    iget-object v0, p0, Ldxg;->b:Ldyx;

    invoke-interface {v0}, Ldyx;->b()V
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

    iget-object v1, p0, Ldxg;->b:Ldyx;

    invoke-interface {v1, v0}, Ldyx;->b(Landroid/os/Bundle;)V

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
    iget-object v0, p0, Ldxg;->b:Ldyx;

    invoke-interface {v0}, Ldyx;->c()V
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

    iget-object v1, p0, Ldxg;->b:Ldyx;

    invoke-interface {v1, v0}, Ldyx;->c(Landroid/os/Bundle;)V

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
    iget-object v0, p0, Ldxg;->b:Ldyx;

    invoke-interface {v0}, Ldyx;->i()V
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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onDestroyView not allowed on MapViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldxg;->b:Ldyx;

    invoke-interface {v0}, Ldyx;->d()V
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
    iget-object v0, p0, Ldxg;->b:Ldyx;

    invoke-interface {v0}, Ldyx;->e()V
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
    iget-object v0, p0, Ldxg;->b:Ldyx;

    invoke-interface {v0}, Ldyx;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
