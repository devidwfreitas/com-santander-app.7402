.class final Lblu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Lblz;->b()V

    .line 73
    invoke-static {p1}, Lblt;->a(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 87
    invoke-static {}, Lblz;->b()V

    .line 88
    invoke-static {p1}, Lblt;->c(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lblz;->b()V

    .line 82
    invoke-static {p1}, Lblt;->b(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lbla;->c()V

    .line 94
    return-void
.end method
