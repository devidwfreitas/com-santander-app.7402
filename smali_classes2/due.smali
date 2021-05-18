.class public Ldue;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/zza;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/zza;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcsd;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/location/zza;->a()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcsd;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/location/zza;->b()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/location/zza;->c()Landroid/os/WorkSource;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcsd;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/location/zza;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcsd;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/location/zza;->e()[I

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcsd;->a(Landroid/os/Parcel;I[IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/location/zza;->f()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/location/zza;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcsd;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/location/zza;->h()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcsd;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcsd;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/location/zza;
    .locals 13

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1}, Lcsb;->b(Landroid/os/Parcel;)I

    move-result v1

    move-object v7, v9

    move-object v6, v9

    move-object v5, v9

    move v4, v8

    move-wide v2, v10

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Lcsb;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcsb;->a(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    invoke-static {p1, v0}, Lcsb;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Lcsb;->i(Landroid/os/Parcel;I)J

    move-result-wide v2

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v0}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0

    :pswitch_2
    sget-object v5, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v5}, Lcsb;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    move-object v5, v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v0}, Lcsb;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v0}, Lcsb;->w(Landroid/os/Parcel;I)[I

    move-result-object v7

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v0}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v0}, Lcsb;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v0}, Lcsb;->i(Landroid/os/Parcel;I)J

    move-result-wide v10

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Lcsc;

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcsc;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/location/zza;

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/location/zza;-><init>(JZLandroid/os/WorkSource;Ljava/lang/String;[IZLjava/lang/String;J)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(I)[Lcom/google/android/gms/location/zza;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/zza;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ldue;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ldue;->a(I)[Lcom/google/android/gms/location/zza;

    move-result-object v0

    return-object v0
.end method
