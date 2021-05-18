.class public Ldxc;
.super Lcom/ca/android/app/CaMDOFragment;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final a:Ldxf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ca/android/app/CaMDOFragment;-><init>()V

    new-instance v0, Ldxf;

    invoke-direct {v0, p0}, Ldxf;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Ldxc;->a:Ldxf;

    return-void
.end method

.method public static a()Ldxc;
    .locals 1

    new-instance v0, Ldxc;

    invoke-direct {v0}, Ldxc;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/maps/GoogleMapOptions;)Ldxc;
    .locals 3

    new-instance v0, Ldxc;

    invoke-direct {v0}, Ldxc;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Ldxc;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "onEnterAmbient must be called on the main thread."

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0, p1}, Ldxf;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ldxk;)V
    .locals 1

    const-string v0, "getMapAsync must be called on the main thread."

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0, p1}, Ldxf;->a(Ldxk;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const-string v0, "onExitAmbient must be called on the main thread."

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0}, Ldxf;->j()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Ldxc;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOFragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-static {v0, p1}, Ldxf;->a(Ldxf;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0, p1}, Ldxf;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0, p1, p2, p3}, Ldxf;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0}, Ldxf;->g()V

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0}, Ldxf;->f()V

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/ca/android/app/CaMDOFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-static {v0, p1}, Ldxf;->a(Ldxf;Landroid/app/Activity;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0, p1, v1, p3}, Ldxf;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0}, Ldxf;->h()V

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0}, Ldxf;->d()V

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onResume()V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0}, Ldxf;->c()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Ldxc;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0, p1}, Ldxf;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onStart()V

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0}, Ldxf;->b()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Ldxc;->a:Ldxf;

    invoke-virtual {v0}, Ldxf;->e()V

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onStop()V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
