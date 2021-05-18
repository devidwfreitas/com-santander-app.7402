.class Lcom/ca/mdo/AppDeviceData;
.super Ljava/lang/Object;
.source "AppDeviceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mdo/AppDeviceData$DynInfoHolder;
    }
.end annotation


# static fields
.field private static final OFFLINE:Ljava/lang/String; = "Offline"

.field private static final WIFI:Ljava/lang/String; = "WIFI"

.field private static additionalAPMHeaders:Ljava/lang/String;

.field private static batteryReceiver:Landroid/content/BroadcastReceiver;

.field private static lastLocation:Landroid/location/Location;

.field private static mAPMBaseHeader:Ljava/lang/String;

.field private static mBatteryPct:F

.field private static mContext:Landroid/content/Context;

.field private static mDeviceId:Ljava/lang/String;

.field private static mDeviceIdType:Ljava/lang/String;

.field private static mDisplay:Landroid/view/Display;

.field private static mPid:I

.field private static mTotalMemory:Ljava/lang/Long;


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private mAppVersion:Ljava/lang/String;

.field private mApplicationName:Ljava/lang/String;

.field private mIpAddress:Ljava/lang/String;

.field private mManufactorer:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mNetworkCountryCode:Ljava/lang/String;

.field private mNetworkOperatorName:Ljava/lang/String;

.field private mNetworkType:Ljava/lang/String;

.field private mTenantID:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/ca/mdo/AppDeviceData;->mBatteryPct:F

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/ca/mdo/AppDeviceData;->additionalAPMHeaders:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tenantID"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->filter:Landroid/content/IntentFilter;

    .line 117
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ca/mdo/AppDeviceData;->initializeAppDeviceData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Error in initializing AppDeviceData."

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 120
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/ca/mdo/AppDeviceData;->mBatteryPct:F

    return v0
.end method

