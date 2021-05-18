.class Ldvs;
.super Lecj;


# instance fields
.field final synthetic a:Ldwo;


# direct methods
.method constructor <init>(Ldvb;Ldwo;)V
    .locals 0

    iput-object p2, p0, Ldvs;->a:Ldwo;

    invoke-direct {p0}, Lecj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Ldvs;->a:Ldwo;

    invoke-interface {v0, p1}, Ldwo;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
