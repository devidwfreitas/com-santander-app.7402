.class public final Ldte;
.super Ldta;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ldta;"
    }
.end annotation


# instance fields
.field private final b:Ldeh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldeh",
            "<",
            "Lcpe;",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private final c:Legw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Legw",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private final d:Lded;


# direct methods
.method public constructor <init>(ILdeh;Legw;Lded;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ldeh",
            "<",
            "Lcpe;",
            "TTResult;>;",
            "Legw",
            "<TTResult;>;",
            "Lded;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldta;-><init>(I)V

    iput-object p3, p0, Ldte;->c:Legw;

    iput-object p2, p0, Ldte;->b:Ldeh;

    iput-object p4, p0, Ldte;->d:Lded;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldte;->c:Legw;

    iget-object v1, p0, Ldte;->d:Lded;

    invoke-interface {v1, p1}, Lded;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Legw;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public a(Ldbi;Z)V
    .locals 1
    .param p1    # Ldbi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldte;->c:Legw;

    invoke-virtual {p1, v0, p2}, Ldbi;->a(Legw;Z)V

    return-void
.end method

.method public a(Ldcs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldcs",
            "<*>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldte;->b:Ldeh;

    invoke-virtual {p1}, Ldcs;->b()Lcph;

    move-result-object v1

    iget-object v2, p0, Ldte;->c:Legw;

    invoke-virtual {v0, v1, v2}, Ldeh;->a(Lcpe;Legw;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Ldta;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldte;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
