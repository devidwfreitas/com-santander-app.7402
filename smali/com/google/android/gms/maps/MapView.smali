.class public Lcom/google/android/gms/maps/MapView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final a:Ldxi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ldxi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldxi;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ldxi;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Ldxi;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ldxi;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Ldxi;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ldxi;

    invoke-direct {v0, p0, p1, p2}, Ldxi;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapView;->h()V

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/MapView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0}, Ldxi;->c()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0, p1}, Ldxi;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0}, Ldxi;->a()Lcxa;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcxb;->b(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public a(Ldxk;)V
    .locals 1

    const-string v0, "getMapAsync() must be called on the main thread"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0, p1}, Ldxi;->a(Ldxk;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0}, Ldxi;->d()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0, p1}, Ldxi;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0}, Ldxi;->b()V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "onEnterAmbient() must be called on the main thread"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0, p1}, Ldxi;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0}, Ldxi;->e()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0}, Ldxi;->g()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0}, Ldxi;->h()V

    return-void
.end method

.method public final g()V
    .locals 1

    const-string v0, "onExitAmbient() must be called on the main thread"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Ldxi;

    invoke-virtual {v0}, Ldxi;->j()V

    return-void
.end method
