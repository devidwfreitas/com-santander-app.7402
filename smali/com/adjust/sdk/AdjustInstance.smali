.class public Lcom/adjust/sdk/AdjustInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private preLaunchActionsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/IRunActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field private pushToken:Ljava/lang/String;

.field private startEnabled:Ljava/lang/Boolean;

.field private startOffline:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    return-void
.end method

.method private checkActivityHandler()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkActivityHandler(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 422
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    if-nez v2, :cond_1

    .line 423
    if-eqz p1, :cond_0

    .line 424
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "Adjust not initialized, but %s saved for launch"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :goto_0
    return v0

    .line 427
    :cond_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Adjust not initialized correctly"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 432
    goto :goto_0
.end method

.method private checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-direct {p0, p2}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p3}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isInstanceEnabled()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private savePushToken(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lavc;

    invoke-direct {v0, p0, p2, p1}, Lavc;-><init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    invoke-static {v0}, Lcom/adjust/sdk/Util;->runInBackground(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method private saveRawReferrer(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 6

    .prologue
    .line 444
    new-instance v0, Lavb;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lavb;-><init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Ljava/lang/String;J)V

    .line 451
    invoke-static {v0}, Lcom/adjust/sdk/Util;->runInBackground(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method private setSendingReferrersAsNotSent(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 472
    new-instance v0, Lavd;

    invoke-direct {v0, p0, p1}, Lavd;-><init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;)V

    .line 480
    invoke-static {v0}, Lcom/adjust/sdk/Util;->runInBackground(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method


# virtual methods
.method public addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    const-string v0, "adding session callback parameter"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/adjust/sdk/IActivityHandler;->addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lauv;

    invoke-direct {v1, p0, p1, p2}, Lauv;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    const-string v0, "adding session partner parameter"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/adjust/sdk/IActivityHandler;->addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lauw;

    invoke-direct {v1, p0, p1, p2}, Lauw;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public appWillOpenUrl(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v2, p1, v0, v1}, Lcom/adjust/sdk/IActivityHandler;->readOpenUrl(Landroid/net/Uri;J)V

    goto :goto_0
.end method

.method public getAdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getAdid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttribution()Lcom/adjust/sdk/AdjustAttribution;
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->isInstanceEnabled()Z

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Adjust already initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->preLaunchActionsArray:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->pushToken:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->pushToken:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->startEnabled:Ljava/lang/Boolean;

    .line 55
    iget-boolean v0, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    iput-boolean v0, p1, Lcom/adjust/sdk/AdjustConfig;->startOffline:Z

    .line 57
    invoke-static {p1}, Lcom/adjust/sdk/AdjustFactory;->getActivityHandler(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/IActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 59
    iget-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->setSendingReferrersAsNotSent(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->onResume()V

    goto :goto_0
.end method

.method public removeSessionCallbackParameter(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    const-string v0, "removing session callback parameter"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->removeSessionCallbackParameter(Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Laux;

    invoke-direct {v1, p0, p1}, Laux;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeSessionPartnerParameter(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    const-string v0, "removing session partner parameter"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->removeSessionPartnerParameter(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lauy;

    invoke-direct {v1, p0, p1}, Lauy;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resetSessionCallbackParameters()V
    .locals 2

    .prologue
    .line 282
    const-string v0, "resetting session callback parameters"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->resetSessionCallbackParameters()V

    .line 297
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lauz;

    invoke-direct {v1, p0}, Lauz;-><init>(Lcom/adjust/sdk/AdjustInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resetSessionPartnerParameters()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "resetting session partner parameters"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->resetSessionPartnerParameters()V

    .line 318
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lava;

    invoke-direct {v1, p0}, Lava;-><init>(Lcom/adjust/sdk/AdjustInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sendFirstPackages()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->sendFirstPackages()V

    goto :goto_0
.end method

.method public sendReferrer(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adjust/sdk/AdjustInstance;->saveRawReferrer(Ljava/lang/String;JLandroid/content/Context;)V

    .line 153
    const-string v0, "referrer"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->sendReftagReferrer()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 103
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    .line 105
    const-string v0, "enabled mode"

    const-string v1, "disabled mode"

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->setEnabled(Z)V

    .line 108
    :cond_0
    return-void
.end method

.method public setOfflineMode(Z)V
    .locals 2

    .prologue
    .line 166
    const-string v0, "offline mode"

    const-string v1, "online mode"

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->setOfflineMode(Z)V

    goto :goto_0
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 341
    const-string v0, "push token"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->pushToken:Ljava/lang/String;

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/adjust/sdk/IActivityHandler;->setPushToken(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setPushToken(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 355
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance;->savePushToken(Ljava/lang/String;Landroid/content/Context;)V

    .line 357
    const-string v0, "push token"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/adjust/sdk/IActivityHandler;->setPushToken(Ljava/lang/String;Z)V

    .line 362
    :cond_0
    return-void
.end method

.method public teardown(Z)V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->teardown(Z)V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    goto :goto_0
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0
.end method
