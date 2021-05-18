.class public Lcom/adjust/sdk/Adjust;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultInstance:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0, p1}, Lcom/adjust/sdk/AdjustInstance;->addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p0, p1}, Lcom/adjust/sdk/AdjustInstance;->addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static appWillOpenUrl(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->appWillOpenUrl(Landroid/net/Uri;)V

    .line 67
    return-void
.end method

.method public static getAdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->getAdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAmazonAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getFireAdvertisingId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttribution()Lcom/adjust/sdk/AdjustAttribution;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/adjust/sdk/Adjust;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->defaultInstance:Lcom/adjust/sdk/AdjustInstance;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/adjust/sdk/AdjustInstance;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustInstance;-><init>()V

    sput-object v0, Lcom/adjust/sdk/Adjust;->defaultInstance:Lcom/adjust/sdk/AdjustInstance;

    .line 31
    :cond_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->defaultInstance:Lcom/adjust/sdk/AdjustInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V

    .line 126
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static onCreate(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 37
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->onPause()V

    .line 52
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->onResume()V

    .line 47
    return-void
.end method

.method public static removeSessionCallbackParameter(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->removeSessionCallbackParameter(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static removeSessionPartnerParameter(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->removeSessionPartnerParameter(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static resetSessionCallbackParameters()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->resetSessionCallbackParameters()V

    .line 107
    return-void
.end method

.method public static resetSessionPartnerParameters()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->resetSessionPartnerParameters()V

    .line 112
    return-void
.end method

.method public static sendFirstPackages()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->sendFirstPackages()V

    .line 82
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->setEnabled(Z)V

    .line 57
    return-void
.end method

.method public static setOfflineMode(Z)V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->setOfflineMode(Z)V

    .line 77
    return-void
.end method

.method public static setPushToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->setPushToken(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static setPushToken(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p0, p1}, Lcom/adjust/sdk/AdjustInstance;->setPushToken(Ljava/lang/String;Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public static setReferrer(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0, p1}, Lcom/adjust/sdk/AdjustInstance;->sendReferrer(Ljava/lang/String;Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 42
    return-void
.end method
