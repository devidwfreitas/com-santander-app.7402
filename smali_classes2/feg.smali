.class Lfeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfec;


# direct methods
.method constructor <init>(Lfec;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lfeg;->a:Lfec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Lfec;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Configuring camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lfeg;->a:Lfec;

    invoke-static {v0}, Lfec;->a(Lfec;)Lfej;

    move-result-object v0

    invoke-virtual {v0}, Lfej;->b()V

    .line 195
    iget-object v0, p0, Lfeg;->a:Lfec;

    invoke-static {v0}, Lfec;->b(Lfec;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lfeg;->a:Lfec;

    invoke-static {v0}, Lfec;->b(Lfec;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lerz;->zxing_prewiew_size_ready:I

    iget-object v2, p0, Lfeg;->a:Lfec;

    invoke-static {v2}, Lfec;->c(Lfec;)Lfdu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    iget-object v1, p0, Lfeg;->a:Lfec;

    invoke-static {v1, v0}, Lfec;->a(Lfec;Ljava/lang/Exception;)V

    .line 200
    invoke-static {}, Lfec;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to configure camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
