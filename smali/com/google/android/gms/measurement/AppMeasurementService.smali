.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;

# interfaces
.implements Ldoj;


# instance fields
.field private a:Ldog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private b()Ldog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Ldog;

    if-nez v0, :cond_0

    new-instance v0, Ldog;

    invoke-direct {v0, p0}, Ldog;-><init>(Ldoj;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Ldog;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Ldog;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public a(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/AppMeasurementService;->stopSelfResult(I)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ldog;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldog;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ldog;

    move-result-object v0

    invoke-virtual {v0}, Ldog;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ldog;

    move-result-object v0

    invoke-virtual {v0}, Ldog;->b()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ldog;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldog;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ldog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldog;->a(Landroid/content/Intent;II)I

    invoke-static {p1}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ldog;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldog;->b(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
