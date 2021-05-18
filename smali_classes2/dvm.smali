.class Ldvm;
.super Leaz;


# instance fields
.field final synthetic a:Ldwd;


# direct methods
.method constructor <init>(Ldvb;Ldwd;)V
    .locals 0

    iput-object p2, p0, Ldvm;->a:Ldwd;

    invoke-direct {p0}, Leaz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    iget-object v0, p0, Ldvm;->a:Ldwd;

    invoke-interface {v0, p1}, Ldwd;->a(Lcom/google/android/gms/maps/model/CameraPosition;)V

    return-void
.end method
