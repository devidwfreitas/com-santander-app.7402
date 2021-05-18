.class Lbr/com/santander/msgsdk/MSGSDK$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/MSGSDK;

.field final synthetic val$callbackOfflineMessage:Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$5;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK$5;->val$callbackOfflineMessage:Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$5;->val$callbackOfflineMessage:Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;->onError(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 5

    .prologue
    .line 326
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    :try_start_0
    new-instance v2, Lbr/com/santander/msgsdk/MSGSDK$5$1;

    invoke-direct {v2, p0}, Lbr/com/santander/msgsdk/MSGSDK$5$1;-><init>(Lbr/com/santander/msgsdk/MSGSDK$5;)V

    .line 330
    invoke-virtual {v2}, Lbr/com/santander/msgsdk/MSGSDK$5$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 331
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :try_start_1
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK$5;->val$callbackOfflineMessage:Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;

    invoke-interface {v1, v0}, Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;->onSuccess(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 334
    :goto_1
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK$5;->val$callbackOfflineMessage:Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;

    invoke-interface {v1, v0}, Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;->onSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 333
    :catch_1
    move-exception v1

    goto :goto_1
.end method
