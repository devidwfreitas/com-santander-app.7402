.class public Lcom/ca/mdo/SDK;
.super Ljava/lang/Object;
.source "SDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mdo/SDK$SharedPreferenceChangeListener;
    }
.end annotation


# static fields
.field private static application:Landroid/app/Application;

.field private static currentAgent:Lcom/ca/android/app/AnalyticsAgent;

.field private static dummyAgent:Lcom/ca/android/app/AnalyticsAgent;

.field public static firstLaunch:Z

.field public static isSDKEnabledByPolicy:Z

.field private static isSDKInitialized:Z

.field public static isSslMode:Z

.field private static perfChangeListener:Lcom/ca/mdo/SDK$SharedPreferenceChangeListener;

.field private static realAgent:Lcom/ca/android/app/AnalyticsAgent;

.field private static sdkEnabledByApi:Ljava/lang/String;

.field private static swappingInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 16
    sput-object v2, Lcom/ca/mdo/SDK;->realAgent:Lcom/ca/android/app/AnalyticsAgent;

    .line 17
    sput-object v2, Lcom/ca/mdo/SDK;->dummyAgent:Lcom/ca/android/app/AnalyticsAgent;

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/SDK;->isSDKEnabledByPolicy:Z

    .line 20
    sput-boolean v1, Lcom/ca/mdo/SDK;->swappingInProgress:Z

    .line 22
    sput-object v2, Lcom/ca/mdo/SDK;->sdkEnabledByApi:Ljava/lang/String;

    .line 23
    sput-object v2, Lcom/ca/mdo/SDK;->currentAgent:Lcom/ca/android/app/AnalyticsAgent;

    .line 24
    sput-boolean v1, Lcom/ca/mdo/SDK;->firstLaunch:Z

    .line 28
    sput-boolean v1, Lcom/ca/mdo/SDK;->isSDKInitialized:Z

    .line 29
    sput-boolean v1, Lcom/ca/mdo/SDK;->isSslMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ca/mdo/SDK;->sdkEnabledByApi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    sput-object p0, Lcom/ca/mdo/SDK;->sdkEnabledByApi:Ljava/lang/String;

    return-object p0
.end method

