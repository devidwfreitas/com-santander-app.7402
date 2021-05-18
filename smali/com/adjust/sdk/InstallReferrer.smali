.class public Lcom/adjust/sdk/InstallReferrer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final PACKAGE_BASE_NAME:Ljava/lang/String; = "com.android.installreferrer."

.field private static final STATUS_DEVELOPER_ERROR:I = 0x3

.field private static final STATUS_FEATURE_NOT_SUPPORTED:I = 0x2

.field private static final STATUS_OK:I = 0x0

.field private static final STATUS_SERVICE_DISCONNECTED:I = -0x1

.field private static final STATUS_SERVICE_UNAVAILABLE:I = 0x1


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

.field private context:Landroid/content/Context;

.field private flagLock:Ljava/lang/Object;

.field private hasInstallReferrerBeenRead:Z

.field private logger:Lcom/adjust/sdk/ILogger;

.field private referrerClient:Ljava/lang/Object;

.field private retries:I

.field private retryTimer:Lcom/adjust/sdk/TimerOnce;

.field private retryWaitTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adjust/sdk/IActivityHandler;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/adjust/sdk/InstallReferrer;->retryWaitTime:I

    .line 101
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    .line 102
    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->context:Landroid/content/Context;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->flagLock:Ljava/lang/Object;

    .line 104
    iput-boolean v1, p0, Lcom/adjust/sdk/InstallReferrer;->hasInstallReferrerBeenRead:Z

    .line 105
    iput v1, p0, Lcom/adjust/sdk/InstallReferrer;->retries:I

    .line 106
    new-instance v0, Lcom/adjust/sdk/TimerOnce;

    new-instance v1, Lavp;

    invoke-direct {v1, p0}, Lavp;-><init>(Lcom/adjust/sdk/InstallReferrer;)V

    const-string v2, "InstallReferrer"

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/TimerOnce;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->retryTimer:Lcom/adjust/sdk/TimerOnce;

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 114
    invoke-virtual {p0}, Lcom/adjust/sdk/InstallReferrer;->startConnection()V

    .line 115
    return-void
.end method

.method private closeReferrerClient()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 399
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 403
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    const-string v1, "endConnection"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_1
    iput-object v5, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "closeReferrerClient error (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getInstallBeginTimestampSeconds(Ljava/lang/Object;)J
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    .line 357
    if-nez p1, :cond_0

    move-wide v0, v2

    .line 367
    :goto_0
    return-wide v0

    .line 361
    :cond_0
    :try_start_0
    const-string v0, "getInstallBeginTimestampSeconds"

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 363
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "getInstallBeginTimestampSeconds error (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    .line 367
    goto :goto_0
.end method

.method private getInstallReferrer()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 307
    :goto_0
    return-object v0

    .line 302
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    const-string v2, "getInstallReferrer"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 305
    iget-object v2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "getInstallReferrer error (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getReferrerClickTimestampSeconds(Ljava/lang/Object;)J
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    .line 337
    if-nez p1, :cond_0

    move-wide v0, v2

    .line 347
    :goto_0
    return-wide v0

    .line 341
    :cond_0
    :try_start_0
    const-string v0, "getReferrerClickTimestampSeconds"

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 343
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "getReferrerClickTimestampSeconds error (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    .line 347
    goto :goto_0
.end method

