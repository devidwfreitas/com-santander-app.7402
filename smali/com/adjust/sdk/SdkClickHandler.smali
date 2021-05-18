.class public Lcom/adjust/sdk/SdkClickHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/ISdkClickHandler;


# static fields
.field private static final MILLISECONDS_TO_SECONDS_DIVISOR:D = 1000.0

.field private static final SCHEDULED_EXECUTOR_SOURCE:Ljava/lang/String; = "SdkClickHandler"

.field private static final SOURCE_INSTALL_REFERRER:Ljava/lang/String; = "install_referrer"

.field private static final SOURCE_REFTAG:Ljava/lang/String; = "reftag"


# instance fields
.field private activityHandlerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/IActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field private backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/ActivityPackage;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IActivityHandler;Z)V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/adjust/sdk/SdkClickHandler;->init(Lcom/adjust/sdk/IActivityHandler;Z)V

    .line 83
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 84
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSdkClickBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 85
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    const-string v1, "SdkClickHandler"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 86
    return-void
.end method

.method public static synthetic access$000(Lcom/adjust/sdk/SdkClickHandler;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/adjust/sdk/SdkClickHandler;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V

    return-void
.end method

.method public static synthetic access$300(Lcom/adjust/sdk/SdkClickHandler;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/adjust/sdk/SdkClickHandler;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClickI()V

    return-void
.end method

.method public static synthetic access$500(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->sendSdkClickI(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 378
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 380
    const-string v2, "%s. (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method private retrySendingI(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 5

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->increaseRetries()I

    move-result v0

    .line 363
    iget-object v1, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Retrying sdk_click package for the %d time"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    .line 366
    return-void
.end method

.method private sendNextSdkClick()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lawc;

    invoke-direct {v1, p0}, Lawc;-><init>(Lcom/adjust/sdk/SdkClickHandler;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 227
    return-void
.end method

.method private sendNextSdkClickI()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 233
    iget-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    .line 242
    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getRetries()I

    move-result v1

    .line 244
    new-instance v2, Lawd;

    invoke-direct {v2, p0, v0}, Lawd;-><init>(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V

    .line 252
    if-gtz v1, :cond_2

    .line 253
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->getWaitingTime(ILcom/adjust/sdk/BackoffStrategy;)J

    move-result-wide v4

    .line 258
    long-to-double v6, v4

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 259
    sget-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v6, "Waiting for %s seconds before retrying sdk_click for the %d time"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-interface {v3, v6, v7}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private sendSdkClickI(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 14

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 272
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 273
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    if-eqz v1, :cond_1

    const-string v2, "reftag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v4

    .line 276
    :goto_0
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v2

    const-string v8, "raw_referrer"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 278
    if-eqz v3, :cond_2

    .line 280
    new-instance v8, Lcom/adjust/sdk/SharedPreferencesManager;

    .line 281
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/adjust/sdk/SharedPreferencesManager;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClickTimeInMilliseconds()J

    move-result-wide v10

    .line 283
    invoke-virtual {v8, v2, v10, v11}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrer(Ljava/lang/String;J)Lorg/json/JSONArray;

    move-result-object v8

    .line 287
    if-nez v8, :cond_2

    .line 353
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 275
    goto :goto_0

    .line 292
    :cond_2
    if-eqz v1, :cond_3

    const-string v8, "install_referrer"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v10, v4

    .line 295
    :goto_2
    const/4 v1, 0x0

    .line 297
    if-eqz v10, :cond_7

    .line 301
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClickTimeInSeconds()J

    move-result-wide v6

    .line 302
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getInstallBeginTimeInSeconds()J

    move-result-wide v4

    .line 303
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v8, "referrer"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide v8, v6

    move-wide v6, v4

    move-object v4, v1

    .line 306
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://app.adjust.com"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    :try_start_0
    iget-object v5, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    .line 312
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 309
    invoke-static {v1, p1, v5}, Lcom/adjust/sdk/UtilNetworking;->createPOSTHttpsURLConnection(Ljava/lang/String;Lcom/adjust/sdk/ActivityPackage;I)Lcom/adjust/sdk/ResponseData;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/SdkClickResponseData;

    .line 314
    iget-object v5, v1, Lcom/adjust/sdk/SdkClickResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v5, :cond_4

    .line 315
    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->retrySendingI(Lcom/adjust/sdk/ActivityPackage;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    const-string v1, "Sdk_click failed to encode parameters"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move v10, v5

    .line 292
    goto :goto_2

    .line 319
    :cond_4
    if-eqz v0, :cond_0

    .line 323
    if-eqz v3, :cond_5

    .line 325
    :try_start_1
    new-instance v3, Lcom/adjust/sdk/SharedPreferencesManager;

    .line 326
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/adjust/sdk/SharedPreferencesManager;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClickTimeInMilliseconds()J

    move-result-wide v12

    .line 328
    invoke-virtual {v3, v2, v12, v13}, Lcom/adjust/sdk/SharedPreferencesManager;->removeRawReferrer(Ljava/lang/String;J)V

    .line 333
    :cond_5
    if-eqz v10, :cond_6

    .line 335
    iput-wide v8, v1, Lcom/adjust/sdk/SdkClickResponseData;->clickTime:J

    .line 336
    iput-wide v6, v1, Lcom/adjust/sdk/SdkClickResponseData;->installBegin:J

    .line 337
    iput-object v4, v1, Lcom/adjust/sdk/SdkClickResponseData;->installReferrer:Ljava/lang/String;

    .line 338
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/adjust/sdk/SdkClickResponseData;->isInstallReferrer:Z

    .line 341
    :cond_6
    invoke-interface {v0, v1}, Lcom/adjust/sdk/IActivityHandler;->finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 344
    :catch_1
    move-exception v0

    .line 345
    const-string v1, "Sdk_click request timed out. Will retry later"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->retrySendingI(Lcom/adjust/sdk/ActivityPackage;)V

    goto/16 :goto_1

    .line 347
    :catch_2
    move-exception v0

    .line 348
    const-string v1, "Sdk_click request failed. Will retry later"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/adjust/sdk/SdkClickHandler;->retrySendingI(Lcom/adjust/sdk/ActivityPackage;)V

    goto/16 :goto_1

    .line 350
    :catch_3
    move-exception v0

    .line 351
    const-string v1, "Sdk_click runtime exception"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/SdkClickHandler;->logErrorMessageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_7
    move-object v4, v1

    move-wide v8, v6

    goto :goto_3
.end method


# virtual methods
.method public init(Lcom/adjust/sdk/IActivityHandler;Z)V
    .locals 1

    .prologue
    .line 93
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 96
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseSending()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    .line 104
    return-void
.end method

.method public resumeSending()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/SdkClickHandler;->paused:Z

    .line 113
    invoke-direct {p0}, Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V

    .line 114
    return-void
.end method

.method public sendReftagReferrers()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lawb;

    invoke-direct {v1, p0}, Lawb;-><init>(Lcom/adjust/sdk/SdkClickHandler;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 186
    return-void
.end method

.method public sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lawa;

    invoke-direct {v1, p0, p1}, Lawa;-><init>(Lcom/adjust/sdk/SdkClickHandler;Lcom/adjust/sdk/ActivityPackage;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 132
    return-void
.end method

.method public teardown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "SdkClickHandler teardown"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    invoke-virtual {v0}, Lcom/adjust/sdk/CustomScheduledExecutor;->shutdownNow()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 211
    :cond_2
    iput-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 212
    iput-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->packageQueue:Ljava/util/List;

    .line 213
    iput-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 214
    iput-object v3, p0, Lcom/adjust/sdk/SdkClickHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 215
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method
