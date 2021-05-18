.class public interface abstract Lbr/com/santander/msgsdk/ConnectorRequestInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBody()Lorg/json/JSONObject;
.end method

.method public abstract getCertificate()Ljava/io/InputStream;
.end method

.method public abstract getClassObject()Ljava/lang/Class;
.end method

.method public abstract getConnectorType()Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;
.end method

.method public abstract getEndPoint()Ljava/lang/String;
.end method

.method public abstract getHeader()Lorg/json/JSONObject;
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getQueryString()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end method
