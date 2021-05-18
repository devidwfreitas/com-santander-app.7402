.class public Lcom/adjust/sdk/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

.field public static final SecondsDisplayFormat:Ljava/text/DecimalFormat;

.field public static final dateFormatter:Ljava/text/SimpleDateFormat;

.field private static final fieldReadErrorMessage:Ljava/lang/String; = "Unable to read \'%s\' field in migration device with message (%s)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 311
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 449
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static createUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    .prologue
    .line 385
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalEnum(Ljava/lang/Enum;Ljava/lang/Enum;)Z
    .locals 1

    .prologue
    .line 373
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1

    .prologue
    .line 381
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 1

    .prologue
    .line 377
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 355
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 356
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 369
    invoke-static {p0, p1}, Lcom/adjust/sdk/Util;->equalObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalsDouble(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 362
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 363
    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 365
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 363
    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectivityType(Landroid/content/Context;)I
    .locals 6

    .prologue
    .line 568
    const/4 v1, -0x1

    .line 571
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 572
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 578
    :goto_0
    return v0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "Couldn\'t read connectivity type (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFireAdvertisingId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 545
    if-nez p0, :cond_0

    .line 554
    :goto_0
    return-object v0

    .line 550
    :cond_0
    :try_start_0
    const-string v1, "advertising_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFireTrackingEnabled(Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 560
    :try_start_0
    const-string v0, "limit_ad_tracking"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 564
    :goto_1
    return-object v0

    .line 560
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 564
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getGoogleAdId(Landroid/content/Context;Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    .line 104
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 105
    const-string v1, "GoogleAdId being read in the background"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {p0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleAdId read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-interface {p1, v1}, Lcom/adjust/sdk/OnDeviceIdsRead;->onGoogleAdIdRead(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v1, "GoogleAdId being read in the foreground"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    new-instance v0, Lawh;

    invoke-direct {v0, p1}, Lawh;-><init>(Lcom/adjust/sdk/OnDeviceIdsRead;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    aput-object p0, v1, v4

    .line 129
    invoke-virtual {v0, v1}, Lawh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getIMEI(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMEI(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/adjust/sdk/Reflection;->getImei(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMEIs(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->getIMEI(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z

    .line 207
    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 208
    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->getIMEI(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v1, v2}, Lcom/adjust/sdk/Util;->tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    :cond_0
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->getIMEI(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z

    .line 217
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 537
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getLocaleFromLocaleList(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_0

    .line 541
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getLocaleFromField(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method

.method public static getMEID(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getMeid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMEID(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/adjust/sdk/Reflection;->getMeid(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMEIDs(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->getMEID(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z

    .line 226
    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 227
    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->getMEID(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v1, v2}, Lcom/adjust/sdk/Util;->tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->getMEID(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z

    .line 236
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 597
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 598
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v2, "Couldn\'t receive networkOperator string to read MCC"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 607
    :goto_0
    return-object v0

    .line 604
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v2, "Couldn\'t return mcc"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 607
    goto :goto_0
.end method

.method public static getMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 613
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 614
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v2, "Couldn\'t receive networkOperator string to read MNC"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 623
    :goto_0
    return-object v0

    .line 620
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v2, "Couldn\'t return mnc"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 623
    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 6

    .prologue
    .line 582
    const/4 v1, -0x1

    .line 585
    :try_start_0
    const-string v0, "phone"

    .line 586
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 587
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 592
    :goto_0
    return v0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "Couldn\'t read network type (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public static getPlayAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginKeys(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 463
    if-eqz p1, :cond_0

    .line 464
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getTelephonyId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/adjust/sdk/Reflection;->getTelephonyId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyIds(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->getTelephonyId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z

    .line 188
    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 189
    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->getTelephonyId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v1, v2}, Lcom/adjust/sdk/Util;->tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    :cond_0
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->getTelephonyId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v1, v0}, Lcom/adjust/sdk/Util;->tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z

    .line 198
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getVmInstructionSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getVmInstructionSet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWaitingTime(ILcom/adjust/sdk/BackoffStrategy;)J
    .locals 6

    .prologue
    .line 471
    iget v0, p1, Lcom/adjust/sdk/BackoffStrategy;->minRetries:I

    if-ge p0, v0, :cond_0

    .line 472
    const-wide/16 v0, 0x0

    .line 484
    :goto_0
    return-wide v0

    .line 475
    :cond_0
    iget v0, p1, Lcom/adjust/sdk/BackoffStrategy;->minRetries:I

    sub-int v0, p0, v0

    .line 477
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    iget-wide v2, p1, Lcom/adjust/sdk/BackoffStrategy;->milliSecondMultiplier:J

    mul-long/2addr v0, v2

    .line 479
    iget-wide v2, p1, Lcom/adjust/sdk/BackoffStrategy;->maxWait:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 481
    iget-wide v2, p1, Lcom/adjust/sdk/BackoffStrategy;->minRange:D

    iget-wide v4, p1, Lcom/adjust/sdk/BackoffStrategy;->maxRange:D

    invoke-static {v2, v3, v4, v5}, Lcom/adjust/sdk/Util;->randomInRange(DD)D

    move-result-wide v2

    .line 483
    long-to-double v0, v0

    mul-double/2addr v0, v2

    .line 484
    double-to-long v0, v0

    goto :goto_0
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 439
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 440
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 441
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 442
    invoke-static {v1}, Lcom/adjust/sdk/Util;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    .line 443
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hashBoolean(Ljava/lang/Boolean;)I
    .locals 1

    .prologue
    .line 389
    if-nez p0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashEnum(Ljava/lang/Enum;)I
    .locals 1

    .prologue
    .line 410
    if-nez p0, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashLong(Ljava/lang/Long;)I
    .locals 1

    .prologue
    .line 396
    if-nez p0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashObject(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 417
    if-nez p0, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 420
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashString(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 496
    if-nez p0, :cond_0

    .line 497
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "%s parameter %s is missing"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    :goto_0
    return v0

    .line 500
    :cond_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "%s parameter %s is empty"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 505
    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    if-nez p0, :cond_0

    .line 529
    :goto_0
    return-object p1

    .line 514
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 515
    goto :goto_0

    .line 517
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 518
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v3

    .line 519
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 520
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 521
    if-eqz v1, :cond_2

    .line 522
    const-string v5, "Key %s with value %s from %s parameter was replaced by value %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 523
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object p2, v6, v1

    const/4 v1, 0x3

    .line 526
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v1

    .line 522
    invoke-interface {v3, v5, v6}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object p1, v2

    .line 529
    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    if-nez p0, :cond_1

    .line 71
    const/4 p0, 0x0

    .line 80
    :cond_0
    :goto_0
    return-object p0

    .line 74
    :cond_1
    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static randomInRange(DD)D
    .locals 4

    .prologue
    .line 488
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 489
    sub-double v2, p2, p0

    .line 490
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 491
    add-double/2addr v0, p0

    .line 492
    return-wide v0
.end method

.method public static readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    .line 329
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 332
    :goto_0
    return p2

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 338
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 341
    :goto_0
    return p2

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J
    .locals 6

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 350
    :goto_0
    return-wide p2

    .line 348
    :catch_0
    move-exception v0

    .line 349
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 240
    .line 243
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v2

    .line 246
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 249
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 253
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c

    move-result-object v0

    .line 254
    :try_start_4
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v3, "Read %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 268
    :goto_0
    if-eqz v2, :cond_0

    .line 269
    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 275
    :cond_0
    :goto_1
    return-object v0

    .line 255
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 256
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v3

    const-string v4, "Failed to find %s class (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 262
    :catch_1
    move-exception v1

    move-object v1, v2

    .line 263
    :goto_3
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "%s file not found"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    .line 266
    goto :goto_0

    .line 257
    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 258
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v3

    const-string v4, "Failed to cast %s object (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 264
    :catch_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 265
    :goto_5
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v3

    const-string v4, "Failed to open %s file for reading (%s)"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p2, v5, v7

    aput-object v0, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 259
    :catch_4
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 260
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v3

    const-string v4, "Failed to read %s object (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 271
    :catch_5
    move-exception v1

    .line 272
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "Failed to close %s file for reading (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p2, v4, v7

    aput-object v1, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 264
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_5

    .line 262
    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_a
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :catch_b
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_3

    :catch_c
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_3

    .line 259
    :catch_d
    move-exception v1

    goto :goto_6

    .line 257
    :catch_e
    move-exception v1

    goto :goto_4

    .line 255
    :catch_f
    move-exception v1

    goto/16 :goto_2
.end method

.method public static readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInputStream$GetField;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 320
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 323
    :goto_0
    return-object p2

    .line 321
    :catch_0
    move-exception v0

    .line 322
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Unable to read \'%s\' field in migration device with message (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static runInBackground(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 89
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Lawg;

    invoke-direct {v0}, Lawg;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 99
    invoke-virtual {v0, v1}, Lawg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/adjust/sdk/Util;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tryAddToStringList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 172
    if-nez p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 279
    const/4 v1, 0x0

    .line 281
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 284
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 291
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 293
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v2, "Wrote %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/NotSerializableException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    :goto_0
    if-eqz v1, :cond_0

    .line 302
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 307
    :cond_0
    :goto_1
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    :try_start_4
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v2, "Failed to serialize %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 297
    :catch_1
    move-exception v0

    .line 298
    :goto_2
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    const-string v3, "Failed to open %s for writing (%s)"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p3, v4, v5

    aput-object v0, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 304
    :catch_2
    move-exception v0

    .line 305
    invoke-static {}, Lcom/adjust/sdk/Util;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Failed to close %s file for writing (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p3, v3, v5

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 297
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
