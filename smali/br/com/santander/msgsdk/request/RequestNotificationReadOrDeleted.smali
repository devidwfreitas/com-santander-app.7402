.class public Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;
.super Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final URL:Ljava/lang/String; = "messaging-internet/v1/update-notification-status"


# instance fields
.field private excluded:Z

.field private notificationId:Ljava/lang/String;

.field private read:Z

.field private timestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbr/com/santander/msgsdk/request/RequestConfigPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbr/com/santander/msgsdk/request/RequestProvider;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 30
    iput-object p2, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->notificationId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->timestamp:Ljava/lang/String;

    .line 32
    iput-boolean p4, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->read:Z

    .line 33
    iput-boolean p5, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->excluded:Z

    .line 34
    return-void
.end method


# virtual methods
.method public createHubRequest()Lir;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lir;

    invoke-direct {v0}, Lir;-><init>()V

    .line 38
    const-string v1, "messaging-internet/v1/update-notification-status"

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lim;->POST:Lim;

    invoke-virtual {v0, v1}, Lir;->a(Lim;)V

    .line 40
    sget-object v1, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v1, v2}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Lorg/json/JSONObject;)V

    .line 41
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Boolean;)V

    .line 42
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir;->a(Ljava/lang/Object;)V

    .line 43
    return-object v0
.end method

.method public getBody()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 63
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :try_start_0
    const-string v0, "notificationId"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->notificationId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v0, "timestamp"

    iget-object v2, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "read"

    iget-boolean v0, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->read:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v2, "excluded"

    iget-boolean v0, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->excluded:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :goto_2
    return-object v1

    .line 67
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "false"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    sget-object v2, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->TAG:Ljava/lang/String;

    const-string v3, "getBody JSONException "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
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
    .line 53
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
    .line 58
    sget-object v0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/request/HeaderProvider;->unauth(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "messaging-internet/v1/update-notification-status"

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
