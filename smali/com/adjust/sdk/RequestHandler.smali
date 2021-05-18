.class public Lcom/adjust/sdk/RequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/IRequestHandler;


# instance fields
.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageHandlerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/IPackageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 26
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    const-string v1, "RequestHandler"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 27
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/RequestHandler;->init(Lcom/adjust/sdk/IPackageHandler;)V

    .line 28
    return-void
.end method

.method public static synthetic access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/RequestHandler;->sendI(Lcom/adjust/sdk/ActivityPackage;I)V

    return-void
.end method

.method private closePackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v2, "%s. (%s) Will retry later"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v1

    .line 97
    iput-object v0, v1, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IPackageHandler;

    .line 100
    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0
.end method

.method private sendI(Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://app.adjust.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/adjust/sdk/UtilNetworking;->createPOSTHttpsURLConnection(Ljava/lang/String;Lcom/adjust/sdk/ActivityPackage;I)Lcom/adjust/sdk/ResponseData;

    move-result-object v1

    .line 67
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IPackageHandler;

    .line 68
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v2, v1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 73
    invoke-interface {v0, v1, p1}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "Failed to encode parameters"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/RequestHandler;->sendNextPackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :cond_1
    :try_start_1
    invoke-interface {v0, v1}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage(Lcom/adjust/sdk/ResponseData;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    const-string v1, "Request timed out"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/RequestHandler;->closePackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :catch_2
    move-exception v0

    .line 83
    const-string v1, "Request failed"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/RequestHandler;->closePackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :catch_3
    move-exception v0

    .line 85
    const-string v1, "Runtime exception"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/RequestHandler;->sendNextPackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendNextPackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v2, "%s. (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object v1

    .line 115
    iput-object v0, v1, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IPackageHandler;

    .line 118
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-interface {v0, v1}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage(Lcom/adjust/sdk/ResponseData;)V

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method public sendPackage(Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lavy;

    invoke-direct {v1, p0, p1, p2}, Lavy;-><init>(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 43
    return-void
.end method

.method public teardown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "RequestHandler teardown"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    invoke-virtual {v0}, Lcom/adjust/sdk/CustomScheduledExecutor;->shutdownNow()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 56
    :cond_1
    iput-object v3, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 57
    iput-object v3, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 58
    iput-object v3, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 59
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method
