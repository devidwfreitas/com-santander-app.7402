.class public Lcom/google/android/gms/common/internal/zzd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Landroid/os/IBinder;

.field public final c:[Lcom/google/android/gms/common/api/Scope;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcta;

    invoke-direct {v0}, Lcta;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzd;->a:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzd;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzd;->c:[Lcom/google/android/gms/common/api/Scope;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzd;->d:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/zzd;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcta;->a(Lcom/google/android/gms/common/internal/zzd;Landroid/os/Parcel;I)V

    return-void
.end method
