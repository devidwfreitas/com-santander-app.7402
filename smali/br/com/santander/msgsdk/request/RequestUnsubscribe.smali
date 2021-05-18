.class public Lbr/com/santander/msgsdk/request/RequestUnsubscribe;
.super Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestUnsubscribe"

.field private static final URL:Ljava/lang/String; = "push/v1/subscriptions/byDeviceId"


# direct methods
.method public constructor <init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createHubRequest()Lir;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 45
    const-string v1, "push/v1/subscriptions/byDeviceId"

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lim;->DELETE:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    .line 47
    const-string v1, "RequestUnsubscribe"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v1, v2}, Lbr/com/santander/msgsdk/request/HeaderProvider;->auth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Lorg/json/JSONObject;)V

    .line 48
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Boolean;)V

    .line 49
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Object;)V

    .line 51
    return-object v0
.end method

.method public getBody()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_0
    const-string v0, "appId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-interface {v2}, Lbr/com/santander/msgsdk/request/RequestProvider;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v0, "userId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-interface {v2}, Lbr/com/santander/msgsdk/request/RequestProvider;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v0, "deviceId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-interface {v2}, Lbr/com/santander/msgsdk/request/RequestProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v0, "platform"

    const-string v2, "ANDROID"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v2, "RequestUnsubscribe"

    const-string v3, "getBody"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic getCertificate()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getCertificate()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassObject()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getClassObject()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getConnectorType()Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->DELETE:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    return-object v0
.end method

.method public bridge synthetic getEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getEndPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 40
    const-string v0, "RequestUnsubscribe"

    iget-object v1, p0, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "push/v1/subscriptions/byDeviceId"

    return-object v0
.end method

.method public getQueryString()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v1, "appId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-interface {v2}, Lbr/com/santander/msgsdk/request/RequestProvider;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "userId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-interface {v2}, Lbr/com/santander/msgsdk/request/RequestProvider;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "deviceId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-interface {v2}, Lbr/com/santander/msgsdk/request/RequestProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "platform"

    const-string v2, "ANDROID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v0
.end method
