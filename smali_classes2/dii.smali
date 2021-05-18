.class abstract Ldii;
.super Ldty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldty",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcpt;)V
    .locals 0

    invoke-direct {p0, p1}, Ldty;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcqg;
    .locals 1

    invoke-virtual {p0, p1}, Ldii;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
