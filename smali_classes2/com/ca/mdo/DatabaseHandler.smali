.class Lcom/ca/mdo/DatabaseHandler;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"


# static fields
.field public static isDBFull:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ca/mdo/DatabaseHandler;->isDBFull:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sput-object p1, Lcom/ca/mdo/DatabaseHandler;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/ca/mdo/SDK;->isDBFull()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ca/mdo/DatabaseHandler;->isDBFull:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    return-void
.end method


# virtual methods
.method public mergeEvent(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "event"    # Lorg/json/JSONObject;

    .prologue
    .line 80
    sget-object v6, Lcom/ca/mdo/DatabaseHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/ca/mdo/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/ca/mdo/DatabaseHelper;

    move-result-object v0

    .line 84
    .local v0, "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    :try_start_0
    const-string v6, "session_json_type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "db_json_type":Ljava/lang/String;
    const-string v6, "session_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "db_json_session_id":Ljava/lang/String;
    const-string v6, "session_json"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    .local v1, "db_json":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Lcom/ca/mdo/MDOSecurityManager;->encrypt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "encryptedEvent":Ljava/lang/String;
    invoke-virtual {v0, v2, v5, v3}, Lcom/ca/mdo/DatabaseHelper;->updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v1    # "db_json":Lorg/json/JSONObject;
    .end local v2    # "db_json_session_id":Ljava/lang/String;
    .end local v3    # "db_json_type":Ljava/lang/String;
    .end local v5    # "encryptedEvent":Ljava/lang/String;
    :goto_0
    return-void

    .line 91
    .restart local v1    # "db_json":Lorg/json/JSONObject;
    .restart local v2    # "db_json_session_id":Ljava/lang/String;
    .restart local v3    # "db_json_type":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v3}, Lcom/ca/mdo/DatabaseHelper;->updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "db_json":Lorg/json/JSONObject;
    .end local v2    # "db_json_session_id":Ljava/lang/String;
    .end local v3    # "db_json_type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 94
    .local v4, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public persistEvents(Lorg/json/JSONObject;IZ)V
    .locals 12
    .param p1, "event"    # Lorg/json/JSONObject;
    .param p2, "eventType"    # I
    .param p3, "processRules"    # Z

    .prologue
    .line 30
    sget-object v8, Lcom/ca/mdo/DatabaseHandler;->isDBFull:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PersistedEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getDataManager()Lcom/ca/mdo/DataManager;

    move-result-object v0

    .line 38
    .local v0, "dataManager":Lcom/ca/mdo/DataManager;
    sget-object v8, Lcom/ca/mdo/DatabaseHandler;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/ca/mdo/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/ca/mdo/DatabaseHelper;

    move-result-object v1

    .line 39
    .local v1, "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    const/4 v4, 0x0

    .line 40
    .local v4, "db_json_type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 43
    .local v3, "db_json_session_id":Ljava/lang/String;
    const-string v8, "session_json_type"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    const-string v8, "session_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string v8, "session_json"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 46
    .local v2, "db_json":Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    const-string v8, "evt"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    .line 47
    .local v7, "isJsonEvtType":Z
    :goto_1
    if-eqz v7, :cond_2

    if-eqz p3, :cond_2

    const/4 v8, 0x2

    if-eq p2, v8, :cond_2

    .line 52
    invoke-virtual {v0}, Lcom/ca/mdo/DataManager;->processRules()V

    .line 54
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "eventString":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 57
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v8

    invoke-virtual {v8, v2, v4}, Lcom/ca/mdo/MDOSecurityManager;->encrypt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    :cond_3
    invoke-virtual {v1, v3, v6, v4, p2}, Lcom/ca/mdo/DatabaseHelper;->persistEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "lastloggedevent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    if-eqz v7, :cond_0

    if-eqz p3, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/ca/mdo/DataManager;->increment()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v0    # "dataManager":Lcom/ca/mdo/DataManager;
    .end local v1    # "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    .end local v2    # "db_json":Lorg/json/JSONObject;
    .end local v3    # "db_json_session_id":Ljava/lang/String;
    .end local v4    # "db_json_type":Ljava/lang/String;
    .end local v6    # "eventString":Ljava/lang/String;
    .end local v7    # "isJsonEvtType":Z
    :catch_0
    move-exception v5

    .line 68
    .local v5, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 46
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v0    # "dataManager":Lcom/ca/mdo/DataManager;
    .restart local v1    # "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    .restart local v2    # "db_json":Lorg/json/JSONObject;
    .restart local v3    # "db_json_session_id":Ljava/lang/String;
    .restart local v4    # "db_json_type":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public updateEvent(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "event"    # Lorg/json/JSONObject;

    .prologue
    .line 104
    sget-object v6, Lcom/ca/mdo/DatabaseHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/ca/mdo/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/ca/mdo/DatabaseHelper;

    move-result-object v0

    .line 108
    .local v0, "dbHelper":Lcom/ca/mdo/DatabaseHelper;
    :try_start_0
    const-string v3, "hdr"

    .line 109
    .local v3, "db_json_type":Ljava/lang/String;
    const-string v6, "si"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "db_json_session_id":Ljava/lang/String;
    move-object v1, p1

    .line 111
    .local v1, "db_json":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ca/mdo/MDOSecurityManager;->isSecureMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    invoke-static {}, Lcom/ca/mdo/MDOSecurityManager;->getInstance()Lcom/ca/mdo/MDOSecurityManager;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Lcom/ca/mdo/MDOSecurityManager;->encrypt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "encryptedEvent":Ljava/lang/String;
    invoke-virtual {v0, v2, v5, v3}, Lcom/ca/mdo/DatabaseHelper;->updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v1    # "db_json":Lorg/json/JSONObject;
    .end local v2    # "db_json_session_id":Ljava/lang/String;
    .end local v3    # "db_json_type":Ljava/lang/String;
    .end local v5    # "encryptedEvent":Ljava/lang/String;
    :goto_0
    return-void

    .line 116
    .restart local v1    # "db_json":Lorg/json/JSONObject;
    .restart local v2    # "db_json_session_id":Ljava/lang/String;
    .restart local v3    # "db_json_type":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v3}, Lcom/ca/mdo/DatabaseHelper;->updateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "db_json":Lorg/json/JSONObject;
    .end local v2    # "db_json_session_id":Ljava/lang/String;
    .end local v3    # "db_json_type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