.method private static changeDBFullPref(Z)V
    .locals 4
    .param p0, "newVal"    # Z

    .prologue
    .line 155
    invoke-static {}, Lcom/ca/mdo/SDK;->isDBFull()Z

    move-result v0

    .line 156
    .local v0, "prevVal":Z
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/ca/mdo/Constants;->PREF_IS_DB_FULL:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    if-eq v0, p0, :cond_0

    .line 158
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getSessionManager()Lcom/ca/mdo/SessionManager;

    move-result-object v1

    .line 159
    .local v1, "sessionManager":Lcom/ca/mdo/SessionManager;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 161
    sget-object v2, Lcom/ca/mdo/DatabaseHandler;->isDBFull:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ca/mdo/SessionManager;->startSession(J)V

    .line 172
    .end local v1    # "sessionManager":Lcom/ca/mdo/SessionManager;
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v1    # "sessionManager":Lcom/ca/mdo/SessionManager;
    :cond_1
    invoke-virtual {v1}, Lcom/ca/mdo/SessionManager;->endSession()V

    .line 168
    sget-object v2, Lcom/ca/mdo/DatabaseHandler;->isDBFull:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method private static checkSDKPolicy(Landroid/app/Application;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/ca/mdo/ConfigManager;->readConfigurationFromPlistFile(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/ca/mdo/ConfigManager;->getConfig()Ljava/util/Map;

    move-result-object v0

    .line 55
    .local v0, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "profileURL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/ca/mdo/PolicyUtil;->mProfileUrl:Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/ca/mdo/SDK;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    .line 57
    return-void
.end method

.method public static disableSDKByAPI()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_IS_SDK_ENABLED_BY_API:Ljava/lang/String;

    const-string v2, "FALSE"

    .line 140
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public static enableSDKByAPI()V
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_IS_SDK_ENABLED_BY_API:Ljava/lang/String;

    const-string v2, "TRUE"

    .line 145
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void
.end method

.method public static getAgent()Lcom/ca/android/app/AnalyticsAgent;
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 70
    new-instance v0, Lcom/ca/mdo/DummyAgentImpl;

    sget-object v1, Lcom/ca/mdo/SDK;->application:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/ca/mdo/DummyAgentImpl;-><init>(Landroid/app/Application;)V

    .line 103
    .local v0, "agent":Lcom/ca/android/app/AnalyticsAgent;
    :cond_0
    :goto_0
    return-object v0

    .line 74
    .end local v0    # "agent":Lcom/ca/android/app/AnalyticsAgent;
    :cond_1
    sget-object v1, Lcom/ca/mdo/SDK;->sdkEnabledByApi:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 76
    sget-object v1, Lcom/ca/mdo/SDK;->sdkEnabledByApi:Ljava/lang/String;

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    sget-object v0, Lcom/ca/mdo/SDK;->realAgent:Lcom/ca/android/app/AnalyticsAgent;

    .line 90
    .restart local v0    # "agent":Lcom/ca/android/app/AnalyticsAgent;
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->init()V

    .line 93
    :cond_2
    sput-object v0, Lcom/ca/mdo/SDK;->currentAgent:Lcom/ca/android/app/AnalyticsAgent;

    .line 95
    if-nez v0, :cond_6

    .line 96
    new-instance v0, Lcom/ca/mdo/DummyAgentImpl;

    .end local v0    # "agent":Lcom/ca/android/app/AnalyticsAgent;
    sget-object v1, Lcom/ca/mdo/SDK;->application:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/ca/mdo/DummyAgentImpl;-><init>(Landroid/app/Application;)V

    goto :goto_0

    .line 79
    :cond_3
    sget-object v0, Lcom/ca/mdo/SDK;->dummyAgent:Lcom/ca/android/app/AnalyticsAgent;

    .restart local v0    # "agent":Lcom/ca/android/app/AnalyticsAgent;
    goto :goto_1

    .line 83
    .end local v0    # "agent":Lcom/ca/android/app/AnalyticsAgent;
    :cond_4
    sget-boolean v1, Lcom/ca/mdo/SDK;->isSDKEnabledByPolicy:Z

    if-eqz v1, :cond_5

    .line 84
    sget-object v0, Lcom/ca/mdo/SDK;->realAgent:Lcom/ca/android/app/AnalyticsAgent;

    .restart local v0    # "agent":Lcom/ca/android/app/AnalyticsAgent;
    goto :goto_1

    .line 86
    .end local v0    # "agent":Lcom/ca/android/app/AnalyticsAgent;
    :cond_5
    sget-object v0, Lcom/ca/mdo/SDK;->dummyAgent:Lcom/ca/android/app/AnalyticsAgent;

    .restart local v0    # "agent":Lcom/ca/android/app/AnalyticsAgent;
    goto :goto_1

    .line 98
    :cond_6
    sget-boolean v1, Lcom/ca/mdo/SDK;->swappingInProgress:Z

    if-eqz v1, :cond_0

    .line 99
    const-class v2, Lcom/ca/mdo/SDK;

    monitor-enter v2

    .line 100
    :try_start_0
    monitor-exit v2

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 60
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 61
    new-instance v0, Lcom/ca/mdo/DummyAgentImpl;

    invoke-direct {v0, p0}, Lcom/ca/mdo/DummyAgentImpl;-><init>(Landroid/app/Application;)V

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-boolean v0, Lcom/ca/mdo/SDK;->isSDKInitialized:Z

    if-nez v0, :cond_1

    .line 64
    invoke-static {p0}, Lcom/ca/mdo/SDK;->initialize(Landroid/app/Application;)V

    .line 66
    :cond_1
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    goto :goto_0
.end method

.method public static getApp()Landroid/app/Application;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/ca/mdo/SDK;->application:Landroid/app/Application;

    return-object v0
.end method

.method public static getSDKEnabledByAPI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_IS_SDK_ENABLED_BY_API:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 4
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    const/4 v3, 0x1

    .line 38
    sput-boolean v3, Lcom/ca/mdo/SDK;->firstLaunch:Z

    .line 39
    new-instance v0, Lcom/ca/mdo/SDK$SharedPreferenceChangeListener;

    invoke-direct {v0}, Lcom/ca/mdo/SDK$SharedPreferenceChangeListener;-><init>()V

    sput-object v0, Lcom/ca/mdo/SDK;->perfChangeListener:Lcom/ca/mdo/SDK$SharedPreferenceChangeListener;

    .line 40
    sput-object p0, Lcom/ca/mdo/SDK;->application:Landroid/app/Application;

    .line 41
    new-instance v0, Lcom/ca/mdo/AnalyticsAgentImpl;

    sget-object v1, Lcom/ca/mdo/SDK;->application:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/ca/mdo/AnalyticsAgentImpl;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/ca/mdo/SDK;->realAgent:Lcom/ca/android/app/AnalyticsAgent;

    .line 42
    new-instance v0, Lcom/ca/mdo/DummyAgentImpl;

    sget-object v1, Lcom/ca/mdo/SDK;->application:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/ca/mdo/DummyAgentImpl;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/ca/mdo/SDK;->dummyAgent:Lcom/ca/android/app/AnalyticsAgent;

    .line 43
    sget-object v0, Lcom/ca/mdo/SDK;->application:Landroid/app/Application;

    invoke-static {v0}, Lcom/ca/mdo/PolicyManager;->getSDKEnabledFlagPrefVal(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/ca/mdo/SDK;->isSDKEnabledByPolicy:Z

    .line 44
    invoke-static {p0}, Lcom/ca/mdo/SDK;->checkSDKPolicy(Landroid/app/Application;)V

    .line 45
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/SDK;->perfChangeListener:Lcom/ca/mdo/SDK$SharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 46
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_IS_SDK_ENABLED_BY_API:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/SDK;->sdkEnabledByApi:Ljava/lang/String;

    .line 47
    sput-boolean v3, Lcom/ca/mdo/SDK;->isSDKInitialized:Z

    .line 48
    return-void
.end method

.method public static isDBFull()Z
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_IS_DB_FULL:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized onSDKDisabled()V
    .locals 3

    .prologue
    .line 129
    const-class v1, Lcom/ca/mdo/SDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ca/mdo/SDK;->currentAgent:Lcom/ca/android/app/AnalyticsAgent;

    sget-object v2, Lcom/ca/mdo/SDK;->dummyAgent:Lcom/ca/android/app/AnalyticsAgent;

    if-eq v0, v2, :cond_0

    .line 130
    const-string v0, "SDK_IS_DISABLED: NO data will be collected."

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ca/mdo/SDK;->isSDKEnabledByPolicy:Z

    .line 132
    sget-object v0, Lcom/ca/mdo/SDK;->realAgent:Lcom/ca/android/app/AnalyticsAgent;

    sget-object v2, Lcom/ca/mdo/SDK;->dummyAgent:Lcom/ca/android/app/AnalyticsAgent;

    invoke-static {v0, v2}, Lcom/ca/mdo/SDK;->toggle(Lcom/ca/android/app/AnalyticsAgent;Lcom/ca/android/app/AnalyticsAgent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit v1

    return-void

    .line 134
    :cond_0
    :try_start_1
    const-string v0, "SDK IS Already disabled "

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onSDKEnabled()V
    .locals 3

    .prologue
    .line 119
    const-class v1, Lcom/ca/mdo/SDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ca/mdo/SDK;->currentAgent:Lcom/ca/android/app/AnalyticsAgent;

    sget-object v2, Lcom/ca/mdo/SDK;->realAgent:Lcom/ca/android/app/AnalyticsAgent;

    if-eq v0, v2, :cond_0

    .line 120
    const-string v0, "SDK IS ENABLED: Now data will be collected."

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/SDK;->isSDKEnabledByPolicy:Z

    .line 122
    sget-object v0, Lcom/ca/mdo/SDK;->dummyAgent:Lcom/ca/android/app/AnalyticsAgent;

    sget-object v2, Lcom/ca/mdo/SDK;->realAgent:Lcom/ca/android/app/AnalyticsAgent;

    invoke-static {v0, v2}, Lcom/ca/mdo/SDK;->toggle(Lcom/ca/android/app/AnalyticsAgent;Lcom/ca/android/app/AnalyticsAgent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_0
    monitor-exit v1

    return-void

    .line 124
    :cond_0
    :try_start_1
    const-string v0, "SDK IS Already enabled "

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDBAvailable()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->changeDBFullPref(Z)V

    .line 175
    return-void
.end method

.method public static setDBFull()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ca/mdo/SDK;->changeDBFullPref(Z)V

    .line 153
    return-void
.end method

.method private static declared-synchronized toggle(Lcom/ca/android/app/AnalyticsAgent;Lcom/ca/android/app/AnalyticsAgent;)V
    .locals 2
    .param p0, "current"    # Lcom/ca/android/app/AnalyticsAgent;
    .param p1, "_new"    # Lcom/ca/android/app/AnalyticsAgent;

    .prologue
    .line 109
    const-class v1, Lcom/ca/mdo/SDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ca/mdo/SDK;->currentAgent:Lcom/ca/android/app/AnalyticsAgent;

    if-eq v0, p1, :cond_0

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/SDK;->swappingInProgress:Z

    .line 111
    invoke-interface {p0}, Lcom/ca/android/app/AnalyticsAgent;->pause()V

    .line 112
    invoke-interface {p1}, Lcom/ca/android/app/AnalyticsAgent;->resume()V

    .line 113
    sput-object p1, Lcom/ca/mdo/SDK;->currentAgent:Lcom/ca/android/app/AnalyticsAgent;

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ca/mdo/SDK;->swappingInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit v1

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
