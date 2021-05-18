.class Ldcx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Ldcw;


# direct methods
.method constructor <init>(Ldcw;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Ldcx;->b:Ldcw;

    iput-object p2, p0, Ldcx;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldcx;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldcx;->b:Ldcw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldcw;->a(Ldcw;Z)Z

    iget-object v0, p0, Ldcx;->b:Ldcw;

    invoke-static {v0}, Ldcw;->a(Ldcw;)Lcph;

    move-result-object v0

    invoke-interface {v0}, Lcph;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldcx;->b:Ldcw;

    invoke-static {v0}, Ldcw;->b(Ldcw;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldcx;->b:Ldcw;

    invoke-static {v0}, Ldcw;->a(Ldcw;)Lcph;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcph;->a(Lcug;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldcx;->b:Ldcw;

    iget-object v0, v0, Ldcw;->a:Ldcq;

    invoke-static {v0}, Ldcq;->j(Ldcq;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldcx;->b:Ldcw;

    invoke-static {v1}, Ldcw;->c(Ldcw;)Ldth;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcs;

    iget-object v1, p0, Ldcx;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Ldcs;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
