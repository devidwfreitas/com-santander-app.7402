.class public Lcom/adjust/sdk/ActivityPackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x7fab32c0b48621L


# instance fields
.field private activityKind:Lcom/adjust/sdk/ActivityKind;

.field private callbackParameters:Ljava/util/Map;
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

.field private clickTimeInMilliseconds:J

.field private clickTimeInSeconds:J

.field private clientSdk:Ljava/lang/String;

.field private transient hashCode:I

.field private installBeginTimeInSeconds:J

.field private parameters:Ljava/util/Map;
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

.field private partnerParameters:Ljava/util/Map;
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

.field private path:Ljava/lang/String;

.field private retries:I

.field private suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "path"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "clientSdk"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "parameters"

    const-class v4, Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "activityKind"

    const-class v4, Lcom/adjust/sdk/ActivityKind;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "suffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "callbackParameters"

    const-class v4, Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "partnerParameters"

    const-class v4, Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/adjust/sdk/ActivityPackage;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Lcom/adjust/sdk/ActivityKind;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    .line 142
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    .line 143
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 180
    const-string v0, "path"

    invoke-static {v1, v0, v3}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    .line 181
    const-string v0, "clientSdk"

    invoke-static {v1, v0, v3}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    .line 182
    const-string v0, "parameters"

    invoke-static {v1, v0, v3}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    .line 183
    const-string v0, "activityKind"

    sget-object v2, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    invoke-static {v1, v0, v2}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityKind;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    .line 184
    const-string v0, "suffix"

    invoke-static {v1, v0, v3}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    .line 185
    const-string v0, "callbackParameters"

    invoke-static {v1, v0, v3}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->callbackParameters:Ljava/util/Map;

    .line 186
    const-string v0, "partnerParameters"

    invoke-static {v1, v0, v3}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->partnerParameters:Ljava/util/Map;

    .line 187
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 175
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    if-ne p1, p0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 194
    :cond_3
    check-cast p1, Lcom/adjust/sdk/ActivityPackage;

    .line 196
    iget-object v2, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 197
    :cond_4
    iget-object v2, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    iget-object v3, p1, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 198
    :cond_5
    iget-object v2, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    iget-object v3, p1, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 199
    :cond_6
    iget-object v2, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    iget-object v3, p1, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalEnum(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 200
    :cond_7
    iget-object v2, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 201
    :cond_8
    iget-object v2, p0, Lcom/adjust/sdk/ActivityPackage;->callbackParameters:Ljava/util/Map;

    iget-object v3, p1, Lcom/adjust/sdk/ActivityPackage;->callbackParameters:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 202
    :cond_9
    iget-object v2, p0, Lcom/adjust/sdk/ActivityPackage;->partnerParameters:Ljava/util/Map;

    iget-object v3, p1, Lcom/adjust/sdk/ActivityPackage;->partnerParameters:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getActivityKind()Lcom/adjust/sdk/ActivityKind;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    return-object v0
.end method

.method public getCallbackParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->callbackParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getClickTimeInMilliseconds()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/adjust/sdk/ActivityPackage;->clickTimeInMilliseconds:J

    return-wide v0
.end method

.method public getClickTimeInSeconds()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/adjust/sdk/ActivityPackage;->clickTimeInSeconds:J

    return-wide v0
.end method

.method public getClientSdk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Path:      %s\n"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ClientSdk: %s\n"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 155
    const-string v0, "Parameters:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 157
    new-array v1, v10, [Ljava/lang/String;

    const-string v3, "app_secret"

    aput-object v3, v1, v8

    const-string v3, "secret_id"

    aput-object v3, v1, v9

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 158
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 163
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "\n\t%-16s %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFailureMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 170
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Failed to track %s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v4}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallBeginTimeInSeconds()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/adjust/sdk/ActivityPackage;->installBeginTimeInSeconds:J

    return-wide v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getPartnerParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->partnerParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->retries:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    if-nez v0, :cond_0

    .line 209
    const/16 v0, 0x11

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 210
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 211
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 212
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashObject(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 213
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashEnum(Ljava/lang/Enum;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 214
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 215
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->callbackParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashObject(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 216
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->partnerParameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashObject(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 218
    :cond_0
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    return v0
.end method

.method public increaseRetries()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->retries:I

    .line 106
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->retries:I

    return v0
.end method

.method public setCallbackParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->callbackParameters:Ljava/util/Map;

    .line 83
    return-void
.end method

.method public setClickTimeInMilliseconds(J)V
    .locals 1

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/adjust/sdk/ActivityPackage;->clickTimeInMilliseconds:J

    .line 115
    return-void
.end method

.method public setClickTimeInSeconds(J)V
    .locals 1

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/adjust/sdk/ActivityPackage;->clickTimeInSeconds:J

    .line 123
    return-void
.end method

.method public setClientSdk(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setInstallBeginTimeInSeconds(J)V
    .locals 1

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/adjust/sdk/ActivityPackage;->installBeginTimeInSeconds:J

    .line 131
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    .line 79
    return-void
.end method

.method public setPartnerParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->partnerParameters:Ljava/util/Map;

    .line 87
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 146
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v4}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
