.class Lcom/ca/mdo/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final APM:Ljava/lang/String; = "APM"

.field private static final ASAT_AUTO:Ljava/lang/String; = "ASAT_AUTO"

.field private static final COLLECT_LOCATION:Ljava/lang/String; = "COLLECT_LOCATION"

.field private static final COLLECT_PERFORMANCE_FREQUENCY:Ljava/lang/String; = "COLLECT_PERFORMANCE_FREQUENCY"

.field private static final CPU:Ljava/lang/String; = "CPU"

.field private static final CRASH:Ljava/lang/String; = "CRASH"

.field private static final DISK:Ljava/lang/String; = "DISK"

.field private static final FPS:Ljava/lang/String; = "FPS"

.field private static final MAX_DB_SIZE_IN_BYTES:Ljava/lang/String; = "MAX_DB_SIZE_IN_BYTES"

.field private static final MEM:Ljava/lang/String; = "MEM"

.field private static final SCREEN_CAPTURE:Ljava/lang/String; = "SCREEN_CAPTURE"

.field private static final SDK_ENABLED:Ljava/lang/String; = "SDK_ENABLED"

.field private static final SESSION_TIMEOUT:Ljava/lang/String; = "SESSION_TIMEOUT"

.field private static final UPLOAD_EVENTS_LIMIT:Ljava/lang/String; = "UPLOAD_EVENTS_LIMIT"

.field private static final UPLOAD_ONLY_ON_WIFI:Ljava/lang/String; = "UPLOAD_WIFI"

.field private static final URL:Ljava/lang/String; = "URL"

.field private static final cacheFileName:Ljava/lang/String; = "policyData.txt"

.field private static mAPMEnabled:Z

.field private static mAutoASATEnabled:Z

.field private static mCrashEnabled:Z


# instance fields
.field private locationCheck:I

.field private mBatteryEnabled:Z

.field private mCollectPerfFrequency:I

.field private mContext:Landroid/content/Context;

.field private mCpuEnabled:Z

.field private mDiskEnabled:Z

.field private mFpsEnabled:Z

.field private mLastUpdated:J

.field private mMaxDBSizeInBytes:J

.field private mMemEnabled:Z

.field private mNetworkStatsEnabled:Z

.field private mPolicyUrl:Ljava/lang/String;

.field private mSDKEnabled:Z

.field private mScreenshotEnabled:Z

.field private mSessionTimeout:I

.field private mUploadEventsLimit:I

