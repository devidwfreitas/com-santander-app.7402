.class public final Lcom/google/android/gms/maps/model/Tile;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/model/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lega;

    invoke-direct {v0}, Lega;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->a:I

    iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->b:I

    iput-object p3, p0, Lcom/google/android/gms/maps/model/Tile;->c:[B

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lega;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    return-void
.end method
