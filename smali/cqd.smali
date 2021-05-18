.class final Lcqd;
.super Ldat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcqg;",
        ">",
        "Ldat",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcpt;)V
    .locals 0

    invoke-direct {p0, p1}, Ldat;-><init>(Lcpt;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/gms/common/api/Status;)Lcqg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Creating failed results is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
