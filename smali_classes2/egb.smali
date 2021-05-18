.class public Legb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/TileOverlayOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcsd;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcsd;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcsd;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .locals 8

    const/4 v5, 0x0

    invoke-static {p1}, Lcsb;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move v3, v5

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_0

    invoke-static {p1}, Lcsb;->a(Landroid/os/Parcel;)I

    move-result v6

    invoke-static {v6}, Lcsb;->a(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-static {p1, v6}, Lcsb;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v6}, Lcsb;->r(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v6}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v6}, Lcsb;->l(Landroid/os/Parcel;I)F

    move-result v3

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v6}, Lcsb;->c(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v6}, Lcsb;->l(Landroid/os/Parcel;I)F

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-eq v6, v0, :cond_1

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
    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>(Landroid/os/IBinder;ZFZF)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(I)[Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/model/TileOverlayOptions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Legb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Legb;->a(I)[Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    return-object v0
.end method
