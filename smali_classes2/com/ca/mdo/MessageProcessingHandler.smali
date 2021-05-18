.class Lcom/ca/mdo/MessageProcessingHandler;
.super Landroid/os/Handler;
.source "MessageProcessingHandler.java"


# static fields
.field public static API_CALLBACK:Ljava/lang/String;


# instance fields
.field private initSuccess:Z

.field private mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

.field private persistenceManager:Lcom/ca/mdo/PersistenceManager;

.field private sessionManager:Lcom/ca/mdo/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "api_callback"

    sput-object v0, Lcom/ca/mdo/MessageProcessingHandler;->API_CALLBACK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    .line 37
    new-instance v0, Lcom/ca/mdo/SessionManager;

    invoke-direct {v0, p2}, Lcom/ca/mdo/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    .line 38
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getPersistenceManager()Lcom/ca/mdo/PersistenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    .line 39
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iput-object v1, v0, Lcom/ca/mdo/PersistenceManager;->sessionManager:Lcom/ca/mdo/SessionManager;

    .line 40
    return-void
.end method

.method private crash(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "eventLogObj"    # Lorg/json/JSONObject;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ca/mdo/SessionManager;->setCrashed(Z)V

    .line 431
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v1}, Lcom/ca/mdo/SessionManager;->getLastSessionID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    invoke-virtual {v2, p1}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "evt"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ca/mdo/SessionManager;->putLastSessionTime(J)V

    .line 434
    return-void
.end method

