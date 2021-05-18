.class public Lbr/com/santander/msgsdk/request/RequestOfflineMessages;
.super Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineMessages"

.field private static final URL:Ljava/lang/String; = "/push/v1/offlineMessages"


# direct methods
.method public constructor <init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 25
    return-void
.end method

.method private createParamsGet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?applicationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    .line 39
    invoke-interface {v1}, Lbr/com/santander/msgsdk/request/RequestProvider;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    .line 40
    invoke-interface {v1}, Lbr/com/santander/msgsdk/request/RequestProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&statusFilterMode=INCLUDE&status=RECEIVED&searchSize=50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    return-object v0
.end method


# virtual methods
.method public createHubRequest()Lir;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/push/v1/offlineMessages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;->createParamsGet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/String;)V

    .line 30
    sget-object v1, Lim;->GET:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    .line 31
    const-string v1, "OfflineMessages"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v1, v2}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Lorg/json/JSONObject;)V

    .line 32
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Boolean;)V

    .line 34
    return-object v0
.end method

.method public bridge synthetic getBody()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getBody()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCertificate()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getCertificate()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getClassObject()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 68
    const-class v0, [Lbr/com/santander/msgsdk/entities/ListInbox;

    return-object v0
.end method

.method public getConnectorType()Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->GET:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    return-object v0
.end method

.method public bridge synthetic getEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getEndPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 53
    const-string v0, "OfflineMessages"

    iget-object v1, p0, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "/push/v1/offlineMessages"

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
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    const-string v1, "applicationId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-interface {v2}, Lbr/com/santander/msgsdk/request/RequestProvider;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "deviceId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-interface {v2}, Lbr/com/santander/msgsdk/request/RequestProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "statusFilterMode"

    const-string v2, "INCLUDE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "searchSize"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object v0
.end method
