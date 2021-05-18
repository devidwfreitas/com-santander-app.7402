.class public Ldjp;
.super Ljava/lang/Object;

# interfaces
.implements Lduc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcpt;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ldjp;->a(Lcpt;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)Lcpy;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcpt;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            "Ljava/lang/String;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldjq;

    invoke-direct {v0, p0, p1, p2, p3}, Ldjq;-><init>(Ldjp;Lcpt;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcpt;->a(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method
