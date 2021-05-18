.class public final Ledn;
.super Ljava/lang/Object;


# static fields
.field public static final a:F = 0.0f

.field public static final b:F = 30.0f

.field public static final c:F = 60.0f

.field public static final d:F = 120.0f

.field public static final e:F = 180.0f

.field public static final f:F = 210.0f

.field public static final g:F = 240.0f

.field public static final h:F = 270.0f

.field public static final i:F = 300.0f

.field public static final j:F = 330.0f

.field private static k:Leej;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ledm;
    .locals 2

    :try_start_0
    new-instance v0, Ledm;

    invoke-static {}, Ledn;->b()Leej;

    move-result-object v1

    invoke-interface {v1}, Leej;->a()Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Ledm;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(F)Ledm;
    .locals 2

    :try_start_0
    new-instance v0, Ledm;

    invoke-static {}, Ledn;->b()Leej;

    move-result-object v1

    invoke-interface {v1, p0}, Leej;->a(F)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Ledm;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(I)Ledm;
    .locals 2

    :try_start_0
    new-instance v0, Ledm;

    invoke-static {}, Ledn;->b()Leej;

    move-result-object v1

    invoke-interface {v1, p0}, Leej;->a(I)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Ledm;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Landroid/graphics/Bitmap;)Ledm;
    .locals 2

    :try_start_0
    new-instance v0, Ledm;

    invoke-static {}, Ledn;->b()Leej;

    move-result-object v1

    invoke-interface {v1, p0}, Leej;->a(Landroid/graphics/Bitmap;)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Ledm;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)Ledm;
    .locals 2

    :try_start_0
    new-instance v0, Ledm;

    invoke-static {}, Ledn;->b()Leej;

    move-result-object v1

    invoke-interface {v1, p0}, Leej;->a(Ljava/lang/String;)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Ledm;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Leej;)V
    .locals 1

    sget-object v0, Ledn;->k:Leej;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leej;

    sput-object v0, Ledn;->k:Leej;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ledm;
    .locals 2

    :try_start_0
    new-instance v0, Ledm;

    invoke-static {}, Ledn;->b()Leej;

    move-result-object v1

    invoke-interface {v1, p0}, Leej;->b(Ljava/lang/String;)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Ledm;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method private static b()Leej;
    .locals 2

    sget-object v0, Ledn;->k:Leej;

    const-string v1, "IBitmapDescriptorFactory is not initialized"

    invoke-static {v0, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leej;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ledm;
    .locals 2

    :try_start_0
    new-instance v0, Ledm;

    invoke-static {}, Ledn;->b()Leej;

    move-result-object v1

    invoke-interface {v1, p0}, Leej;->c(Ljava/lang/String;)Lcwx;

    move-result-object v1

    invoke-direct {v0, v1}, Ledm;-><init>(Lcwx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
