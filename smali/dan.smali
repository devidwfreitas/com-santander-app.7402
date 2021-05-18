.class public abstract Ldan;
.super Ldat;

# interfaces
.implements Ldao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcqg;",
        "A::",
        "Lcpe;",
        ">",
        "Ldat",
        "<TR;>;",
        "Ldao",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final d:Lcpf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpf",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final e:Lcox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcox",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcox;Lcpt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<*>;",
            "Lcpt;",
            ")V"
        }
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpt;

    invoke-direct {p0, v0}, Ldat;-><init>(Lcpt;)V

    invoke-virtual {p1}, Lcox;->c()Lcpf;

    move-result-object v0

    iput-object v0, p0, Ldan;->d:Lcpf;

    iput-object p1, p0, Ldan;->e:Lcox;

    return-void
.end method

.method protected constructor <init>(Lcpf;Lcpt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpf",
            "<TA;>;",
            "Lcpt;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpt;

    invoke-direct {p0, v0}, Ldat;-><init>(Lcpt;)V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    iput-object v0, p0, Ldan;->d:Lcpf;

    const/4 v0, 0x0

    iput-object v0, p0, Ldan;->e:Lcox;

    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ldan;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Ldan;->b(Lcom/google/android/gms/common/api/Status;)Lcqg;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldan;->a(Lcqg;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcpe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ldan;->b(Lcpe;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Ldan;->a(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Ldan;->a(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcqg;

    invoke-super {p0, p1}, Ldat;->a(Lcqg;)V

    return-void
.end method

.method public final b()Lcpf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcpf",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Ldan;->d:Lcpf;

    return-object v0
.end method

.method protected abstract b(Lcpe;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public final c()Lcox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcox",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ldan;->e:Lcox;

    return-object v0
.end method
