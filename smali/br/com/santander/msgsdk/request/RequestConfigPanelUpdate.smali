.class public Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;
.super Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final URL:Ljava/lang/String; = "messaging-internet/v1/update-category"


# instance fields
.field private applicationId:Ljava/lang/String;

.field private category:Lbr/com/santander/msgsdk/configPanel/model/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbr/com/santander/msgsdk/request/RequestProvider;Ljava/lang/String;Lbr/com/santander/msgsdk/configPanel/model/Category;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 29
    iput-object p2, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->applicationId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    .line 31
    return-void
.end method


# virtual methods
.method public createHubRequest()Lir;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 35
    const-string v1, "messaging-internet/v1/update-category"

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lim;->POST:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    .line 37
    sget-object v1, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v1, v2}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Lorg/json/JSONObject;)V

    .line 38
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Boolean;)V

    .line 39
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Object;)V

    .line 40
    return-object v0
.end method

.method public getBody()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 64
    :try_start_0
    const-string v0, "id"

    iget-object v3, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-virtual {v3}, Lbr/com/santander/msgsdk/configPanel/model/Category;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v3, "membershipStatus"

    iget-object v0, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/model/Category;->isMembershipStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 68
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70
    const-string v2, "applicationId"

    iget-object v3, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v2, "categories"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    sget-object v0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBody"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_1
    return-object v1

    .line 65
    :cond_0
    const-string v0, "false"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    sget-object v2, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->TAG:Ljava/lang/String;

    const-string v3, "getBody JSONException "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
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
    .line 50
    sget-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->PUT:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

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
    .line 55
    sget-object v0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "messaging-internet/v1/update-category"

    return-object v0
.end method

.method public bridge synthetic getQueryString()Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->getQueryString()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
