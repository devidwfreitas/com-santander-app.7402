.class public Lcom/adjust/sdk/AdjustConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENVIRONMENT_PRODUCTION:Ljava/lang/String; = "production"

.field public static final ENVIRONMENT_SANDBOX:Ljava/lang/String; = "sandbox"


# instance fields
.field public appSecret:Ljava/lang/String;

.field public appToken:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field deepLinkComponent:Ljava/lang/Class;

.field public defaultTracker:Ljava/lang/String;

.field delayStart:Ljava/lang/Double;

.field public deviceKnown:Ljava/lang/Boolean;

.field public environment:Ljava/lang/String;

.field public eventBufferingEnabled:Z

.field logger:Lcom/adjust/sdk/ILogger;

.field public onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

.field public onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

.field public onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

.field public onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

.field public onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

.field public onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

.field preLaunchActionsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/IRunActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field processName:Ljava/lang/String;

.field pushToken:Ljava/lang/String;

.field public readMobileEquipmentIdentity:Z

.field sdkPrefix:Ljava/lang/String;

.field public secretId:Ljava/lang/String;

.field sendInBackground:Z

.field public startEnabled:Ljava/lang/Boolean;

.field startOffline:Z

.field userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adjust/sdk/AdjustConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adjust/sdk/AdjustConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method private checkAppToken(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 177
    if-nez p1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing App Token"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 183
    iget-object v2, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Malformed App Token \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method private checkContext(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing context"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :goto_0
    return v0

    .line 168
    :cond_0
    const-string v1, "android.permission.INTERNET"

    invoke-static {p1, v1}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing permission: INTERNET"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkEnvironment(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 191
    if-nez p1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing environment"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :goto_0
    return v0

    .line 196
    :cond_0
    const-string v2, "sandbox"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don\'t forget to set the environment to `production` before publishing!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/adjust/sdk/ILogger;->warnInProduction(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 200
    goto :goto_0

    .line 202
    :cond_1
    const-string v2, "production"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/adjust/sdk/ILogger;->warnInProduction(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 207
    goto :goto_0

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Unknown environment \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    .line 52
    if-eqz p4, :cond_0

    const-string v0, "production"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/adjust/sdk/LogLevel;->SUPRESS:Lcom/adjust/sdk/LogLevel;

    invoke-direct {p0, v0, p3}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;Ljava/lang/String;)V

    .line 58
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/AdjustConfig;->isValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :goto_1
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/adjust/sdk/LogLevel;->INFO:Lcom/adjust/sdk/LogLevel;

    invoke-direct {p0, v0, p3}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    .line 68
    iput-boolean v1, p0, Lcom/adjust/sdk/AdjustConfig;->sendInBackground:Z

    goto :goto_1
.end method

.method private isValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p2}, Lcom/adjust/sdk/AdjustConfig;->checkAppToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    invoke-direct {p0, p3}, Lcom/adjust/sdk/AdjustConfig;->checkEnvironment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/adjust/sdk/AdjustConfig;->checkContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setLogLevel(Lcom/adjust/sdk/LogLevel;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "production"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/adjust/sdk/ILogger;->setLogLevel(Lcom/adjust/sdk/LogLevel;Z)V

    .line 160
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppSecret(JJJJJ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    const-string v0, "%d"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->secretId:Ljava/lang/String;

    .line 139
    const-string v0, "%d%d%d%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->appSecret:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setDeepLinkComponent(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->deepLinkComponent:Ljava/lang/Class;

    .line 107
    return-void
.end method

.method public setDefaultTracker(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setDelayStart(D)V
    .locals 1

    .prologue
    .line 130
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->delayStart:Ljava/lang/Double;

    .line 131
    return-void
.end method

.method public setDeviceKnown(Z)V
    .locals 1

    .prologue
    .line 102
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->deviceKnown:Ljava/lang/Boolean;

    .line 103
    return-void
.end method

.method public setEventBufferingEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    goto :goto_0
.end method

.method public setLogLevel(Lcom/adjust/sdk/LogLevel;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setOnAttributionChangedListener(Lcom/adjust/sdk/OnAttributionChangedListener;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    .line 99
    return-void
.end method

.method public setOnDeeplinkResponseListener(Lcom/adjust/sdk/OnDeeplinkResponseListener;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onDeeplinkResponseListener:Lcom/adjust/sdk/OnDeeplinkResponseListener;

    .line 127
    return-void
.end method

.method public setOnEventTrackingFailedListener(Lcom/adjust/sdk/OnEventTrackingFailedListener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

    .line 115
    return-void
.end method

.method public setOnEventTrackingSucceededListener(Lcom/adjust/sdk/OnEventTrackingSucceededListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    .line 111
    return-void
.end method

.method public setOnSessionTrackingFailedListener(Lcom/adjust/sdk/OnSessionTrackingFailedListener;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    .line 123
    return-void
.end method

.method public setOnSessionTrackingSucceededListener(Lcom/adjust/sdk/OnSessionTrackingSucceededListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    .line 119
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    return-void
.end method

.method public setReadMobileEquipmentIdentity(Z)V
    .locals 0

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/adjust/sdk/AdjustConfig;->readMobileEquipmentIdentity:Z

    .line 144
    return-void
.end method

.method public setSdkPrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->sdkPrefix:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSendInBackground(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/adjust/sdk/AdjustConfig;->sendInBackground:Z

    .line 81
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/adjust/sdk/AdjustConfig;->userAgent:Ljava/lang/String;

    .line 135
    return-void
.end method
