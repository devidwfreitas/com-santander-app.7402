.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/model/TileOverlayOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lefh;

.field private b:Leee;

.field private c:Z

.field private d:F

.field private e:Z

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Legb;

    invoke-direct {v0}, Legb;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;ZFZF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:F

    invoke-static {p1}, Lefi;->a(Landroid/os/IBinder;)Lefh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:Lefh;

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:Lefh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Leee;

    iput-boolean p2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    iput p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:F

    iput-boolean p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    iput p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:F

    return-void

    :cond_0
    new-instance v0, Leec;

    invoke-direct {v0, p0}, Leec;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lefh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:Lefh;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:Lefh;

    invoke-interface {v0}, Lefh;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:F

    return-object p0
.end method

.method public a(Leee;)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Leee;

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Leee;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:Lefh;

    return-object p0

    :cond_0
    new-instance v0, Leed;

    invoke-direct {v0, p0, p1}, Leed;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Leee;)V

    goto :goto_0
.end method

.method public a(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    return-object p0
.end method

.method public b(F)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Transparency must be in the range [0..1]"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:F

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)Lcom/google/android/gms/maps/model/TileOverlayOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    return-object p0
.end method

.method public b()Leee;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Leee;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:F

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:Z

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Legb;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    return-void
.end method
