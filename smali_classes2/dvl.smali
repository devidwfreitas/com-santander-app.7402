.class Ldvl;
.super Ledh;


# instance fields
.field final synthetic a:Ldwv;


# direct methods
.method constructor <init>(Ldvb;Ldwv;)V
    .locals 0

    iput-object p2, p0, Ldvl;->a:Ldwv;

    invoke-direct {p0}, Ledh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/PointOfInterest;)V
    .locals 1

    iget-object v0, p0, Ldvl;->a:Ldwv;

    invoke-interface {v0, p1}, Ldwv;->a(Lcom/google/android/gms/maps/model/PointOfInterest;)V

    return-void
.end method
