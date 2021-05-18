.class Ldie;
.super Ldii;


# instance fields
.field final synthetic d:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic e:Ldtv;

.field final synthetic f:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ldhx;Lcpt;Lcom/google/android/gms/location/LocationRequest;Ldtv;Landroid/os/Looper;)V
    .locals 0

    iput-object p3, p0, Ldie;->d:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Ldie;->e:Ldtv;

    iput-object p5, p0, Ldie;->f:Landroid/os/Looper;

    invoke-direct {p0, p2}, Ldii;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 5

    new-instance v0, Ldij;

    invoke-direct {v0, p0}, Ldij;-><init>(Ldao;)V

    iget-object v1, p0, Ldie;->d:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Ldie;->e:Ldtv;

    iget-object v3, p0, Ldie;->f:Landroid/os/Looper;

    invoke-static {v3}, Ldjr;->a(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object v3

    const-class v4, Ldtv;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lddr;->b(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lddn;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Ldjh;->a(Lcom/google/android/gms/location/LocationRequest;Lddn;Ldip;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldie;->a(Ldjh;)V

    return-void
.end method
