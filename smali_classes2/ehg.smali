.class Lehg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Legv;

.field final synthetic b:Lehf;


# direct methods
.method constructor <init>(Lehf;Legv;)V
    .locals 0

    iput-object p1, p0, Lehg;->b:Lehf;

    iput-object p2, p0, Lehg;->a:Legv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lehg;->b:Lehf;

    invoke-static {v0}, Lehf;->a(Lehf;)Legq;

    move-result-object v0

    iget-object v1, p0, Lehg;->a:Legv;

    invoke-interface {v0, v1}, Legq;->a(Legv;)Ljava/lang/Object;
    :try_end_0
    .catch Legu; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    iget-object v1, p0, Lehg;->b:Lehf;

    invoke-static {v1}, Lehf;->b(Lehf;)Lehr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehr;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Legu;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lehg;->b:Lehf;

    invoke-static {v1}, Lehf;->b(Lehf;)Lehr;

    move-result-object v1

    invoke-virtual {v0}, Legu;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lehr;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lehg;->b:Lehf;

    invoke-static {v1}, Lehf;->b(Lehf;)Lehr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehr;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lehg;->b:Lehf;

    invoke-static {v1}, Lehf;->b(Lehf;)Lehr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lehr;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
