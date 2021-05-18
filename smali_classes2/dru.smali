.class Ldru;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldrs;

.field private final b:Ldsa;

.field private final c:Ldse;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ldrs;Ldsa;Ldse;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ldru;->a:Ldrs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldru;->b:Ldsa;

    iput-object p3, p0, Ldru;->c:Ldse;

    iput-object p4, p0, Ldru;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldru;->c:Ldse;

    invoke-virtual {v0}, Ldse;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldru;->b:Ldsa;

    iget-object v1, p0, Ldru;->c:Ldse;

    iget-object v1, v1, Ldse;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ldsa;->a(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Ldru;->c:Ldse;

    iget-boolean v0, v0, Ldse;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldru;->b:Ldsa;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Ldsa;->b(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Ldru;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldru;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ldru;->b:Ldsa;

    iget-object v1, p0, Ldru;->c:Ldse;

    iget-object v1, v1, Ldse;->c:Ldsl;

    invoke-virtual {v0, v1}, Ldsa;->b(Ldsl;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldru;->b:Ldsa;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Ldsa;->c(Ljava/lang/String;)V

    goto :goto_1
.end method
