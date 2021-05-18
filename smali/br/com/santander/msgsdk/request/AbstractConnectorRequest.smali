.class abstract Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/ConnectorRequestInterface;


# instance fields
.field private environment:Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

.field requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->requestProvider:Lbr/com/santander/msgsdk/request/RequestProvider;

    .line 24
    invoke-interface {p1}, Lbr/com/santander/msgsdk/request/RequestProvider;->getConnectorEnvironment()Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->environment:Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

    .line 25
    return-void
.end method


# virtual methods
.method public getBody()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getCertificate()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->environment:Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->environment:Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/request/ConnectorEnvironment;->getCertificate()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassObject()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public getConnectorType()Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->GET:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    return-object v0
.end method

.method public getEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->environment:Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/request/AbstractConnectorRequest;->environment:Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/request/ConnectorEnvironment;->getEndPoint()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeader()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getQueryString()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
