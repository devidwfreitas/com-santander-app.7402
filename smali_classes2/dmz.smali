.class Ldmz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldmw;


# direct methods
.method constructor <init>(Ldmw;)V
    .locals 0

    iput-object p1, p0, Ldmz;->a:Ldmw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ldmz;->a:Ldmw;

    invoke-virtual {v0}, Ldmw;->v()Ldlh;

    move-result-object v0

    invoke-virtual {v0}, Ldlh;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldmz;->a:Ldmw;

    invoke-virtual {v0}, Ldmw;->h()Ldmw;

    move-result-object v0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Ldmw;->c(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, p0, Ldmz;->a:Ldmw;

    invoke-virtual {v1}, Ldmw;->v()Ldlh;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldlh;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldmz;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
