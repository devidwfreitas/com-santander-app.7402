.class public final Lbr/com/santander/msgsdk/MSGSDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/MSG;


# static fields
.field private static final TAG:Ljava/lang/String; = "MSGSDK"

.field private static instance:Lbr/com/santander/msgsdk/MSG;

.field private static statusRegistered:Ljava/lang/String;

.field private static success:Z


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private authentication:Lbr/com/santander/msgsdk/Authentication;

.field private connectorEnvironment:Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

.field private context:Landroid/content/Context;

.field private hashUser:Ljava/lang/String;

.field private hubConnector:Lie;

.field private idProvider:Lbr/com/santander/msgsdk/IdProvider;

.field private instanceID:Lczr;

.field private internalNotificationListener:Lbr/com/santander/msgsdk/MSGSDK$InternalNotificationListener;

.field private playServices:Lbr/com/santander/msgsdk/PlayServices;

.field private senderId:Ljava/lang/String;

.field private toolbarColor:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private tracking:Lbr/com/santander/msgsdk/Tracking;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    sput-object v0, Lbr/com/santander/msgsdk/MSGSDK;->statusRegistered:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lbr/com/santander/msgsdk/MSGSDK;->success:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->toolbarColor:I

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 60
    sput-boolean p0, Lbr/com/santander/msgsdk/MSGSDK;->success:Z

    return p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    sput-object p0, Lbr/com/santander/msgsdk/MSGSDK;->statusRegistered:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lbr/com/santander/msgsdk/MSGSDK;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lbr/com/santander/msgsdk/MSG;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lbr/com/santander/msgsdk/MSGSDK;->instance:Lbr/com/santander/msgsdk/MSG;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lbr/com/santander/msgsdk/MSGSDK;

    invoke-direct {v0}, Lbr/com/santander/msgsdk/MSGSDK;-><init>()V

    sput-object v0, Lbr/com/santander/msgsdk/MSGSDK;->instance:Lbr/com/santander/msgsdk/MSG;

    .line 88
    :cond_0
    sget-object v0, Lbr/com/santander/msgsdk/MSGSDK;->instance:Lbr/com/santander/msgsdk/MSG;

    return-object v0
.end method