.method private customEvent(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "customJObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 513
    iget-boolean v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-boolean v0, v0, Lcom/ca/mdo/SessionManager;->mIsSessionOpen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v0}, Lcom/ca/mdo/SessionManager;->getLastSessionID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    :cond_2
    const/4 v2, 0x0

    .line 519
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "p"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 520
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 521
    .local v5, "jobj":Lorg/json/JSONObject;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v0, v1, v3}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const-string v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 522
    invoke-virtual/range {v0 .. v5}, Lcom/ca/mdo/PersistenceManager;->buildEvtTypeCustom(Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :goto_1
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const-string v3, "evt"

    invoke-virtual {v0, v1, p1, v7, v3}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    goto :goto_0

    .line 524
    :catch_0
    move-exception v6

    .line 525
    .local v6, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private customerFeedback(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "eventObject"    # Lorg/json/JSONObject;

    .prologue
    .line 483
    iget-boolean v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    if-nez v1, :cond_0

    .line 489
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCrashedSession()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "crashedSession":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 487
    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v2, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    invoke-virtual {v2, p1}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "evt"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 488
    :cond_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->reSetCrashedSession()V

    goto :goto_0
.end method

.method private endCurrentSession()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v0}, Lcom/ca/mdo/SessionManager;->endSession()V

    .line 441
    return-void
.end method

.method private generalEvents(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "eventObject"    # Lorg/json/JSONObject;

    .prologue
    .line 462
    :try_start_0
    iget-boolean v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    if-nez v1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-boolean v1, v1, Lcom/ca/mdo/SessionManager;->mIsSessionOpen:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v1}, Lcom/ca/mdo/SessionManager;->getLastSessionID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v2, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v2, v2, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    iget-object v3, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    .line 470
    invoke-virtual {v3, p1}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "evt"

    .line 469
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 472
    if-eqz p1, :cond_0

    const-string v1, "n"

    .line 473
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sdk_disabled"

    const-string v2, "n"

    .line 474
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/ca/mdo/MessageProcessingHandler;->onSDKDisabledEventPersistence()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while checking if even is SDK_DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private httpPerformance(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "httpPerf"    # Lorg/json/JSONObject;

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    if-nez v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mdo/PolicyManager;->isNetworkStatsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    invoke-virtual {v2, p1}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "evt"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_1
    new-instance v0, Lcom/ca/mdo/CaMDOException;

    sget-object v1, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_NETWORKMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v0, v1}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    throw v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    .line 237
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    if-nez v0, :cond_0

    const-string v0, "AppDeviceDate is not initialized , please check"

    :goto_0
    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 239
    const-string v0, "Application and Device data initialized"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 241
    invoke-static {}, Lcom/ca/mdo/Util;->isJailBroken()Z

    move-result v0

    sput-boolean v0, Lcom/ca/mdo/CAMobileDevOps;->mJailBroken:Z

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    .line 243
    const-string v0, "init completed"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 245
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    invoke-virtual {v0}, Lcom/ca/mdo/AppDeviceData;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAnyUploadSuccessful(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ca/mdo/SessionUploadInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, "sessionUploadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ca/mdo/SessionUploadInfo;>;"
    const/4 v1, 0x0

    .line 587
    .local v1, "isAnyUploadSuccessful":Z
    if-eqz p1, :cond_2

    .line 588
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/mdo/SessionUploadInfo;

    .line 589
    .local v0, "info":Lcom/ca/mdo/SessionUploadInfo;
    if-nez v1, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v3

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/ca/mdo/SessionUploadInfo;->getStatusCode()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 594
    .end local v0    # "info":Lcom/ca/mdo/SessionUploadInfo;
    :cond_2
    return v1
.end method

.method private onPause(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "activityEventObj"    # Lorg/json/JSONObject;

    .prologue
    .line 411
    iget-boolean v5, p0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    if-nez v5, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 414
    .local v0, "endTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LastSessionTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 415
    iget-object v5, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v5, v0, v1}, Lcom/ca/mdo/SessionManager;->putLastSessionTime(J)V

    .line 417
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 418
    .local v3, "timeStamp":J
    iget-object v5, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v6, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v6, v6, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    iget-object v7, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    invoke-virtual {v7, p1}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "evt"

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    invoke-static {}, Lcom/ca/mdo/PolicyManager;->isAutoASATEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 420
    const-string v5, "v"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/ca/mdo/CAMobileDevOps;->stopApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    .end local v3    # "timeStamp":J
    :catch_0
    move-exception v2

    .line 423
    .local v2, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onSDKDisabledEventPersistence()V
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/ca/mdo/MessageProcessingHandler;->endCurrentSession()V

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ca/mdo/MessageProcessingHandler;->uploadData(Lcom/ca/integration/CaMDOCallback;)V

    .line 459
    return-void
.end method

.method private process(Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "messageDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 254
    .local v1, "activityEventObj":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 255
    .local v10, "startTime":Ljava/lang/Long;
    if-eqz p1, :cond_0

    .line 256
    const-string v12, "jsonObj"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "activityEventObj":Lorg/json/JSONObject;
    check-cast v1, Lorg/json/JSONObject;

    .line 257
    .restart local v1    # "activityEventObj":Lorg/json/JSONObject;
    const-string v12, "currentTimeStamp"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "startTime":Ljava/lang/Long;
    check-cast v10, Ljava/lang/Long;

    .line 260
    .restart local v10    # "startTime":Ljava/lang/Long;
    :cond_0
    if-nez v10, :cond_1

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 264
    :cond_1
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/ca/mdo/CAMobileDevOps;->setSessionProcessed(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    if-nez v12, :cond_2

    .line 323
    :goto_0
    return-void

    .line 271
    :cond_2
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ca/mdo/MessageProcessingHandler;->uploadData(Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Lcom/ca/mdo/CaMDOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_1
    const/4 v3, 0x0

    .line 277
    .local v3, "isSDKJustGotEnabled":Z
    :try_start_1
    sget-boolean v2, Lcom/ca/mdo/SDK;->firstLaunch:Z

    .line 279
    .local v2, "isFirstStart":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v12}, Lcom/ca/mdo/SessionManager;->getLastSessionTime()J

    move-result-wide v4

    .line 280
    .local v4, "lastSessionTime":J
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v6

    .line 281
    .local v6, "policyManager":Lcom/ca/mdo/PolicyManager;
    invoke-virtual {v6}, Lcom/ca/mdo/PolicyManager;->getSessionTimeout()I

    move-result v12

    int-to-long v8, v12

    .line 282
    .local v8, "sessionTimeout":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SessionStartTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "lastSessionTime = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Difference"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v13, v4

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Session Timeout"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 283
    const/4 v7, 0x0

    .line 285
    .local v7, "reOpen":Z
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v12, v4

    cmp-long v12, v12, v8

    if-gez v12, :cond_3

    .line 286
    const/4 v7, 0x1

    .line 288
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reopen"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 289
    if-eqz v1, :cond_4

    const-string v12, "SDK_GOT_ENABLED"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 290
    const/4 v3, 0x1

    .line 292
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-boolean v12, v12, Lcom/ca/mdo/SessionManager;->mIsCrashed:Z

    if-eqz v12, :cond_5

    .line 293
    const/4 v7, 0x0

    .line 294
    const-string v12, "crashed, setting reopen session to false"

    invoke-static {v12}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v12, v4, v5}, Lcom/ca/mdo/SessionManager;->reportSessionCrashAsCustomerFeedback(J)V

    .line 297
    :cond_5
    if-eqz v7, :cond_7

    if-nez v2, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v12}, Lcom/ca/mdo/SessionManager;->reOpenSession()V

    .line 311
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/ca/mdo/SessionManager;->mIsSessionOpen:Z

    .line 312
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ca/mdo/MessageProcessingHandler;->sendStartupTime(J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 313
    if-eqz v1, :cond_6

    if-nez v3, :cond_6

    .line 314
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 316
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ca/mdo/MessageProcessingHandler;->sendOrientationData(J)V

    .line 317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v12, v12, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    sput-object v12, Lcom/ca/mdo/CAMobileDevOps;->currentSessionId:Ljava/lang/String;

    .line 318
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Persisting session with ID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v13, v13, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/ca/mdo/MessageProcessingHandler;->sendAppIcon()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 320
    .end local v2    # "isFirstStart":Z
    .end local v3    # "isSDKJustGotEnabled":Z
    .end local v4    # "lastSessionTime":J
    .end local v6    # "policyManager":Lcom/ca/mdo/PolicyManager;
    .end local v7    # "reOpen":Z
    .end local v8    # "sessionTimeout":J
    :catch_0
    move-exception v11

    .line 321
    .local v11, "th":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 300
    .end local v11    # "th":Ljava/lang/Throwable;
    .restart local v2    # "isFirstStart":Z
    .restart local v3    # "isSDKJustGotEnabled":Z
    .restart local v4    # "lastSessionTime":J
    .restart local v6    # "policyManager":Lcom/ca/mdo/PolicyManager;
    .restart local v7    # "reOpen":Z
    .restart local v8    # "sessionTimeout":J
    :cond_7
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LastSessionTime"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-boolean v12, v12, Lcom/ca/mdo/SessionManager;->mIsCrashed:Z

    if-nez v12, :cond_8

    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_8

    if-nez v3, :cond_8

    .line 302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v12}, Lcom/ca/mdo/SessionManager;->endSession()V

    .line 304
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-boolean v12, v12, Lcom/ca/mdo/SessionManager;->mIsCrashed:Z

    if-eqz v12, :cond_9

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/ca/mdo/SessionManager;->setCrashed(Z)V

    .line 307
    :cond_9
    const-string v12, "Starting a new session"

    invoke-static {v12}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/ca/mdo/SessionManager;->startSession(J)V

    .line 309
    const/4 v12, 0x0

    sput-boolean v12, Lcom/ca/mdo/SDK;->firstLaunch:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 272
    .end local v2    # "isFirstStart":Z
    .end local v3    # "isSDKJustGotEnabled":Z
    .end local v4    # "lastSessionTime":J
    .end local v6    # "policyManager":Lcom/ca/mdo/PolicyManager;
    .end local v7    # "reOpen":Z
    .end local v8    # "sessionTimeout":J
    :catch_1
    move-exception v12

    goto/16 :goto_1
.end method

.method private processLocationChanges(I)V
    .locals 8
    .param p1, "locationCheck"    # I

    .prologue
    const/4 v7, 0x1

    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "permissionGranted":Z
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 181
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 180
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Application;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 183
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 186
    :cond_0
    sget-object v3, Lcom/ca/mdo/CAMobileDevOps;->locationTracker:Lcom/ca/mdo/MDOLocationTracker;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 187
    if-gt p1, v7, :cond_1

    sget-object v3, Lcom/ca/mdo/CAMobileDevOps;->locationTracker:Lcom/ca/mdo/MDOLocationTracker;

    iget-boolean v3, v3, Lcom/ca/mdo/MDOLocationTracker;->trackingLocation:Z

    if-nez v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isInPrivateZone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    :cond_2
    sget-object v3, Lcom/ca/mdo/CAMobileDevOps;->locationTracker:Lcom/ca/mdo/MDOLocationTracker;

    invoke-virtual {v3}, Lcom/ca/mdo/MDOLocationTracker;->stopTrackingUpdates()V

    .line 190
    :cond_3
    if-le p1, v7, :cond_4

    sget-object v3, Lcom/ca/mdo/CAMobileDevOps;->locationTracker:Lcom/ca/mdo/MDOLocationTracker;

    iget-boolean v3, v3, Lcom/ca/mdo/MDOLocationTracker;->trackingLocation:Z

    if-nez v3, :cond_4

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isInPrivateZone()Z

    move-result v3

    if-nez v3, :cond_4

    .line 191
    sget-object v3, Lcom/ca/mdo/CAMobileDevOps;->locationTracker:Lcom/ca/mdo/MDOLocationTracker;

    invoke-virtual {v3, p1}, Lcom/ca/mdo/MDOLocationTracker;->startTrackingUpdates(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2    # "result":I
    :cond_4
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "unable to track location changes"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendAppIcon()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 390
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_APPICON:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 391
    .local v7, "alreadySent":Z
    if-nez v7, :cond_0

    .line 392
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 393
    .local v6, "appIconEvent":Lorg/json/JSONObject;
    invoke-static {v6, v5, v8, v5}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAppIcon()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "appIcon":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 396
    .local v3, "currentTime":J
    if-eqz v2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const-string v1, "app_icon"

    const-string v5, "app_events"

    invoke-virtual/range {v0 .. v6}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 398
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const-string v5, "evt"

    invoke-virtual {v0, v1, v6, v8, v5}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_APPICON:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    .end local v2    # "appIcon":Ljava/lang/String;
    .end local v3    # "currentTime":J
    .end local v6    # "appIconEvent":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method private sendCurrentView(Lorg/json/JSONObject;J)J
    .locals 10
    .param p1, "activityEventObj"    # Lorg/json/JSONObject;
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 348
    const-string v0, "v"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mCurrentViewName:Ljava/lang/String;

    .line 349
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 352
    .local v6, "mainObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "passovercsn"

    const-string v1, "passovercsn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v0, "passoverpsn"

    const-string v1, "passoverpsn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v0, "slt"

    const-string v1, "slt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const-string v1, "n"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mCurrentViewName:Ljava/lang/String;

    const-wide/16 v3, 0x1

    add-long v8, p2, v3

    .end local p2    # "startTime":J
    .local v8, "startTime":J
    const-string v5, "view_events"

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 359
    .local v7, "eventLogObj2":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "evt"

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 360
    return-wide v8

    .line 357
    .end local v7    # "eventLogObj2":Lorg/json/JSONObject;
    .end local v8    # "startTime":J
    .restart local p2    # "startTime":J
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendOrientationData(J)V
    .locals 11
    .param p1, "startTime"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 330
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDeviceOrientation()I

    move-result v7

    .line 331
    .local v7, "rotation":I
    sget v0, Lcom/ca/mdo/CAMobileDevOps;->mOrientation:I

    if-eq v7, v0, :cond_0

    .line 332
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 333
    .local v6, "orientEventObject":Lorg/json/JSONObject;
    invoke-static {v6, v1, v10, v1}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const-string v1, "or"

    iget-object v2, p0, Lcom/ca/mdo/MessageProcessingHandler;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    invoke-static {v7}, Lcom/ca/mdo/AppDeviceData;->getDeviceOrientationString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1

    add-long v8, p1, v3

    .end local p1    # "startTime":J
    .local v8, "startTime":J
    const-string v5, "app_events"

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 335
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const-string v2, "evt"

    invoke-virtual {v0, v1, v6, v10, v2}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 336
    sput v7, Lcom/ca/mdo/CAMobileDevOps;->mOrientation:I

    move-wide p1, v8

    .line 338
    .end local v6    # "orientEventObject":Lorg/json/JSONObject;
    .end local v8    # "startTime":J
    .restart local p1    # "startTime":J
    :cond_0
    return-void
.end method

.method private sendStartupTime(J)J
    .locals 14
    .param p1, "startTime"    # J

    .prologue
    .line 371
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mIsFirstLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 373
    .local v6, "appStartTimeEvent":Lorg/json/JSONObject;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const-string v1, "app_start"

    sget-wide v2, Lcom/ca/mdo/CAMobileDevOps;->mStartupTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1

    add-long v10, p1, v3

    .end local p1    # "startTime":J
    .local v10, "startTime":J
    const-string v5, "app_events"

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 375
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "evt"

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 376
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 377
    .local v13, "jailBrokenEvent":Lorg/json/JSONObject;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v13, v0, v1, v2}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 378
    iget-object v7, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const-string v8, "jailbroken"

    sget-boolean v0, Lcom/ca/mdo/CAMobileDevOps;->mJailBroken:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v0, 0x1

    add-long p1, v10, v0

    .end local v10    # "startTime":J
    .restart local p1    # "startTime":J
    const-string v12, "app_events"

    invoke-virtual/range {v7 .. v13}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v13

    .line 379
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "evt"

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 381
    .end local v6    # "appStartTimeEvent":Lorg/json/JSONObject;
    .end local v13    # "jailBrokenEvent":Lorg/json/JSONObject;
    :cond_0
    return-wide p1
.end method

.method private startNewSession()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ca/mdo/SessionManager;->startSession(J)V

    .line 165
    :cond_0
    return-void
.end method

.method private stopCurrentAndStartNewSession()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v0}, Lcom/ca/mdo/SessionManager;->endSession()V

    .line 170
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ca/mdo/SessionManager;->startSession(J)V

    .line 172
    :cond_0
    return-void
.end method

.method private stopCurrentSession()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v0}, Lcom/ca/mdo/SessionManager;->endSession()V

    .line 157
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    .line 159
    :cond_0
    return-void
