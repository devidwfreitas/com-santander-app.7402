.class public Lcom/google/android/gms/internal/zzbar;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field private final b:Landroid/accounts/Account;

.field private final c:[Lcom/google/android/gms/common/api/Scope;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldqk;

    invoke-direct {v0}, Ldqk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbar;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbar;->b:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbar;->c:[Lcom/google/android/gms/common/api/Scope;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbar;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbar;->b:Landroid/accounts/Account;

    return-object v0
.end method

.method public b()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbar;->c:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldqk;->a(Lcom/google/android/gms/internal/zzbar;Landroid/os/Parcel;I)V

    return-void
.end method
