.class public Ldyg;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private final a:Ldyj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ldyj;

    invoke-direct {v0, p0}, Ldyj;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Ldyg;->a:Ldyj;

    return-void
.end method

.method public static a()Ldyg;
    .locals 1

    new-instance v0, Ldyg;

    invoke-direct {v0}, Ldyg;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Ldyg;
    .locals 3

    new-instance v0, Ldyg;

    invoke-direct {v0}, Ldyg;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "StreetViewPanoramaOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Ldyg;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Ldxl;)V
    .locals 1

    const-string v0, "getStreetViewPanoramaAsync() must be called on the main thread"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v0, p1}, Ldyj;->a(Ldxl;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Ldyg;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-static {v0, p1}, Ldyj;->a(Ldyj;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v0, p1}, Ldyj;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v0, p1, p2, p3}, Ldyj;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v0}, Ldyj;->g()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v0}, Ldyj;->f()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-static {v0, p1}, Ldyj;->a(Ldyj;Landroid/app/Activity;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v1, p1, v0, p3}, Ldyj;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v0}, Ldyj;->h()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v0}, Ldyj;->d()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v0}, Ldyj;->c()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Ldyg;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Ldyg;->a:Ldyj;

    invoke-virtual {v0, p1}, Ldyj;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
