.class Lgnw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgnv;


# direct methods
.method constructor <init>(Lgnv;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lgnw;->a:Lgnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lgnv;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lgnv;->b()I

    .line 83
    iget-object v0, p0, Lgnw;->a:Lgnv;

    invoke-static {v0}, Lgnv;->c(Lgnv;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnp;->a(Z)V

    goto :goto_0
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnp;->a(Z)V

    .line 63
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    invoke-virtual {v0}, Lgnp;->b()Lie;

    move-result-object v0

    iget-object v1, p0, Lgnw;->a:Lgnv;

    invoke-static {v1}, Lgnv;->a(Lgnv;)Lir;

    move-result-object v1

    new-instance v2, Lgnx;

    invoke-direct {v2, p0}, Lgnx;-><init>(Lgnw;)V

    invoke-virtual {v0, v1, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "ERROR_RECONN_HUB"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
