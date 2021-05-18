.class public Lcom/google/android/gms/location/zzt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/zzt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/PendingIntent;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lduy;

    invoke-direct {v0}, Lduy;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/zzt;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/location/zzt;->b:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/location/zzt;->c:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/app/PendingIntent;)Lcom/google/android/gms/location/zzt;
    .locals 3

    const-string v0, "PendingIntent can not be null."

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/location/zzt;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/location/zzt;-><init>(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/google/android/gms/location/zzt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/location/zzt;"
        }
    .end annotation

    const-string v0, "geofence can\'t be null."

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Geofences must contains at least one id."

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/location/zzt;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/location/zzt;-><init>(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/zzt;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zzt;->b:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/zzt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lduy;->a(Lcom/google/android/gms/location/zzt;Landroid/os/Parcel;I)V

    return-void
.end method
