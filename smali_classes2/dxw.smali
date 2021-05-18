.class public Ldxw;
.super Lcom/ca/android/app/CaMDOFragment;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final a:Ldxz;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ca/android/app/CaMDOFragment;-><init>()V

    new-instance v0, Ldxz;

    invoke-direct {v0, p0}, Ldxz;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Ldxw;->a:Ldxz;

    return-void
.end method

.method public static a()Ldxw;
    .locals 1

    new-instance v0, Ldxw;

    invoke-direct {v0}, Ldxw;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Ldxw;
    .locals 3

    new-instance v0, Ldxw;

    invoke-direct {v0}, Ldxw;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "StreetViewPanoramaOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Ldxw;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Ldxl;)V
    .locals 1

    const-string v0, "getStreetViewPanoramaAsync() must be called on the main thread"

    invoke-static {v0}, Lcsp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v0, p1}, Ldxz;->a(Ldxl;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Ldxw;

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

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-static {v0, p1}, Ldxz;->a(Ldxz;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v0, p1}, Ldxz;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v0, p1, p2, p3}, Ldxz;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v0}, Ldxz;->g()V

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v0}, Ldxz;->f()V

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/ca/android/app/CaMDOFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-static {v0, p1}, Ldxz;->a(Ldxz;Landroid/app/Activity;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v1, p1, v0, p3}, Ldxz;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v0}, Ldxz;->h()V

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v0}, Ldxz;->d()V

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ca/android/app/CaMDOFragment;->onResume()V

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v0}, Ldxz;->c()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Ldxw;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Ldxw;->a:Ldxz;

    invoke-virtual {v0, p1}, Ldxz;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ca/android/app/CaMDOFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
