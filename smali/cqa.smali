.class public final Lcqa;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcqg;)Lcpx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcqg;",
            ">(TR;)",
            "Lcpx",
            "<TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcqd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcqd;-><init>(Lcpt;)V

    invoke-virtual {v0, p0}, Lcqd;->a(Lcqg;)V

    new-instance v1, Lddt;

    invoke-direct {v1, v0}, Lddt;-><init>(Lcpy;)V

    return-object v1
.end method

.method public static a()Lcpy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldee;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ldee;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0}, Ldee;->a()V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;)Lcpy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldee;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ldee;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Ldee;->a(Lcqg;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;Lcpt;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcpt;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldee;

    invoke-direct {v0, p1}, Ldee;-><init>(Lcpt;)V

    invoke-virtual {v0, p0}, Ldee;->a(Lcqg;)V

    return-object v0
.end method

.method public static a(Lcqg;Lcpt;)Lcpy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcqg;",
            ">(TR;",
            "Lcpt;",
            ")",
            "Lcpy",
            "<TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcqg;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Status code must not be SUCCESS"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcqc;

    invoke-direct {v0, p1, p0}, Lcqc;-><init>(Lcpt;Lcqg;)V

    invoke-virtual {v0, p0}, Lcqc;->a(Lcqg;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcqg;Lcpt;)Lcpx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcqg;",
            ">(TR;",
            "Lcpt;",
            ")",
            "Lcpx",
            "<TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcqd;

    invoke-direct {v0, p1}, Lcqd;-><init>(Lcpt;)V

    invoke-virtual {v0, p0}, Lcqd;->a(Lcqg;)V

    new-instance v1, Lddt;

    invoke-direct {v1, v0}, Lddt;-><init>(Lcpy;)V

    return-object v1
.end method

.method public static b(Lcqg;)Lcpy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcqg;",
            ">(TR;)",
            "Lcpy",
            "<TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcqg;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Status code must be CommonStatusCodes.CANCELED"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcqb;

    invoke-direct {v0, p0}, Lcqb;-><init>(Lcqg;)V

    invoke-virtual {v0}, Lcqb;->a()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
