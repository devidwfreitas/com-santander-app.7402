.class final Lcqb;
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


# instance fields
.field private final d:Lcqg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcqg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Ldat;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcqb;->d:Lcqg;

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

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v0

    iget-object v1, p0, Lcqb;->d:Lcqg;

    invoke-interface {v1}, Lcqg;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Creating failed results is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcqb;->d:Lcqg;

    return-object v0
.end method
