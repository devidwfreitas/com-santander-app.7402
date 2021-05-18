.class Lkxu;
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
    .line 498
    iput-object p1, p0, Lkxu;->c:Lkxn;

    iput-object p2, p0, Lkxu;->a:Lkxl;

    iput-object p3, p0, Lkxu;->b:Lkxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 3

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    iget-object v0, p0, Lkxu;->a:Lkxl;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V

    .line 519
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 506
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "scheduling"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_1

    const-string v1, "protocol"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lkxu;->b:Lkxl;

    const-string v2, "protocol"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "number"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    iget-object v1, p0, Lkxu;->a:Lkxl;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 510
    :cond_1
    :try_start_1
    iget-object v0, p0, Lkxu;->b:Lkxl;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkxl;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 514
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 517
    :cond_3
    iget-object v1, p0, Lkxu;->a:Lkxl;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v1, v0}, Lkxl;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 498
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Lkxu;->a(Lis;)V

    return-void
.end method
