.class public final Ledz;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F

    iput v0, p0, Ledz;->c:F

    iget v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F

    iput v0, p0, Ledz;->a:F

    iget v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F

    iput v0, p0, Ledz;->b:F

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 4

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iget v1, p0, Ledz;->c:F

    iget v2, p0, Ledz;->b:F

    iget v3, p0, Ledz;->a:F

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;-><init>(FFF)V

    return-object v0
.end method

.method public a(F)Ledz;
    .locals 0

    iput p1, p0, Ledz;->c:F

    return-object p0
.end method

.method public a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Ledz;
    .locals 1

    iget v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->a:F

    iput v0, p0, Ledz;->b:F

    iget v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->b:F

    iput v0, p0, Ledz;->a:F

    return-object p0
.end method

.method public b(F)Ledz;
    .locals 0

    iput p1, p0, Ledz;->b:F

    return-object p0
.end method

.method public c(F)Ledz;
    .locals 0

    iput p1, p0, Ledz;->a:F

    return-object p0
.end method
