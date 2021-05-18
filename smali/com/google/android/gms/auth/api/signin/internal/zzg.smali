.class public Lcom/google/android/gms/auth/api/signin/internal/zzg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/zzg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field private b:I

.field private c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcog;

    invoke-direct {v0}, Lcog;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->a:I

    iput p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->b:I

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->c:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcof;)V
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Lcof;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzg;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->b:I

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcog;->a(Lcom/google/android/gms/auth/api/signin/internal/zzg;Landroid/os/Parcel;I)V

    return-void
.end method
