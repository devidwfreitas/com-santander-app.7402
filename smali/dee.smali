.class public Ldee;
.super Ldat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldat",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Ldat;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lcpt;)V
    .locals 0

    invoke-direct {p0, p1}, Ldat;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcqg;
    .locals 1

    invoke-virtual {p0, p1}, Ldee;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
