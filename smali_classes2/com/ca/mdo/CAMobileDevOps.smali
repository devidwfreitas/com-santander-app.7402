.class public Lcom/ca/mdo/CAMobileDevOps;
.super Ljava/lang/Object;
.source "CAMobileDevOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;
    }
.end annotation


# static fields
.field public static final CAMAA_CUSTOMER_ID:Ljava/lang/String; = "customerId"

.field private static final PACKAGE:Ljava/lang/String;

.field public static TRANSACTION_SEPARATOR:Ljava/lang/String;

.field public static backendUrl:Ljava/lang/String;

.field public static configRead:Z

.field public static cookieManager:Ljava/net/CookieManager;

.field public static csn:Ljava/lang/String;

.field private static currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static currentSessionId:Ljava/lang/String;

.field public static customEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public static customerFeedback:Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

.field private static dataManager:Lcom/ca/mdo/DataManager;

.field private static databaseService:Lcom/ca/mdo/DatabaseHandler;

.field public static ignoredViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isPrivateZone:Z

.field private static lastForeGroundEventTimeStamp:J

.field public static lastUploadAttemptTime:J

.field public static locationTracker:Lcom/ca/mdo/MDOLocationTracker;

.field private static mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

.field public static mAppID:Ljava/lang/String;

.field public static mAppKey:Ljava/lang/String;

.field public static mAppService:Ljava/lang/String;

.field public static mAppTransaction:Ljava/lang/String;

.field public static mAppTransactionStartTime:J

.field public static mBaseUrl:Ljava/lang/String;

.field public static mCollectorUrl:Ljava/lang/String;

.field public static mCountryCode:Ljava/lang/String;

.field public static mCurrentViewName:Ljava/lang/String;

.field public static mCustomerFeedback:Z

.field public static mCustomerId:Ljava/lang/String;

.field public static mCustomerIdType:Ljava/lang/String;

.field public static mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mIsCustomerLocation:Z

.field public static mIsFirstLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mJailBroken:Z

.field private static mMessageProcessingHandler:Landroid/os/Handler;

.field private static mMessageProcessingHandlerThread:Landroid/os/HandlerThread;

.field public static mOptOut:Z

.field public static mOrientation:I

.field public static mRegisteredFeedback:Z

.field public static mStartupTime:J

.field public static mTenantID:Ljava/lang/String;

.field public static mTransactions:Ljava/util/Map;
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

.field public static mTransactionsHolder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ca/mdo/TransactionDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static mTxnId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static mZipCode:Ljava/lang/String;

.field public static networkChangeReceiver:Landroid/content/BroadcastReceiver;

.field public static persistenceManager:Lcom/ca/mdo/PersistenceManager;

