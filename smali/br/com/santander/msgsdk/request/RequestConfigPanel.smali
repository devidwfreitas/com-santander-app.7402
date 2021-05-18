.class public Lbr/com/santander/msgsdk/request/RequestConfigPanel;
.super Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final URL:Ljava/lang/String; = "messaging-internet/v1/checkCategoryMembership"


# instance fields
.field private applicationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbr/com/santander/msgsdk/request/RequestConfigPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbr/com/santander/msgsdk/request/RequestProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 26
    iput-object p2, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->applicationId:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public createHubRequest()Lir;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 31
    const-string v1, "messaging-internet/v1/checkCategoryMembership"

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lim;->POST:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    .line 33
    sget-object v1, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v1, v2}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Lorg/json/JSONObject;)V

    .line 34
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Boolean;)V

    .line 35
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Object;)V

    .line 36
    return-object v0
.end method

.method public getBody()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :try_start_0
    const-string v0, "applicationId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v2, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->TAG:Ljava/lang/String;

    const-string v3, "getBody JSONException "

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
    .line 46
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
    .line 51
    sget-object v0, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "messaging-internet/v1/checkCategoryMembership"

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
