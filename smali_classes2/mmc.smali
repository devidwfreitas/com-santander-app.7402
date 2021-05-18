.class Lmmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmkw;

.field final synthetic b:I

.field final synthetic c:Lmlw;


# direct methods
.method constructor <init>(Lmlw;Lmkw;I)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lmmc;->c:Lmlw;

    iput-object p2, p0, Lmmc;->a:Lmkw;

    iput p3, p0, Lmmc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 210
    check-cast p1, Lis;

    .line 211
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lmmc;->c:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmlv;->a(Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 218
    :try_start_0
    iget-object v0, p0, Lmmc;->c:Lmlw;

    invoke-static {v0}, Lmlw;->b(Lmlw;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lgkt;

    .line 219
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {v0, v1}, Lhav;->a(Landroid/app/Activity;Lgkt;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0

    .line 227
    :cond_1
    new-instance v0, Lmls;

    invoke-direct {v0}, Lmls;-><init>()V

    .line 230
    :try_start_1
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "fullName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmls;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :goto_1
    iget-object v1, p0, Lmmc;->c:Lmlw;

    invoke-static {v1}, Lmlw;->c(Lmlw;)Lmqc;

    move-result-object v1

    new-instance v2, Lmmd;

    invoke-direct {v2, p0, v0}, Lmmd;-><init>(Lmmc;Lmls;)V

    iget-object v0, p0, Lmmc;->c:Lmlw;

    iget-object v3, p0, Lmmc;->a:Lmkw;

    iget v4, p0, Lmmc;->b:I

    .line 255
    invoke-static {v0, v3, v4}, Lmlw;->a(Lmlw;Lmkw;I)Liq;

    move-result-object v0

    .line 235
    invoke-virtual {v1, v2, v0}, Lmqc;->c(Lgkw;Liq;)V

    goto :goto_0

    .line 231
    :catch_1
    move-exception v1

    .line 232
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmls;->b(Ljava/lang/String;)V

    goto :goto_1
.end method