.field private mUploadOnWifi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/PolicyManager;->mCrashEnabled:Z

    .line 75
    sput-boolean v1, Lcom/ca/mdo/PolicyManager;->mAPMEnabled:Z

    .line 76
    sput-boolean v1, Lcom/ca/mdo/PolicyManager;->mAutoASATEnabled:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "policyUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mCpuEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mDiskEnabled:Z

    .line 68
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mMemEnabled:Z

    .line 69
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mFpsEnabled:Z

    .line 70
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mBatteryEnabled:Z

    .line 72
    iput-boolean v2, p0, Lcom/ca/mdo/PolicyManager;->mScreenshotEnabled:Z

    .line 73
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mSDKEnabled:Z

    .line 77
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mNetworkStatsEnabled:Z

    .line 78
    const/16 v0, 0x7530

    iput v0, p0, Lcom/ca/mdo/PolicyManager;->mSessionTimeout:I

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ca/mdo/PolicyManager;->mLastUpdated:J

    .line 80
    iput v2, p0, Lcom/ca/mdo/PolicyManager;->locationCheck:I

    .line 81
    iput-boolean v2, p0, Lcom/ca/mdo/PolicyManager;->mUploadOnWifi:Z

    .line 82
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ca/mdo/PolicyManager;->mUploadEventsLimit:I

    .line 83
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/ca/mdo/PolicyManager;->mMaxDBSizeInBytes:J

    .line 84
    const/16 v0, 0x32

    iput v0, p0, Lcom/ca/mdo/PolicyManager;->mCollectPerfFrequency:I

    .line 87
    iput-object p1, p0, Lcom/ca/mdo/PolicyManager;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/ca/mdo/PolicyManager;->mPolicyUrl:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/ca/mdo/PolicyManager;->init()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/ca/mdo/PolicyManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ca/mdo/PolicyManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ca/mdo/PolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ca/mdo/PolicyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ca/mdo/PolicyManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ca/mdo/PolicyManager;->mPolicyUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ca/mdo/PolicyManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ca/mdo/PolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ca/mdo/PolicyManager;->processData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/ca/mdo/PolicyManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ca/mdo/PolicyManager;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ca/mdo/PolicyManager;->store(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ca/mdo/PolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ca/mdo/PolicyManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ca/mdo/PolicyManager;->loadPolicyFromCache()Z

    move-result v0

    return v0
.end method

.method private getCpi()I
    .locals 8

    .prologue
    .line 425
    const/4 v0, -0x1

    .line 427
    .local v0, "cpi":I
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v6, Lcom/ca/mdo/Constants;->PREF_CPI:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 428
    if-lez v0, :cond_0

    move v1, v0

    .line 441
    .end local v0    # "cpi":I
    .local v1, "cpi":I
    :goto_0
    return v1

    .line 431
    .end local v1    # "cpi":I
    .restart local v0    # "cpi":I
    :cond_0
    invoke-direct {p0}, Lcom/ca/mdo/PolicyManager;->getPolicyJsonFromFile()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "policyJson":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 433
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "profileId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "policyJson":Ljava/lang/String;
    :cond_1
    :goto_1
    move v1, v0

    .line 441
    .end local v0    # "cpi":I
    .restart local v1    # "cpi":I
    goto :goto_0

    .line 438
    .end local v1    # "cpi":I
    .restart local v0    # "cpi":I
    :catch_0
    move-exception v2

    .line 439
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Exception in reading policy Id "

    invoke-static {v5, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getCpt()J
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 395
    const-wide/16 v0, 0x1

    .line 397
    .local v0, "cpt":J
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    sget-object v8, Lcom/ca/mdo/Constants;->PREF_CPT:Ljava/lang/String;

    const-wide/16 v9, 0x1

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 398
    cmp-long v7, v0, v11

    if-lez v7, :cond_0

    move-wide v2, v0

    .line 416
    .end local v0    # "cpt":J
    .local v2, "cpt":J
    :goto_0
    return-wide v2

    .line 401
    .end local v2    # "cpt":J
    .restart local v0    # "cpt":J
    :cond_0
    invoke-direct {p0}, Lcom/ca/mdo/PolicyManager;->getPolicyJsonFromFile()Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "policyJson":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 403
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 404
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v7, "lastUpdated"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 408
    .end local v5    # "obj":Lorg/json/JSONObject;
    :cond_1
    cmp-long v7, v0, v11

    if-gtz v7, :cond_2

    .line 409
    const-wide/16 v0, 0x1

    .end local v6    # "policyJson":Ljava/lang/String;
    :cond_2
    :goto_1
    move-wide v2, v0

    .line 416
    .end local v0    # "cpt":J
    .restart local v2    # "cpt":J
    goto :goto_0

    .line 412
    .end local v2    # "cpt":J
    .restart local v0    # "cpt":J
    :catch_0
    move-exception v4

    .line 413
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "Exception in reading policy data "

    invoke-static {v7, v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    const-wide/16 v0, 0x1

    goto :goto_1
.end method

.method private getPolicyJsonFromFile()Ljava/lang/String;
    .locals 9

    .prologue
    .line 468
    const-string v7, "checking for policy cache"

    invoke-static {v7}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 470
    :try_start_0
    iget-object v7, p0, Lcom/ca/mdo/PolicyManager;->mContext:Landroid/content/Context;

    const-string v8, "policyData.txt"

    invoke-virtual {v7, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 471
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 472
    const-string v7, "-----------> Loading existing policy cache <------------"

    invoke-static {v7}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 473
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 475
    .local v3, "is":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 476
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, "read":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    .line 478
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "jsonString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 484
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 485
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 495
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "read":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v7, "PolicyManager: policy cache not present"

    invoke-static {v7}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 495
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 492
    :catch_1
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getSDKEnabledFlagPrefVal(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 139
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_SDK_ENABLED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected static isAPMEnabled()Z
    .locals 1

    .prologue
    .line 541
    sget-boolean v0, Lcom/ca/mdo/PolicyManager;->mAPMEnabled:Z

    return v0
.end method

.method protected static isAutoASATEnabled()Z
    .locals 1

    .prologue
    .line 552
    sget-boolean v0, Lcom/ca/mdo/PolicyManager;->mAutoASATEnabled:Z

    return v0
.end method

.method protected static isCrashEnabled()Z
    .locals 1

    .prologue
    .line 529
    sget-boolean v0, Lcom/ca/mdo/PolicyManager;->mCrashEnabled:Z

    return v0
.end method

.method private loadPolicyFromCache()Z
    .locals 2

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/ca/mdo/PolicyManager;->getPolicyJsonFromFile()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "policyJson":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0, v0}, Lcom/ca/mdo/PolicyManager;->processData(Ljava/lang/String;)Z

    .line 454
    const/4 v1, 0x1

    .line 456
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processData(Ljava/lang/String;)Z
    .locals 25
    .param p1, "policyData"    # Ljava/lang/String;

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/mdo/PolicyManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/PolicyManager;->getSDKEnabledFlagPrefVal(Landroid/content/Context;)Z

    move-result v15

    .line 155
    .local v15, "previousValSDKEnabled":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/ca/mdo/PolicyManager;->resetValues()V

    .line 157
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v20

    if-nez v20, :cond_10

    .line 158
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PolicyManager: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 163
    :goto_0
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    .local v14, "policyJSON":Lorg/json/JSONObject;
    const-string v20, "profileId"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 165
    .local v16, "profileId":I
    const-string v20, "profileName"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 166
    .local v17, "profileName":Ljava/lang/String;
    const-string v20, "created"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 167
    .local v6, "created":J
    const-string v20, "lastUpdated"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 170
    .local v11, "lastUpdated":J
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/ca/mdo/PolicyManager;->mLastUpdated:J

    .line 172
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    sget-object v21, Lcom/ca/mdo/Constants;->PREF_CPT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ca/mdo/PolicyManager;->mLastUpdated:J

    move-wide/from16 v22, v0

    invoke-interface/range {v20 .. v23}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    sget-object v21, Lcom/ca/mdo/Constants;->PREF_CPI:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "profId:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " profName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 176
    const-string v20, "attributes"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 178
    .local v5, "attributes":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 179
    .local v13, "len":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v13, :cond_17

    .line 180
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 181
    .local v10, "jObj":Lorg/json/JSONObject;
    const-string v20, "attributeId"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 182
    .local v3, "attributeId":I
    const-string v20, "attributeName"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "attributeName":Ljava/lang/String;
    const-string v20, "UPLOAD_EVENTS_LIMIT"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 186
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 187
    .local v18, "value":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ca/mdo/PolicyManager;->mUploadEventsLimit:I

    .line 189
    .end local v18    # "value":I
    :cond_0
    const-string v20, "MAX_DB_SIZE_IN_BYTES"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 190
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 191
    .local v18, "value":J
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ca/mdo/PolicyManager;->mMaxDBSizeInBytes:J

    .line 193
    .end local v18    # "value":J
    :cond_1
    const-string v20, "SESSION_TIMEOUT"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 194
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 195
    .local v18, "value":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ca/mdo/PolicyManager;->mSessionTimeout:I

    .line 198
    .end local v18    # "value":I
    :cond_2
    const-string v20, "CPU"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 199
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mCpuEnabled:Z

    .line 200
    const-string v20, "PolicyManager: CPU enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 202
    :cond_3
    const-string v20, "DISK"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 203
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mDiskEnabled:Z

    .line 204
    const-string v20, "PolicyManager: DISK enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 206
    :cond_4
    const-string v20, "MEM"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 207
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mMemEnabled:Z

    .line 208
    const-string v20, "PolicyManager: MEM enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 210
    :cond_5
    const-string v20, "SDK_ENABLED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 212
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 214
    .restart local v18    # "value":I
    if-nez v18, :cond_12

    .line 215
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mSDKEnabled:Z

    .line 216
    const-string v20, "PolicyManager: SDK enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 221
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ca/mdo/PolicyManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ca/mdo/PolicyManager;->mSDKEnabled:Z

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/ca/mdo/PolicyManager;->saveSDKEnabledFlagPref(Landroid/content/Context;Z)V

    .line 222
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ca/mdo/PolicyManager;->mSDKEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v15, v1}, Lcom/ca/mdo/PolicyManager;->processSDKEnablementChange(ZZ)V

    .line 224
    .end local v18    # "value":I
    :cond_6
    const-string v20, "FPS"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 225
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mFpsEnabled:Z

    .line 226
    const-string v20, "PolicyManager: FPS enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 228
    :cond_7
    const-string v20, "CRASH"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 229
    const/16 v20, 0x1

    sput-boolean v20, Lcom/ca/mdo/PolicyManager;->mCrashEnabled:Z

    .line 230
    const-string v20, "PolicyManager: CRASH enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 232
    :cond_8
    const-string v20, "COLLECT_PERFORMANCE_FREQUENCY"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 233
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ca/mdo/PolicyManager;->mCollectPerfFrequency:I

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ca/mdo/PolicyManager;->mCollectPerfFrequency:I

    move/from16 v20, v0

    if-gtz v20, :cond_9

    .line 235
    const/16 v20, 0x32

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ca/mdo/PolicyManager;->mCollectPerfFrequency:I

    .line 238
    :cond_9
    const-string v20, "COLLECT_LOCATION"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 239
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ca/mdo/PolicyManager;->locationCheck:I

    .line 240
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PolicyManager: LOCATION CHECK MODE IS  ..."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ca/mdo/PolicyManager;->locationCheck:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 242
    :cond_a
    const-string v20, "ASAT_AUTO"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 243
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 244
    .restart local v18    # "value":I
    if-nez v18, :cond_13

    .line 245
    const/16 v20, 0x0

    sput-boolean v20, Lcom/ca/mdo/PolicyManager;->mAutoASATEnabled:Z

    .line 246
    const-string v20, "PolicyManager: ASAT_AUTO NOT enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 254
    .end local v18    # "value":I
    :cond_b
    :goto_3
    const-string v20, "APM"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 255
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 256
    .restart local v18    # "value":I
    if-nez v18, :cond_14

    .line 257
    const/16 v20, 0x0

    sput-boolean v20, Lcom/ca/mdo/PolicyManager;->mAPMEnabled:Z

    .line 263
    .end local v18    # "value":I
    :cond_c
    :goto_4
    const-string v20, "URL"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 264
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mNetworkStatsEnabled:Z

    .line 265
    const-string v20, "PolicyManager: NetworkStats enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 268
    :cond_d
    const-string v20, "SCREEN_CAPTURE"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 269
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 270
    .restart local v18    # "value":I
    if-nez v18, :cond_15

    .line 271
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mScreenshotEnabled:Z

    .line 277
    .end local v18    # "value":I
    :cond_e
    :goto_5
    const-string v20, "UPLOAD_WIFI"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 278
    const-string v20, "value"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 279
    .restart local v18    # "value":I
    if-nez v18, :cond_16

    .line 280
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mUploadOnWifi:Z

    .line 179
    .end local v18    # "value":I
    :cond_f
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 161
    .end local v3    # "attributeId":I
    .end local v4    # "attributeName":Ljava/lang/String;
    .end local v5    # "attributes":Lorg/json/JSONArray;
    .end local v6    # "created":J
    .end local v9    # "i":I
    .end local v10    # "jObj":Lorg/json/JSONObject;
    .end local v11    # "lastUpdated":J
    .end local v13    # "len":I
    .end local v14    # "policyJSON":Lorg/json/JSONObject;
    .end local v16    # "profileId":I
    .end local v17    # "profileName":Ljava/lang/String;
    :cond_10
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PolicyManager: Obtained data sucessfully. Data size:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 291
    :catch_0
    move-exception v8

    .line 292
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    const-string v21, "No  for policies"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    const-string v21, "No  for name"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 293
    :cond_11
    const-string v20, "Policy not set for this application"

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 294
    const/16 v20, 0x0

    .line 298
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_7
    return v20

    .line 218
    .restart local v3    # "attributeId":I
    .restart local v4    # "attributeName":Ljava/lang/String;
    .restart local v5    # "attributes":Lorg/json/JSONArray;
    .restart local v6    # "created":J
    .restart local v9    # "i":I
    .restart local v10    # "jObj":Lorg/json/JSONObject;
    .restart local v11    # "lastUpdated":J
    .restart local v13    # "len":I
    .restart local v14    # "policyJSON":Lorg/json/JSONObject;
    .restart local v16    # "profileId":I
    .restart local v17    # "profileName":Ljava/lang/String;
    .restart local v18    # "value":I
    :cond_12
    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mSDKEnabled:Z

    .line 219
    const-string v20, "PolicyManager: SDK disabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 248
    :cond_13
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 250
    const/16 v20, 0x1

    sput-boolean v20, Lcom/ca/mdo/PolicyManager;->mAutoASATEnabled:Z

    .line 251
    const-string v20, "PolicyManager: ASAT_AUTO enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 258
    :cond_14
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 259
    const/16 v20, 0x1

    sput-boolean v20, Lcom/ca/mdo/PolicyManager;->mAPMEnabled:Z

    .line 260
    const-string v20, "PolicyManager: APM enabled ..."

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 272
    :cond_15
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 273
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mScreenshotEnabled:Z

    .line 274
    const-string v20, "PolicyManager: Screenshots enabled"

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 281
    :cond_16
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 282
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ca/mdo/PolicyManager;->mUploadOnWifi:Z

    .line 283
    const-string v20, "PolicyManager: upload on wifi enabled"

    invoke-static/range {v20 .. v20}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 288
    .end local v3    # "attributeId":I
    .end local v4    # "attributeName":Ljava/lang/String;
    .end local v10    # "jObj":Lorg/json/JSONObject;
    .end local v18    # "value":I
    :cond_17
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmMessageProcessingHandler()Landroid/os/Handler;

    move-result-object v20

    if-eqz v20, :cond_18

    .line 289
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmMessageProcessingHandler()Landroid/os/Handler;

    move-result-object v20

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmMessageProcessingHandler()Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0xe6

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ca/mdo/PolicyManager;->locationCheck:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    .end local v5    # "attributes":Lorg/json/JSONArray;
    .end local v6    # "created":J
    .end local v9    # "i":I
    .end local v11    # "lastUpdated":J
    .end local v13    # "len":I
    .end local v14    # "policyJSON":Lorg/json/JSONObject;
    .end local v16    # "profileId":I
    .end local v17    # "profileName":Ljava/lang/String;
    :cond_18
    :goto_8
    const/16 v20, 0x1

    goto/16 :goto_7

    .line 296
    .restart local v8    # "e":Lorg/json/JSONException;
    :cond_19
    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private processSDKEnablementChange(ZZ)V
    .locals 3
    .param p1, "beforeRefreshSDKEnabled"    # Z
    .param p2, "nowSDKEnabled"    # Z

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before Refresh SDK Enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Refresh SDK Enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/ca/mdo/SDK;->getSDKEnabledByAPI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    if-eq p1, p2, :cond_0

    .line 113
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ca/mdo/PolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/ca/mdo/PolicyManager$1;

    invoke-direct {v1, p0, p2}, Lcom/ca/mdo/PolicyManager$1;-><init>(Lcom/ca/mdo/PolicyManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private resetValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mCpuEnabled:Z

    .line 94
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mDiskEnabled:Z

    .line 95
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mMemEnabled:Z

    .line 96
    iput-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mFpsEnabled:Z

    .line 97
    sput-boolean v0, Lcom/ca/mdo/PolicyManager;->mCrashEnabled:Z

    .line 98
    return-void
.end method

.method private static saveSDKEnabledFlagPref(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkEnabled"    # Z

    .prologue
    .line 132
    sget-object v1, Lcom/ca/mdo/Constants;->PREF_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/Constants;->PREF_SDK_ENABLED:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method

.method private store(Ljava/lang/String;)V
    .locals 5
    .param p1, "policyData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v2, p0, Lcom/ca/mdo/PolicyManager;->mContext:Landroid/content/Context;

    const-string v3, "policyData.txt"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    const-string v2, "policyData.txt successfully deleted."

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 378
    :goto_0
    const-string v2, "PolicyManager: Writing policy to cache"

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lcom/ca/mdo/PolicyManager;->mContext:Landroid/content/Context;

    const-string v3, "policyData.txt"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 381
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "ISO8859_1"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 382
    .local v1, "writer":Ljava/io/OutputStreamWriter;
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 387
    return-void

    .line 376
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v1    # "writer":Ljava/io/OutputStreamWriter;
    :cond_0
    const-string v2, "policyData.txt could not be deleted or not present."

    invoke-static {v2}, Lcom/ca/mdo/CALog;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 385
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v2
.end method


# virtual methods
.method protected getLastUpdatedTimeStamp()J
    .locals 2

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/ca/mdo/PolicyManager;->getCpt()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLocationCheck()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/ca/mdo/PolicyManager;->locationCheck:I

    return v0
.end method

.method public getMaxDBSizeInBytes()J
    .locals 2

    .prologue
    .line 570
    iget-wide v0, p0, Lcom/ca/mdo/PolicyManager;->mMaxDBSizeInBytes:J

    return-wide v0
.end method

.method public getPerfCollectFrequency()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/ca/mdo/PolicyManager;->mCollectPerfFrequency:I

    return v0
.end method

.method protected getProfileId()I
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/ca/mdo/PolicyManager;->getCpi()I

    move-result v0

    return v0
.end method

.method public getSessionTimeout()I
    .locals 2

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyManager: Setting session timeout from policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ca/mdo/PolicyManager;->mSessionTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 561
    iget v0, p0, Lcom/ca/mdo/PolicyManager;->mSessionTimeout:I

    return v0
.end method

.method public getUploadEventsLimit()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/ca/mdo/PolicyManager;->mUploadEventsLimit:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ca/mdo/PolicyManager$2;

    invoke-direct {v1, p0}, Lcom/ca/mdo/PolicyManager$2;-><init>(Lcom/ca/mdo/PolicyManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 367
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 368
    return-void
.end method

.method protected isBatteryEnabled()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mBatteryEnabled:Z

    return v0
.end method

.method protected isCpuEnabled()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mCpuEnabled:Z

    return v0
.end method

.method protected isDiskEnabled()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mDiskEnabled:Z

    return v0
.end method

.method protected isFpsEnabled()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mFpsEnabled:Z

    return v0
.end method

.method protected isMemEnabled()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mMemEnabled:Z

    return v0
.end method

.method protected isNetworkStatsEnabled()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mNetworkStatsEnabled:Z

    return v0
.end method

.method protected isSDKEnabled()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mSDKEnabled:Z

    return v0
.end method

.method protected isScreenshotEnabled()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mScreenshotEnabled:Z

    return v0
.end method

.method protected isUploadOnWifiEnabled()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager;->mUploadOnWifi:Z

    return v0
.end method
