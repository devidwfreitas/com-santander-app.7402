.class public Ldux;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/LocationSettingsStates;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/LocationSettingsStates;Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcsd;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->a()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->c()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->g()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->b()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->d()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationSettingsStates;->h()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcsd;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationSettingsStates;
    .locals 9

    const/4 v6, 0x0

    invoke-static {p1}, Lcsb;->b(Landroid/os/Parcel;)I

    move-result v0

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v0, :cond_0

    invoke-static {p1}, Lcsb;->a(Landroid/os/Parcel;)I

    move-result v7

    invoke-static {v7}, Lcsb;->a(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    invoke-static {p1, v7}, Lcsb;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v7}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v7}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v7}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v7}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v7}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v7}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-eq v7, v0, :cond_1

    new-instance v1, Lcsc;

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcsc;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsStates;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/LocationSettingsStates;-><init>(ZZZZZZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(I)[Lcom/google/android/gms/location/LocationSettingsStates;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/LocationSettingsStates;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ldux;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationSettingsStates;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ldux;->a(I)[Lcom/google/android/gms/location/LocationSettingsStates;

    move-result-object v0

    return-object v0
.end method
