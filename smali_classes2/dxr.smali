.class Ldxr;
.super Leaf;


# instance fields
.field final synthetic a:Ldxv;


# direct methods
.method constructor <init>(Ldxn;Ldxv;)V
    .locals 0

    iput-object p2, p0, Ldxr;->a:Ldxv;

    invoke-direct {p0}, Leaf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .locals 1

    iget-object v0, p0, Ldxr;->a:Ldxv;

    invoke-interface {v0, p1}, Ldxv;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-void
.end method
