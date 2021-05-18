.class public Ldil;
.super Ljava/lang/Object;

# interfaces
.implements Ldtr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-static {p2}, Lcom/google/android/gms/location/zzt;->a(Landroid/app/PendingIntent;)Lcom/google/android/gms/location/zzt;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldil;->a(Lcpt;Lcom/google/android/gms/location/zzt;)Lcpy;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldim;

    invoke-direct {v0, p0, p1, p2, p3}, Ldim;-><init>(Ldil;Lcpt;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Lcom/google/android/gms/location/zzt;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/zzt;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldin;

    invoke-direct {v0, p0, p1, p2}, Ldin;-><init>(Ldil;Lcpt;Lcom/google/android/gms/location/zzt;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Ljava/util/List;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/location/zzt;->a(Ljava/util/List;)Lcom/google/android/gms/location/zzt;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldil;->a(Lcpt;Lcom/google/android/gms/location/zzt;)Lcpy;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Ljava/util/List;Landroid/app/PendingIntent;)Lcpy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Ljava/util/List",
            "<",
            "Ldto;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ldtt;

    invoke-direct {v0}, Ldtt;-><init>()V

    invoke-virtual {v0, p2}, Ldtt;->a(Ljava/util/List;)Ldtt;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ldtt;->a(I)Ldtt;

    invoke-virtual {v0}, Ldtt;->a()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Ldil;->a(Lcpt;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcpy;

    move-result-object v0

    return-object v0
.end method
