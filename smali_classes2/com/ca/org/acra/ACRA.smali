.class public Lcom/ca/org/acra/ACRA;
.super Ljava/lang/Object;
.source "ACRA.java"


# static fields
.field public static final DEFAULT_MAIL_REPORT_FIELDS:[Lcom/ca/org/acra/ReportField;

.field public static final DEFAULT_REPORT_FIELDS:[Lcom/ca/org/acra/ReportField;

.field public static final DEV_LOGGING:Z = false

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final PREF_ALWAYS_ACCEPT:Ljava/lang/String; = "acra.alwaysaccept"

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field public static final PREF_ENABLE_DEVICE_ID:Ljava/lang/String; = "acra.deviceid.enable"

.field public static final PREF_ENABLE_SYSTEM_LOGS:Ljava/lang/String; = "acra.syslog.enable"

.field public static final PREF_LAST_VERSION_NR:Ljava/lang/String; = "acra.lastVersionNr"

.field public static final PREF_USER_EMAIL_ADDRESS:Ljava/lang/String; = "acra.user.email"

.field private static configProxy:Lcom/ca/org/acra/ACRAConfiguration;

.field private static errorReporterSingleton:Lcom/ca/org/acra/ErrorReporter;

.field public static log:Lcom/ca/org/acra/log/ACRALog;

.field private static mApplication:Landroid/app/Application;

.field private static mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static mReportsCrashes:Lcom/ca/org/acra/annotation/ReportsCrashes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const-class v0, Lcom/ca/org/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/ca/org/acra/log/AndroidLogDelegate;

    invoke-direct {v0}, Lcom/ca/org/acra/log/AndroidLogDelegate;-><init>()V

    sput-object v0, Lcom/ca/org/acra/ACRA;->log:Lcom/ca/org/acra/log/ACRALog;

    .line 308
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ca/org/acra/ReportField;

    sget-object v1, Lcom/ca/org/acra/ReportField;->USER_COMMENT:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ca/org/acra/ReportField;->ANDROID_VERSION:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ca/org/acra/ReportField;->APP_VERSION_NAME:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ca/org/acra/ReportField;->BRAND:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ca/org/acra/ReportField;->PHONE_MODEL:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ca/org/acra/ReportField;->CUSTOM_DATA:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ca/org/acra/ReportField;->STACK_TRACE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ca/org/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lcom/ca/org/acra/ReportField;

    .line 317
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/ca/org/acra/ReportField;

    sget-object v1, Lcom/ca/org/acra/ReportField;->REPORT_ID:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ca/org/acra/ReportField;->APP_VERSION_CODE:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ca/org/acra/ReportField;->APP_VERSION_NAME:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ca/org/acra/ReportField;->PACKAGE_NAME:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ca/org/acra/ReportField;->FILE_PATH:Lcom/ca/org/acra/ReportField;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ca/org/acra/ReportField;->PHONE_MODEL:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ca/org/acra/ReportField;->BRAND:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ca/org/acra/ReportField;->PRODUCT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ca/org/acra/ReportField;->ANDROID_VERSION:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ca/org/acra/ReportField;->BUILD:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ca/org/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ca/org/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ca/org/acra/ReportField;->CUSTOM_DATA:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ca/org/acra/ReportField;->IS_SILENT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ca/org/acra/ReportField;->STACK_TRACE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ca/org/acra/ReportField;->INITIAL_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ca/org/acra/ReportField;->CRASH_CONFIGURATION:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ca/org/acra/ReportField;->DISPLAY:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ca/org/acra/ReportField;->USER_COMMENT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ca/org/acra/ReportField;->USER_EMAIL:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/ca/org/acra/ReportField;->USER_APP_START_DATE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/ca/org/acra/ReportField;->USER_CRASH_DATE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/ca/org/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/ca/org/acra/ReportField;->LOGCAT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/ca/org/acra/ReportField;->INSTALLATION_ID:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/ca/org/acra/ReportField;->DEVICE_FEATURES:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/ca/org/acra/ReportField;->ENVIRONMENT:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/ca/org/acra/ReportField;->SHARED_PREFERENCES:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/ca/org/acra/ReportField;->SETTINGS_SYSTEM:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/ca/org/acra/ReportField;->SETTINGS_SECURE:Lcom/ca/org/acra/ReportField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ca/org/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lcom/ca/org/acra/ReportField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/SharedPreferences;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/SharedPreferences;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/ca/org/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method

.method static checkCrashResources()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/org/acra/ACRAConfigurationException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    .line 220
    .local v0, "conf":Lcom/ca/org/acra/annotation/ReportsCrashes;
    sget-object v1, Lcom/ca/org/acra/ACRA$2;->$SwitchMap$com$ca$org$acra$ReportingInteractionMode:[I

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->mode()Lcom/ca/org/acra/ReportingInteractionMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/org/acra/ReportingInteractionMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 243
    :cond_0
    return-void

    .line 222
    :pswitch_0
    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v1

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/ca/org/acra/ACRAConfigurationException;

    const-string v2, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v1, v2}, Lcom/ca/org/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :pswitch_1
    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v1

    if-nez v1, :cond_0

    .line 230
    :cond_1
    new-instance v1, Lcom/ca/org/acra/ACRAConfigurationException;

    const-string v2, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText, resDialogText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {v1, v2}, Lcom/ca/org/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :pswitch_2
    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v1

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Lcom/ca/org/acra/ACRAConfigurationException;

    const-string v2, "DIALOG mode: you have to define at least the resDialogText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {v1, v2}, Lcom/ca/org/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 255
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    .line 256
    .local v0, "conf":Lcom/ca/org/acra/annotation/ReportsCrashes;
    const-string v1, ""

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    sget-object v1, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/ca/org/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0
.end method

.method static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getConfig()Lcom/ca/org/acra/ACRAConfiguration;
    .locals 3

    .prologue
    .line 269
    sget-object v0, Lcom/ca/org/acra/ACRA;->configProxy:Lcom/ca/org/acra/ACRAConfiguration;

    if-nez v0, :cond_1

    .line 270
    sget-object v0, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lcom/ca/org/acra/ACRA;->log:Lcom/ca/org/acra/log/ACRALog;

    sget-object v1, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Calling ACRA.getConfig() before ACRA.init() gives you an empty configuration instance. You might prefer calling ACRA.getNewDefaultConfig(Application) to get an instance with default values taken from a @ReportsCrashes annotation."

    invoke-interface {v0, v1, v2}, Lcom/ca/org/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    sget-object v0, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/ca/org/acra/ACRA;->getNewDefaultConfig(Landroid/app/Application;)Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v0

    sput-object v0, Lcom/ca/org/acra/ACRA;->configProxy:Lcom/ca/org/acra/ACRAConfiguration;

    .line 276
    :cond_1
    sget-object v0, Lcom/ca/org/acra/ACRA;->configProxy:Lcom/ca/org/acra/ACRAConfiguration;

    return-object v0
.end method

.method public static getErrorReporter()Lcom/ca/org/acra/ErrorReporter;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/ca/org/acra/ACRA;->errorReporterSingleton:Lcom/ca/org/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access ErrorReporter before ACRA#init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    sget-object v0, Lcom/ca/org/acra/ACRA;->errorReporterSingleton:Lcom/ca/org/acra/ErrorReporter;

    return-object v0
.end method

.method public static getNewDefaultConfig(Landroid/app/Application;)Lcom/ca/org/acra/ACRAConfiguration;
    .locals 3
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 294
    if-eqz p0, :cond_0

    .line 295
    new-instance v1, Lcom/ca/org/acra/ACRAConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/ca/org/acra/annotation/ReportsCrashes;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ca/org/acra/annotation/ReportsCrashes;

    invoke-direct {v1, v0}, Lcom/ca/org/acra/ACRAConfiguration;-><init>(Lcom/ca/org/acra/annotation/ReportsCrashes;)V

    move-object v0, v1

    .line 297
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ca/org/acra/ACRAConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ca/org/acra/ACRAConfiguration;-><init>(Lcom/ca/org/acra/annotation/ReportsCrashes;)V

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 8
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 120
    sget-object v4, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    if-eqz v4, :cond_0

    .line 124
    :cond_0
    sput-object p0, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    .line 135
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 138
    .local v3, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {}, Lcom/ca/org/acra/ACRA;->checkCrashResources()V

    .line 140
    sget-object v4, Lcom/ca/org/acra/ACRA;->log:Lcom/ca/org/acra/log/ACRALog;

    sget-object v5, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACRA is enabled for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", intializing..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/ca/org/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v3}, Lcom/ca/org/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 144
    .local v1, "enableAcra":Z
    :goto_0
    new-instance v2, Lcom/ca/org/acra/ErrorReporter;

    sget-object v4, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3, v1}, Lcom/ca/org/acra/ErrorReporter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 148
    .local v2, "errorReporter":Lcom/ca/org/acra/ErrorReporter;
    invoke-virtual {v2}, Lcom/ca/org/acra/ErrorReporter;->setDefaultReportSenders()V

    .line 150
    sput-object v2, Lcom/ca/org/acra/ACRA;->errorReporterSingleton:Lcom/ca/org/acra/ErrorReporter;
    :try_end_0
    .catch Lcom/ca/org/acra/ACRAConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "enableAcra":Z
    .end local v2    # "errorReporter":Lcom/ca/org/acra/ErrorReporter;
    :goto_1
    new-instance v4, Lcom/ca/org/acra/ACRA$1;

    invoke-direct {v4}, Lcom/ca/org/acra/ACRA$1;-><init>()V

    sput-object v4, Lcom/ca/org/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 173
    sget-object v4, Lcom/ca/org/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 174
    return-void

    .line 143
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lcom/ca/org/acra/ACRAConfigurationException;
    sget-object v4, Lcom/ca/org/acra/ACRA;->log:Lcom/ca/org/acra/log/ACRALog;

    sget-object v5, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error : "

    invoke-interface {v4, v5, v6, v0}, Lcom/ca/org/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static isDebuggable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 331
    sget-object v3, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 333
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v3, Lcom/ca/org/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 335
    :cond_0
    :goto_0
    return v2

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static setConfig(Lcom/ca/org/acra/ACRAConfiguration;)V
    .locals 0
    .param p0, "conf"    # Lcom/ca/org/acra/ACRAConfiguration;

    .prologue
    .line 286
    sput-object p0, Lcom/ca/org/acra/ACRA;->configProxy:Lcom/ca/org/acra/ACRAConfiguration;

    .line 287
    return-void
.end method

.method public static setLog(Lcom/ca/org/acra/log/ACRALog;)V
    .locals 0
    .param p0, "log"    # Lcom/ca/org/acra/log/ACRALog;

    .prologue
    .line 344
    sput-object p0, Lcom/ca/org/acra/ACRA;->log:Lcom/ca/org/acra/log/ACRALog;

    .line 345
    return-void
.end method

.method private static shouldDisableACRA(Landroid/content/SharedPreferences;)Z
    .locals 5
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x1

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "disableAcra":Z
    :try_start_0
    const-string v3, "acra.enable"

    const/4 v4, 0x1

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 205
    .local v1, "enableAcra":Z
    const-string v3, "acra.disable"

    if-nez v1, :cond_0

    :goto_0
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 209
    .end local v1    # "enableAcra":Z
    :goto_1
    return v0

    .line 205
    .restart local v1    # "enableAcra":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 206
    .end local v1    # "enableAcra":Z
    :catch_0
    move-exception v2

    goto :goto_1
.end method
