.class Ldxo;
.super Ldzz;


# instance fields
.field final synthetic a:Ldxt;


# direct methods
.method constructor <init>(Ldxn;Ldxt;)V
    .locals 0

    iput-object p2, p0, Ldxo;->a:Ldxt;

    invoke-direct {p0}, Ldzz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;)V
    .locals 1

    iget-object v0, p0, Ldxo;->a:Ldxt;

    invoke-interface {v0, p1}, Ldxt;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;)V

    return-void
.end method
