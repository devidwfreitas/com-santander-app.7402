.class abstract Ldtb;
.super Ldta;


# instance fields
.field protected final b:Legw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Legw",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILegw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Legw",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldta;-><init>(I)V

    iput-object p2, p0, Ldtb;->b:Legw;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldtb;->b:Legw;

    new-instance v1, Lcql;

    invoke-direct {v1, p1}, Lcql;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Legw;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public a(Ldbi;Z)V
    .locals 0
    .param p1    # Ldbi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final a(Ldcs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldcs",
            "<*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ldtb;->b(Ldcs;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Ldta;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldtb;->a(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Ldta;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldtb;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method protected abstract b(Ldcs;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldcs",
            "<*>;)V"
        }
    .end annotation
.end method
