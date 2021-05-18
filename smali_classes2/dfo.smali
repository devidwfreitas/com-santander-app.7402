.class public Ldfo;
.super Lctv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lctv",
        "<",
        "Ldfs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lctn;Lcpv;Lcpw;)V
    .locals 7

    const/16 v3, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lctv;-><init>(Landroid/content/Context;Landroid/os/Looper;ILctn;Lcpv;Lcpw;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Ldfo;->b(Landroid/os/IBinder;)Ldfs;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/IBinder;)Ldfs;
    .locals 1

    invoke-static {p1}, Ldft;->a(Landroid/os/IBinder;)Ldfs;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.service.START"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    return-object v0
.end method
