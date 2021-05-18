.class Lisi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lise;


# direct methods
.method constructor <init>(Lise;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lisi;->a:Lise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 359
    const-string v0, "ERROR_HUB_CONNECTOR"

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v0}, Lnab;->b()V

    .line 361
    iget-object v0, p0, Lisi;->a:Lise;

    invoke-static {v0}, Lise;->i(Lise;)V

    .line 362
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v0}, Lnab;->b()V

    .line 345
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hashMonitoracao"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Lfrq;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    iget-object v0, p0, Lisi;->a:Lise;

    invoke-static {v0}, Lise;->g(Lise;)Lgwa;

    move-result-object v0

    invoke-interface {v0}, Lgwa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lisi;->a:Lise;

    invoke-static {v0}, Lise;->h(Lise;)V

    .line 355
    :goto_1
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    const-string v1, "Error"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lisi;->a:Lise;

    invoke-static {v0}, Lise;->i(Lise;)V

    goto :goto_1
.end method
