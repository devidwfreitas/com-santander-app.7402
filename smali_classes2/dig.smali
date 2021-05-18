.class Ldig;
.super Ldii;


# instance fields
.field final synthetic d:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic e:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Ldhx;Lcpt;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Ldig;->d:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Ldig;->e:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Ldii;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 3

    new-instance v0, Ldij;

    invoke-direct {v0, p0}, Ldij;-><init>(Ldao;)V

    iget-object v1, p0, Ldig;->d:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Ldig;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v0}, Ldjh;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Ldip;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldig;->a(Ldjh;)V

    return-void
.end method
