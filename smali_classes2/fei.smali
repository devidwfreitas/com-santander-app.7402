.class Lfei;
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
    .line 219
    iput-object p1, p0, Lfei;->a:Lfec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 223
    :try_start_0
    invoke-static {}, Lfec;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Closing camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lfei;->a:Lfec;

    invoke-static {v0}, Lfec;->a(Lfec;)Lfej;

    move-result-object v0

    invoke-virtual {v0}, Lfej;->d()V

    .line 225
    iget-object v0, p0, Lfei;->a:Lfec;

    invoke-static {v0}, Lfec;->a(Lfec;)Lfej;

    move-result-object v0

    invoke-virtual {v0}, Lfej;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget-object v0, p0, Lfei;->a:Lfec;

    invoke-static {v0}, Lfec;->e(Lfec;)Lfeo;

    move-result-object v0

    invoke-virtual {v0}, Lfeo;->b()V

    .line 231
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-static {}, Lfec;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to close camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
