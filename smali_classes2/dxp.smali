.class Ldxp;
.super Ldzw;


# instance fields
.field final synthetic a:Ldxs;


# direct methods
.method constructor <init>(Ldxn;Ldxs;)V
    .locals 0

    iput-object p2, p0, Ldxp;->a:Ldxs;

    invoke-direct {p0}, Ldzw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
    .locals 1

    iget-object v0, p0, Ldxp;->a:Ldxs;

    invoke-interface {v0, p1}, Ldxs;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V

    return-void
.end method
