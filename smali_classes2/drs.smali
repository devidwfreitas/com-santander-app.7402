.class public Ldrs;
.super Ljava/lang/Object;

# interfaces
.implements Ldsh;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldrt;

    invoke-direct {v0, p0, p1}, Ldrt;-><init>(Ldrs;Landroid/os/Handler;)V

    iput-object v0, p0, Ldrs;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Ldsa;Ldse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsa",
            "<*>;",
            "Ldse",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ldrs;->a(Ldsa;Ldse;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ldsa;Ldse;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsa",
            "<*>;",
            "Ldse",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ldsa;->p()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Ldsa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ldrs;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ldru;

    invoke-direct {v1, p0, p1, p2, p3}, Ldru;-><init>(Ldrs;Ldsa;Ldse;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ldsa;Ldsl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldsa",
            "<*>;",
            "Ldsl;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Ldsa;->b(Ljava/lang/String;)V

    invoke-static {p2}, Ldse;->a(Ldsl;)Ldse;

    move-result-object v0

    iget-object v1, p0, Ldrs;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Ldru;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Ldru;-><init>(Ldrs;Ldsa;Ldse;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
