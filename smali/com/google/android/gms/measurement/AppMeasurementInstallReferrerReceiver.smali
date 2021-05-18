.class public final Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Ldlo;


# instance fields
.field private a:Ldlm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()Ldlm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a:Ldlm;

    if-nez v0, :cond_0

    new-instance v0, Ldlm;

    invoke-direct {v0, p0}, Ldlm;-><init>(Ldlo;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a:Ldlm;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a:Ldlm;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a()Ldlm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldlm;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
