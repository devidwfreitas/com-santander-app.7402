.class public final Ldtf;
.super Ldtb;


# instance fields
.field public final c:Lddp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddp",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lddp;Legw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddp",
            "<*>;",
            "Legw",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Ldtb;-><init>(ILegw;)V

    iput-object p1, p0, Ldtf;->c:Lddp;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ldtb;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public bridge synthetic a(Ldbi;Z)V
    .locals 0
    .param p1    # Ldbi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Ldtb;->a(Ldbi;Z)V

    return-void
.end method

.method public b(Ldcs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldcs",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ldcs;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldtf;->c:Lddp;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lddw;->a:Lddv;

    invoke-virtual {v0}, Lddv;->b()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "UnregisterListenerTask"

    const-string v1, "Received call to unregister a listener without a matching registration call."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Ldtf;->b:Legw;

    new-instance v1, Lcql;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcql;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Legw;->b(Ljava/lang/Exception;)Z

    goto :goto_0
.end method