.method static synthetic access$102(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 42
    sput p0, Lcom/ca/mdo/AppDeviceData;->mBatteryPct:F

    return p0
.end method

.method public static getAPMHeader()Ljava/lang/String;
    .locals 14

    .prologue
    .line 170
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getLocation()Landroid/location/Location;

    move-result-object v7

    .line 171
    .local v7, "loc":Landroid/location/Location;
    sget-object v3, Lcom/ca/mdo/AppDeviceData;->mAPMBaseHeader:Ljava/lang/String;

    .line 173
    .local v3, "hdr":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 175
    .local v5, "lat":D
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 176
    .local v8, "lon":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/ca/mdo/AppDeviceData;->mAPMBaseHeader:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";g="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .end local v5    # "lat":D
    .end local v8    # "lon":D
    :cond_0
    new-instance v4, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;

    invoke-direct {v4}, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;-><init>()V

    .line 179
    .local v4, "holder":Lcom/ca/mdo/AppDeviceData$DynInfoHolder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "bs":Ljava/lang/String;
    const/4 v1, 0x0

    .line 182
    .local v1, "bt":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationService()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    .line 183
    sget-object v10, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/ca/mdo/AppDeviceData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationTransaction()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    .line 188
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getCurrentViewName()Ljava/lang/String;

    move-result-object v1

    .line 193
    :goto_1
    sget-object v10, Lcom/ca/mdo/AppDeviceData;->additionalAPMHeaders:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/ca/mdo/AppDeviceData;->additionalAPMHeaders:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x-apm-bt : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 201
    .end local v0    # "bs":Ljava/lang/String;
    .end local v1    # "bt":Ljava/lang/String;
    .end local v4    # "holder":Lcom/ca/mdo/AppDeviceData$DynInfoHolder;
    :goto_2
    return-object v3

    .line 185
    .restart local v0    # "bs":Ljava/lang/String;
    .restart local v1    # "bt":Ljava/lang/String;
    .restart local v4    # "holder":Lcom/ca/mdo/AppDeviceData$DynInfoHolder;
    :cond_2
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationService()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_3
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getApplicationTransaction()Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v10, "%s$bs=%s;bt=%s;p=Android;pv=%s"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    const/4 v12, 0x2

    aput-object v1, v11, v12

    const/4 v12, 0x3

    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 197
    .end local v0    # "bs":Ljava/lang/String;
    .end local v1    # "bt":Ljava/lang/String;
    .end local v4    # "holder":Lcom/ca/mdo/AppDeviceData$DynInfoHolder;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "ex":Ljava/lang/Exception;
    const-string v10, "Error in getting APM Header"

    invoke-static {v10}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 199
    invoke-static {v2}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "9774d56d682e549c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    const-string v3, "androidID"

    sput-object v3, Lcom/ca/mdo/AppDeviceData;->mDeviceIdType:Ljava/lang/String;

    .line 281
    .end local v0    # "id":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 273
    .restart local v0    # "id":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 274
    .local v1, "serialNumber":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 275
    const-string v4, "serialNum"

    sput-object v4, Lcom/ca/mdo/AppDeviceData;->mDeviceIdType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 276
    goto :goto_0

    .line 278
    .end local v1    # "serialNumber":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "th":Ljava/lang/Throwable;
    move-object v0, v3

    .line 279
    goto :goto_0

    .end local v2    # "th":Ljava/lang/Throwable;
    .restart local v1    # "serialNumber":Ljava/lang/String;
    :cond_1
    move-object v0, v3

    .line 281
    goto :goto_0
.end method

.method public static getAppIcon()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "appIconBitMap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 853
    .local v1, "compressedAndEncoded":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 854
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 855
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 856
    :cond_0
    if-eqz v0, :cond_1

    .line 857
    const/16 v4, 0x1e

    invoke-static {v0, v4}, Lcom/ca/mdo/Util;->compressAndEncode(Landroid/graphics/Bitmap;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 863
    :cond_1
    :goto_0
    return-object v1

    .line 859
    :catch_0
    move-exception v3

    .line 861
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Error in retrieving Application Icon"

    invoke-static {v4, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static getAppTicks()J
    .locals 10

    .prologue
    .line 575
    const/4 v5, 0x0

    .line 577
    .local v5, "statsList":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 579
    .local v2, "currentProcessId":I
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/stat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x4a0

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 580
    .local v4, "processStatsReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "processStats":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 582
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 589
    const/16 v6, 0xd

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v8, 0xe

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v8, 0x10

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v8, 0x10

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    add-long v0, v6, v8

    .line 596
    .end local v2    # "currentProcessId":I
    .end local v3    # "processStats":Ljava/lang/String;
    .end local v4    # "processStatsReader":Ljava/io/BufferedReader;
    :goto_0
    return-wide v0

    .line 592
    :catch_0
    move-exception v6

    .line 596
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 373
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 374
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 377
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "unknown"

    goto :goto_1
.end method

.method protected static getBatteryPct()F
    .locals 1

    .prologue
    .line 805
    sget v0, Lcom/ca/mdo/AppDeviceData;->mBatteryPct:F

    return v0
.end method

.method protected static getCPUUsage()F
    .locals 1

    .prologue
    .line 475
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getCPUUsingDeviceStats()F

    move-result v0

    .line 478
    .local v0, "cpu":F
    return v0
.end method

.method protected static getCPUUsingAppStats()F
    .locals 10

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    .line 545
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDeviceTicks()J

    move-result-wide v8

    long-to-float v4, v8

    .line 546
    .local v4, "beforeDeviceTicks":F
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAppTicks()J

    move-result-wide v8

    long-to-float v3, v8

    .line 548
    .local v3, "beforeAppTicks":F
    const-wide/16 v8, 0x168

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDeviceTicks()J

    move-result-wide v8

    long-to-float v1, v8

    .line 554
    .local v1, "afterDeviceTicks":F
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getAppTicks()J

    move-result-wide v8

    long-to-float v0, v8

    .line 555
    .local v0, "afterAppTicks":F
    sub-float v2, v0, v3

    .line 556
    .local v2, "appRate":F
    sub-float v5, v1, v4

    .line 557
    .local v5, "deviceRate":F
    const/4 v6, 0x0

    .line 558
    .local v6, "rate":F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_0

    .line 559
    div-float v8, v2, v5

    mul-float v6, v7, v8

    .line 561
    :cond_0
    cmpl-float v8, v6, v7

    if-lez v8, :cond_1

    move v6, v7

    .line 563
    .end local v6    # "rate":F
    :cond_1
    return v6

    .line 550
    .end local v0    # "afterAppTicks":F
    .end local v1    # "afterDeviceTicks":F
    .end local v2    # "appRate":F
    .end local v5    # "deviceRate":F
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method protected static getCPUUsingDeviceStats()F
    .locals 22

    .prologue
    .line 487
    const/4 v2, 0x0

    .line 488
    .local v2, "cpu":F
    const/4 v14, 0x0

    .line 490
    .local v14, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v17, "/proc/stat"

    const-string v18, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v14    # "reader":Ljava/io/RandomAccessFile;
    .local v15, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 493
    .local v13, "load":Ljava/lang/String;
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 495
    .local v16, "toks":[Ljava/lang/String;
    const/16 v17, 0x5

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 496
    .local v9, "idle1":J
    const/16 v17, 0x2

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v19, 0x3

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v19, 0x4

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v19, 0x6

    aget-object v19, v16, v19

    .line 497
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v19, 0x7

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v19, 0x8

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v19

    add-long v3, v17, v19

    .line 500
    .local v3, "cpu1":J
    const-wide/16 v17, 0x168

    :try_start_2
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 504
    :goto_0
    const-wide/16 v17, 0x0

    :try_start_3
    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 505
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 506
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V

    .line 508
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 510
    const/16 v17, 0x5

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 511
    .local v11, "idle2":J
    const/16 v17, 0x2

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v19, 0x3

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v19, 0x4

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v19, 0x6

    aget-object v19, v16, v19

    .line 512
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v19, 0x7

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v19, 0x8

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v19

    add-long v5, v17, v19

    .line 514
    .local v5, "cpu2":J
    sub-long v17, v5, v3

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    add-long v18, v5, v11

    add-long v20, v3, v9

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v2, v17, v18

    .line 520
    if-eqz v15, :cond_4

    .line 522
    :try_start_4
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v14, v15

    .line 529
    .end local v3    # "cpu1":J
    .end local v5    # "cpu2":J
    .end local v9    # "idle1":J
    .end local v11    # "idle2":J
    .end local v13    # "load":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/RandomAccessFile;
    .end local v16    # "toks":[Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_1
    const/16 v17, 0x0

    cmpg-float v17, v2, v17

    if-gez v17, :cond_2

    .line 530
    const/16 v17, 0x0

    .line 536
    :goto_2
    return v17

    .line 523
    .end local v14    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "cpu1":J
    .restart local v5    # "cpu2":J
    .restart local v9    # "idle1":J
    .restart local v11    # "idle2":J
    .restart local v13    # "load":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/RandomAccessFile;
    .restart local v16    # "toks":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 524
    .local v7, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception while closing /proc/stat file:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    move-object v14, v15

    .line 525
    .end local v15    # "reader":Ljava/io/RandomAccessFile;
    .restart local v14    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 516
    .end local v3    # "cpu1":J
    .end local v5    # "cpu2":J
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "idle1":J
    .end local v11    # "idle2":J
    .end local v13    # "load":Ljava/lang/String;
    .end local v16    # "toks":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 517
    .local v8, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 518
    const/4 v2, 0x0

    .line 520
    if-eqz v14, :cond_0

    .line 522
    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 523
    :catch_2
    move-exception v7

    .line 524
    .restart local v7    # "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception while closing /proc/stat file:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto :goto_1

    .line 520
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_4
    if-eqz v14, :cond_1

    .line 522
    :try_start_7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 525
    :cond_1
    :goto_5
    throw v17

    .line 523
    :catch_3
    move-exception v7

    .line 524
    .restart local v7    # "e":Ljava/io/IOException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception while closing /proc/stat file:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    goto :goto_5

    .line 532
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    const/high16 v17, 0x42c80000    # 100.0f

    mul-float v17, v17, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v2, v17, v18

    .line 533
    const/high16 v17, 0x42c80000    # 100.0f

    cmpl-float v17, v2, v17

    if-lez v17, :cond_3

    .line 534
    const/high16 v17, 0x42c80000    # 100.0f

    goto/16 :goto_2

    .line 536
    :cond_3
    const/high16 v17, 0x42c80000    # 100.0f

    mul-float v17, v17, v2

    goto/16 :goto_2

    .line 501
    .end local v14    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "cpu1":J
    .restart local v9    # "idle1":J
    .restart local v13    # "load":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/RandomAccessFile;
    .restart local v16    # "toks":[Ljava/lang/String;
    :catch_4
    move-exception v17

    goto/16 :goto_0

    .line 520
    .end local v3    # "cpu1":J
    .end local v9    # "idle1":J
    .end local v13    # "load":Ljava/lang/String;
    .end local v16    # "toks":[Ljava/lang/String;
    :catchall_1
    move-exception v17

    move-object v14, v15

    .end local v15    # "reader":Ljava/io/RandomAccessFile;
    .restart local v14    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 516
    .end local v14    # "reader":Ljava/io/RandomAccessFile;
    .restart local v15    # "reader":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v8

    move-object v14, v15

    .end local v15    # "reader":Ljava/io/RandomAccessFile;
    .restart local v14    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v14    # "reader":Ljava/io/RandomAccessFile;
    .restart local v3    # "cpu1":J
    .restart local v5    # "cpu2":J
    .restart local v9    # "idle1":J
    .restart local v11    # "idle2":J
    .restart local v13    # "load":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/RandomAccessFile;
    .restart local v16    # "toks":[Ljava/lang/String;
    :cond_4
    move-object v14, v15

    .end local v15    # "reader":Ljava/io/RandomAccessFile;
    .restart local v14    # "reader":Ljava/io/RandomAccessFile;
    goto/16 :goto_1
.end method

.method public static getCoordinates()Landroid/location/Location;
    .locals 1

    .prologue
    .line 815
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/ca/mdo/AppDeviceData;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method protected static getDeviceIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/ca/mdo/AppDeviceData;->mDeviceIdType:Ljava/lang/String;

    return-object v0
.end method

.method protected static getDeviceOrientation()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 737
    sget-object v0, Lcom/ca/mdo/AppDeviceData;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ca/mdo/AppDeviceData;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected static getDeviceOrientationString(I)Ljava/lang/String;
    .locals 1
    .param p0, "rotation"    # I

    .prologue
    .line 741
    packed-switch p0, :pswitch_data_0

    .line 755
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 744
    :pswitch_0
    const-string v0, "P"

    goto :goto_0

    .line 747
    :pswitch_1
    const-string v0, "L"

    goto :goto_0

    .line 750
    :pswitch_2
    const-string v0, "P"

    goto :goto_0

    .line 753
    :pswitch_3
    const-string v0, "L"

    goto :goto_0

    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static getDeviceTicks()J
    .locals 9

    .prologue
    .line 605
    const/4 v4, 0x0

    .line 607
    .local v4, "statsList":[Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/stat"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0xc8

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 614
    .local v3, "processStatsReader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "processStats":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 616
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 617
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x3

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v7, 0x4

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v7, 0x6

    aget-object v7, v4, v7

    .line 618
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v7, 0x5

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/4 v7, 0x7

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v5, v7

    const/16 v7, 0x8

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    add-long v0, v5, v7

    .line 625
    .end local v2    # "processStats":Ljava/lang/String;
    .end local v3    # "processStatsReader":Ljava/io/BufferedReader;
    :goto_0
    return-wide v0

    .line 622
    :catch_0
    move-exception v5

    .line 625
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static getDiskStats(Ljava/lang/String;)Landroid/os/StatFs;
    .locals 4
    .param p0, "dir"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 673
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 674
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-object v0

    .line 677
    :catch_0
    move-exception v1

    .line 678
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getDiskUsage()F
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    .line 636
    const/4 v4, 0x0

    .line 638
    .local v4, "spaceUtilization":F
    const-wide/16 v6, -0x1

    .line 639
    .local v6, "total":J
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    sget-object v10, Lcom/ca/mdo/Constants;->PREF_DEVICE_TOTAL_DISK:Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 640
    .local v0, "existingTotal":J
    cmp-long v9, v0, v13

    if-lez v9, :cond_2

    .line 641
    move-wide v6, v0

    .line 646
    :goto_0
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    sget-object v11, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    .line 647
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-static {v9}, Lcom/ca/mdo/AppDeviceData;->getFolderSize(Ljava/io/File;)J

    move-result-wide v2

    .line 649
    .local v2, "occupied":J
    cmp-long v9, v6, v13

    if-lez v9, :cond_0

    .line 650
    long-to-float v9, v2

    long-to-float v10, v6

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v4, v9, v10

    .line 657
    .end local v0    # "existingTotal":J
    .end local v2    # "occupied":J
    :cond_0
    :goto_1
    cmpg-float v9, v4, v8

    if-gez v9, :cond_1

    move v4, v8

    .end local v4    # "spaceUtilization":F
    :cond_1
    return v4

    .line 643
    .restart local v0    # "existingTotal":J
    .restart local v4    # "spaceUtilization":F
    :cond_2
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getTotalInternalMemorySize()J

    move-result-wide v6

    .line 644
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    sget-object v10, Lcom/ca/mdo/Constants;->PREF_DEVICE_TOTAL_DISK:Ljava/lang/String;

    invoke-interface {v9, v10, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    .end local v0    # "existingTotal":J
    :catch_0
    move-exception v5

    .line 654
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getFileSize(Ljava/lang/String;)J
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 699
    const-wide/16 v0, 0x0

    .line 701
    .local v0, "db":J
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v2, "dbFile":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 711
    .end local v2    # "dbFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-wide v0

    .line 705
    :catch_0
    move-exception v3

    .line 706
    .local v3, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 708
    .end local v3    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method private static getFolderSize(Ljava/io/File;)J
    .locals 8
    .param p0, "folderPath"    # Ljava/io/File;

    .prologue
    const-wide/16 v4, 0x0

    .line 715
    const-wide/16 v2, 0x0

    .line 716
    .local v2, "totalSize":J
    if-nez p0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-wide v4

    .line 719
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 722
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 723
    .local v1, "files":[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v0, v1, v4

    .line 724
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 725
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 723
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 726
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 727
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 728
    invoke-static {v0}, Lcom/ca/mdo/AppDeviceData;->getFolderSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_2

    .end local v0    # "file":Ljava/io/File;
    :cond_4
    move-wide v4, v2

    .line 731
    goto :goto_0
.end method

.method public static getLastLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 840
    sget-object v0, Lcom/ca/mdo/AppDeviceData;->lastLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 841
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getLocation()Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/AppDeviceData;->lastLocation:Landroid/location/Location;

    .line 842
    :cond_0
    sget-object v0, Lcom/ca/mdo/AppDeviceData;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method protected static getLocalIpAddress()Ljava/lang/String;
    .locals 12

    .prologue
    .line 385
    :try_start_0
    sget-object v8, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 386
    .local v7, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-eqz v7, :cond_0

    .line 387
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 388
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 389
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 392
    .local v2, "ip":I
    const-string v8, "%d.%d.%d.%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    and-int/lit16 v11, v2, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 411
    .end local v2    # "ip":I
    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v8

    .line 396
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 397
    .local v5, "nwIntfList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 398
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 399
    .local v4, "nwIntf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 400
    .local v3, "ipaddrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 401
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 402
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_2

    .line 403
    instance-of v8, v1, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    .line 404
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 408
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "ipaddrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "nwIntf":Ljava/net/NetworkInterface;
    .end local v5    # "nwIntfList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v0

    .line 409
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    const-string v8, "Unknown"

    goto :goto_0
.end method

.method private static getLocation()Landroid/location/Location;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 819
    :try_start_0
    sget-object v5, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    const-string v6, "location"

    .line 820
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 822
    .local v2, "lm":Landroid/location/LocationManager;
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 823
    .local v0, "criteria":Landroid/location/Criteria;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 824
    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, "provider":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 835
    .end local v0    # "criteria":Landroid/location/Criteria;
    .end local v3    # "provider":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 829
    .restart local v0    # "criteria":Landroid/location/Criteria;
    .restart local v3    # "provider":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 831
    .local v1, "lastKnownLocation":Landroid/location/Location;
    goto :goto_0

    .line 832
    .end local v0    # "criteria":Landroid/location/Criteria;
    .end local v1    # "lastKnownLocation":Landroid/location/Location;
    .end local v3    # "provider":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 833
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static getMemoryUsage()F
    .locals 7

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, "memoryUsage":F
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getPSS()I

    move-result v5

    int-to-float v1, v5

    .line 442
    .local v1, "pss":F
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getTotalMemory()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    long-to-float v3, v5

    .line 443
    .local v3, "totalRAM":F
    div-float v4, v1, v3

    .line 444
    .local v4, "utilization":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 445
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v0, v4, v5

    .line 451
    .end local v1    # "pss":F
    .end local v3    # "totalRAM":F
    .end local v4    # "utilization":F
    :cond_0
    :goto_0
    return v0

    .line 447
    :catch_0
    move-exception v2

    .line 448
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getNetworkCountryCode(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "networkCountryCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "networkCountryCode":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "networkCountryCode":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method protected static getNetworkOperatorName(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "carrierName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 417
    :cond_0
    const-string v0, "Unknown"

    .line 419
    .end local v0    # "carrierName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 286
    :try_start_0
    const-string v9, "connectivity"

    .line 287
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 289
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 290
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v4

    .line 292
    .local v3, "isConnected":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 293
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v4, :cond_1

    .line 294
    .local v4, "isWiFi":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 295
    const-string v8, "WIFI"

    .line 319
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "isConnected":Z
    .end local v4    # "isWiFi":Z
    :goto_2
    return-object v8

    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    move v3, v8

    .line 291
    goto :goto_0

    .restart local v3    # "isConnected":Z
    :cond_1
    move v4, v8

    .line 293
    goto :goto_1

    .line 297
    :cond_2
    const-string v8, "Offline"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 298
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "isConnected":Z
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v8, "ACCESS_NETWORK_STATE permiison not granted. Cannot determine Wifi."

    invoke-static {v8, v2}, Lcom/ca/mdo/CALog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_3
    :goto_3
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 305
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 306
    .local v5, "networkType":I
    packed-switch v5, :pswitch_data_0

    .line 319
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 300
    .end local v5    # "networkType":I
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v6

    .line 301
    .local v6, "th":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 308
    .end local v6    # "th":Ljava/lang/Throwable;
    .restart local v5    # "networkType":I
    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_1
    const-string v8, "Unknown"

    goto :goto_2

    .line 310
    :pswitch_2
    const-string v8, "EDGE"

    goto :goto_2

    .line 315
    :pswitch_3
    const-string v8, "3G"

    goto :goto_2

    .line 317
    :pswitch_4
    const-string v8, "LTE"

    goto :goto_2

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected static getPSS()I
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 456
    sget-object v5, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 459
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    new-array v3, v5, [I

    .line 460
    .local v3, "pidx":[I
    sget v5, Lcom/ca/mdo/AppDeviceData;->mPid:I

    aput v5, v3, v4

    .line 461
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 462
    .local v1, "memoryInfoArray":[Landroid/os/Debug$MemoryInfo;
    array-length v5, v1

    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 463
    .local v2, "pidMemoryInfo":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    .line 465
    .end local v2    # "pidMemoryInfo":Landroid/os/Debug$MemoryInfo;
    :cond_0
    return v4
.end method

.method public static getPid()I
    .locals 2

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getSDKDiskOccupancy()J
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 685
    const-wide/16 v0, 0x0

    .line 686
    .local v0, "db":J
    const-wide/16 v2, 0x0

    .line 687
    .local v2, "dbJournal":J
    const-wide/16 v5, 0x0

    .line 690
    .local v5, "total":J
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/ca/mdo/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/ca/mdo/DatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ca/mdo/DatabaseHelper;->getMDODBPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ca/mdo/AppDeviceData;->getFileSize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 694
    :goto_0
    add-long v5, v0, v2

    .line 695
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    const-wide/16 v5, -0x1

    .end local v5    # "total":J
    :cond_0
    return-wide v5

    .line 691
    .restart local v5    # "total":J
    :catch_0
    move-exception v4

    .line 692
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 662
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 663
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 664
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 665
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 666
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method static getTotalMemory()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/ca/mdo/AppDeviceData;->mTotalMemory:Ljava/lang/Long;

    return-object v0
.end method

.method protected static getTotalRAM()Ljava/lang/Long;
    .locals 8

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "buffreader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 338
    .local v4, "line":Ljava/lang/String;
    const-string v5, "0"

    .line 341
    .local v5, "totalMem":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/meminfo"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .local v1, "buffreader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 345
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 346
    const/4 v6, 0x0

    const-string v7, "kB"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Memory in kB= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 353
    if-eqz v1, :cond_0

    .line 354
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 359
    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    return-object v6

    .line 355
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 358
    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 349
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 350
    .local v3, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    if-eqz v0, :cond_1

    .line 354
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 355
    :catch_2
    move-exception v2

    .line 356
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 352
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 353
    :goto_2
    if-eqz v0, :cond_2

    .line 354
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 357
    :cond_2
    :goto_3
    throw v6

    .line 355
    :catch_3
    move-exception v2

    .line 356
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 352
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 349
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private initializeAppDeviceData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tenantID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    sput-object p1, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/ca/mdo/AppDeviceData;->mTenantID:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/ca/mdo/AppDeviceData;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ca/mdo/AppDeviceData;->mDeviceId:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/ca/mdo/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mAppVersion:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getTotalRAM()Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/ca/mdo/AppDeviceData;->mTotalMemory:Ljava/lang/Long;

    .line 130
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mManufactorer:Ljava/lang/String;

    .line 131
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mModel:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lcom/ca/mdo/AppDeviceData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mApplicationName:Ljava/lang/String;

    .line 133
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_2
    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mVersion:Ljava/lang/String;

    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lcom/ca/mdo/AppDeviceData;->mPid:I

    .line 135
    sget-object v1, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sput-object v1, Lcom/ca/mdo/AppDeviceData;->mDisplay:Landroid/view/Display;

    .line 136
    invoke-virtual {p0}, Lcom/ca/mdo/AppDeviceData;->setNetworkDetails()V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mTenantID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ";a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ";d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    sget-object v1, Lcom/ca/mdo/AppDeviceData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ";v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "16.4.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ca/mdo/AppDeviceData;->mAPMBaseHeader:Ljava/lang/String;

    .line 148
    return-void

    .line 130
    .end local v0    # "s":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, "unknown"

    goto :goto_0

    .line 131
    :cond_1
    const-string v1, "unknown"

    goto :goto_1

    .line 133
    :cond_2
    const-string v1, "unknown"

    goto :goto_2
.end method

.method protected static registerBatteryReceiver()V
    .locals 4

    .prologue
    .line 786
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 787
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ca/mdo/AppDeviceData;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v1

    .line 789
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "registerBatteryReceiver caught exception."

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static registerForBatteryStatus()V
    .locals 2

    .prologue
    .line 760
    sget-object v1, Lcom/ca/mdo/AppDeviceData;->batteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 780
    .local v0, "th":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 764
    .end local v0    # "th":Ljava/lang/Throwable;
    :cond_0
    :try_start_0
    new-instance v1, Lcom/ca/mdo/AppDeviceData$1;

    invoke-direct {v1}, Lcom/ca/mdo/AppDeviceData$1;-><init>()V

    sput-object v1, Lcom/ca/mdo/AppDeviceData;->batteryReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .restart local v0    # "th":Ljava/lang/Throwable;
    const-string v1, "registerForBatteryStatus failed"

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAdditionalAPMHeaders(Ljava/lang/String;)V
    .locals 0
    .param p0, "headers"    # Ljava/lang/String;

    .prologue
    .line 112
    sput-object p0, Lcom/ca/mdo/AppDeviceData;->additionalAPMHeaders:Ljava/lang/String;

    .line 113
    return-void
.end method

.method protected static unRegisterBatteryReceiver()V
    .locals 3

    .prologue
    .line 795
    :try_start_0
    sget-object v1, Lcom/ca/mdo/AppDeviceData;->batteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 796
    sget-object v1, Lcom/ca/mdo/AppDeviceData;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ca/mdo/AppDeviceData;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .local v0, "th":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 798
    .end local v0    # "th":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 799
    .restart local v0    # "th":Ljava/lang/Throwable;
    const-string v1, "unRegisterBatteryReceiver caught exception:"

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ca/mdo/AppDeviceData;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ca/mdo/AppDeviceData;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ca/mdo/AppDeviceData;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method getManufactorer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ca/mdo/AppDeviceData;->mManufactorer:Ljava/lang/String;

    return-object v0
.end method

.method getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ca/mdo/AppDeviceData;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ca/mdo/AppDeviceData;->mNetworkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ca/mdo/AppDeviceData;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setNetworkDetails()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;

    invoke-direct {v0}, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;-><init>()V

    .line 162
    .local v0, "holder":Lcom/ca/mdo/AppDeviceData$DynInfoHolder;
    iget-object v1, v0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->opName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mNetworkOperatorName:Ljava/lang/String;

    .line 163
    iget-object v1, v0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->countryCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mNetworkCountryCode:Ljava/lang/String;

    .line 164
    iget-object v1, v0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->networkType:Ljava/lang/String;

    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mNetworkType:Ljava/lang/String;

    .line 165
    iget-object v1, v0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->ipAddresss:Ljava/lang/String;

    iput-object v1, p0, Lcom/ca/mdo/AppDeviceData;->mIpAddress:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/AppDeviceData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Application Version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Application Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Memory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ca/mdo/AppDeviceData;->mTotalMemory:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Manufactorer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData;->mManufactorer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Model:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IP Address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " NetworkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Operator Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData;->mNetworkOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Country Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData;->mNetworkCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