.end method

.method private transactionStart(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-boolean v0, v0, Lcom/ca/mdo/SessionManager;->mIsSessionOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v0}, Lcom/ca/mdo/SessionManager;->getLastSessionID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    new-instance v0, Lcom/ca/mdo/CaMDOException;

    sget-object v1, Lcom/ca/mdo/CaMDOError;->CAMDO_START_TRANSACTION_FAILED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v0, v1}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    throw v0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "evt"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private transactionStop(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->initSuccess:Z

    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-boolean v0, v0, Lcom/ca/mdo/SessionManager;->mIsSessionOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v0}, Lcom/ca/mdo/SessionManager;->getLastSessionID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    new-instance v0, Lcom/ca/mdo/CaMDOException;

    sget-object v1, Lcom/ca/mdo/CaMDOError;->CAMDO_STOP_TRANSACTION_FAILED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v0, v1}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    throw v0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "evt"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private updateCustomerHeader()V
    .locals 8

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v0, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v0, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 210
    .local v2, "headerJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getLocation()Landroid/location/Location;

    move-result-object v6

    .line 211
    .local v6, "loc":Landroid/location/Location;
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/16 v5, 0x17

    invoke-virtual/range {v0 .. v6}, Lcom/ca/mdo/SessionManager;->setHeader(Ljava/lang/String;Lorg/json/JSONObject;JILandroid/location/Location;)V

    .line 212
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getDatabaseService()Lcom/ca/mdo/DatabaseHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ca/mdo/DatabaseHandler;->updateEvent(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v2    # "headerJSON":Lorg/json/JSONObject;
    .end local v6    # "loc":Landroid/location/Location;
    :catch_0
    move-exception v7

    .line 214
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCustomerLocation(Landroid/location/Location;)V
    .locals 8
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v0, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v0, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v2, "headerJSON":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, p0, Lcom/ca/mdo/MessageProcessingHandler;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v1, v1, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/16 v5, 0x17

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ca/mdo/SessionManager;->setHeader(Ljava/lang/String;Lorg/json/JSONObject;JILandroid/location/Location;)V

    .line 228
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getDatabaseService()Lcom/ca/mdo/DatabaseHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ca/mdo/DatabaseHandler;->updateEvent(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v2    # "headerJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 230
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uploadData(Lcom/ca/integration/CaMDOCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 558
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ca/mdo/PolicyManager;->isUploadOnWifiEnabled()Z

    move-result v4

    .line 559
    .local v4, "uploadOnWifiEnabled":Z
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/Util;->isConnectedToWIFI(Landroid/content/Context;)Z

    move-result v0

    .line 561
    .local v0, "connectedToWIFI":Z
    const/4 v2, 0x0

    .line 562
    .local v2, "sessionUploadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ca/mdo/SessionUploadInfo;>;"
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez v4, :cond_2

    .line 564
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getDataManager()Lcom/ca/mdo/DataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ca/mdo/DataManager;->processUploads()Ljava/util/ArrayList;

    move-result-object v2

    .line 565
    invoke-direct {p0, v2}, Lcom/ca/mdo/MessageProcessingHandler;->uploadReturnVals(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v3

    .line 566
    .local v3, "successData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, v3}, Lcom/ca/mdo/CAMobileDevOps;->sendSuccessCallback(Lcom/ca/integration/CaMDOCallback;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v3    # "successData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0, v2}, Lcom/ca/mdo/MessageProcessingHandler;->isAnyUploadSuccessful(Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 572
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_WIFI_DISABLED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    throw v5

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_UPLOAD_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6, v1}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;Ljava/lang/Throwable;)V

    throw v5

    .line 574
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->resetEventUploadCounter()V

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/ca/mdo/CAMobileDevOps;->lastUploadAttemptTime:J

    .line 576
    return-void
.end method

.method private uploadReturnVals(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ca/mdo/SessionUploadInfo;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ca/mdo/SessionUploadInfo;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 580
    .local v1, "successData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ca/mdo/SessionUploadInfo;

    .line 581
    .local v0, "info":Lcom/ca/mdo/SessionUploadInfo;
    invoke-virtual {v0}, Lcom/ca/mdo/SessionUploadInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ca/mdo/SessionUploadInfo;->getEventCounts()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 583
    .end local v0    # "info":Lcom/ca/mdo/SessionUploadInfo;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "callback":Lcom/ca/integration/CaMDOCallback;
    const/4 v4, 0x1

    .line 48
    .local v4, "willHandleCallback":Z
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lcom/ca/mdo/MessageProcessingHandler;->API_CALLBACK:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/ca/integration/CaMDOCallback;

    move-object v2, v0

    .line 53
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 134
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_UNKNOWN_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "th":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown in handling Message Operation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 142
    invoke-static {v3}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    .line 143
    instance-of v5, v3, Lcom/ca/mdo/CaMDOException;

    if-eqz v5, :cond_2

    move-object v1, v3

    .line 144
    check-cast v1, Lcom/ca/mdo/CaMDOException;

    .line 145
    .local v1, "bubbledException":Lcom/ca/mdo/CaMDOException;
    invoke-static {v2, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 150
    .end local v1    # "bubbledException":Lcom/ca/mdo/CaMDOException;
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 55
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/ca/mdo/MessageProcessingHandler;->init()V

    .line 137
    :goto_1
    if-eqz v4, :cond_1

    .line 138
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/ca/mdo/CAMobileDevOps;->sendSuccessCallback(Lcom/ca/integration/CaMDOCallback;Ljava/util/Map;)V

    goto :goto_0

    .line 59
    :sswitch_1
    invoke-direct {p0}, Lcom/ca/mdo/MessageProcessingHandler;->endCurrentSession()V

    goto :goto_1

    .line 63
    :sswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->process(Ljava/util/Map;)V

    goto :goto_1

    .line 67
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->onPause(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 71
    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->crash(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 75
    :sswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->httpPerformance(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 79
    :sswitch_6
    invoke-direct {p0}, Lcom/ca/mdo/MessageProcessingHandler;->updateCustomerHeader()V

    goto :goto_1

    .line 83
    :sswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/location/Location;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->updateCustomerLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 88
    :sswitch_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->customEvent(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 93
    :sswitch_9
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->customerFeedback(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 97
    :sswitch_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->transactionStart(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 101
    :sswitch_b
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->transactionStop(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 105
    :sswitch_c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->generalEvents(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 109
    :sswitch_d
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/ca/mdo/MessageProcessingHandler;->processLocationChanges(I)V

    goto :goto_1

    .line 114
    :sswitch_e
    const/4 v4, 0x0

    .line 115
    invoke-direct {p0, v2}, Lcom/ca/mdo/MessageProcessingHandler;->uploadData(Lcom/ca/integration/CaMDOCallback;)V

    goto :goto_1

    .line 120
    :sswitch_f
    invoke-direct {p0}, Lcom/ca/mdo/MessageProcessingHandler;->stopCurrentSession()V

    goto :goto_1

    .line 125
    :sswitch_10
    invoke-direct {p0}, Lcom/ca/mdo/MessageProcessingHandler;->startNewSession()V

    goto :goto_1

    .line 130
    :sswitch_11
    invoke-direct {p0}, Lcom/ca/mdo/MessageProcessingHandler;->stopCurrentAndStartNewSession()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 147
    .restart local v3    # "th":Ljava/lang/Throwable;
    :cond_2
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_UNKNOWN_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6, v3}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;Ljava/lang/Throwable;)V

    invoke-static {v2, v5}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    goto/16 :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x6 -> :sswitch_8
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x4f -> :sswitch_c
        0x65 -> :sswitch_3
        0xde -> :sswitch_6
        0xdf -> :sswitch_7
        0xe0 -> :sswitch_9
        0xe6 -> :sswitch_d
        0xfb -> :sswitch_e
        0xfc -> :sswitch_11
        0xfd -> :sswitch_f
        0xfe -> :sswitch_10
    .end sparse-switch
.end method
