.class public final Lduh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/location/zzd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/zzd;Lcom/google/android/gms/location/zzd;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/gms/location/zzd;->a()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/location/zzd;->a()I

    move-result v3

    if-eq v2, v3, :cond_2

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/location/zzd;->b()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/location/zzd;->b()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/location/zzd;

    check-cast p2, Lcom/google/android/gms/location/zzd;

    invoke-virtual {p0, p1, p2}, Lduh;->a(Lcom/google/android/gms/location/zzd;Lcom/google/android/gms/location/zzd;)I

    move-result v0

    return v0
.end method
