.class Lgzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgzk;


# direct methods
.method constructor <init>(Lgzk;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lgzl;->a:Lgzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 334
    check-cast p1, Lkkt;

    .line 337
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    invoke-virtual {v0}, Lgnp;->b()Lie;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const-string v1, "session-management/v1/initialize"

    sget-object v2, Lim;->POST:Lim;

    new-instance v3, Lorg/json/JSONObject;

    .line 341
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v4

    new-instance v5, Lgzt;

    .line 342
    invoke-virtual {p1}, Lkkt;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MBB"

    const-string v8, "false"

    invoke-direct {v5, v6, v7, v8}, Lgzt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v4, v5}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 338
    invoke-virtual {v0, v1, v2, v3, v4}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 345
    new-instance v1, Lgnv;

    new-instance v2, Lgzm;

    invoke-direct {v2, p0}, Lgzm;-><init>(Lgzl;)V

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 352
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
