.class public Ldkv;
.super Lctb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lctb",
        "<",
        "Ldkp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lctd;Lcte;)V
    .locals 7

    const/16 v3, 0x5d

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lctb;-><init>(Landroid/content/Context;Landroid/os/Looper;ILctd;Lcte;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Ldkv;->b(Landroid/os/IBinder;)Ldkp;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/IBinder;)Ldkp;
    .locals 1

    invoke-static {p1}, Ldkq;->a(Landroid/os/IBinder;)Ldkp;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method
