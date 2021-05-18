.class final Lnkn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lnhp;


# direct methods
.method constructor <init>(Lnhp;)V
    .locals 0

    iput-object p1, p0, Lnkn;->a:Lnhp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lnkn;->a:Lnhp;

    new-instance v1, Lnhq;

    invoke-direct {v1, p1}, Lnhq;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lnhp;->a(Lnib;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lnkn;->a:Lnhp;

    new-instance v1, Lnhr;

    invoke-direct {v1, p1}, Lnhr;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lnhp;->a(Lnib;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
