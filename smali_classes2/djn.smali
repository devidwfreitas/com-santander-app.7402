.class public Ldjn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/zzasm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zzasm;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcsd;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasm;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcsd;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasm;->f()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcsd;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasm;->a()S

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IS)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasm;->b()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcsd;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasm;->c()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcsd;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasm;->d()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasm;->g()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasm;->h()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasm;->i()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcsd;->a(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcsd;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzasm;
    .locals 17

    invoke-static/range {p1 .. p1}, Lcsb;->b(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-ge v15, v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcsb;->a(Landroid/os/Parcel;)I

    move-result v15

    invoke-static {v15}, Lcsb;->a(I)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->i(Landroid/os/Parcel;I)J

    move-result-wide v11

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->f(Landroid/os/Parcel;I)S

    move-result v5

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->n(Landroid/os/Parcel;I)D

    move-result-wide v6

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->n(Landroid/os/Parcel;I)D

    move-result-wide v8

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->l(Landroid/os/Parcel;I)F

    move-result v10

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->g(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->g(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcsb;->g(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-eq v15, v2, :cond_1

    new-instance v3, Lcsc;

    const/16 v4, 0x25

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Overread allowed size end="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0}, Lcsc;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v3

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzasm;

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/zzasm;-><init>(Ljava/lang/String;ISDDFJII)V

    return-object v2

    nop

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
        :pswitch_8
    .end packed-switch
.end method

.method public a(I)[Lcom/google/android/gms/internal/zzasm;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/zzasm;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ldjn;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/zzasm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ldjn;->a(I)[Lcom/google/android/gms/internal/zzasm;

    move-result-object v0

    return-object v0
.end method
