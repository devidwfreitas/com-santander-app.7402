.class public final Lcom/google/android/gms/internal/zzacp$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzacp$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldfy;

    invoke-direct {v0}, Ldfy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacp$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzacp$zza;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacp$zza;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzacp$zza;->c:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzacp$zza;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacp$zza;->b:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzacp$zza;->c:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldfy;->a(Lcom/google/android/gms/internal/zzacp$zza;Landroid/os/Parcel;I)V

    return-void
.end method
