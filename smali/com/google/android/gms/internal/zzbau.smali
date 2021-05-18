.class public Lcom/google/android/gms/internal/zzbau;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbau;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field final b:Lcom/google/android/gms/common/internal/zzad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldqm;

    invoke-direct {v0}, Ldqm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbau;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/common/internal/zzad;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbau;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbau;->b:Lcom/google/android/gms/common/internal/zzad;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/zzad;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzbau;-><init>(ILcom/google/android/gms/common/internal/zzad;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/internal/zzad;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbau;->b:Lcom/google/android/gms/common/internal/zzad;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldqm;->a(Lcom/google/android/gms/internal/zzbau;Landroid/os/Parcel;I)V

    return-void
.end method
