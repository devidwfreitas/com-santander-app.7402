.class public final Ldtd;
.super Ldtb;


# instance fields
.field public final c:Lddv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddv",
            "<",
            "Lcpe;",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ldeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldeq",
            "<",
            "Lcpe;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lddw;Legw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddw;",
            "Legw",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Ldtb;-><init>(ILegw;)V

    iget-object v0, p1, Lddw;->a:Lddv;

    iput-object v0, p0, Ldtd;->c:Lddv;

    iget-object v0, p1, Lddw;->b:Ldeq;

    iput-object v0, p0, Ldtd;->d:Ldeq;

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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldcs",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldtd;->c:Lddv;

    invoke-virtual {v0}, Lddv;->a()Lddp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldcs;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldtd;->c:Lddv;

    invoke-virtual {v1}, Lddv;->a()Lddp;

    move-result-object v1

    new-instance v2, Lddw;

    iget-object v3, p0, Ldtd;->c:Lddv;

    iget-object v4, p0, Ldtd;->d:Ldeq;

    invoke-direct {v2, v3, v4}, Lddw;-><init>(Lddv;Ldeq;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
