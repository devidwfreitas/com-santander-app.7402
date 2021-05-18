.class public Ldxi;
.super Lcxb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcxb",
        "<",
        "Ldxg;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcxp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcxp",
            "<",
            "Ldxg;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldxk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    invoke-direct {p0}, Lcxb;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldxi;->e:Ljava/util/List;

    iput-object p1, p0, Ldxi;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Ldxi;->c:Landroid/content/Context;

    iput-object p3, p0, Ldxi;->d:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method


# virtual methods
.method protected a(Lcxp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcxp",
            "<",
            "Ldxg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldxi;->a:Lcxp;

    invoke-virtual {p0}, Ldxi;->i()V

    return-void
.end method

.method public a(Ldxk;)V
    .locals 1

    invoke-virtual {p0}, Ldxi;->a()Lcxa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldxi;->a()Lcxa;

    move-result-object v0

    check-cast v0, Ldxg;

    invoke-virtual {v0, p1}, Ldxg;->a(Ldxk;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldxi;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Ldxi;->a()Lcxa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldxi;->a()Lcxa;

    move-result-object v0

    check-cast v0, Ldxg;

    invoke-virtual {v0, p1}, Ldxg;->c(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Ldxi;->a:Lcxp;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldxi;->a()Lcxa;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ldxi;->c:Landroid/content/Context;

    invoke-static {v0}, Ldxj;->a(Landroid/content/Context;)I

    iget-object v0, p0, Ldxi;->c:Landroid/content/Context;

    invoke-static {v0}, Leao;->a(Landroid/content/Context;)Leas;

    move-result-object v0

    iget-object v1, p0, Ldxi;->c:Landroid/content/Context;

    invoke-static {v1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v1

    iget-object v2, p0, Ldxi;->d:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {v0, v1, v2}, Leas;->a(Lcwx;Lcom/google/android/gms/maps/GoogleMapOptions;)Ldyx;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ldxi;->a:Lcxp;

    new-instance v2, Ldxg;

    iget-object v3, p0, Ldxi;->b:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Ldxg;-><init>(Landroid/view/ViewGroup;Ldyx;)V

    invoke-interface {v1, v2}, Lcxp;->a(Lcxa;)V

    iget-object v0, p0, Ldxi;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxk;

    invoke-virtual {p0}, Ldxi;->a()Lcxa;

    move-result-object v1

    check-cast v1, Ldxg;

    invoke-virtual {v1, v0}, Ldxg;->a(Ldxk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcop; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Ldxi;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcop; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Ldxi;->a()Lcxa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldxi;->a()Lcxa;

    move-result-object v0

    check-cast v0, Ldxg;

    invoke-virtual {v0}, Ldxg;->h()V

    :cond_0
    return-void
.end method
