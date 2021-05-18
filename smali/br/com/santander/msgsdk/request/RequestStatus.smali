.class public Lbr/com/santander/msgsdk/request/RequestStatus;
.super Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestStatus"

.field private static final URL:Ljava/lang/String; = "push/v1/status"


# instance fields
.field private pushId:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private uuId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbr/com/santander/msgsdk/request/RequestProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 26
    iput-object p2, p0, Lbr/com/santander/msgsdk/request/RequestStatus;->pushId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lbr/com/santander/msgsdk/request/RequestStatus;->status:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lbr/com/santander/msgsdk/request/RequestStatus;->uuId:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public createHubRequest()Lir;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 33
    const-string v1, "push/v1/status"

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lim;->PUT:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    .line 35
    const-string v1, "RequestStatus"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestStatus;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v1, v2}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Lorg/json/JSONObject;)V

    .line 36
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Boolean;)V

    .line 37
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/request/RequestStatus;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Object;)V

    .line 38
    return-object v0
.end method

.method public getBody()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    :try_start_0
    const-string v0, "pushMessageId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestStatus;->pushId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v0, "status"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestStatus;->status:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v2, "RequestStatus"

    const-string v3, "getBody"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic getCertificate()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getCertificate()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassObject()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getClassObject()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getConnectorType()Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->PUT:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    return-object v0
.end method

.method public bridge synthetic getEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getEndPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 53
    const-string v0, "RequestStatus"

    iget-object v1, p0, Lbr/com/santander/msgsdk/request/RequestStatus;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "push/v1/status"

    return-object v0
.end method

.method public bridge synthetic getQueryString()Ljava/util/Map;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getQueryString()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
