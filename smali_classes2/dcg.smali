.class Ldcg;
.super Ljava/lang/Object;

# interfaces
.implements Lcpv;


# instance fields
.field final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic d:Ldee;

.field final synthetic e:Ldce;


# direct methods
.method constructor <init>(Ldce;Ljava/util/concurrent/atomic/AtomicReference;Ldee;)V
    .locals 0

    iput-object p1, p0, Ldcg;->e:Ldce;

    iput-object p2, p0, Ldcg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Ldcg;->d:Ldee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Ldcg;->e:Ldce;

    iget-object v0, p0, Ldcg;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpt;

    iget-object v2, p0, Ldcg;->d:Ldee;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ldce;->a(Ldce;Lcpt;Ldee;Z)V

    return-void
.end method
