.class Lkxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkxl;

.field final synthetic b:Lkxl;

.field final synthetic c:Lkxn;


# direct methods
.method constructor <init>(Lkxn;Lkxl;Lkxl;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lkxs;->c:Lkxn;

    iput-object p2, p0, Lkxs;->a:Lkxl;

    iput-object p3, p0, Lkxs;->b:Lkxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 3

    .prologue
    .line 384
    if-nez p1, :cond_1

    .line 385
    iget-object v1, p0, Lkxs;->a:Lkxl;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    .line 400
    :goto_1
    return-void

    .line 385
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    .line 388
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "scheduling"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "scheduling"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    :cond_2
    iget-object v1, p0, Lkxs;->a:Lkxl;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    iget-object v1, p0, Lkxs;->a:Lkxl;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 389
    :cond_3
    :try_start_1
    const-string v0, ""

    goto :goto_2

    .line 392
    :cond_4
    iget-object v0, p0, Lkxs;->b:Lkxl;

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "scheduling"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 395
    :cond_5
    const-string v0, ""

    goto :goto_3

    .line 398
    :cond_6
    iget-object v1, p0, Lkxs;->a:Lkxl;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, ""

    goto :goto_4
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 380
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lkxs;->a(Lis;)V

    return-void
.end method
