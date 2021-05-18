.class public interface abstract Lbr/com/santander/msgsdk/request/RequestProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/IdProvider;


# virtual methods
.method public abstract getAuthentication()Lbr/com/santander/msgsdk/Authentication;
.end method

.method public abstract getConnectorEnvironment()Lbr/com/santander/msgsdk/request/ConnectorEnvironment;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method