.method private getStringInstallReferrer(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 317
    if-nez p1, :cond_0

    move-object v0, v1

    .line 327
    :goto_0
    return-object v0

    .line 321
    :cond_0
    :try_start_0
    const-string v0, "getInstallReferrer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    iget-object v2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "getStringInstallReferrer error (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 327
    goto :goto_0
.end method

.method private retry()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 374
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->flagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-boolean v0, p0, Lcom/adjust/sdk/InstallReferrer;->hasInstallReferrerBeenRead:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Install referrer has already been read"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    monitor-exit v1

    .line 393
    :goto_0
    return-void

    .line 379
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget v0, p0, Lcom/adjust/sdk/InstallReferrer;->retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adjust/sdk/InstallReferrer;->retries:I

    .line 382
    iget v0, p0, Lcom/adjust/sdk/InstallReferrer;->retries:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Limit number of retry for install referrer surpassed"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->retryTimer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerOnce;->getFireIn()J

    move-result-wide v0

    .line 388
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 389
    iget-object v2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Already waiting to retry to read install referrer in %d milliseconds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->retryTimer:Lcom/adjust/sdk/TimerOnce;

    iget v1, p0, Lcom/adjust/sdk/InstallReferrer;->retryWaitTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/adjust/sdk/TimerOnce;->startIn(J)V

    goto :goto_0
.end method


# virtual methods
.method public createInstallReferrerClient(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    if-nez p1, :cond_0

    .line 156
    :goto_0
    return-object v0

    .line 149
    :cond_0
    :try_start_0
    const-string v1, "com.android.installreferrer.api.InstallReferrerClient"

    const-string v2, "newBuilder"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 152
    const-string v2, "build"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    iget-object v2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Couldn\'t create instance of referrer client (%s)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public createProxyInstallReferrerStateListener(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 183
    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstallReferrerStateListenerClass()Ljava/lang/Class;
    .locals 5

    .prologue
    .line 166
    :try_start_0
    const-string v0, "com.android.installreferrer.api.InstallReferrerStateListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "getInstallReferrerStateListenerClass error (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 219
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "InstallReferrer invoke method name: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-interface {v0, v3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    array-length v3, p3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p3, v0

    .line 221
    iget-object v5, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v6, "InstallReferrer invoke arg: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const-string v0, "onInstallReferrerSetupFinished"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adjust/sdk/InstallReferrer;->onInstallReferrerSetupFinishedInt(I)V

    .line 233
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_2
    const-string v0, "onInstallReferrerServiceDisconnected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "InstallReferrer onInstallReferrerServiceDisconnected"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    iget-object v2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "InstallReferrer invoke error (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onInstallReferrerSetupFinishedInt(I)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 286
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Unexpected response code of install referrer response: %d"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :goto_0
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->closeReferrerClient()V

    .line 290
    return-void

    .line 247
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->getInstallReferrer()Ljava/lang/Object;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/adjust/sdk/InstallReferrer;->getStringInstallReferrer(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 249
    invoke-direct {p0, v0}, Lcom/adjust/sdk/InstallReferrer;->getReferrerClickTimestampSeconds(Ljava/lang/Object;)J

    move-result-wide v2

    .line 250
    invoke-direct {p0, v0}, Lcom/adjust/sdk/InstallReferrer;->getInstallBeginTimestampSeconds(Ljava/lang/Object;)J

    move-result-wide v4

    .line 251
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "installReferrer: %s, clickTime: %d, installBeginTime: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    .line 252
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 251
    invoke-interface {v0, v1, v7}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/IActivityHandler;

    .line 256
    if-eqz v1, :cond_0

    .line 257
    invoke-interface/range {v1 .. v6}, Lcom/adjust/sdk/IActivityHandler;->sendInstallReferrer(JJLjava/lang/String;)V

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->flagLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/adjust/sdk/InstallReferrer;->hasInstallReferrerBeenRead:Z

    .line 261
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Couldn\'t get install referrer from client (%s). Retrying ..."

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->retry()V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Install referrer not available on the current Play Store app."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Could not initiate connection to the Install Referrer service. Retrying ..."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->retry()V

    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Install referrer general errors caused by incorrect usage. Retrying ..."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->retry()V

    goto :goto_0

    .line 282
    :pswitch_4
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Play Store service is not connected now. Retrying ..."

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->retry()V

    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public startConnection()V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->closeReferrerClient()V

    .line 123
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->flagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/adjust/sdk/InstallReferrer;->hasInstallReferrerBeenRead:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Install referrer has already been read"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    monitor-exit v1

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/adjust/sdk/InstallReferrer;->createInstallReferrerClient(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    .line 132
    invoke-virtual {p0}, Lcom/adjust/sdk/InstallReferrer;->getInstallReferrerStateListenerClass()Ljava/lang/Class;

    move-result-object v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/adjust/sdk/InstallReferrer;->createProxyInstallReferrerStateListener(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/InstallReferrer;->startConnection(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startConnection(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    const-string v1, "startConnection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "startConnection error (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
