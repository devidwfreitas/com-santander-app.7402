.class Ldjd;
.super Ljava/lang/Object;

# interfaces
.implements Lddq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lddq",
        "<",
        "Ldtu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/LocationResult;


# direct methods
.method constructor <init>(Ldjc;Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    iput-object p2, p0, Ldjd;->a:Lcom/google/android/gms/location/LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ldtu;)V
    .locals 1

    iget-object v0, p0, Ldjd;->a:Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {p1, v0}, Ldtu;->a(Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ldtu;

    invoke-virtual {p0, p1}, Ldjd;->a(Ldtu;)V

    return-void
.end method
