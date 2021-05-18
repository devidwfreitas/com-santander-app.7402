.class Lfeh;
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
    .line 205
    iput-object p1, p0, Lfeh;->a:Lfec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Lfec;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lfeh;->a:Lfec;

    invoke-static {v0}, Lfec;->a(Lfec;)Lfej;

    move-result-object v0

    iget-object v1, p0, Lfeh;->a:Lfec;

    invoke-static {v1}, Lfec;->d(Lfec;)Lfen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfej;->a(Lfen;)V

    .line 211
    iget-object v0, p0, Lfeh;->a:Lfec;

    invoke-static {v0}, Lfec;->a(Lfec;)Lfej;

    move-result-object v0

    invoke-virtual {v0}, Lfej;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    iget-object v1, p0, Lfeh;->a:Lfec;

    invoke-static {v1, v0}, Lfec;->a(Lfec;Ljava/lang/Exception;)V

    .line 214
    invoke-static {}, Lfec;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to start preview"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
