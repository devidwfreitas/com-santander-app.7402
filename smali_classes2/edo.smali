.class public final Ledo;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/maps/model/LatLng;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Ledo;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->b:F

    iput v0, p0, Ledo;->b:F

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->c:F

    iput v0, p0, Ledo;->c:F

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->d:F

    iput v0, p0, Ledo;->d:F

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 5

    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Ledo;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Ledo;->b:F

    iget v3, p0, Ledo;->c:F

    iget v4, p0, Ledo;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method

.method public a(F)Ledo;
    .locals 0

    iput p1, p0, Ledo;->b:F

    return-object p0
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;)Ledo;
    .locals 0

    iput-object p1, p0, Ledo;->a:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public b(F)Ledo;
    .locals 0

    iput p1, p0, Ledo;->c:F

    return-object p0
.end method

.method public c(F)Ledo;
    .locals 0

    iput p1, p0, Ledo;->d:F

    return-object p0
.end method
