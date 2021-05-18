.class public Lbr/com/santander/msgsdk/domain/NotificationData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_SPLITTER:Ljava/lang/String; = ";"

.field public static final CONTEXTO:I = 0x1

.field public static final INTERATIVO:I = 0x3

.field public static final IN_ACTION_SPLITTER:Ljava/lang/String; = "\\|"

.field private static final KEY:Ljava/lang/String; = "metadata"

.field private static final TAG:Ljava/lang/String;

.field public static final URL:I = 0x2


# instance fields
.field private callbackEnabled:Z

.field private interAcaoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/domain/InterAcao;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private metadata:Ljava/lang/String;

.field private msgPushId:Ljava/lang/String;

.field private msgPushInterativo:Ljava/lang/String;

.field private msgPushValue:Ljava/lang/String;

.field private pushId:Ljava/lang/String;

.field private sandboxEnable:Z

.field private stimulumId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private userData:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbr/com/santander/msgsdk/domain/NotificationData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/domain/NotificationData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lbr/com/santander/msgsdk/domain/NotificationData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUNDLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->title:Ljava/lang/String;

    .line 52
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->message:Ljava/lang/String;

    .line 53
    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->metadata:Ljava/lang/String;

    .line 54
    sget-object v0, Lbr/com/santander/msgsdk/domain/NotificationData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METADATA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->metadata:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->metadata:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v0, "userData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "userData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->userData:Ljava/lang/String;

    .line 62
    const-string v0, "pushId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pushId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->pushId:Ljava/lang/String;

    .line 63
    const-string v0, "userId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "userId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->userId:Ljava/lang/String;

    .line 65
    const-string v0, "userData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "userData"

    .line 66
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "msgPushValue"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "userData"

    .line 67
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "msgPushValue"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushValue:Ljava/lang/String;

    .line 68
    const-string v0, "userData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "userData"

    .line 69
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "msgPushId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "userData"

    .line 70
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "msgPushId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushId:Ljava/lang/String;

    .line 71
    const-string v0, "userData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "userData"

    .line 72
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "stimulumId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "userData"

    .line 73
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "stimulumId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->stimulumId:Ljava/lang/String;

    .line 75
    const-string v0, "userData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "userData"

    .line 76
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "msgPushInterativo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "userData"

    .line 77
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "msgPushInterativo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushInterativo:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_9
    return-void

    .line 51
    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    .line 52
    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    .line 60
    :cond_2
    :try_start_1
    const-string v0, ""

    goto/16 :goto_2

    .line 62
    :cond_3
    const-string v0, ""

    goto/16 :goto_3

    .line 63
    :cond_4
    const-string v0, ""

    goto/16 :goto_4

    .line 67
    :cond_5
    const-string v0, ""

    goto/16 :goto_5

    :cond_6
    const-string v0, ""

    goto/16 :goto_5

    .line 70
    :cond_7
    const-string v0, ""

    goto :goto_6

    :cond_8
    const-string v0, ""

    goto :goto_6

    .line 73
    :cond_9
    const-string v0, ""

    goto :goto_7

    :cond_a
    const-string v0, ""

    goto :goto_7

    .line 77
    :cond_b
    const-string v0, ""

    goto :goto_8

    :cond_c
    const-string v0, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-object v0, Lbr/com/santander/msgsdk/domain/NotificationData;->TAG:Ljava/lang/String;

    const-string v1, "Notification Parse - JSONException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private loadInterAcaoList()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->interAcaoList:Ljava/util/List;

    .line 184
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushInterativo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushInterativo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushInterativo:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 187
    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 188
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v6, Lbr/com/santander/msgsdk/domain/InterAcao;

    aget-object v0, v1, v3

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-direct {v6, v0, v7}, Lbr/com/santander/msgsdk/domain/InterAcao;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, -0x1

    .line 193
    const/4 v7, 0x2

    :try_start_0
    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 197
    :goto_1
    invoke-virtual {v6, v0}, Lbr/com/santander/msgsdk/domain/InterAcao;->setIcon(I)V

    .line 199
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->interAcaoList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    sget-object v7, Lbr/com/santander/msgsdk/domain/NotificationData;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterAcaoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/domain/InterAcao;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->interAcaoList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushInterativo:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbr/com/santander/msgsdk/domain/NotificationData;->loadInterAcaoList()V

    .line 150
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->interAcaoList:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgPushInterativo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushInterativo:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgPushValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getStimulumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->stimulumId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isCallbackEnabled()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->callbackEnabled:Z

    return v0
.end method

.method public isSandboxEnable()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->sandboxEnable:Z

    return v0
.end method

.method public setCallbackEnabled(Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->callbackEnabled:Z

    .line 163
    return-void
.end method

.method public setInterAcaoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/domain/InterAcao;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->interAcaoList:Ljava/util/List;

    .line 155
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->message:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setMsgPushId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setMsgPushInterativo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushInterativo:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setMsgPushValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->msgPushValue:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->pushId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSandboxEnable(Z)V
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->sandboxEnable:Z

    .line 171
    return-void
.end method

.method public setStimulumId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->stimulumId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->title:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->userId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lbr/com/santander/msgsdk/domain/NotificationData;->uuid:Ljava/lang/String;

    .line 179
    return-void
.end method
