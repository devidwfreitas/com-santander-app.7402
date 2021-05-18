.class Ldxq;
.super Leac;


# instance fields
.field final synthetic a:Ldxu;


# direct methods
.method constructor <init>(Ldxn;Ldxu;)V
    .locals 0

    iput-object p2, p0, Ldxq;->a:Ldxu;

    invoke-direct {p0}, Leac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .locals 1

    iget-object v0, p0, Ldxq;->a:Ldxu;

    invoke-interface {v0, p1}, Ldxu;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-void
.end method
