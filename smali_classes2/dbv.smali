.class Ldbv;
.super Ldcc;


# instance fields
.field final synthetic a:Ldbs;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcph;",
            "Ldbu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldbs;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcph;",
            "Ldbu;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldbv;->a:Ldbs;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldcc;-><init>(Ldbs;Ldbt;)V

    iput-object p2, p0, Ldbv;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Ldbv;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    invoke-interface {v0}, Lcph;->e()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v3, p0, Ldbv;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbu;

    invoke-static {v0}, Ldbu;->a(Ldbu;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, p0, Ldbv;->a:Ldbs;

    invoke-static {v2}, Ldbs;->b(Ldbs;)Lcwn;

    move-result-object v2

    iget-object v3, p0, Ldbv;->a:Ldbs;

    invoke-static {v3}, Ldbs;->a(Ldbs;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcwn;->a(Landroid/content/Context;)I

    move-result v4

    :cond_0
    if-eqz v4, :cond_4

    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Ldbv;->a:Ldbs;

    invoke-static {v1}, Ldbs;->d(Ldbs;)Ldcm;

    move-result-object v1

    new-instance v2, Ldbw;

    iget-object v3, p0, Ldbv;->a:Ldbs;

    invoke-direct {v2, p0, v3, v0}, Ldbw;-><init>(Ldbv;Ldcl;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Ldcm;->a(Ldcn;)V

    :cond_2
    return-void

    :cond_3
    move v0, v4

    move v1, v3

    :goto_2
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ldbv;->a:Ldbs;

    invoke-static {v0}, Ldbs;->e(Ldbs;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldbv;->a:Ldbs;

    invoke-static {v0}, Ldbs;->f(Ldbs;)Ldpx;

    move-result-object v0

    invoke-interface {v0}, Ldpx;->l()V

    :cond_5
    iget-object v0, p0, Ldbv;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcph;

    iget-object v1, p0, Ldbv;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcth;

    invoke-interface {v0}, Lcph;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object v0, p0, Ldbv;->a:Ldbs;

    invoke-static {v0}, Ldbs;->d(Ldbs;)Ldcm;

    move-result-object v0

    new-instance v3, Ldbx;

    iget-object v5, p0, Ldbv;->a:Ldbs;

    invoke-direct {v3, p0, v5, v1}, Ldbx;-><init>(Ldbv;Ldcl;Lcth;)V

    invoke-virtual {v0, v3}, Ldcm;->a(Ldcn;)V

    goto :goto_3

    :cond_6
    invoke-interface {v0, v1}, Lcph;->a(Lcth;)V

    goto :goto_3

    :cond_7
    move v0, v1

    move v1, v2

    goto :goto_2

    :cond_8
    move v2, v3

    move v0, v4

    goto/16 :goto_1
.end method
