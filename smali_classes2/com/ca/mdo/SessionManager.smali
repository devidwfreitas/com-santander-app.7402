.class Lcom/ca/mdo/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final CRASHED:Ljava/lang/String;

.field private static final EVENT_ID:Ljava/lang/String;

.field private static final LAST_SESSION_END_TIME:Ljava/lang/String;

.field public static final LAST_SESSION_ID:Ljava/lang/String;

.field private static final LAST_SESSION_TIME:Ljava/lang/String;

.field private static final SESSION_START_TIME:Ljava/lang/String;

.field private static mInstance:Lcom/ca/mdo/SessionManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field protected mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mIsCrashed:Z

.field protected mIsSessionOpen:Z

.field private mPref:Landroid/content/SharedPreferences;

.field protected mSessionID:Ljava/lang/String;

.field public persistenceManager:Lcom/ca/mdo/PersistenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/mdo/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sessionStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/SessionManager;->SESSION_START_TIME:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/mdo/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/SessionManager;->LAST_SESSION_TIME:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/mdo/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastSessionEnd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/SessionManager;->LAST_SESSION_END_TIME:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/mdo/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lastSessionID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/SessionManager;->LAST_SESSION_ID:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/mdo/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".crashed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/SessionManager;->CRASHED:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ca/mdo/Constants;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".eventID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ca/mdo/SessionManager;->EVENT_ID:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/ca/mdo/SessionManager;->mInstance:Lcom/ca/mdo/SessionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/ca/mdo/SessionManager;->mIsSessionOpen:Z

    .line 34
    iput-boolean v0, p0, Lcom/ca/mdo/SessionManager;->mIsCrashed:Z

    .line 50
    invoke-virtual {p0, p1}, Lcom/ca/mdo/SessionManager;->initialize(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ca/mdo/SessionManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/ca/mdo/SessionManager;->mInstance:Lcom/ca/mdo/SessionManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/ca/mdo/SessionManager;

    invoke-direct {v0, p0}, Lcom/ca/mdo/SessionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ca/mdo/SessionManager;->mInstance:Lcom/ca/mdo/SessionManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/ca/mdo/SessionManager;->mInstance:Lcom/ca/mdo/SessionManager;

    return-object v0
.end method


# virtual methods
.method public endSession()V
    .locals 18

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/ca/mdo/SessionManager;->getLastSessionTime()J

    move-result-wide v11

    .line 115
    .local v11, "lastSessionTime":J
    const-wide/16 v1, -0x1

    cmp-long v1, v11, v1

    if-nez v1, :cond_0

    .line 142
    .end local v11    # "lastSessionTime":J
    :goto_0
    return-void

    .line 121
    .restart local v11    # "lastSessionTime":J
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v7, "sessionEndEventObject":Lorg/json/JSONObject;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v7, v1, v2, v3}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lastloggedevent"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 124
    .local v16, "lastLoggedEvent":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ca/mdo/SessionManager;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const-string v2, "session_end"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v4, v4, v16

    :goto_1
    const-string v6, "app_events"

    invoke-virtual/range {v1 .. v7}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 126
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------- Session END event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 129
    :cond_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v10, "headerObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getLocation()Landroid/location/Location;

    move-result-object v14

    .line 131
    .local v14, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const/4 v13, 0x2

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v14}, Lcom/ca/mdo/SessionManager;->setHeader(Ljava/lang/String;Lorg/json/JSONObject;JILandroid/location/Location;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ca/mdo/SessionManager;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "hdr"

    invoke-virtual {v1, v2, v10, v3, v4}, Lcom/ca/mdo/PersistenceManager;->mergeEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ca/mdo/SessionManager;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "evt"

    invoke-virtual {v1, v2, v7, v3, v4}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->removeCustomEventsForSession(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 136
    .end local v7    # "sessionEndEventObject":Lorg/json/JSONObject;
    .end local v10    # "headerObject":Lorg/json/JSONObject;
    .end local v11    # "lastSessionTime":J
    .end local v14    # "loc":Landroid/location/Location;
    .end local v16    # "lastLoggedEvent":J
    :catch_0
    move-exception v15

    .line 137
    .local v15, "e":Lorg/json/JSONException;
    invoke-virtual {v15}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    .end local v15    # "e":Lorg/json/JSONException;
    .restart local v7    # "sessionEndEventObject":Lorg/json/JSONObject;
    .restart local v11    # "lastSessionTime":J
    .restart local v16    # "lastLoggedEvent":J
    :cond_2
    const-wide/16 v4, 0x1

    add-long/2addr v4, v11

    goto :goto_1

    .line 139
    .end local v7    # "sessionEndEventObject":Lorg/json/JSONObject;
    .end local v11    # "lastSessionTime":J
    .end local v16    # "lastLoggedEvent":J
    :catch_1
    move-exception v15

    .line 140
    .local v15, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public generateSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLastSessionID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mPref:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ca/mdo/SessionManager;->LAST_SESSION_ID:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSessionTime()J
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mPref:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ca/mdo/SessionManager;->LAST_SESSION_TIME:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getNewEventID()I
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/ca/mdo/SessionManager;->mPref:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/ca/mdo/SessionManager;->EVENT_ID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 246
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    const v1, 0x7ffffffe

    if-lt v0, v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/ca/mdo/SessionManager;->resetEventID()J

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 250
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/ca/mdo/SessionManager;->EVENT_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    return v0
.end method

.method protected getPresentEventID()I
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mPref:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ca/mdo/SessionManager;->EVENT_ID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSessionStartTime()J
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mPref:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ca/mdo/SessionManager;->SESSION_START_TIME:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 59
    iput-object p1, p0, Lcom/ca/mdo/SessionManager;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mdo/SessionManager;->mPref:Landroid/content/SharedPreferences;

    .line 61
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mdo/SessionManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-virtual {p0}, Lcom/ca/mdo/SessionManager;->getLastSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/ca/mdo/SessionManager;->isCrashed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ca/mdo/SessionManager;->mIsCrashed:Z

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getPersistenceManager()Lcom/ca/mdo/PersistenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mdo/SessionManager;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    .line 66
    return-void
.end method

.method protected isCrashed()Z
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mPref:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ca/mdo/SessionManager;->CRASHED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSessionOpen()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/ca/mdo/SessionManager;->mIsSessionOpen:Z

    return v0
.end method

.method protected putCurrentSessionID(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/ca/mdo/SessionManager;->LAST_SESSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    return-void
.end method

.method protected putLastSessionTime(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/ca/mdo/SessionManager;->LAST_SESSION_TIME:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method

.method public putSessionStartTime(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/ca/mdo/SessionManager;->SESSION_START_TIME:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void
.end method

.method public reOpenSession()V
    .locals 8

    .prologue
    .line 150
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reopening Session with ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 151
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v2, "headerJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getLocation()Landroid/location/Location;

    move-result-object v6

    .line 153
    .local v6, "loc":Landroid/location/Location;
    iget-object v1, p0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/16 v5, 0x17

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ca/mdo/SessionManager;->setHeader(Ljava/lang/String;Lorg/json/JSONObject;JILandroid/location/Location;)V

    .line 154
    sget-object v0, Lcom/ca/mdo/CAMobileDevOps;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    iget-object v1, p0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    const/16 v3, 0x17

    const-string v4, "hdr"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ca/mdo/PersistenceManager;->mergeEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/ca/mdo/SessionManager;->getLastSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v2    # "headerJSON":Lorg/json/JSONObject;
    .end local v6    # "loc":Landroid/location/Location;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v7

    .line 157
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportSessionCrashAsCustomerFeedback(J)V
    .locals 6
    .param p1, "lastSessionTime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/ca/mdo/SessionManager;->getSessionStartTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ca/mdo/SessionManager;->getLastSessionID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

    invoke-virtual {p0}, Lcom/ca/mdo/SessionManager;->getSessionStartTime()J

    move-result-wide v1

    .line 164
    invoke-virtual {p0}, Lcom/ca/mdo/SessionManager;->getLastSessionID()Ljava/lang/String;

    move-result-object v5

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;-><init>(JJLjava/lang/String;)V

    sput-object v0, Lcom/ca/mdo/CAMobileDevOps;->customerFeedback:Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

    .line 166
    :cond_0
    sget-boolean v0, Lcom/ca/mdo/CAMobileDevOps;->mRegisteredFeedback:Z

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->invokeCustomerReceiver()V

    .line 168
    :cond_1
    return-void
.end method

.method protected resetEventID()J
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 270
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/ca/mdo/SessionManager;->EVENT_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected setCrashed(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/ca/mdo/SessionManager;->mIsCrashed:Z

    .line 236
    iget-object v0, p0, Lcom/ca/mdo/SessionManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/ca/mdo/SessionManager;->CRASHED:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    return-void
.end method

.method public setHeader(Ljava/lang/String;Lorg/json/JSONObject;JILandroid/location/Location;)V
    .locals 10
    .param p1, "sessionID"    # Ljava/lang/String;
    .param p2, "header"    # Lorg/json/JSONObject;
    .param p3, "sessionEndTime"    # J
    .param p5, "eventType"    # I
    .param p6, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 285
    sget-boolean v6, Lcom/ca/mdo/CAMobileDevOps;->configRead:Z

    if-nez v6, :cond_0

    .line 286
    invoke-static {}, Lcom/ca/mdo/SDK;->getApp()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/mdo/CAMobileDevOps;->reloadConfig(Landroid/app/Application;)Ljava/util/Map;

    .line 289
    :cond_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getmAppDeviceData()Lcom/ca/mdo/AppDeviceData;

    move-result-object v2

    .line 290
    .local v2, "mAppDeviceData":Lcom/ca/mdo/AppDeviceData;
    invoke-virtual {p0}, Lcom/ca/mdo/SessionManager;->getSessionStartTime()J

    move-result-wide v4

    .line 291
    .local v4, "sessionStartTime":J
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 292
    .local v0, "deviceDetailsArray":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 293
    .local v1, "deviceDetailsObject":Lorg/json/JSONObject;
    const-string v6, "ak"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    if-eqz v2, :cond_2

    .line 295
    const-string v6, "an"

    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->getApplicationName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v6, "di"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v6, "dt"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDeviceIdType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v6, "pf"

    const-string v7, "Android"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v6, "pv"

    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v6, "vn"

    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->getManufactorer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v6, "dm"

    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v6, "av"

    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isInPrivateZone()Z

    move-result v6

    if-nez v6, :cond_1

    .line 304
    const-string v6, "ip"

    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->getIpAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    :cond_1
    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->setNetworkDetails()V

    .line 308
    :cond_2
    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Lcom/ca/mdo/AppDeviceData;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "networkOperator":Ljava/lang/String;
    :goto_0
    const-string v6, "ai"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v6, "ti"

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getTenantID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    sget-object v6, Lcom/ca/mdo/CAMobileDevOps;->mCustomerId:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 313
    const-string v6, "cid"

    sget-object v7, Lcom/ca/mdo/CAMobileDevOps;->mCustomerId:Ljava/lang/String;

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    :cond_3
    const-string v6, "sc_w"

    iget-object v7, p0, Lcom/ca/mdo/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/ca/mdo/Util;->getScreenResolution(Landroid/content/Context;)Lcom/ca/mdo/Util$ScreenDeviceSize;

    move-result-object v7

    iget-object v7, v7, Lcom/ca/mdo/Util$ScreenDeviceSize;->screenSizeWidth:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v6, "sc_h"

    iget-object v7, p0, Lcom/ca/mdo/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/ca/mdo/Util;->getScreenResolution(Landroid/content/Context;)Lcom/ca/mdo/Util$ScreenDeviceSize;

    move-result-object v7

    iget-object v7, v7, Lcom/ca/mdo/Util$ScreenDeviceSize;->screenSizeHeight:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 319
    const-string v6, "dv"

    invoke-virtual {p2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    if-eqz p6, :cond_4

    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isInPrivateZone()Z

    move-result v6

    if-nez v6, :cond_4

    .line 321
    const-string v6, "la"

    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 322
    const-string v6, "lo"

    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 324
    :cond_4
    const-string v6, "ca"

    invoke-virtual {p2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    sget-boolean v6, Lcom/ca/mdo/CAMobileDevOps;->mCustomerFeedback:Z

    if-eqz v6, :cond_9

    .line 326
    const/4 v6, 0x0

    sput-boolean v6, Lcom/ca/mdo/CAMobileDevOps;->mCustomerFeedback:Z

    .line 328
    sget-object v6, Lcom/ca/mdo/CAMobileDevOps;->customerFeedback:Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/ca/mdo/CAMobileDevOps;->customerFeedback:Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

    iget-object v6, v6, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionIdentifier:Ljava/lang/String;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/ca/mdo/CAMobileDevOps;->customerFeedback:Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

    iget-wide v6, v6, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionStart:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    sget-object v6, Lcom/ca/mdo/CAMobileDevOps;->customerFeedback:Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

    iget-wide v6, v6, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionEnd:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 329
    const-string v6, "si"

    sget-object v7, Lcom/ca/mdo/CAMobileDevOps;->customerFeedback:Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

    iget-object v7, v7, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionIdentifier:Ljava/lang/String;

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v6, "ss"

    sget-object v7, Lcom/ca/mdo/CAMobileDevOps;->customerFeedback:Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

    iget-wide v7, v7, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionStart:J

    invoke-virtual {p2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 331
    const-string v6, "se"

    sget-object v7, Lcom/ca/mdo/CAMobileDevOps;->customerFeedback:Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;

    iget-wide v7, v7, Lcom/ca/mdo/CAMobileDevOps$CustomerFeedback;->sessionEnd:J

    invoke-virtual {p2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 339
    :cond_5
    :goto_1
    const-string v6, "ln"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    sget-boolean v6, Lcom/ca/mdo/CAMobileDevOps;->mIsCustomerLocation:Z

    if-eqz v6, :cond_6

    .line 341
    const-string v6, "zp"

    sget-object v7, Lcom/ca/mdo/CAMobileDevOps;->mZipCode:Ljava/lang/String;

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v6, "cc"

    sget-object v7, Lcom/ca/mdo/CAMobileDevOps;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    :cond_6
    const-string v6, "cpt"

    invoke-virtual {p2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 346
    const-string v6, "attr"

    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->getCustomEventsForSession(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 349
    const-string v6, "ckv"

    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ca/mdo/MDOSecurityManager;->getPublicEncryptionKeyVersion()J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 351
    :cond_7
    return-void

    .line 308
    .end local v3    # "networkOperator":Ljava/lang/String;
    :cond_8
    const-string v3, ""

    goto/16 :goto_0

    .line 335
    .restart local v3    # "networkOperator":Ljava/lang/String;
    :cond_9
    const-string v6, "si"

    invoke-virtual {p2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v6, "ss"

    invoke-virtual {p2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 337
    const-string v6, "se"

    invoke-virtual {p2, v6, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1
.end method

.method public startSession(J)V
    .locals 22
    .param p1, "startTime"    # J

    .prologue
    .line 71
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ca/mdo/SessionManager;->generateSessionId()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mdo/MDOSecurityManager;->replaceSecurityKeyWithNewKey()V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/ca/mdo/SessionManager;->resetEventID()J

    .line 77
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ca/mdo/SessionManager;->putCurrentSessionID(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p0 .. p2}, Lcom/ca/mdo/SessionManager;->putSessionStartTime(J)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New Session created with ID:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/ca/mdo/SessionManager;->getSessionStartTime()J

    move-result-wide v18

    .line 81
    .local v18, "sessionStartTime":J
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v4, "headerObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getLocation()Landroid/location/Location;

    move-result-object v8

    .line 83
    .local v8, "loc":Landroid/location/Location;
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/ca/mdo/SessionManager;->setHeader(Ljava/lang/String;Lorg/json/JSONObject;JILandroid/location/Location;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/SessionManager;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const/4 v5, 0x1

    const-string v6, "hdr"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 85
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v15, "sessionStartEventObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v15, v2, v5, v6}, Lcom/ca/mdo/CAMobileDevOps;->setScreenNames(Lorg/json/JSONObject;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ca/mdo/SessionManager;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const-string v10, "session_start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    const-wide/16 v5, 0x1

    add-long v20, p1, v5

    .end local p1    # "startTime":J
    .local v20, "startTime":J
    :try_start_1
    const-string v14, "app_events"

    move-wide/from16 v12, p1

    invoke-virtual/range {v9 .. v15}, Lcom/ca/mdo/PersistenceManager;->buildEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v15

    .line 88
    const-string v2, "attr"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 89
    .local v16, "attrObj":Lorg/json/JSONObject;
    if-eqz v16, :cond_0

    .line 90
    const-string v2, "pid"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getPid()I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ca/mdo/SessionManager;->persistenceManager:Lcom/ca/mdo/PersistenceManager;

    const/4 v5, 0x1

    const-string v6, "evt"

    invoke-virtual {v2, v3, v15, v5, v6}, Lcom/ca/mdo/PersistenceManager;->persistEvent(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----------  event: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 96
    :cond_1
    const-string v2, ""

    sput-object v2, Lcom/ca/mdo/CAMobileDevOps;->csn:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ca/mdo/SessionManager;->mSessionID:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "lastloggedevent"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/ca/mdo/SessionManager;->putLastSessionTime(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 p1, v20

    .line 103
    .end local v3    # "sessionId":Ljava/lang/String;
    .end local v4    # "headerObject":Lorg/json/JSONObject;
    .end local v8    # "loc":Landroid/location/Location;
    .end local v15    # "sessionStartEventObject":Lorg/json/JSONObject;
    .end local v16    # "attrObj":Lorg/json/JSONObject;
    .end local v18    # "sessionStartTime":J
    .end local v20    # "startTime":J
    .restart local p1    # "startTime":J
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v17

    .line 101
    .local v17, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v17    # "e":Lorg/json/JSONException;
    .end local p1    # "startTime":J
    .restart local v3    # "sessionId":Ljava/lang/String;
    .restart local v4    # "headerObject":Lorg/json/JSONObject;
    .restart local v8    # "loc":Landroid/location/Location;
    .restart local v15    # "sessionStartEventObject":Lorg/json/JSONObject;
    .restart local v18    # "sessionStartTime":J
    .restart local v20    # "startTime":J
    :catch_1
    move-exception v17

    move-wide/from16 p1, v20

    .end local v20    # "startTime":J
    .restart local p1    # "startTime":J
    goto :goto_1
.end method
