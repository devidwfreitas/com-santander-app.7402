.class Lehi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Legv;

.field final synthetic b:Lehh;


# direct methods
.method constructor <init>(Lehh;Legv;)V
    .locals 0

    iput-object p1, p0, Lehi;->b:Lehh;

    iput-object p2, p0, Lehi;->a:Legv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lehi;->b:Lehh;

    invoke-static {v0}, Lehh;->a(Lehh;)Legq;

    move-result-object v0

    iget-object v1, p0, Lehi;->a:Legv;

    invoke-interface {v0, v1}, Legq;->a(Legv;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legv;
    :try_end_0
    .catch Legu; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lehi;->b:Lehh;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lehh;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Legu;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lehi;->b:Lehh;

    invoke-static {v1}, Lehh;->b(Lehh;)Lehr;

    move-result-object v1

    invoke-virtual {v0}, Legu;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lehr;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lehi;->b:Lehh;

    invoke-static {v1}, Lehh;->b(Lehh;)Lehr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehr;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lehi;->b:Lehh;

    invoke-static {v1}, Lehh;->b(Lehh;)Lehr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehr;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    sget-object v1, Legx;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lehi;->b:Lehh;

    invoke-virtual {v0, v1, v2}, Legv;->a(Ljava/util/concurrent/Executor;Legt;)Legv;

    sget-object v1, Legx;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lehi;->b:Lehh;

    invoke-virtual {v0, v1, v2}, Legv;->a(Ljava/util/concurrent/Executor;Legs;)Legv;

    goto :goto_0
.end method