.field private static sessionProcessed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    const-class v0, Lcom/ca/mdo/CAMobileDevOps;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->PACKAGE:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ca/mdo/CAMobileDevOps;->mStartupTime:J

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mIsFirstLaunch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    const/4 v0, -0x1

    sput v0, Lcom/ca/mdo/CAMobileDevOps;->mOrientation:I

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    sput-boolean v2, Lcom/ca/mdo/CAMobileDevOps;->mOptOut:Z

    .line 72
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    .line 77
    sput-boolean v2, Lcom/ca/mdo/CAMobileDevOps;->mCustomerFeedback:Z

    .line 78
    sput-boolean v2, Lcom/ca/mdo/CAMobileDevOps;->mRegisteredFeedback:Z

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->currentSessionId:Ljava/lang/String;

    .line 88
    const-string v0, ""

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->csn:Ljava/lang/String;

    .line 91
    const-string v0, "0x039E"

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->TRANSACTION_SEPARATOR:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mTxnId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/write_bulk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->backendUrl:Ljava/lang/String;

    .line 95
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/ca/mdo/CAMobileDevOps;->lastUploadAttemptTime:J

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->sessionProcessed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    sput-boolean v2, Lcom/ca/mdo/CAMobileDevOps;->isPrivateZone:Z

    .line 106
    sput-boolean v2, Lcom/ca/mdo/CAMobileDevOps;->configRead:Z

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->ignoredViews:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/ca/mdo/CAMobileDevOps;->getCurrentConnection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static activityMotionEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - MDO activityMotionEvent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 473
    :goto_0
    return-void

    .line 451
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 452
    .local v2, "eventX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 454
    .local v3, "eventY":F
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 455
    .local v4, "motionEventObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 456
    .local v0, "attributesOFeventObject":Lorg/json/JSONObject;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch at x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, "touch_ended":Ljava/lang/String;
    :try_start_0
    const-string v6, "n"

    const-string v7, "touch_ended"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string v6, "v"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string v6, "ty"

    const-string v7, "view_touch_events"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string v6, "or"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDeviceOrientation()I

    move-result v7

    invoke-static {v7}, Lcom/ca/mdo/AppDeviceData;->getDeviceOrientationString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    const-string v6, "attr"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_1
    const/4 v6, 0x0

    invoke-static {v4, v8, v6, v8}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 469
    const/16 v6, 0x4f

    invoke-static {v6, v4}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static activityOnRestart(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - MDO re - start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public static activityOnWindowFocusChanged(ZLandroid/app/Activity;)V
    .locals 5
    .param p0, "hasFocus"    # Z
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - MDO activityOnWindowFocusChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 405
    const-string v2, "onResume"

    invoke-static {p1, v2}, Lcom/ca/mdo/CAMobileDevOps;->processResumeActivityDetails(Landroid/app/Activity;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 407
    .local v0, "onResumeActivityEventObj":Lorg/json/JSONObject;
    new-instance v1, Lcom/ca/mdo/MDOTask;

    invoke-direct {v1, p1, v0, p0, v4}, Lcom/ca/mdo/MDOTask;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;ZLandroid/graphics/Bitmap;)V

    .line 408
    .local v1, "ss":Lcom/ca/mdo/MDOTask;
    invoke-virtual {v1}, Lcom/ca/mdo/MDOTask;->process()V

    .line 409
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getSessionManager()Lcom/ca/mdo/SessionManager;

    move-result-object v2

    iget-object v2, v2, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 410
    invoke-static {v0, v4}, Lcom/ca/mdo/CAMobileDevOps;->sendAutoTransactions(Lorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V

    .line 413
    :cond_0
    return-void
.end method

.method public static activityPause(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - MDO activityPause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 423
    :try_start_0
    sget-object v3, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .local v0, "activityOnPauseEventObj":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {p0}, Lcom/ca/mdo/CAMobileDevOps;->getScreenName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "screenName":Ljava/lang/String;
    sget-object v3, Lcom/ca/mdo/CAMobileDevOps;->ignoredViews:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 429
    const-string v3, "v"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string v3, "n"

    const-string v4, "onPause"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string v3, "ty"

    const-string v4, "view_events"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    .end local v1    # "screenName":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v0, p0, v3, v4}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 436
    const/16 v3, 0x65

    invoke-static {v3, v0}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 437
    .end local v0    # "activityOnPauseEventObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 438
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 433
    .end local v2    # "th":Ljava/lang/Throwable;
    .restart local v0    # "activityOnPauseEventObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static activityResume(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - MDO  activityResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    :cond_0
    return-void
.end method

.method public static addCustomerFeedBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 768
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    :goto_0
    return-void

    .line 771
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 772
    :cond_1
    const-string v2, "addCustomerFeedBack: Input Data is not valid."

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 775
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 777
    .local v0, "eventObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "ty"

    const-string v3, "custom_event"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 778
    const-string v2, "n"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 779
    const-string v2, "v"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    const-string v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    const/4 v2, 0x0

    invoke-static {v0, v5, v2, v5}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 786
    const/16 v2, 0xe0

    invoke-static {v2, v0}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 787
    const-string v2, "In SDK Customer Feedback Event Logged."

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "ignored":Ljava/lang/Throwable;
    const-string v2, "addCustomerFeedBack caught exception"

    invoke-static {v2, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static addSessionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 721
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ca/mdo/CAMobileDevOps;->addSessionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 722
    return-void
.end method

.method public static addSessionEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;

    .prologue
    const/4 v9, 0x0

    .line 732
    sget-object v6, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 764
    :goto_0
    return-void

    .line 734
    :cond_0
    if-nez p0, :cond_1

    .line 735
    const-string p0, "string"

    .line 737
    :cond_1
    invoke-static {p0}, Lcom/ca/mdo/CAMobileDevOps;->dataTypeCheck(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 738
    :cond_2
    const-string v6, "addSessionEvent: Input Data is not valid."

    invoke-static {v6}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 742
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 745
    .local v0, "eventObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "ty"

    const-string v7, "custom"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v6, "n"

    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    const-string v6, "v"

    invoke-virtual {v0, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string v6, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 749
    if-nez p3, :cond_4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .end local p3    # "params":Ljava/util/Map;
    .local v5, "params":Ljava/util/Map;
    move-object p3, v5

    .line 750
    .end local v5    # "params":Ljava/util/Map;
    .restart local p3    # "params":Ljava/util/Map;
    :cond_4
    const-string v6, "dty"

    invoke-interface {p3, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 752
    .local v4, "paramJObj":Lorg/json/JSONObject;
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 753
    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 754
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 755
    .local v3, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 758
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "pairs":Ljava/util/Map$Entry;
    .end local v4    # "paramJObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 759
    .local v1, "ignored":Ljava/lang/Throwable;
    const-string v6, "addSessionEvent caught exception"

    invoke-static {v6, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 757
    .end local v1    # "ignored":Ljava/lang/Throwable;
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v4    # "paramJObj":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    const-string v6, "attr"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 762
    const/4 v6, 0x0

    invoke-static {v0, v9, v6, v9}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 763
    const/16 v6, 0x4f

    invoke-static {v6, v0}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method public static addToAPMHeaders(Ljava/lang/String;)V
    .locals 0
    .param p0, "headers"    # Ljava/lang/String;

    .prologue
    .line 1797
    invoke-static {p0}, Lcom/ca/mdo/AppDeviceData;->setAdditionalAPMHeaders(Ljava/lang/String;)V

    .line 1798
    return-void
.end method

.method public static addToIngoredList(Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Ljava/lang/String;

    .prologue
    .line 268
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->ignoredViews:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public static addToIngoredList(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "views":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->ignoredViews:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 273
    return-void
.end method

.method static appEnteredBackGroundEvent()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1881
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1882
    .local v1, "eventObj":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1884
    .local v0, "eventAttribs":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "ty"

    const-string v4, "app_events"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1885
    const-string v3, "n"

    const-string v4, "App Entered Background"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1886
    const-string v3, "v"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/ca/mdo/CAMobileDevOps;->lastForeGroundEventTimeStamp:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1887
    const-string v3, "attr"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v8, v3, v8}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 1892
    const/16 v3, 0x4f

    invoke-static {v3, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 1894
    return-void

    .line 1888
    :catch_0
    move-exception v2

    .line 1889
    .local v2, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static appEnteredForeGroundEvent()V
    .locals 2

    .prologue
    .line 1875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ca/mdo/CAMobileDevOps;->lastForeGroundEventTimeStamp:J

    .line 1876
    return-void
.end method

.method public static checkNetwork(Ljava/lang/String;ILandroid/net/NetworkInfo;)Z
    .locals 3
    .param p0, "NetworkType"    # Ljava/lang/String;
    .param p1, "connectivityManagerNetworkType"    # I
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x0

    .line 1650
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CONNECTION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CONNECTION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cleanUpChildren(I)V
    .locals 5
    .param p0, "txnId"    # I

    .prologue
    .line 1042
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    .local v1, "keysToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1044
    .local v0, "key":Ljava/lang/String;
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ca/mdo/TransactionDetails;

    .line 1045
    .local v2, "td":Lcom/ca/mdo/TransactionDetails;
    iget v4, v2, Lcom/ca/mdo/TransactionDetails;->txnId:I

    if-le v4, p0, :cond_0

    .line 1046
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1050
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "td":Lcom/ca/mdo/TransactionDetails;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1051
    .restart local v0    # "key":Ljava/lang/String;
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1053
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static clearTransactionsHolder()V
    .locals 1

    .prologue
    .line 1771
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1772
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    .line 1773
    return-void
.end method

.method protected static crash(Ljava/lang/String;)V
    .locals 10
    .param p0, "crash"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 509
    const-string v6, "Crash - MDO crash "

    invoke-static {v6}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 511
    .local v1, "crashedTime":J
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "crashDataBase64":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 514
    .local v4, "eventLogObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "n"

    const-string v7, "crash"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string v6, "v"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string v6, "t"

    invoke-virtual {v4, v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 517
    const-string v6, "ty"

    const-string v7, "crash"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v7, Lcom/ca/mdo/Constants;->PREF_CSN:Ljava/lang/String;

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, "storedScreen":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 520
    const-string v6, "passovercsn"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v5    # "storedScreen":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    sget-object v7, Lcom/ca/mdo/Constants;->PREF_IS_CRASH:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 526
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    sget-object v7, Lcom/ca/mdo/Constants;->PREF_CRASH_SESSION:Ljava/lang/String;

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCurrentSession()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 527
    const/4 v6, 0x0

    invoke-static {v4, v9, v6, v9}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 528
    const/4 v6, 0x3

    invoke-static {v6, v4}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 529
    return-void

    .line 522
    :catch_0
    move-exception v3

    .line 523
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static dataTypeCheck(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dataType"    # Ljava/lang/String;

    .prologue
    .line 1356
    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static dataTypeCheckSession(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dataType"    # Ljava/lang/String;

    .prologue
    .line 1360
    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "customerId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static enterPrivateZone()V
    .locals 8

    .prologue
    .line 1854
    const/4 v3, 0x1

    sput-boolean v3, Lcom/ca/mdo/CAMobileDevOps;->isPrivateZone:Z

    .line 1855
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmMessageProcessingHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1856
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmMessageProcessingHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmMessageProcessingHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xe6

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1860
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1861
    .local v1, "eventObj":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1863
    .local v0, "eventAttribs":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "ty"

    const-string v4, "app_events"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1864
    const-string v3, "n"

    const-string v4, "private_zone_entered"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1865
    const-string v3, "v"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1866
    const-string v3, "attr"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    :goto_0
    const/16 v3, 0x4f

    invoke-static {v3, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 1872
    return-void

    .line 1868
    :catch_0
    move-exception v2

    .line 1869
    .local v2, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static exitPrivateZone()V
    .locals 9

    .prologue
    .line 1900
    const/4 v4, 0x0

    sput-boolean v4, Lcom/ca/mdo/CAMobileDevOps;->isPrivateZone:Z

    .line 1901
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ca/mdo/PolicyManager;->getLocationCheck()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1902
    .local v3, "locationCheck":Ljava/lang/Integer;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmMessageProcessingHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1903
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmMessageProcessingHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmMessageProcessingHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xe6

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1907
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1908
    .local v1, "eventObj":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1910
    .local v0, "eventAttribs":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "ty"

    const-string v5, "app_events"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1911
    const-string v4, "n"

    const-string v5, "private_zone_exited"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1912
    const-string v4, "v"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1913
    const-string v4, "attr"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :goto_0
    const/16 v4, 0x4f

    invoke-static {v4, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 1919
    return-void

    .line 1915
    :catch_0
    move-exception v2

    .line 1916
    .local v2, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static fragmentEvent(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p0, "fragmentName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "eventName"    # Ljava/lang/String;

    .prologue
    .line 278
    :try_start_0
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "parent":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v1, "fragmentOnResumeEventObj":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v0, "extraInfo":Lorg/json/JSONObject;
    const-string v4, "activity"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v4, "csn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->getScreenName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v4, "v"

    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v4, "n"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v4, "attr"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v4, "ty"

    const-string v5, "view_events"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, p1, v4, v5}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 293
    const/16 v4, 0x4f

    invoke-static {v4, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v0    # "extraInfo":Lorg/json/JSONObject;
    .end local v1    # "fragmentOnResumeEventObj":Lorg/json/JSONObject;
    .end local v2    # "parent":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 295
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 283
    .end local v3    # "th":Ljava/lang/Throwable;
    .restart local v2    # "parent":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method public static fragmentPause(Landroid/app/Fragment;)V
    .locals 6
    .param p0, "fragment"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 325
    :try_start_0
    const-string v2, "%s[%s] - MDO fragmentResume "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 326
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "fragmentName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ca/mdo/CAMobileDevOps;->fragmentPause(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v0    # "fragmentName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 330
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "fragmentName":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static fragmentPause(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p0, "fragmentName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 262
    const-string v0, "onFragmentPause"

    invoke-static {p0, p1, v0}, Lcom/ca/mdo/CAMobileDevOps;->fragmentEvent(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public static fragmentResume(Landroid/app/Fragment;)V
    .locals 6
    .param p0, "fragment"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 303
    :try_start_0
    const-string v2, "%s[%s] - MDO fragmentResume "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 304
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "fragmentName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ca/mdo/CAMobileDevOps;->fragmentResume(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v0    # "fragmentName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 311
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 308
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "fragmentName":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static fragmentResume(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p0, "fragmentName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 256
    const-string v0, "onFragmentResume"

    invoke-static {p0, p1, v0}, Lcom/ca/mdo/CAMobileDevOps;->fragmentEvent(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public static generalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1671
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1673
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "v"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1674
    const-string v2, "n"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1675
    const-string v2, "ty"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1679
    :goto_0
    return-object v1

    .line 1676
    :catch_0
    move-exception v0

    .line 1677
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAPMHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1786
    const-string v0, ""

    .line 1788
    .local v0, "apmHeader":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->sendAPMHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x-apm-bt||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAPMHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1791
    :cond_0
    return-object v0
.end method

.method public static getAndroidVersion()I
    .locals 1

    .prologue
    .line 1952
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1558
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1559
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppID:Ljava/lang/String;

    .line 1566
    .local v0, "appId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1560
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/Constants;->PREF_APPID:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    .restart local v0    # "appId":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1562
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->reloadConfig(Landroid/app/Application;)Ljava/util/Map;

    .line 1566
    :goto_1
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppID:Ljava/lang/String;

    goto :goto_0

    .line 1564
    :cond_1
    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mAppID:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1570
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1571
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppKey:Ljava/lang/String;

    .line 1578
    .local v0, "appKey":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1572
    .end local v0    # "appKey":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/Constants;->PREF_APPKEY:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    .restart local v0    # "appKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1574
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->reloadConfig(Landroid/app/Application;)Ljava/util/Map;

    .line 1578
    :goto_1
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppKey:Ljava/lang/String;

    goto :goto_0

    .line 1576
    :cond_1
    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mAppKey:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1232
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1233
    .local v0, "appName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const-string v0, "DEFAULT"

    .end local v0    # "appName":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 1232
    :cond_1
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    invoke-virtual {v1}, Lcom/ca/mdo/AppDeviceData;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAppService(Z)Ljava/lang/String;
    .locals 2
    .param p0, "isAuto"    # Z

    .prologue
    .line 1029
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "appName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1031
    const-string v0, "Unknown"

    .line 1033
    :cond_0
    if-eqz p0, :cond_2

    move-object v1, v0

    .line 1034
    .local v1, "appService":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 1035
    move-object v1, v0

    .line 1037
    :cond_1
    return-object v1

    .line 1033
    .end local v1    # "appService":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppService:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getApplicationService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1288
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mAppService:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1284
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mAppTransaction:Ljava/lang/String;

    return-object v0
.end method

.method public static getBackendUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1519
    const/4 v0, 0x0

    .line 1520
    .local v0, "backEndUrl":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCollectorUrl()Ljava/lang/String;

    move-result-object v2

    .line 1521
    .local v2, "cUrl":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 1522
    .local v1, "baseUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCollectorUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1524
    move-object v0, v2

    .line 1529
    :goto_0
    return-object v0

    .line 1526
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBaseUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/write_bulk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1534
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1535
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mBaseUrl:Ljava/lang/String;

    .line 1542
    .local v0, "baseUrl":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1536
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/Constants;->PREF_BASEURL:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    .restart local v0    # "baseUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1538
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->reloadConfig(Landroid/app/Application;)Ljava/util/Map;

    .line 1542
    :goto_1
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mBaseUrl:Ljava/lang/String;

    goto :goto_0

    .line 1540
    :cond_1
    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mBaseUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method static getCVHeader(Z)Lorg/json/JSONObject;
    .locals 5
    .param p0, "isCrashedSession"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1808
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1810
    .local v0, "cv":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/ca/mdo/Constants;->PREF_IS_CRASH:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1811
    .local v1, "isCrashFlag":Z
    const-string v2, "cak"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1812
    const-string v2, "cta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getTenantID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1813
    const-string v2, "csm"

    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1814
    const-string v2, "csv"

    const-string v3, "16.4.2"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1815
    const-string v2, "cpt"

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ca/mdo/PolicyManager;->getLastUpdatedTimeStamp()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1816
    const-string v2, "cpi"

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ca/mdo/PolicyManager;->getProfileId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1818
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1819
    const-string v2, "ckv"

    .line 1820
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ca/mdo/MDOSecurityManager;->getPublicEncryptionKeyVersion()J

    move-result-wide v3

    .line 1819
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1822
    :cond_0
    const-string v2, "cic"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1823
    return-object v0
.end method

.method public static getCollectorUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1582
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1583
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    .line 1590
    .local v0, "collectorUrl":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1584
    .end local v0    # "collectorUrl":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/Constants;->PREF_COLLECTORURL:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1585
    .restart local v0    # "collectorUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1586
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->reloadConfig(Landroid/app/Application;)Ljava/util/Map;

    .line 1590
    :goto_1
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    goto :goto_0

    .line 1588
    :cond_1
    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getCrashedSession()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1748
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lcom/ca/mdo/Constants;->PREF_CRASH_SESSION:Ljava/lang/String;

    const-string v5, "unknown"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1749
    .local v1, "fromShared":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 1758
    .end local v1    # "fromShared":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "fromShared":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    .line 1752
    goto :goto_0

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 1758
    goto :goto_0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1171
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->currentActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method private static getCurrentConnection(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1610
    const-string v2, "phone"

    .line 1611
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1612
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 1613
    .local v1, "networkType":I
    packed-switch v1, :pswitch_data_0

    .line 1645
    const-string v2, "Unknown"

    :goto_0
    return-object v2

    .line 1615
    :pswitch_0
    const-string v2, "GPRS"

    goto :goto_0

    .line 1617
    :pswitch_1
    const-string v2, "EDGE"

    goto :goto_0

    .line 1619
    :pswitch_2
    const-string v2, "CDMA"

    goto :goto_0

    .line 1621
    :pswitch_3
    const-string v2, "1xRTT"

    goto :goto_0

    .line 1623
    :pswitch_4
    const-string v2, "IDEN"

    goto :goto_0

    .line 1625
    :pswitch_5
    const-string v2, "UMTS"

    goto :goto_0

    .line 1627
    :pswitch_6
    const-string v2, "EVDO_0"

    goto :goto_0

    .line 1629
    :pswitch_7
    const-string v2, "EVDO_A"

    goto :goto_0

    .line 1631
    :pswitch_8
    const-string v2, "HSDPA"

    goto :goto_0

    .line 1633
    :pswitch_9
    const-string v2, "HSUPA"

    goto :goto_0

    .line 1635
    :pswitch_a
    const-string v2, "HSPA"

    goto :goto_0

    .line 1637
    :pswitch_b
    const-string v2, "EVDO_B"

    goto :goto_0

    .line 1639
    :pswitch_c
    const-string v2, "EHRPD"

    goto :goto_0

    .line 1641
    :pswitch_d
    const-string v2, "HSPAP"

    goto :goto_0

    .line 1643
    :pswitch_e
    const-string v2, "LTE"

    goto :goto_0

    .line 1613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getCurrentSession()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1734
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/ca/mdo/SessionManager;->LAST_SESSION_ID:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1735
    .local v1, "fromShared":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1743
    .end local v1    # "fromShared":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 1738
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "fromShared":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->currentSessionId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1740
    :catch_0
    move-exception v0

    .line 1741
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    .line 1743
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCurrentViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1292
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mCurrentViewName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomEventsForSession(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .param p0, "session"    # Ljava/lang/String;

    .prologue
    .line 1723
    :try_start_0
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->customEvents:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1724
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->customEvents:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    :goto_0
    return-object v1

    .line 1726
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    .line 1729
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1352
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDataManager()Lcom/ca/mdo/DataManager;
    .locals 3

    .prologue
    .line 1264
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->dataManager:Lcom/ca/mdo/DataManager;

    if-nez v0, :cond_0

    .line 1265
    new-instance v0, Lcom/ca/mdo/DataManager;

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->backendUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ca/mdo/DataManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->dataManager:Lcom/ca/mdo/DataManager;

    .line 1267
    :cond_0
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->dataManager:Lcom/ca/mdo/DataManager;

    return-object v0
.end method

.method public static getDatabaseService()Lcom/ca/mdo/DatabaseHandler;
    .locals 2

    .prologue
    .line 1257
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->databaseService:Lcom/ca/mdo/DatabaseHandler;

    if-nez v0, :cond_0

    .line 1258
    new-instance v0, Lcom/ca/mdo/DatabaseHandler;

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ca/mdo/DatabaseHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->databaseService:Lcom/ca/mdo/DatabaseHandler;

    .line 1260
    :cond_0
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->databaseService:Lcom/ca/mdo/DatabaseHandler;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1238
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1239
    .local v0, "deviceID":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1238
    .end local v0    # "deviceID":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1683
    sget-boolean v1, Lcom/ca/mdo/CAMobileDevOps;->isPrivateZone:Z

    if-eqz v1, :cond_1

    .line 1700
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 1686
    :cond_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1689
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mdo/PolicyManager;->getLocationCheck()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1695
    :pswitch_1
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    .line 1698
    :pswitch_2
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getCoordinates()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    .line 1689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpStatus"    # I
    .param p2, "responseTime"    # J
    .param p4, "inBytes"    # J
    .param p6, "outBytes"    # J
    .param p8, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJ",
            "Lcom/ca/integration/CaMDOCallback;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ca/mdo/Network;"
        }
    .end annotation

    .prologue
    .line 2144
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p11, "reqParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ca/mdo/Network;

    invoke-direct {v0}, Lcom/ca/mdo/Network;-><init>()V

    .line 2145
    .local v0, "networkData":Lcom/ca/mdo/Network;
    iput-object p0, v0, Lcom/ca/mdo/Network;->url:Ljava/lang/String;

    .line 2146
    iput p1, v0, Lcom/ca/mdo/Network;->httpStatus:I

    .line 2147
    iput-wide p2, v0, Lcom/ca/mdo/Network;->responseTime:J

    .line 2148
    iput-wide p4, v0, Lcom/ca/mdo/Network;->inBytes:J

    .line 2149
    iput-wide p6, v0, Lcom/ca/mdo/Network;->outBytes:J

    .line 2150
    iput-object p8, v0, Lcom/ca/mdo/Network;->callback:Lcom/ca/integration/CaMDOCallback;

    .line 2151
    iput-object p9, v0, Lcom/ca/mdo/Network;->customAttributes:Ljava/util/Map;

    .line 2152
    iput-object p10, v0, Lcom/ca/mdo/Network;->headers:Ljava/util/Map;

    .line 2153
    iput-object p11, v0, Lcom/ca/mdo/Network;->reqParams:Ljava/util/Map;

    .line 2154
    return-object v0
.end method

.method public static getOptOut()Z
    .locals 1

    .prologue
    .line 1275
    sget-boolean v0, Lcom/ca/mdo/CAMobileDevOps;->mOptOut:Z

    return v0
.end method

.method public static getPersistenceManager()Lcom/ca/mdo/PersistenceManager;
    .locals 1

    .prologue
    .line 1301
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    if-nez v0, :cond_0

    .line 1302
    new-instance v0, Lcom/ca/mdo/PersistenceManager;

    invoke-direct {v0}, Lcom/ca/mdo/PersistenceManager;-><init>()V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    .line 1304
    :cond_0
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    return-object v0
.end method

.method public static getQuality(Ljava/lang/String;)I
    .locals 3
    .param p0, "q"    # Ljava/lang/String;

    .prologue
    .line 1836
    const/4 v1, -0x1

    .line 1838
    .local v1, "quality":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1843
    :goto_0
    return v1

    .line 1840
    :catch_0
    move-exception v0

    .line 1841
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Error in decoding quality variable of screenshot api , using default value"

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getScreenName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1217
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 1218
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    .local v1, "screenName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1222
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1223
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1225
    :cond_1
    if-nez v1, :cond_2

    .line 1226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1228
    :cond_2
    return-object v1

    .line 1218
    .end local v1    # "screenName":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSessionManager()Lcom/ca/mdo/SessionManager;
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getPersistenceManager()Lcom/ca/mdo/PersistenceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getPersistenceManager()Lcom/ca/mdo/PersistenceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ca/mdo/PersistenceManager;->sessionManager:Lcom/ca/mdo/SessionManager;

    if-eqz v0, :cond_0

    .line 670
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getPersistenceManager()Lcom/ca/mdo/PersistenceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ca/mdo/PersistenceManager;->sessionManager:Lcom/ca/mdo/SessionManager;

    .line 672
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSessionProcessed()Z
    .locals 1

    .prologue
    .line 1828
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->sessionProcessed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static getTenantID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1546
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mTenantID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1547
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mTenantID:Ljava/lang/String;

    .line 1554
    .local v0, "tenantId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1548
    .end local v0    # "tenantId":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/Constants;->PREF_TENANTID:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1549
    .restart local v0    # "tenantId":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1550
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->reloadConfig(Landroid/app/Application;)Ljava/util/Map;

    .line 1554
    :goto_1
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mTenantID:Ljava/lang/String;

    goto :goto_0

    .line 1552
    :cond_1
    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->mTenantID:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getTxnId()I
    .locals 2

    .prologue
    .line 1781
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mTxnId:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mTxnId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1782
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mTxnId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public static getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;
    .locals 1

    .prologue
    .line 1308
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    return-object v0
.end method

.method public static getmMessageProcessingHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1271
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static httpPerformance(Lcom/ca/mdo/Network;)V
    .locals 12
    .param p0, "networkData"    # Lcom/ca/mdo/Network;

    .prologue
    const/4 v11, 0x0

    .line 606
    const-string v8, "httpPerformance - MDO httpPerformance "

    invoke-static {v8}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 607
    sget-object v8, Lcom/ca/mdo/CAMobileDevOps;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isSessionReady()Z

    move-result v8

    if-nez v8, :cond_1

    .line 608
    :cond_0
    iget-object v8, p0, Lcom/ca/mdo/Network;->callback:Lcom/ca/integration/CaMDOCallback;

    new-instance v9, Lcom/ca/mdo/CaMDOException;

    sget-object v10, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_INITIALIZE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v9, v10}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {v8, v9}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 657
    :goto_0
    return-void

    .line 612
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 614
    .local v2, "httpPerf":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "ty"

    const-string v9, "network"

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    const-string v8, "u"

    iget-object v9, p0, Lcom/ca/mdo/Network;->url:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    const-string v8, "r"

    iget-wide v9, p0, Lcom/ca/mdo/Network;->responseTime:J

    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 617
    iget v8, p0, Lcom/ca/mdo/Network;->httpStatus:I

    if-nez v8, :cond_2

    .line 618
    const/16 v8, 0x309

    iput v8, p0, Lcom/ca/mdo/Network;->httpStatus:I

    .line 620
    :cond_2
    const-string v8, "s"

    iget v9, p0, Lcom/ca/mdo/Network;->httpStatus:I

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 621
    const-string v8, "i"

    iget-wide v9, p0, Lcom/ca/mdo/Network;->inBytes:J

    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 622
    const-string v8, "o"

    iget-wide v9, p0, Lcom/ca/mdo/Network;->outBytes:J

    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 624
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 625
    .local v1, "head_attrib":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 627
    .local v6, "req_params":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/ca/mdo/Network;->headers:Ljava/util/Map;

    if-eqz v8, :cond_5

    .line 628
    iget-object v8, p0, Lcom/ca/mdo/Network;->headers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 629
    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 630
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 631
    .local v4, "pairs":Ljava/util/Map$Entry;
    const-string v8, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    const-string v8, "value"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 652
    .end local v1    # "head_attrib":Lorg/json/JSONObject;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "pairs":Ljava/util/Map$Entry;
    .end local v6    # "req_params":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 653
    .local v7, "th":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    .end local v7    # "th":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    const/4 v8, 0x0

    invoke-static {v2, v11, v8, v11}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 656
    const/4 v8, 0x4

    iget-object v9, p0, Lcom/ca/mdo/Network;->callback:Lcom/ca/integration/CaMDOCallback;

    invoke-static {v8, v2, v9}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V

    goto/16 :goto_0

    .line 634
    .restart local v1    # "head_attrib":Lorg/json/JSONObject;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v6    # "req_params":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 635
    .local v0, "hdrAttribArr":Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 636
    const-string v8, "ha"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    .end local v0    # "hdrAttribArr":Lorg/json/JSONArray;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Lcom/ca/mdo/Network;->reqParams:Ljava/util/Map;

    if-eqz v8, :cond_3

    .line 640
    iget-object v8, p0, Lcom/ca/mdo/Network;->reqParams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 641
    .restart local v3    # "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 642
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 643
    .restart local v4    # "pairs":Ljava/util/Map$Entry;
    const-string v8, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    const-string v8, "value"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 646
    .end local v4    # "pairs":Ljava/util/Map$Entry;
    :cond_6
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 647
    .local v5, "reqParamArr":Lorg/json/JSONArray;
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 648
    const-string v8, "rp"

    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static incrementEventUploadCounter()V
    .locals 9

    .prologue
    .line 1956
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v6, Lcom/ca/mdo/Constants;->PREF_EVENT_COUNTER_FOR_UPLOAD:Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1957
    .local v0, "counter":J
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 1958
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lcom/ca/mdo/Constants;->PREF_EVENT_COUNTER_FOR_UPLOAD:Ljava/lang/String;

    invoke-interface {v5, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GlobalCounter Incrementing:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1961
    .local v2, "currentTime":J
    sget-wide v5, Lcom/ca/mdo/CAMobileDevOps;->lastUploadAttemptTime:J

    sub-long v5, v2, v5

    const-wide/32 v7, 0xea60

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    const/4 v4, 0x1

    .line 1962
    .local v4, "isAllowedInterval":Z
    :goto_0
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ca/mdo/PolicyManager;->getUploadEventsLimit()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 1963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GlobalCounter Trigger Upload:::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1964
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->resetEventUploadCounter()V

    .line 1965
    const/16 v5, 0xfb

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 1968
    :cond_0
    return-void

    .line 1961
    .end local v4    # "isAllowedInterval":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 8
    .param p0, "app"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 156
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    .local v1, "ctx":Landroid/content/Context;
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 165
    const-string v4, "-------- CA SDK Begin Initialization --------"

    invoke-static {v4}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 169
    :goto_1
    const-string v4, "SDK Version:16.4.2"

    invoke-static {v4}, Lcom/ca/mdo/CALog;->i(Ljava/lang/String;)I

    .line 170
    const-string v4, "v16.4.2 May 16 2017 10:23"

    invoke-static {v4}, Lcom/ca/mdo/CALog;->i(Ljava/lang/String;)I

    .line 171
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v4, Lcom/ca/mdo/CAMobileDevOps;->mTransactions:Ljava/util/Map;

    .line 172
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v4, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    .line 174
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v4, Lcom/ca/mdo/CAMobileDevOps;->customEvents:Ljava/util/Map;

    .line 175
    invoke-static {p0}, Lcom/ca/mdo/CAMobileDevOps;->reloadConfig(Landroid/app/Application;)Ljava/util/Map;

    move-result-object v0

    .line 176
    .local v0, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ca/mdo/MDOSecurityManager;->loadPlistConfiguration(Ljava/util/Map;)V

    .line 177
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCollectorUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 179
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    sput-object v4, Lcom/ca/mdo/CAMobileDevOps;->backendUrl:Ljava/lang/String;

    .line 184
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backendUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/ca/mdo/CAMobileDevOps;->backendUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 186
    const-string v4, "profileURL"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/ca/mdo/PolicyUtil;->mProfileUrl:Ljava/lang/String;

    .line 190
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->initializeStartupTime()V

    .line 191
    invoke-static {p0}, Lcom/ca/org/acra/ACRA;->init(Landroid/app/Application;)V

    .line 193
    new-instance v4, Lcom/ca/mdo/MDOLocationTracker;

    invoke-direct {v4}, Lcom/ca/mdo/MDOLocationTracker;-><init>()V

    sput-object v4, Lcom/ca/mdo/CAMobileDevOps;->locationTracker:Lcom/ca/mdo/MDOLocationTracker;

    .line 194
    new-instance v4, Lcom/ca/mdo/PersistenceManager;

    invoke-direct {v4}, Lcom/ca/mdo/PersistenceManager;-><init>()V

    sput-object v4, Lcom/ca/mdo/CAMobileDevOps;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    .line 195
    new-instance v4, Lcom/ca/mdo/AppDeviceData;

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v5

    sget-object v6, Lcom/ca/mdo/CAMobileDevOps;->mTenantID:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/ca/mdo/AppDeviceData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v4, Lcom/ca/mdo/CAMobileDevOps;->mAppDeviceData:Lcom/ca/mdo/AppDeviceData;

    .line 196
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getDataManager()Lcom/ca/mdo/DataManager;

    .line 197
    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->initializeHandlers(Landroid/content/Context;)V

    .line 198
    new-instance v2, Lcom/ca/mdo/DevOpsReporterSender;

    invoke-direct {v2}, Lcom/ca/mdo/DevOpsReporterSender;-><init>()V

    .line 199
    .local v2, "reporterSender":Lcom/ca/mdo/DevOpsReporterSender;
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getErrorReporter()Lcom/ca/org/acra/ErrorReporter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ca/org/acra/ErrorReporter;->setReportSender(Lcom/ca/org/acra/sender/ReportSender;)V

    .line 201
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->registerForBatteryStatus()V

    .line 203
    const-string v4, "Database Handler Thread initialized"

    invoke-static {v4}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 204
    const-string v4, "Successfully initialized CA Mobile Analytics"

    invoke-static {v4}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->registerForNetworkChangeStatus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 210
    .end local v2    # "reporterSender":Lcom/ca/mdo/DevOpsReporterSender;
    :catch_0
    move-exception v3

    .line 211
    .local v3, "th":Ljava/lang/Throwable;
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 167
    .end local v0    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_2
    const-string v4, "-------- CA SDK Begin Initialization in Secure Mode --------"

    invoke-static {v4}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 181
    .restart local v0    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBaseUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/ca/mdo/CAMobileDevOps;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ca/mdo/CAMobileDevOps;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/write_bulk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/ca/mdo/CAMobileDevOps;->backendUrl:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public static initialize(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "encKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    const-string v0, "Deprecated: MAA SDK will use encryption key provided in plist file"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method private static initializeHandlers(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 238
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_MessageHandlerThread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandlerThread:Landroid/os/HandlerThread;

    .line 239
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 240
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 241
    .local v1, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/ca/mdo/MessageProcessingHandler;

    invoke-direct {v2, v1, p0}, Lcom/ca/mdo/MessageProcessingHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v2, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    .line 242
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 243
    const-string v2, "Message Processing Handler Thread initialized"

    invoke-static {v2}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/ca/mdo/MDOListener;

    invoke-direct {v0}, Lcom/ca/mdo/MDOListener;-><init>()V

    .line 245
    .local v0, "listener":Lcom/ca/mdo/MDOListener;
    invoke-static {}, Lcom/ca/mdo/AppMode;->get()Lcom/ca/mdo/AppMode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ca/mdo/AppMode;->addListener(Lcom/ca/mdo/AppMode$Listener;)V

    .line 246
    return-void
.end method

.method private static initializeStartupTime()V
    .locals 7

    .prologue
    .line 222
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 223
    .local v3, "mPid":I
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "in":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 225
    .local v1, "lastMod":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    sput-wide v5, Lcom/ca/mdo/CAMobileDevOps;->mStartupTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "in":Ljava/io/File;
    .end local v1    # "lastMod":J
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v4

    .line 227
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static invokeCustomerReceiver()V
    .locals 2

    .prologue
    .line 1247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "crashOccurred"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 1250
    return-void
.end method

.method public static isCrossWalk()Z
    .locals 1

    .prologue
    .line 141
    :try_start_0
    const-string v0, "org.crosswalk.engine.XWalkWebViewEngine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInPrivateZone()Z
    .locals 1

    .prologue
    .line 1922
    sget-boolean v0, Lcom/ca/mdo/CAMobileDevOps;->isPrivateZone:Z

    return v0
.end method

.method public static isScreenshotPolicyEnabled()Z
    .locals 1

    .prologue
    .line 1847
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mdo/PolicyManager;->isScreenshotEnabled()Z

    move-result v0

    return v0
.end method

.method private static isSessionReady()Z
    .locals 1

    .prologue
    .line 660
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getPersistenceManager()Lcom/ca/mdo/PersistenceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getPersistenceManager()Lcom/ca/mdo/PersistenceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ca/mdo/PersistenceManager;->sessionManager:Lcom/ca/mdo/SessionManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getPersistenceManager()Lcom/ca/mdo/PersistenceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ca/mdo/PersistenceManager;->sessionManager:Lcom/ca/mdo/SessionManager;

    invoke-virtual {v0}, Lcom/ca/mdo/SessionManager;->isSessionOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getPersistenceManager()Lcom/ca/mdo/PersistenceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/ca/mdo/PersistenceManager;->sessionManager:Lcom/ca/mdo/SessionManager;

    iget-object v0, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 662
    const/4 v0, 0x1

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadPlistConfiguration(Ljava/util/Map;Landroid/app/Application;)V
    .locals 3
    .param p1, "app"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1438
    .local p0, "plistData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "tenantID"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/ca/mdo/CAMobileDevOps;->mTenantID:Ljava/lang/String;

    .line 1439
    const-string v1, "appId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppID:Ljava/lang/String;

    .line 1440
    const-string v1, "baseURL"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/ca/mdo/CAMobileDevOps;->mBaseUrl:Ljava/lang/String;

    .line 1441
    const-string v1, "appKey"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/ca/mdo/CAMobileDevOps;->mAppKey:Ljava/lang/String;

    .line 1442
    const-string v1, "collectorUploadURL"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    .line 1443
    sput-object p1, Lcom/ca/mdo/Util;->app:Landroid/app/Application;

    .line 1445
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_TENANTID:Ljava/lang/String;

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mTenantID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ca/mdo/CAMobileDevOps;->updatePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_APPID:Ljava/lang/String;

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mAppID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ca/mdo/CAMobileDevOps;->updatePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_BASEURL:Ljava/lang/String;

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mBaseUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ca/mdo/CAMobileDevOps;->updatePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_APPKEY:Ljava/lang/String;

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mAppKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ca/mdo/CAMobileDevOps;->updatePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_COLLECTORURL:Ljava/lang/String;

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mCollectorUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ca/mdo/CAMobileDevOps;->updatePreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :goto_0
    return-void

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Exception in saving preferences of plist entries"

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logNumericMetric(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Double;
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ca/integration/CaMDOCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2082
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v5, "- MDO logNumericMetric "

    invoke-static {v5}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 2083
    sget-object v5, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2084
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_INITIALIZE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {p3, v5}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 2116
    :cond_0
    :goto_0
    return-void

    .line 2088
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    if-nez p1, :cond_3

    .line 2090
    :cond_2
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_INVALID_PARAMETER_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {p3, v5}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2110
    :catch_0
    move-exception v4

    .line 2111
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2112
    if-eqz p3, :cond_0

    .line 2113
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_NUMERICMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {p3, v5}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    goto :goto_0

    .line 2093
    .end local v4    # "th":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2095
    .local v1, "numericMetricEventObj":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2096
    .local v3, "paramJObj":Lorg/json/JSONObject;
    const-string v5, "dty"

    const-string v6, "double"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2097
    if-eqz p2, :cond_4

    .line 2098
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2099
    .local v0, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2101
    .local v2, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 2104
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v2    # "pairs":Ljava/util/Map$Entry;
    :cond_4
    const-string v5, "n"

    invoke-virtual {v1, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2105
    const-string v5, "v"

    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2106
    const-string v5, "attr"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2107
    const-string v5, "ty"

    const-string v6, "custom"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2108
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v5, v6, v7}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 2109
    const/16 v5, 0x4f

    invoke-static {v5, v1, p3}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static logTextMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ca/integration/CaMDOCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2044
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v5, "- MDO logTextMetric "

    invoke-static {v5}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 2045
    sget-object v5, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2046
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_INVALID_PARAMETER_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {p3, v5}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 2078
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 2053
    :cond_2
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_INVALID_PARAMETER_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {p3, v5}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2072
    :catch_0
    move-exception v4

    .line 2073
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2074
    if-eqz p3, :cond_0

    .line 2075
    new-instance v5, Lcom/ca/mdo/CaMDOException;

    sget-object v6, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_TEXTMETRIC_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v5, v6}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {p3, v5}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    goto :goto_0

    .line 2056
    .end local v4    # "th":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2057
    .local v3, "textMetricEventObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2058
    .local v2, "paramJObj":Lorg/json/JSONObject;
    const-string v5, "dty"

    const-string v6, "string"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2059
    if-eqz p2, :cond_4

    .line 2060
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2061
    .local v0, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2062
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2063
    .local v1, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 2066
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "pairs":Ljava/util/Map$Entry;
    :cond_4
    const-string v5, "n"

    invoke-virtual {v3, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2067
    const-string v5, "v"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2068
    const-string v5, "attr"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2069
    const-string v5, "ty"

    const-string v6, "custom"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2070
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 2071
    const/16 v5, 0x4f

    invoke-static {v5, v3, p3}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static networkSwitchEvent(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "currentNetworkConnection"    # Ljava/lang/String;

    .prologue
    .line 1659
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1661
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "v"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1662
    const-string v2, "n"

    const-string v3, "NetworkStatus"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1663
    const-string v2, "ty"

    const-string v3, "NetworkStatus"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    :goto_0
    return-object v1

    .line 1664
    :catch_0
    move-exception v0

    .line 1665
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onLowMemoryOfApplication()V
    .locals 5

    .prologue
    .line 1931
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1932
    .local v1, "eventObj":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1934
    .local v0, "eventAttribs":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "ty"

    const-string v4, "app_events"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1935
    const-string v3, "n"

    const-string v4, "MemoryWarning"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1936
    const-string v3, "v"

    const-string v4, "Low Memory"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1937
    const-string v3, "attr"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1942
    :goto_0
    const/16 v3, 0x4f

    invoke-static {v3, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 1944
    return-void

    .line 1939
    :catch_0
    move-exception v2

    .line 1940
    .local v2, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static processResumeActivityDetails(Landroid/app/Activity;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 1109
    const-wide/16 v0, -0x1

    .line 1110
    .local v0, "timeTakeToLoad":J
    instance-of v2, p0, Lcom/ca/android/app/CaMDOActivity;

    if-eqz v2, :cond_0

    .line 1111
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/ca/mdo/CAMobileDevOps;->currentActivity:Ljava/lang/ref/WeakReference;

    move-object v2, p0

    .line 1112
    check-cast v2, Lcom/ca/android/app/ScreenLoadTimeMeter;

    invoke-interface {v2}, Lcom/ca/android/app/ScreenLoadTimeMeter;->getLoadTime()J

    move-result-wide v0

    .line 1114
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/ca/mdo/CAMobileDevOps;->processResumeActivityEvent(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public static processResumeActivityEvent(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "loadTime"    # J
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "screenShotName"    # Ljava/lang/String;

    .prologue
    .line 1062
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1064
    .local v1, "onResumeActivityEventObj":Lorg/json/JSONObject;
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/ca/mdo/CAMobileDevOps;->getScreenName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 1065
    .local v2, "screenName":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/ca/mdo/CAMobileDevOps;->ignoredViews:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1066
    const/4 v1, 0x0

    .line 1081
    .end local v1    # "onResumeActivityEventObj":Lorg/json/JSONObject;
    .end local v2    # "screenName":Ljava/lang/String;
    :goto_1
    return-object v1

    .restart local v1    # "onResumeActivityEventObj":Lorg/json/JSONObject;
    :cond_0
    move-object v2, p4

    .line 1064
    goto :goto_0

    .line 1068
    .restart local v2    # "screenName":Ljava/lang/String;
    :cond_1
    const-string v3, "v"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1069
    const-string v3, "n"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    const-string v3, "ty"

    const-string v4, "view_events"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1071
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-eqz v3, :cond_2

    .line 1072
    const-string v3, "slt"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1077
    :goto_2
    const/4 v3, 0x1

    invoke-static {v1, p0, v3, p4}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1078
    .end local v2    # "screenName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1075
    .end local v0    # "jsonE":Lorg/json/JSONException;
    .restart local v2    # "screenName":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "slt"

    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static progressBarEvent(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 5
    .param p0, "progressBarStatus"    # Ljava/lang/String;
    .param p1, "activityIndicatorId"    # Ljava/lang/String;
    .param p2, "difference"    # J
    .param p4, "timestamp"    # J

    .prologue
    .line 684
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 685
    .local v0, "activityIndicatorObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 687
    .local v1, "eventAttribs":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "ty"

    const-string v4, "view_events"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    const-string v3, "v"

    const-string v4, "ProgressBar"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    const-string v3, "t"

    invoke-virtual {v0, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 690
    const-string v3, "end"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    const-string v3, "n"

    const-string v4, "ai_end"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string v3, "ai_st"

    invoke-virtual {v1, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 696
    :cond_0
    :goto_0
    const-string v3, "ai_id"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    const-string v3, "attr"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_1
    const/16 v3, 0x4f

    invoke-static {v3, v0}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 702
    return-void

    .line 693
    :cond_1
    :try_start_1
    const-string v3, "start"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    const-string v3, "n"

    const-string v4, "ai_start"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 698
    :catch_0
    move-exception v2

    .line 699
    .local v2, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reSetCrashedSession()V
    .locals 3

    .prologue
    .line 1763
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/Constants;->PREF_CRASH_SESSION:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1765
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1766
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static registerAppFeedBack(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p0, "messageReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1415
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/CAMobileDevOps;->mRegisteredFeedback:Z

    .line 1416
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "crashOccurred"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1419
    return-void
.end method

.method public static registerForCallBacks(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1406
    return-void
.end method

.method protected static registerForNetworkChangeStatus()V
    .locals 2

    .prologue
    .line 1466
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1513
    .local v0, "th":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1470
    .end local v0    # "th":Ljava/lang/Throwable;
    :cond_0
    :try_start_0
    new-instance v1, Lcom/ca/mdo/CAMobileDevOps$1;

    invoke-direct {v1}, Lcom/ca/mdo/CAMobileDevOps$1;-><init>()V

    sput-object v1, Lcom/ca/mdo/CAMobileDevOps;->networkChangeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .restart local v0    # "th":Ljava/lang/Throwable;
    const-string v1, "registerForNetworkStatus failed"

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static reloadConfig(Landroid/app/Application;)Ljava/util/Map;
    .locals 4
    .param p0, "app"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1594
    invoke-static {}, Lcom/ca/mdo/ConfigManager;->getConfig()Ljava/util/Map;

    move-result-object v0

    .line 1596
    .local v0, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1597
    :try_start_0
    invoke-static {p0}, Lcom/ca/mdo/ConfigManager;->readConfigurationFromPlistFile(Landroid/content/Context;)V

    .line 1598
    invoke-static {}, Lcom/ca/mdo/ConfigManager;->getConfig()Ljava/util/Map;

    move-result-object v0

    .line 1600
    :cond_0
    invoke-static {v0, p0}, Lcom/ca/mdo/CAMobileDevOps;->loadPlistConfiguration(Ljava/util/Map;Landroid/app/Application;)V

    .line 1601
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ca/mdo/CAMobileDevOps;->configRead:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    :goto_0
    return-object v0

    .line 1603
    :catch_0
    move-exception v1

    .line 1604
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config plist file Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeCustomEventsForSession()V
    .locals 1

    .prologue
    .line 1705
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ca/mdo/CAMobileDevOps;->removeCustomEventsForSession(Ljava/lang/String;)V

    .line 1706
    return-void
.end method

.method public static removeCustomEventsForSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "session"    # Ljava/lang/String;

    .prologue
    .line 1710
    :try_start_0
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->customEvents:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1711
    if-nez p0, :cond_0

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCurrentSession()Ljava/lang/String;

    move-result-object p0

    .line 1712
    :cond_0
    if-eqz p0, :cond_1

    .line 1713
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->customEvents:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    :cond_1
    :goto_0
    return-void

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static requestPermissions(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x2
    .end annotation

    .prologue
    .line 1086
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 1087
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1088
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 1087
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Application;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    .line 1089
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 1090
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ca/mdo/PolicyManager;->getLocationCheck()I

    move-result v1

    .line 1092
    .local v1, "locationCheck":I
    if-lez v1, :cond_0

    .line 1096
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "requestPermissions"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1097
    .local v2, "requestPermissionsMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v8, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7ffffff5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    .end local v1    # "locationCheck":I
    .end local v2    # "requestPermissionsMethod":Ljava/lang/reflect/Method;
    .end local v3    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 1099
    .restart local v1    # "locationCheck":I
    .restart local v3    # "result":I
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while requesting permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static resetEventUploadCounter()V
    .locals 4

    .prologue
    .line 1971
    const-string v0, "GlobalCounter Reset Counter:::"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1972
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_EVENT_COUNTER_FOR_UPLOAD:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1973
    return-void
.end method

.method public static resetIsCrashFlag()V
    .locals 3

    .prologue
    .line 598
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_IS_CRASH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 599
    return-void
.end method

.method public static screenShotJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1175
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1178
    .local v1, "screenEvent":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "v"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1179
    const-string v2, "n"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1180
    const-string v2, "ty"

    const-string v3, "view_events"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_0
    return-object v1

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sdkDisabledEvent()V
    .locals 8

    .prologue
    .line 368
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 369
    .local v1, "eventObj":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 370
    .local v0, "eventAttribs":Lorg/json/JSONObject;
    const-string v3, "policy"

    .line 372
    .local v3, "sdkDisabledByMethod":Ljava/lang/String;
    :try_start_0
    const-string v5, "ty"

    const-string v6, "app_events"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v5, "n"

    const-string v6, "sdk_disabled"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v5, "v"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v6, Lcom/ca/mdo/Constants;->PREF_IS_SDK_ENABLED_BY_API:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "sdkEnabledByAPI":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 377
    const-string v5, "TRUE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 378
    const-string v3, "api"

    .line 384
    :cond_0
    :goto_0
    const-string v5, "m"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v5, "attr"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v4    # "sdkEnabledByAPI":Ljava/lang/String;
    :goto_1
    const/16 v5, 0x4f

    invoke-static {v5, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 392
    return-void

    .line 380
    .restart local v4    # "sdkEnabledByAPI":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "SDK disabled event called by SDK Enabled by api"

    invoke-static {v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 388
    .end local v4    # "sdkEnabledByAPI":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 389
    .local v2, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static sendAPMHeader()Z
    .locals 1

    .prologue
    .line 1296
    invoke-static {}, Lcom/ca/mdo/PolicyManager;->isAPMEnabled()Z

    move-result v0

    return v0
.end method

.method private static sendAutoTransactions(Lorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V
    .locals 4
    .param p0, "activityEventObj"    # Lorg/json/JSONObject;
    .param p1, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 918
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    invoke-static {}, Lcom/ca/mdo/PolicyManager;->isAutoASATEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const-string v1, "v"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAppName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 920
    invoke-static {v1, v2, v3, p1}, Lcom/ca/mdo/CAMobileDevOps;->startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    .line 926
    new-instance v1, Lcom/ca/mdo/CaMDOException;

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_UNKNOWN_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v1, v2}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {p1, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    goto :goto_0
.end method

.method public static sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    .locals 5
    .param p0, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .param p1, "e"    # Lcom/ca/mdo/CaMDOException;

    .prologue
    .line 2017
    if-eqz p0, :cond_0

    .line 2018
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2019
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v1, "camdo_exception"

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/ca/mdo/CaMDOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ca/mdo/CaMDOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2020
    const-string v1, "error_code"

    invoke-virtual {p1}, Lcom/ca/mdo/CaMDOException;->getCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2021
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ca/integration/CaMDOCallback;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    .end local v0    # "mBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 2023
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static sendGeneralEvent(ILorg/json/JSONObject;)V
    .locals 3
    .param p0, "message"    # I
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 577
    :try_start_0
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 578
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 584
    :cond_0
    :goto_1
    return-void

    .line 578
    :cond_1
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Error in sending message to handler - General Events "

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static sendLocationMessage(ILandroid/location/Location;)V
    .locals 2
    .param p0, "message"    # I
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 592
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 593
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    :cond_0
    return-void
.end method

.method public static sendMessage(ILorg/json/JSONObject;)V
    .locals 1
    .param p0, "message"    # I
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V

    .line 538
    return-void
.end method

.method public static sendMessage(ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V
    .locals 3
    .param p0, "message"    # I
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 547
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 548
    if-eqz p1, :cond_2

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 549
    .local v1, "msg":Landroid/os/Message;
    :goto_0
    if-eqz p2, :cond_0

    .line 550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 551
    .local v0, "extraData":Landroid/os/Bundle;
    sget-object v2, Lcom/ca/mdo/MessageProcessingHandler;->API_CALLBACK:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 552
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 554
    .end local v0    # "extraData":Landroid/os/Bundle;
    :cond_0
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 548
    :cond_2
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    goto :goto_0
.end method

.method public static sendSessionStart(ILjava/util/Map;)V
    .locals 2
    .param p0, "message"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "object":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 564
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    :cond_0
    return-void

    .line 564
    :cond_1
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendSuccessCallback(Lcom/ca/integration/CaMDOCallback;Ljava/util/Map;)V
    .locals 5
    .param p0, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .param p1, "extras"    # Ljava/util/Map;

    .prologue
    .line 2028
    if-eqz p0, :cond_0

    .line 2029
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2030
    .local v1, "mBundle":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 2031
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2032
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2033
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2034
    .local v2, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2039
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "mBundle":Landroid/os/Bundle;
    .end local v2    # "pairs":Ljava/util/Map$Entry;
    :catch_0
    move-exception v3

    .line 2040
    :cond_0
    :goto_1
    return-void

    .line 2037
    .restart local v1    # "mBundle":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/ca/integration/CaMDOCallback;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static setCustomerFeedback(Ljava/lang/String;)V
    .locals 2
    .param p0, "feedback"    # Ljava/lang/String;

    .prologue
    .line 1427
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/CAMobileDevOps;->mCustomerFeedback:Z

    .line 1428
    const-string v0, "custom_event"

    const-string v1, "User Feedback"

    invoke-static {v0, v1, p0}, Lcom/ca/mdo/CAMobileDevOps;->addCustomerFeedBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    return-void
.end method

.method public static setCustomerLocation(Landroid/location/Location;)V
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 1385
    if-nez p0, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1388
    :cond_0
    const/16 v0, 0xdf

    invoke-static {v0, p0}, Lcom/ca/mdo/CAMobileDevOps;->sendLocationMessage(ILandroid/location/Location;)V

    goto :goto_0
.end method

.method public static setCustomerLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "zipCode"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 1392
    sput-object p0, Lcom/ca/mdo/CAMobileDevOps;->mZipCode:Ljava/lang/String;

    .line 1393
    sput-object p1, Lcom/ca/mdo/CAMobileDevOps;->mCountryCode:Ljava/lang/String;

    .line 1395
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mZipCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1396
    :cond_0
    const-string v0, "setCustomerLocation called with zipcode and/or country not set"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 1402
    :goto_0
    return-void

    .line 1399
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/CAMobileDevOps;->mIsCustomerLocation:Z

    .line 1400
    const/16 v0, 0xde

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static setCustomerLocation(Ljava/util/Map;)V
    .locals 3
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
    .line 1375
    .local p0, "customerLocation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1381
    :goto_0
    return-void

    .line 1378
    :cond_0
    const-string v2, "zp"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1379
    .local v1, "zipCode":Ljava/lang/String;
    const-string v2, "cc"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1380
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/ca/mdo/CAMobileDevOps;->setCustomerLocation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setOptOut(Z)V
    .locals 1
    .param p0, "optOut"    # Z

    .prologue
    .line 1279
    const-string v0, "Opting out of data transmission."

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1280
    sput-boolean p0, Lcom/ca/mdo/CAMobileDevOps;->mOptOut:Z

    .line 1281
    return-void
.end method

.method public static setSSLPinning(Ljava/lang/String;[B)V
    .locals 0
    .param p0, "mode"    # Ljava/lang/String;
    .param p1, "cert"    # [B

    .prologue
    .line 2119
    invoke-static {p0}, Lcom/ca/mdo/MDOSSLPinning;->setmSSLPinningMode(Ljava/lang/String;)V

    .line 2120
    invoke-static {p1}, Lcom/ca/mdo/MDOSSLPinning;->setCert([B)V

    .line 2121
    return-void
.end method

.method public static setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 6
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "onlyResume"    # Z
    .param p3, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1188
    move-object v0, p3

    .line 1189
    .local v0, "currentScreenName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1190
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->getScreenName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    :cond_0
    :goto_0
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->csn:Ljava/lang/String;

    .line 1194
    .local v2, "previousScreenName":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 1195
    :try_start_0
    const-string v3, "passovercsn"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1196
    const-string v3, "passovercsn"

    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1198
    :cond_1
    if-eqz p2, :cond_2

    .line 1199
    const-string v3, "passoverpsn"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1200
    const-string v3, "passoverpsn"

    if-eqz v2, :cond_5

    .end local v2    # "previousScreenName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1209
    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->csn:Ljava/lang/String;

    .line 1210
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/ca/mdo/Constants;->PREF_CSN:Ljava/lang/String;

    sget-object v5, Lcom/ca/mdo/CAMobileDevOps;->csn:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1213
    :cond_3
    return-void

    .line 1190
    :cond_4
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->csn:Ljava/lang/String;

    goto :goto_0

    .line 1200
    .restart local v2    # "previousScreenName":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1205
    .end local v2    # "previousScreenName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1206
    .local v1, "ex":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static setSessionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1315
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    if-nez p0, :cond_2

    :try_start_0
    const-string p0, "string"

    .line 1321
    :cond_2
    invoke-static {p0}, Lcom/ca/mdo/CAMobileDevOps;->dataTypeCheckSession(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 1322
    :cond_3
    const-string v4, "setSessionAttribute: Input Data is not valid."

    invoke-static {v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v1

    .line 1347
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1325
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v4, "customerId"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1326
    sput-object p2, Lcom/ca/mdo/CAMobileDevOps;->mCustomerId:Ljava/lang/String;

    .line 1327
    const-string v4, "customerId"

    sput-object v4, Lcom/ca/mdo/CAMobileDevOps;->mCustomerIdType:Ljava/lang/String;

    .line 1328
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mCustomerId:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mCustomerIdType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1329
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    sget-object v5, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    const/16 v6, 0xde

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1332
    :cond_5
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCurrentSession()Ljava/lang/String;

    move-result-object v3

    .line 1333
    .local v3, "sessionID":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1335
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->customEvents:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 1336
    .local v0, "attributesArray":Lorg/json/JSONArray;
    if-nez v0, :cond_6

    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "attributesArray":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1337
    .restart local v0    # "attributesArray":Lorg/json/JSONArray;
    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1338
    .local v2, "newAttrEntry":Lorg/json/JSONObject;
    const-string v4, "n"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1339
    const-string v4, "v"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1340
    const-string v4, "dty"

    invoke-virtual {v2, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1341
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1342
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->customEvents:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    sget-object v4, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    sget-object v5, Lcom/ca/mdo/CAMobileDevOps;->mMessageProcessingHandler:Landroid/os/Handler;

    const/16 v6, 0xde

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static setSessionProcessed(Z)V
    .locals 1
    .param p0, "processed"    # Z

    .prologue
    .line 1832
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->sessionProcessed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1833
    return-void
.end method

.method public static startApplicationTransaction(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 2
    .param p0, "appTxn"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 802
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/ca/mdo/CAMobileDevOps;->startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z

    .line 803
    return-void
.end method

.method public static startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "appTxn"    # Ljava/lang/String;
    .param p1, "appSvc"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/ca/mdo/CAMobileDevOps;->startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z

    .line 824
    return-void
.end method

.method public static startApplicationTransaction(Ljava/lang/String;)Z
    .locals 2
    .param p0, "appTxn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 794
    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z

    move-result v0

    return v0
.end method

.method public static startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "appTxn"    # Ljava/lang/String;
    .param p1, "appSvc"    # Ljava/lang/String;

    .prologue
    .line 812
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z

    move-result v0

    return v0
.end method

.method protected static startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z
    .locals 19
    .param p0, "appTxn"    # Ljava/lang/String;
    .param p1, "appSvc"    # Ljava/lang/String;
    .param p2, "isAuto"    # Z
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 835
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isSessionReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    :cond_0
    new-instance v1, Lcom/ca/mdo/CaMDOException;

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_INITIALIZE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v1, v2}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 837
    const/4 v1, 0x0

    .line 902
    :goto_0
    return v1

    .line 839
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/ca/mdo/CAMobileDevOps;->getAppService(Z)Ljava/lang/String;

    move-result-object p1

    .line 840
    if-eqz p0, :cond_2

    const-string v1, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string p0, "unknown"

    .line 841
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->TRANSACTION_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 842
    .local v17, "txnDetailsKey":Ljava/lang/String;
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ca/mdo/TransactionDetails;

    .line 843
    .local v14, "details":Lcom/ca/mdo/TransactionDetails;
    const/16 v18, 0x0

    .line 844
    .local v18, "txnExists":Z
    if-nez v14, :cond_4

    .line 845
    new-instance v14, Lcom/ca/mdo/TransactionDetails;

    .end local v14    # "details":Lcom/ca/mdo/TransactionDetails;
    invoke-direct {v14}, Lcom/ca/mdo/TransactionDetails;-><init>()V

    .line 851
    .restart local v14    # "details":Lcom/ca/mdo/TransactionDetails;
    :goto_1
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    invoke-static {}, Lcom/ca/mdo/PolicyManager;->isAutoASATEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p2, :cond_5

    .line 852
    new-instance v1, Lcom/ca/mdo/CaMDOException;

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_POLICY_NOT_APPLIED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v1, v2}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 853
    const/4 v1, 0x0

    goto :goto_0

    .line 848
    :cond_4
    const/16 v18, 0x1

    goto :goto_1

    .line 855
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 857
    .local v4, "appTxnTime":J
    if-nez v18, :cond_8

    .line 858
    const/16 v16, 0x0

    .line 859
    .local v16, "parent":Ljava/lang/String;
    sget-object v9, Lcom/ca/mdo/CAMobileDevOps;->mAppTransaction:Ljava/lang/String;

    .line 860
    .local v9, "parentT":Ljava/lang/String;
    sget-object v8, Lcom/ca/mdo/CAMobileDevOps;->mAppService:Ljava/lang/String;

    .line 861
    .local v8, "parentS":Ljava/lang/String;
    sget-wide v1, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 862
    .local v10, "parentTime":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 863
    if-eqz v8, :cond_7

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x39e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x39e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 871
    :cond_6
    :goto_2
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 872
    .local v13, "txnObj":Lorg/json/JSONObject;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v13, v1, v2, v3}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 873
    const-string v1, "apptxn_start"

    .line 874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v12, p2

    .line 873
    invoke-static/range {v1 .. v13}, Lcom/ca/mdo/PersistenceManager;->buildEvtTypeActivityTxn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v13

    .line 877
    if-eqz v13, :cond_9

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting transaction with txn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 879
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v13, v1, v2, v3}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iput-object v0, v14, Lcom/ca/mdo/TransactionDetails;->mAppTransaction:Ljava/lang/String;

    .line 881
    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/ca/mdo/TransactionDetails;->mAppService:Ljava/lang/String;

    .line 882
    iput-wide v4, v14, Lcom/ca/mdo/TransactionDetails;->mAppTransactionTime:J

    .line 883
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/ca/mdo/TransactionDetails;->parentString:Ljava/lang/String;

    .line 884
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getTxnId()I

    move-result v1

    iput v1, v14, Lcom/ca/mdo/TransactionDetails;->txnId:I

    .line 885
    sput-object p0, Lcom/ca/mdo/CAMobileDevOps;->mAppTransaction:Ljava/lang/String;

    .line 886
    sput-object p1, Lcom/ca/mdo/CAMobileDevOps;->mAppService:Ljava/lang/String;

    .line 887
    iget-wide v1, v14, Lcom/ca/mdo/TransactionDetails;->mAppTransactionTime:J

    sput-wide v1, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    .line 888
    const/4 v1, 0x7

    move-object/from16 v0, p3

    invoke-static {v1, v13, v0}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V

    .line 889
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 866
    .end local v13    # "txnObj":Lorg/json/JSONObject;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x39e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 893
    :catch_0
    move-exception v15

    .line 894
    .local v15, "jex":Lorg/json/JSONException;
    const-string v1, "JSON Exception"

    invoke-static {v1, v15}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    new-instance v1, Lcom/ca/mdo/CaMDOException;

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_JSON_PARSE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v1, v2}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 896
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 899
    .end local v8    # "parentS":Ljava/lang/String;
    .end local v9    # "parentT":Ljava/lang/String;
    .end local v10    # "parentTime":Ljava/lang/String;
    .end local v15    # "jex":Lorg/json/JSONException;
    .end local v16    # "parent":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendSuccessCallback(Lcom/ca/integration/CaMDOCallback;Ljava/util/Map;)V

    .line 900
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 902
    .restart local v8    # "parentS":Ljava/lang/String;
    .restart local v9    # "parentT":Ljava/lang/String;
    .restart local v10    # "parentTime":Ljava/lang/String;
    .restart local v13    # "txnObj":Lorg/json/JSONObject;
    .restart local v16    # "parent":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static startNewSession()V
    .locals 2

    .prologue
    .line 1980
    const/16 v0, 0xfe

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 1981
    return-void
.end method

.method public static stopApplicationTransaction(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 2
    .param p0, "appTxn"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 938
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/ca/mdo/CAMobileDevOps;->stopApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z

    .line 939
    return-void
.end method

.method public static stopApplicationTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "appTxn"    # Ljava/lang/String;
    .param p1, "failed"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 951
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/ca/mdo/CAMobileDevOps;->stopApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z

    .line 952
    return-void
.end method

.method protected static stopApplicationTransaction(Ljava/lang/String;Ljava/lang/String;ZLcom/ca/integration/CaMDOCallback;)Z
    .locals 20
    .param p0, "appTxn"    # Ljava/lang/String;
    .param p1, "failed"    # Ljava/lang/String;
    .param p2, "isAuto"    # Z
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 964
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isSessionReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 965
    :cond_0
    new-instance v1, Lcom/ca/mdo/CaMDOException;

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_INITIALIZE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v1, v2}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 966
    const/4 v1, 0x0

    .line 1025
    :goto_0
    return v1

    .line 968
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/ca/mdo/CAMobileDevOps;->getAppService(Z)Ljava/lang/String;

    move-result-object v14

    .line 969
    .local v14, "appSvc":Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v1, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string p0, "Unknown"

    .line 970
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->TRANSACTION_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 971
    .local v19, "txnDetailsKey":Ljava/lang/String;
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ca/mdo/TransactionDetails;

    .line 972
    .local v15, "details":Lcom/ca/mdo/TransactionDetails;
    if-nez v15, :cond_4

    .line 973
    new-instance v1, Lcom/ca/mdo/CaMDOException;

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_TRANSACTION_NOT_PRESENT_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v1, v2}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 974
    const/4 v1, 0x0

    goto :goto_0

    .line 977
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping transaction with txn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 979
    if-nez p0, :cond_5

    .line 980
    new-instance v1, Lcom/ca/mdo/CaMDOException;

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_STOP_TRANSACTION_FAILED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v1, v2}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 981
    const/4 v1, 0x0

    goto :goto_0

    .line 983
    :cond_5
    iget-object v0, v15, Lcom/ca/mdo/TransactionDetails;->parentString:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 984
    .local v17, "parent":Ljava/lang/String;
    const/4 v9, 0x0

    .line 985
    .local v9, "parentT":Ljava/lang/String;
    const/4 v8, 0x0

    .line 986
    .local v8, "parentS":Ljava/lang/String;
    const/4 v10, 0x0

    .line 987
    .local v10, "parentTime":Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 988
    const-string v1, "926"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 989
    .local v18, "parts":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 990
    const/4 v1, 0x0

    aget-object v8, v18, v1

    .line 991
    const/4 v1, 0x1

    aget-object v9, v18, v1

    .line 992
    const/4 v1, 0x2

    aget-object v10, v18, v1

    .line 996
    .end local v18    # "parts":[Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    invoke-static {}, Lcom/ca/mdo/PolicyManager;->isAutoASATEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    .line 997
    new-instance v1, Lcom/ca/mdo/CaMDOException;

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_POLICY_NOT_APPLIED_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v1, v2}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 998
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1003
    :cond_7
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 1004
    .local v13, "txnObj":Lorg/json/JSONObject;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v13, v1, v2, v3}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 1005
    if-nez p1, :cond_9

    const-string v1, "apptxn_end"

    :goto_1
    iget-object v2, v15, Lcom/ca/mdo/TransactionDetails;->mAppService:Ljava/lang/String;

    iget-object v3, v15, Lcom/ca/mdo/TransactionDetails;->mAppTransaction:Ljava/lang/String;

    iget-wide v4, v15, Lcom/ca/mdo/TransactionDetails;->mAppTransactionTime:J

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v11, p1

    move/from16 v12, p2

    .line 1005
    invoke-static/range {v1 .. v13}, Lcom/ca/mdo/PersistenceManager;->buildEvtTypeActivityTxn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v13

    .line 1009
    if-eqz v13, :cond_8

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping transaction with txn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1011
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v13, v1, v2, v3}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 1012
    const/16 v1, 0x8

    move-object/from16 v0, p3

    invoke-static {v1, v13, v0}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V

    .line 1013
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->mTransactionsHolder:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget v1, v15, Lcom/ca/mdo/TransactionDetails;->txnId:I

    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->cleanUpChildren(I)V

    .line 1015
    if-eqz v10, :cond_a

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2
    sput-wide v1, Lcom/ca/mdo/CAMobileDevOps;->mAppTransactionStartTime:J

    .line 1016
    if-eqz v9, :cond_b

    .end local v9    # "parentT":Ljava/lang/String;
    :goto_3
    sput-object v9, Lcom/ca/mdo/CAMobileDevOps;->mAppTransaction:Ljava/lang/String;

    .line 1017
    if-eqz v8, :cond_c

    .end local v8    # "parentS":Ljava/lang/String;
    :goto_4
    sput-object v8, Lcom/ca/mdo/CAMobileDevOps;->mAppService:Ljava/lang/String;

    .line 1025
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1005
    .restart local v8    # "parentS":Ljava/lang/String;
    .restart local v9    # "parentT":Ljava/lang/String;
    :cond_9
    const-string v1, "apptxn_fail"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1015
    :cond_a
    const-wide/16 v1, -0x1

    goto :goto_2

    .line 1016
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 1017
    .end local v9    # "parentT":Ljava/lang/String;
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    .line 1020
    .end local v8    # "parentS":Ljava/lang/String;
    .end local v13    # "txnObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    .line 1021
    .local v16, "jex":Lorg/json/JSONException;
    const-string v1, "JSON Exception"

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    new-instance v1, Lcom/ca/mdo/CaMDOException;

    sget-object v2, Lcom/ca/mdo/CaMDOError;->CAMDO_JSON_PARSE_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v1, v2}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 1023
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static stopCurrentAndStartNewSession()V
    .locals 2

    .prologue
    .line 1984
    const/16 v0, 0xfc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 1985
    return-void
.end method

.method public static stopCurrentSession()V
    .locals 2

    .prologue
    .line 1976
    const/16 v0, 0xfd

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 1977
    return-void
.end method

.method static takeScreenshotOfCurrentActivity(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "quality"    # I

    .prologue
    const/4 v0, 0x0

    .line 1123
    invoke-static {p0, p1, v0, v0}, Lcom/ca/mdo/CAMobileDevOps;->takeScreenshotOfCurrentActivity(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static takeScreenshotOfCurrentActivity(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "quality"    # I
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1132
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1133
    .local v0, "activity":Landroid/app/Activity;
    const/4 v4, 0x0

    .line 1134
    .local v4, "screenshotTaken":Z
    sget-boolean v6, Lcom/ca/mdo/CAMobileDevOps;->isPrivateZone:Z

    if-eqz v6, :cond_0

    move v6, v4

    .line 1167
    :goto_0
    return v6

    .line 1138
    :cond_0
    if-eqz v0, :cond_2

    .line 1139
    if-nez p0, :cond_1

    .line 1140
    invoke-static {v0}, Lcom/ca/mdo/CAMobileDevOps;->getScreenName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    .line 1141
    if-eqz p0, :cond_3

    .line 1143
    :cond_1
    :goto_1
    const-string v6, "ScreenShot"

    invoke-static {v6, p0}, Lcom/ca/mdo/CAMobileDevOps;->screenShotJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1144
    .local v5, "ssJsonObj":Lorg/json/JSONObject;
    const/4 v6, 0x0

    invoke-static {v0, p1, v6}, Lcom/ca/mdo/Util;->takeScreenshot(Landroid/app/Activity;ILandroid/graphics/Bitmap;)Lcom/ca/mdo/Util$Screenshot;

    move-result-object v3

    .line 1145
    .local v3, "screenshot":Lcom/ca/mdo/Util$Screenshot;
    const/4 v4, 0x1

    .line 1146
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1148
    .local v1, "eventAttribs":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "or"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDeviceOrientation()I

    move-result v7

    invoke-static {v7}, Lcom/ca/mdo/AppDeviceData;->getDeviceOrientationString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1150
    if-eqz v3, :cond_4

    .line 1151
    const-string v6, "ss"

    iget-object v7, v3, Lcom/ca/mdo/Util$Screenshot;->encodedValue:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1152
    const-string v6, "w"

    iget v7, v3, Lcom/ca/mdo/Util$Screenshot;->screenShotWidth:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1153
    const-string v6, "h"

    iget v7, v3, Lcom/ca/mdo/Util$Screenshot;->screenShotHeight:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1154
    const-string v6, "tt"

    invoke-virtual {v1, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1158
    :goto_2
    const-string v6, "attr"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1160
    const/16 v6, 0x4f

    invoke-static {v6, v5, p2}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "eventAttribs":Lorg/json/JSONObject;
    .end local v3    # "screenshot":Lcom/ca/mdo/Util$Screenshot;
    .end local v5    # "ssJsonObj":Lorg/json/JSONObject;
    :cond_2
    move v6, v4

    .line 1167
    goto :goto_0

    .line 1141
    :cond_3
    const-string v6, "ScreenShot"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1156
    .restart local v1    # "eventAttribs":Lorg/json/JSONObject;
    .restart local v3    # "screenshot":Lcom/ca/mdo/Util$Screenshot;
    .restart local v5    # "ssJsonObj":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    new-instance v6, Lcom/ca/mdo/CaMDOException;

    sget-object v7, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_SENDSCREENSHOT_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v6, v7}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {p2, v6}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1161
    :catch_0
    move-exception v2

    .line 1162
    .local v2, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    new-instance v6, Lcom/ca/mdo/CaMDOException;

    sget-object v7, Lcom/ca/mdo/CaMDOError;->CAMDO_LOG_SENDSCREENSHOT_ERROR_CODE:Lcom/ca/mdo/CaMDOError;

    invoke-direct {v6, v7}, Lcom/ca/mdo/CaMDOException;-><init>(Lcom/ca/mdo/CaMDOError;)V

    invoke-static {p2, v6}, Lcom/ca/mdo/CAMobileDevOps;->sendErrorCallback(Lcom/ca/integration/CaMDOCallback;Lcom/ca/mdo/CaMDOException;)V

    .line 1164
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static updateLocationChangesToHeader(Landroid/location/Location;)V
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 1364
    const/16 v0, 0xdf

    invoke-static {v0, p0}, Lcom/ca/mdo/CAMobileDevOps;->sendLocationMessage(ILandroid/location/Location;)V

    .line 1365
    return-void
.end method

.method public static updatePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1457
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1460
    :cond_0
    return-void
.end method

.method public static viewLoaded(Ljava/lang/String;J)V
    .locals 1
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "screenLoadTime"    # J

    .prologue
    .line 1988
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->ignoredViews:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1990
    :goto_0
    return-void

    .line 1989
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ca/mdo/CAMobileDevOps;->viewLoaded(Ljava/lang/String;JLcom/ca/integration/CaMDOCallback;)V

    goto :goto_0
.end method

.method public static viewLoaded(Ljava/lang/String;JLcom/ca/integration/CaMDOCallback;)V
    .locals 5
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "screenLoadTime"    # J
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    const/4 v4, 0x0

    .line 1993
    const-string v3, "onResume"

    invoke-static {v4, p1, p2, v3, p0}, Lcom/ca/mdo/CAMobileDevOps;->processResumeActivityEvent(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1994
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 1995
    invoke-static {v1, p3}, Lcom/ca/mdo/CAMobileDevOps;->sendAutoTransactions(Lorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V

    .line 1996
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1997
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/ca/mdo/MDOTask;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/ca/mdo/MDOTask;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;ZLandroid/graphics/Bitmap;)V

    .line 1998
    .local v2, "ss":Lcom/ca/mdo/MDOTask;
    invoke-virtual {v2}, Lcom/ca/mdo/MDOTask;->process()V

    .line 1999
    invoke-static {p3, v4}, Lcom/ca/mdo/CAMobileDevOps;->sendSuccessCallback(Lcom/ca/integration/CaMDOCallback;Ljava/util/Map;)V

    .line 2001
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "ss":Lcom/ca/mdo/MDOTask;
    :cond_0
    return-void
.end method

.method public static viewLoaded(Ljava/lang/String;JLcom/ca/integration/CaMDOCallback;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "screenLoadTime"    # J
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 2005
    const-string v3, "onResume"

    invoke-static {v4, p1, p2, v3, p0}, Lcom/ca/mdo/CAMobileDevOps;->processResumeActivityEvent(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2006
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 2007
    invoke-static {v1, p3}, Lcom/ca/mdo/CAMobileDevOps;->sendAutoTransactions(Lorg/json/JSONObject;Lcom/ca/integration/CaMDOCallback;)V

    .line 2008
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2009
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/ca/mdo/MDOTask;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3, p4}, Lcom/ca/mdo/MDOTask;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;ZLandroid/graphics/Bitmap;)V

    .line 2010
    .local v2, "ss":Lcom/ca/mdo/MDOTask;
    invoke-virtual {v2}, Lcom/ca/mdo/MDOTask;->process()V

    .line 2011
    invoke-static {p3, v4}, Lcom/ca/mdo/CAMobileDevOps;->sendSuccessCallback(Lcom/ca/integration/CaMDOCallback;Ljava/util/Map;)V

    .line 2013
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "ss":Lcom/ca/mdo/MDOTask;
    :cond_0
    return-void
.end method

.method public static webViewOnPageEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 482
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->mDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    :goto_0
    return-void

    .line 485
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 487
    .local v1, "webViewEventObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "n"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    const-string v2, "v"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v2, "ty"

    const-string v3, "view_events"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_1
    const-string v2, "page_start"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    invoke-static {v1, v4, v5, p0}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 499
    :goto_2
    const/16 v2, 0x4f

    invoke-static {v2, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 497
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-static {v1, v4, v5, v4}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    goto :goto_2
.end method
