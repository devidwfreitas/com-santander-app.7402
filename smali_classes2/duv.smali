.class public Lduv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/LocationSettingsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/LocationSettingsRequest;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcsd;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsRequest;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcsd;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsRequest;->b()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsRequest;->c()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsRequest;->d()Lcom/google/android/gms/location/zzo;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcsd;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcsd;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationSettingsRequest;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcsb;->b(Landroid/os/Parcel;)I

    move-result v4

    move v2, v1

    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v4, :cond_0

    invoke-static {p1}, Lcsb;->a(Landroid/os/Parcel;)I

    move-result v5

    invoke-static {v5}, Lcsb;->a(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v5}, Lcsb;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v5, v3}, Lcsb;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v5}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v5}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/location/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v5, v0}, Lcsb;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/zzo;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-eq v5, v4, :cond_1

    new-instance v0, Lcsc;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Overread allowed size end="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcsc;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v4, Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZLcom/google/android/gms/location/zzo;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public a(I)[Lcom/google/android/gms/location/LocationSettingsRequest;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/LocationSettingsRequest;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lduv;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lduv;->a(I)[Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    return-object v0
.end method