.method public static sendUpdateStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-static {p1}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :cond_0
    invoke-static {p0}, Lbr/com/santander/msgsdk/util/Preferences;->getStatusToSend(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    const-string v2, "MSGSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatus - on shared to send --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v2, ";|;\\s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {p0}, Lbr/com/santander/msgsdk/util/Preferences;->clearStatusToSend(Landroid/content/Context;)V

    .line 109
    array-length v0, v2

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    move v0, v1

    .line 110
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 111
    aget-object v3, v2, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    aget-object v4, v2, v0

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 118
    sget-object v5, Lbr/com/santander/msgsdk/MSGSDK;->statusRegistered:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lbr/com/santander/msgsdk/MSGSDK;->statusRegistered:Ljava/lang/String;

    .line 119
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v5

    const-string v6, ""

    new-instance v7, Lbr/com/santander/msgsdk/MSGSDK$1;

    invoke-direct {v7, p0, v1, v3, v4}, Lbr/com/santander/msgsdk/MSGSDK$1;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v4, v6, v7}, Lbr/com/santander/msgsdk/MSG;->updateStatusArch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;)V

    .line 138
    sget-boolean v3, Lbr/com/santander/msgsdk/MSGSDK;->success:Z

    if-nez v3, :cond_1

    sget-object v3, Lbr/com/santander/msgsdk/MSGSDK;->statusRegistered:Ljava/lang/String;

    invoke-static {v3}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    const-string v3, "MSGSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStatus - preferences: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lbr/com/santander/msgsdk/MSGSDK;->statusRegistered:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v3, Lbr/com/santander/msgsdk/MSGSDK;->statusRegistered:Ljava/lang/String;

    invoke-static {p0, v3}, Lbr/com/santander/msgsdk/util/Preferences;->setStatusToSend(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    sget-object v3, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    sput-object v3, Lbr/com/santander/msgsdk/MSGSDK;->statusRegistered:Ljava/lang/String;

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_2
    invoke-static {p0}, Lbr/com/santander/msgsdk/util/Preferences;->getStatusToSend(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    :cond_3
    return-void
.end method

.method public static updateStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    invoke-static {p1}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {p0, p1, p2}, Lbr/com/santander/msgsdk/MSGSDK;->sendUpdateStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)Lbr/com/santander/msgsdk/domain/NotificationData;
    .locals 1

    .prologue
    .line 362
    if-eqz p1, :cond_0

    .line 363
    new-instance v0, Lbr/com/santander/msgsdk/domain/NotificationData;

    invoke-direct {v0, p1}, Lbr/com/santander/msgsdk/domain/NotificationData;-><init>(Landroid/os/Bundle;)V

    .line 365
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fromIntent(Landroid/content/Intent;)Lbr/com/santander/msgsdk/domain/NotificationData;
    .locals 1

    .prologue
    .line 354
    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/MSGSDK;->fromBundle(Landroid/os/Bundle;)Lbr/com/santander/msgsdk/domain/NotificationData;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->idProvider:Lbr/com/santander/msgsdk/IdProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->idProvider:Lbr/com/santander/msgsdk/IdProvider;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/IdProvider;->getAppId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->idProvider:Lbr/com/santander/msgsdk/IdProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->idProvider:Lbr/com/santander/msgsdk/IdProvider;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/IdProvider;->getAppKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->appKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAuthentication()Lbr/com/santander/msgsdk/Authentication;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->authentication:Lbr/com/santander/msgsdk/Authentication;

    return-object v0
.end method

.method public getConnectorEnvironment()Lbr/com/santander/msgsdk/request/ConnectorEnvironment;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->connectorEnvironment:Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 398
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHubConnector()Lie;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    return-object v0
.end method

.method public getInternalNotificationListener()Lbr/com/santander/msgsdk/MSGSDK$InternalNotificationListener;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->internalNotificationListener:Lbr/com/santander/msgsdk/MSGSDK$InternalNotificationListener;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->idProvider:Lbr/com/santander/msgsdk/IdProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->idProvider:Lbr/com/santander/msgsdk/IdProvider;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/IdProvider;->getSenderId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->senderId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 371
    :try_start_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->instanceID:Lczr;

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/MSGSDK;->getSenderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCM"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lczr;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    const-string v1, "MSGSDK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    const-string v0, ""

    goto :goto_0
.end method

.method public getToolbarColor()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->toolbarColor:I

    return v0
.end method

.method public getTracking()Lbr/com/santander/msgsdk/Tracking;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->tracking:Lbr/com/santander/msgsdk/Tracking;

    return-object v0
.end method

.method public getUnreadNotificationsNumber(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 680
    invoke-static {p1}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->getUnreadNotificationsNumber(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->idProvider:Lbr/com/santander/msgsdk/IdProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->idProvider:Lbr/com/santander/msgsdk/IdProvider;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/IdProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/MSGSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lie;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 160
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK;->context:Landroid/content/Context;

    .line 161
    if-eqz p4, :cond_0

    .line 162
    sget v0, Lbr/com/santander/msgsdk/R$string;->msg_sender_id_prod:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->senderId:Ljava/lang/String;

    .line 163
    sget v0, Lbr/com/santander/msgsdk/R$string;->msg_app_key_prod:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->appKey:Ljava/lang/String;

    .line 164
    sget v0, Lbr/com/santander/msgsdk/R$string;->msg_app_id_prod:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->appId:Ljava/lang/String;

    .line 172
    :goto_0
    :try_start_0
    invoke-static {p3}, Lbr/com/santander/msgsdk/util/EncryptorUtil;->SHAGenerate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->hashUser:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 183
    :goto_1
    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    .line 184
    invoke-static {p1}, Lczr;->c(Landroid/content/Context;)Lczr;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->instanceID:Lczr;

    .line 185
    new-instance v0, Lbr/com/santander/msgsdk/PlayServices;

    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hashUser:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lbr/com/santander/msgsdk/PlayServices;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->playServices:Lbr/com/santander/msgsdk/PlayServices;

    .line 186
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->playServices:Lbr/com/santander/msgsdk/PlayServices;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/PlayServices;->start()V

    .line 187
    return-void

    .line 166
    :cond_0
    sget v0, Lbr/com/santander/msgsdk/R$string;->msg_sender_id_homol:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->senderId:Ljava/lang/String;

    .line 167
    sget v0, Lbr/com/santander/msgsdk/R$string;->msg_app_key_homol:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->appKey:Ljava/lang/String;

    .line 168
    sget v0, Lbr/com/santander/msgsdk/R$string;->msg_app_id_homol:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->appId:Ljava/lang/String;

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, ""

    iput-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hashUser:Ljava/lang/String;

    .line 175
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchAlgorithmException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :catch_1
    move-exception v0

    .line 177
    const-string v1, ""

    iput-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hashUser:Ljava/lang/String;

    .line 178
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 179
    :catch_2
    move-exception v0

    .line 180
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public init(Landroid/content/Context;Lie;Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0, p1, p2, p3, p4}, Lbr/com/santander/msgsdk/MSGSDK;->init(Landroid/content/Context;Lie;Ljava/lang/String;Z)V

    .line 150
    const-string v0, "spUtFile"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    if-eqz p5, :cond_0

    const-string v1, "sput"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbr/com/santander/msgsdk/gcm/RegistrationIntentServiceMSG;->start(Landroid/content/Context;Z)V

    .line 154
    :cond_0
    invoke-static {p1, v3, v3}, Lbr/com/santander/msgsdk/MSGSDK;->sendUpdateStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "MSGSDK"

    const-string v1, "MSGSDK_VERSION: 2.1.12"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public initConfigPanel(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 466
    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    .line 467
    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 470
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 513
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 473
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 474
    sget v1, Lbr/com/santander/msgsdk/R$layout;->dialog_msg:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 475
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 477
    sget v0, Lbr/com/santander/msgsdk/R$id;->cancel_dialog_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 478
    sget v1, Lbr/com/santander/msgsdk/R$id;->open_browser_dialog_button:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 479
    sget v4, Lbr/com/santander/msgsdk/R$id;->dialog_description_tv:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 480
    const-string v4, "Habilite o recebimento de notifica\u00e7\u00f5es e tenha acesso ao painel para personalizar as mensagens recebidas."

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 483
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 485
    new-instance v4, Lbr/com/santander/msgsdk/MSGSDK$6;

    invoke-direct {v4, p0, v2}, Lbr/com/santander/msgsdk/MSGSDK$6;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    new-instance v0, Lbr/com/santander/msgsdk/MSGSDK$7;

    invoke-direct {v0, p0, p1, v2}, Lbr/com/santander/msgsdk/MSGSDK$7;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Landroid/app/Activity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    new-instance v0, Lbr/com/santander/msgsdk/MSGSDK$8;

    invoke-direct {v0, p0, v2}, Lbr/com/santander/msgsdk/MSGSDK$8;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public initNotifications(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 625
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 626
    return-void
.end method

.method public initOffline(Landroid/content/Context;Lie;Z)V
    .locals 1

    .prologue
    .line 201
    if-eqz p2, :cond_0

    .line 202
    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    .line 204
    :cond_0
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK;->context:Landroid/content/Context;

    .line 205
    if-eqz p3, :cond_1

    .line 206
    sget v0, Lbr/com/santander/msgsdk/R$string;->msg_app_key_prod:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->appKey:Ljava/lang/String;

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_1
    sget v0, Lbr/com/santander/msgsdk/R$string;->msg_app_key_homol:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->appKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public isPlayServiceSuccess()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->playServices:Lbr/com/santander/msgsdk/PlayServices;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/PlayServices;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public offlineMessagesArch(Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;)V
    .locals 4

    .prologue
    .line 320
    new-instance v0, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 321
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/request/RequestOfflineMessages;->createHubRequest()Lir;

    move-result-object v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    new-instance v2, Lbr/com/santander/msgsdk/MSGSDK$5;

    invoke-direct {v2, p0, p1}, Lbr/com/santander/msgsdk/MSGSDK$5;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 350
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    .line 346
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :catch_2
    move-exception v0

    .line 348
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestConfigPanel(Ljava/lang/String;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;)V
    .locals 4

    .prologue
    .line 517
    new-instance v0, Lbr/com/santander/msgsdk/request/RequestConfigPanel;

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/MSGSDK;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbr/com/santander/msgsdk/request/RequestConfigPanel;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/request/RequestConfigPanel;->createHubRequest()Lir;

    move-result-object v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    if-nez v1, :cond_0

    .line 539
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    new-instance v2, Lbr/com/santander/msgsdk/MSGSDK$9;

    invoke-direct {v2, p0, p2}, Lbr/com/santander/msgsdk/MSGSDK$9;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    :goto_1
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException | InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    :catch_1
    move-exception v0

    .line 537
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public requestConfigPanelUpdate(Ljava/lang/String;Lbr/com/santander/msgsdk/configPanel/model/Category;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;)V
    .locals 4

    .prologue
    .line 543
    new-instance v0, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/MSGSDK;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;Ljava/lang/String;Lbr/com/santander/msgsdk/configPanel/model/Category;)V

    .line 544
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/request/RequestConfigPanelUpdate;->createHubRequest()Lir;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    if-nez v1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 549
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    new-instance v2, Lbr/com/santander/msgsdk/MSGSDK$10;

    invoke-direct {v2, p0, p3}, Lbr/com/santander/msgsdk/MSGSDK$10;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    :goto_1
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException | InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :catch_1
    move-exception v0

    .line 563
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public requestNotifications(Ljava/lang/String;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;)V
    .locals 4

    .prologue
    .line 570
    new-instance v0, Lbr/com/santander/msgsdk/request/RequestNotifications;

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/MSGSDK;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbr/com/santander/msgsdk/request/RequestNotifications;-><init>(Ljava/lang/String;Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 571
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/request/RequestNotifications;->createHubRequest()Lir;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    if-nez v1, :cond_0

    .line 590
    :goto_0
    return-void

    .line 576
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    new-instance v2, Lbr/com/santander/msgsdk/MSGSDK$11;

    invoke-direct {v2, p0, p2}, Lbr/com/santander/msgsdk/MSGSDK$11;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    :goto_1
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException | InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public requestUpdateStatusReadOrDelete(Ljava/lang/String;Ljava/lang/String;ZZLbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;)V
    .locals 6

    .prologue
    .line 596
    new-instance v0, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 599
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/request/RequestNotificationReadOrDeleted;->createHubRequest()Lir;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    if-nez v1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 605
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    new-instance v2, Lbr/com/santander/msgsdk/MSGSDK$12;

    invoke-direct {v2, p0, p5}, Lbr/com/santander/msgsdk/MSGSDK$12;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    :goto_1
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException | InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :catch_1
    move-exception v0

    .line 619
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public saveUserPreferences()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->context:Landroid/content/Context;

    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hashUser:Ljava/lang/String;

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/util/Preferences;->setUserRegisteredCloudMessaging(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public sendNotification(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V
    .locals 0

    .prologue
    .line 450
    invoke-virtual {p0, p1, p2}, Lbr/com/santander/msgsdk/MSGSDK;->updateStatusReceived(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V

    .line 451
    invoke-static {p1, p2}, Lbr/com/santander/msgsdk/Notification;->sendNotification(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V

    .line 452
    return-void
.end method

.method public setAuthentication(Lbr/com/santander/msgsdk/Authentication;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK;->authentication:Lbr/com/santander/msgsdk/Authentication;

    .line 424
    return-void
.end method

.method public setConnectorEnvironment(Lbr/com/santander/msgsdk/request/ConnectorEnvironment;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK;->connectorEnvironment:Lbr/com/santander/msgsdk/request/ConnectorEnvironment;

    .line 438
    return-void
.end method

.method public setHubConnector(Lie;)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public setIdProvider(Lbr/com/santander/msgsdk/IdProvider;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK;->idProvider:Lbr/com/santander/msgsdk/IdProvider;

    .line 428
    return-void
.end method

.method public setInternalNotificationListener(Lbr/com/santander/msgsdk/MSGSDK$InternalNotificationListener;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK;->internalNotificationListener:Lbr/com/santander/msgsdk/MSGSDK$InternalNotificationListener;

    .line 446
    return-void
.end method

.method public setToolbarColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 693
    iput p1, p0, Lbr/com/santander/msgsdk/MSGSDK;->toolbarColor:I

    .line 694
    return-void
.end method

.method public setTracking(Lbr/com/santander/msgsdk/Tracking;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK;->tracking:Lbr/com/santander/msgsdk/Tracking;

    .line 689
    return-void
.end method

.method public showPlayServiceError(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->playServices:Lbr/com/santander/msgsdk/PlayServices;

    invoke-virtual {v0, p1}, Lbr/com/santander/msgsdk/PlayServices;->showErrorDialog(Landroid/app/Activity;)V

    .line 414
    return-void
.end method

.method public subscribeArch(Lbr/com/santander/msgsdk/MSGSDK$Callback;)V
    .locals 4

    .prologue
    .line 217
    new-instance v0, Lbr/com/santander/msgsdk/request/RequestSubscribe;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/request/RequestSubscribe;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 218
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/request/RequestSubscribe;->createHubRequest()Lir;

    move-result-object v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    new-instance v2, Lbr/com/santander/msgsdk/MSGSDK$2;

    invoke-direct {v2, p0, p1}, Lbr/com/santander/msgsdk/MSGSDK$2;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$Callback;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 247
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    .line 243
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :catch_2
    move-exception v0

    .line 245
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unsubscribeArch(Lbr/com/santander/msgsdk/MSGSDK$Callback;)V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK;->context:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->clearBadgeNumber(Landroid/content/Context;)V

    .line 257
    new-instance v0, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;)V

    .line 258
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/request/RequestUnsubscribe;->createHubRequest()Lir;

    move-result-object v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    new-instance v2, Lbr/com/santander/msgsdk/MSGSDK$3;

    invoke-direct {v2, p0, p1}, Lbr/com/santander/msgsdk/MSGSDK$3;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$Callback;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 287
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :catch_1
    move-exception v0

    .line 283
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :catch_2
    move-exception v0

    .line 285
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateStatusArch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;)V
    .locals 4

    .prologue
    .line 291
    new-instance v0, Lbr/com/santander/msgsdk/request/RequestStatus;

    invoke-direct {v0, p0, p1, p2, p3}, Lbr/com/santander/msgsdk/request/RequestStatus;-><init>(Lbr/com/santander/msgsdk/request/RequestProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/request/RequestStatus;->createHubRequest()Lir;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 298
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/MSGSDK;->hubConnector:Lie;

    new-instance v2, Lbr/com/santander/msgsdk/MSGSDK$4;

    invoke-direct {v2, p0, p4}, Lbr/com/santander/msgsdk/MSGSDK$4;-><init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;)V

    invoke-virtual {v1, v0, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :catch_1
    move-exception v0

    .line 312
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :catch_2
    move-exception v0

    .line 314
    const-string v1, "MSGSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateStatusReceived(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p2}, Lbr/com/santander/msgsdk/domain/NotificationData;->getPushId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RECEIVED"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lbr/com/santander/msgsdk/MSGSDK;->updateStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method
