.class public Ldhx;
.super Ljava/lang/Object;

# interfaces
.implements Ldtn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcpt;)Landroid/location/Location;
    .locals 1

    invoke-static {p1}, Ldtw;->a(Lcpt;)Ldjh;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ldjh;->k()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcpt;Landroid/app/PendingIntent;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldhz;

    invoke-direct {v0, p0, p1, p2}, Ldhz;-><init>(Ldhx;Lcpt;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Landroid/location/Location;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Landroid/location/Location;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldic;

    invoke-direct {v0, p0, p1, p2}, Ldic;-><init>(Ldhx;Lcpt;Landroid/location/Location;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldig;

    invoke-direct {v0, p0, p1, p2, p3}, Ldig;-><init>(Ldhx;Lcpt;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtu;Landroid/os/Looper;)Lcpy;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ldtu;",
            "Landroid/os/Looper;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldif;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldif;-><init>(Ldhx;Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtu;Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtv;)Lcpy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ldtv;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Calling thread must be a prepared Looper thread."

    invoke-static {v0, v1}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldhy;

    invoke-direct {v0, p0, p1, p2, p3}, Ldhy;-><init>(Ldhx;Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtv;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtv;Landroid/os/Looper;)Lcpy;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ldtv;",
            "Landroid/os/Looper;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldie;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldie;-><init>(Ldhx;Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtv;Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Ldtu;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Ldtu;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldia;

    invoke-direct {v0, p0, p1, p2}, Ldia;-><init>(Ldhx;Lcpt;Ldtu;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Ldtv;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Ldtv;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldih;

    invoke-direct {v0, p0, p1, p2}, Ldih;-><init>(Ldhx;Lcpt;Ldtv;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Z)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Z)",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldib;

    invoke-direct {v0, p0, p1, p2}, Ldib;-><init>(Ldhx;Lcpt;Z)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcpt;)Lcom/google/android/gms/location/LocationAvailability;
    .locals 1

    invoke-static {p1}, Ldtw;->a(Lcpt;)Ldjh;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ldjh;->A()Lcom/google/android/gms/location/LocationAvailability;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcpt;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldid;

    invoke-direct {v0, p0, p1}, Ldid;-><init>(Ldhx;Lcpt;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method
