.class Lmmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmlw;


# direct methods
.method constructor <init>(Lmlw;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lmmf;->a:Lmlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 302
    check-cast p1, Lis;

    .line 303
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lmmf;->a:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmlv;->a(Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 310
    :try_start_0
    iget-object v0, p0, Lmmf;->a:Lmlw;

    invoke-static {v0}, Lmlw;->b(Lmlw;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lgkt;

    .line 311
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {v0, v1}, Lhav;->a(Landroid/app/Activity;Lgkt;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    goto :goto_0

    .line 318
    :cond_1
    new-instance v0, Lmls;

    invoke-direct {v0}, Lmls;-><init>()V

    .line 319
    const-string v1, "S"

    invoke-virtual {v0, v1}, Lmls;->a(Ljava/lang/String;)V

    .line 320
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmls;->b(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lmmf;->a:Lmlw;

    invoke-static {v1}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v1

    invoke-interface {v1, v0}, Lmlv;->b(Lmls;)V

    goto :goto_0
.end method
