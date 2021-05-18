.class public Lcom/google/android/gms/maps/StreetViewPanoramaView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final a:Ldyc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ldyc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldyc;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ldyc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldyc;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ldyc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldyc;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ldyc;

    invoke-direct {v0, p0, p1, p2}, Ldyc;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    invoke-virtual {v0}, Ldyc;->c()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    invoke-virtual {v0, p1}, Ldyc;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    invoke-virtual {v0}, Ldyc;->a()Lcxa;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcxb;->b(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public a(Ldxl;)V
    .locals 1

    const-string v0, "getStreetViewPanoramaAsync() must be called on the main thread"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    invoke-virtual {v0, p1}, Ldyc;->a(Ldxl;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    invoke-virtual {v0}, Ldyc;->d()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    invoke-virtual {v0, p1}, Ldyc;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    invoke-virtual {v0}, Ldyc;->g()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView;->a:Ldyc;

    invoke-virtual {v0}, Ldyc;->h()V

    return-void
.end method
