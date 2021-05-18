.class public Ldei;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;Legw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Legw",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ldei;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Legw;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Legw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Status;",
            "TTResult;",
            "Legw",
            "<TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Legw;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcql;

    invoke-direct {v0, p0}, Lcql;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, v0}, Legw;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
