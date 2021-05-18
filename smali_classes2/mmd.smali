.class Lmmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmls;

.field final synthetic b:Lmmc;


# direct methods
.method constructor <init>(Lmmc;Lmls;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lmmd;->b:Lmmc;

    iput-object p2, p0, Lmmd;->a:Lmls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 239
    check-cast p1, Lis;

    .line 241
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 243
    :try_start_0
    iget-object v0, p0, Lmmd;->b:Lmmc;

    iget-object v0, v0, Lmmc;->c:Lmlw;

    invoke-static {v0}, Lmlw;->b(Lmlw;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lgkt;

    .line 244
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {v0, v1}, Lhav;->a(Landroid/app/Activity;Lgkt;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lmmd;->a:Lmls;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lmls;->a(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lmmd;->b:Lmmc;

    iget-object v0, v0, Lmmc;->c:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    iget-object v1, p0, Lmmd;->a:Lmls;

    invoke-interface {v0, v1}, Lmlv;->a(Lmls;)V

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method
