.class public Lcom/adjust/sdk/SessionParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public callbackParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public partnerParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deepCopy()Lcom/adjust/sdk/SessionParameters;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/adjust/sdk/SessionParameters;

    invoke-direct {v0}, Lcom/adjust/sdk/SessionParameters;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 45
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    .line 47
    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    if-ne p1, p0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 23
    :cond_3
    check-cast p1, Lcom/adjust/sdk/SessionParameters;

    .line 25
    iget-object v2, p0, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    iget-object v3, p1, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 26
    :cond_4
    iget-object v2, p0, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    iget-object v3, p1, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 33
    .line 34
    iget-object v0, p0, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->hashObject(Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    .line 35
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashObject(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    return v0
.end method
