.class public Lcom/google/android/gms/internal/zzacw$zzb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzacw$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/zzacs$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldgb;

    invoke-direct {v0}, Ldgb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacw$zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzacs$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzacw$zzb;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacw$zzb;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzacw$zzb;->c:Lcom/google/android/gms/internal/zzacs$zza;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzacs$zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzacw$zzb;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacw$zzb;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacw$zzb;->c:Lcom/google/android/gms/internal/zzacs$zza;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldgb;->a(Lcom/google/android/gms/internal/zzacw$zzb;Landroid/os/Parcel;I)V

    return-void
.end method
