.class Ldim;
.super Ldio;


# instance fields
.field final synthetic d:Lcom/google/android/gms/location/GeofencingRequest;

.field final synthetic e:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Ldil;Lcpt;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Ldim;->d:Lcom/google/android/gms/location/GeofencingRequest;

    iput-object p4, p0, Ldim;->e:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Ldio;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 2

    iget-object v0, p0, Ldim;->d:Lcom/google/android/gms/location/GeofencingRequest;

    iget-object v1, p0, Ldim;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, p0}, Ldjh;->a(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Ldao;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldim;->a(Ldjh;)V

    return-void
.end method
