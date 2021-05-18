.class Lbr/com/santander/msgsdk/request/HeaderProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static auth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 16
    invoke-interface {p1}, Lbr/com/santander/msgsdk/request/RequestProvider;->getAuthentication()Lbr/com/santander/msgsdk/Authentication;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lbr/com/santander/msgsdk/request/HeaderProvider;->get(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static get(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;Z)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    :try_start_0
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lbr/com/santander/msgsdk/request/RequestProvider;->getAppKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "X-Application-Key"

    invoke-interface {p1}, Lbr/com/santander/msgsdk/request/RequestProvider;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v2

    invoke-interface {v2}, Lbr/com/santander/msgsdk/MSG;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v2, "HeaderProvider"

    invoke-static {p0, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbr/com/santander/msgsdk/request/HeaderProvider;->get(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
