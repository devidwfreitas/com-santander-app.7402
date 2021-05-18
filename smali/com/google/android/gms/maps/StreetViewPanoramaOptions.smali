.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/maps/model/LatLng;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lege;

    invoke-direct {v0}, Lege;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBB)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->a:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->d:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->b:Ljava/lang/String;

    invoke-static {p5}, Ldzr;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    invoke-static {p6}, Ldzr;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    invoke-static {p7}, Ldzr;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    invoke-static {p8}, Ldzr;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    invoke-static {p9}, Ldzr;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    invoke-static {v0}, Ldzr;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->a:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    invoke-static {v0}, Ldzr;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public b(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    invoke-static {v0}, Ldzr;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public c(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    invoke-static {v0}, Ldzr;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public d(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public e()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    invoke-static {v0}, Ldzr;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public e(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->a:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method

.method public g()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public k()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public l()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lege;->a(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Parcel;I)V

    return-void
.end method
