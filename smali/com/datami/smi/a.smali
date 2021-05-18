.class public final Lcom/datami/smi/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lcom/datami/smi/b;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/datami/smi/a;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/datami/smi/a;->a:Lcom/datami/smi/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/datami/smi/a;->a:Lcom/datami/smi/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/datami/smi/b;

    invoke-direct {v0, p0, p1}, Lcom/datami/smi/b;-><init>(Lcom/datami/smi/a;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/datami/smi/a;->a:Lcom/datami/smi/b;

    iget-object v0, p0, Lcom/datami/smi/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/datami/smi/a;->a:Lcom/datami/smi/b;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/datami/smi/a;->a:Lcom/datami/smi/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/datami/smi/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/datami/smi/a;->a:Lcom/datami/smi/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/datami/smi/SmiSdk;->appVisibility(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/datami/smi/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
