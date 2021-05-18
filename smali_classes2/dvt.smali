.class Ldvt;
.super Lecp;


# instance fields
.field final synthetic a:Ldwq;


# direct methods
.method constructor <init>(Ldvb;Ldwq;)V
    .locals 0

    iput-object p2, p0, Ldvt;->a:Ldwq;

    invoke-direct {p0}, Lecp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Ldvt;->a:Ldwq;

    invoke-interface {v0, p1}, Ldwq;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
