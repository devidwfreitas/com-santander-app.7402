.class Ldjq;
.super Ldty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldty",
        "<",
        "Lcom/google/android/gms/location/LocationSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/gms/location/LocationSettingsRequest;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldjp;Lcpt;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Ldjq;->d:Lcom/google/android/gms/location/LocationSettingsRequest;

    iput-object p4, p0, Ldjq;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Ldty;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 2

    iget-object v0, p0, Ldjq;->d:Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-object v1, p0, Ldjq;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, p0, v1}, Ldjh;->a(Lcom/google/android/gms/location/LocationSettingsRequest;Ldao;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcqg;
    .locals 1

    invoke-virtual {p0, p1}, Ldjq;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/LocationSettingsResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldjq;->a(Ldjh;)V

    return-void
.end method

.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/LocationSettingsResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/LocationSettingsResult;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
