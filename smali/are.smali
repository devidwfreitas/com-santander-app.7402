.class Lare;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lard;


# direct methods
.method constructor <init>(Lard;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lare;->a:Lard;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Lary;->b()Lary;

    move-result-object v0

    invoke-static {}, Lard;->U()Lard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lary;->c(Lard;)Lard;

    .line 181
    invoke-static {}, Lard;->U()Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->d()V
    :try_end_0
    .catch Laqd; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v1, "[ChatBase]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> Chatbase purge ChatServiceException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Laqd;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
