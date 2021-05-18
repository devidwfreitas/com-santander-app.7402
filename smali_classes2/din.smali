.class Ldin;
.super Ldio;


# instance fields
.field final synthetic d:Lcom/google/android/gms/location/zzt;


# direct methods
.method constructor <init>(Ldil;Lcpt;Lcom/google/android/gms/location/zzt;)V
    .locals 0

    iput-object p3, p0, Ldin;->d:Lcom/google/android/gms/location/zzt;

    invoke-direct {p0, p2}, Ldio;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Ldjh;)V
    .locals 1

    iget-object v0, p0, Ldin;->d:Lcom/google/android/gms/location/zzt;

    invoke-virtual {p1, v0, p0}, Ldjh;->a(Lcom/google/android/gms/location/zzt;Ldao;)V

    return-void
.end method

.method protected synthetic b(Lcpe;)V
    .locals 0

    check-cast p1, Ldjh;

    invoke-virtual {p0, p1}, Ldin;->a(Ldjh;)V

    return-void
.end method
