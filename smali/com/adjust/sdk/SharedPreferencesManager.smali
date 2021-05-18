.class public Lcom/adjust/sdk/SharedPreferencesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INDEX_CLICK_TIME:I = 0x1

.field private static final INDEX_IS_SENDING:I = 0x2

.field private static final INDEX_RAW_REFERRER:I = 0x0

.field private static final PREFS_KEY_INSTALL_TRACKED:Ljava/lang/String; = "install_tracked"

.field private static final PREFS_KEY_PUSH_TOKEN:Ljava/lang/String; = "push_token"

.field private static final PREFS_KEY_RAW_REFERRERS:Ljava/lang/String; = "raw_referrers"

.field private static final PREFS_NAME:Ljava/lang/String; = "adjust_preferences"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "adjust_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/SharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 64
    return-void
.end method

.method private declared-synchronized getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/SharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .line 323
    :goto_0
    monitor-exit p0

    return p2

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized getRawReferrerIndex(Ljava/lang/String;J)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 208
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerArray()Lorg/json/JSONArray;

    move-result-object v1

    .line 210
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 211
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 213
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 218
    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 227
    :goto_1
    monitor-exit p0

    return v0

    .line 224
    :catch_0
    move-exception v0

    .line 227
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/SharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 308
    :goto_0
    monitor-exit p0

    return-object v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/SharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveBoolean(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/SharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/SharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/SharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstallTracked()Z
    .locals 2

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    const-string v0, "install_tracked"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPushToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    const-string v0, "push_token"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRawReferrer(Ljava/lang/String;J)Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerIndex(Ljava/lang/String;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 148
    if-ltz v0, :cond_0

    .line 150
    :try_start_1
    invoke-virtual {p0}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 154
    :goto_0
    monitor-exit p0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRawReferrerArray()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    const-string v0, "raw_referrers"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    monitor-exit p0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 172
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removePushToken()V
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    const-string v0, "push_token"

    invoke-direct {p0, v0}, Lcom/adjust/sdk/SharedPreferencesManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRawReferrer(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 109
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerIndex(Ljava/lang/String;J)I

    move-result v1

    .line 115
    if-ltz v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerArray()Lorg/json/JSONArray;

    move-result-object v2

    .line 122
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 124
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ge v0, v4, :cond_3

    .line 125
    if-ne v0, v1, :cond_2

    .line 124
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_2
    :try_start_2
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 131
    :catch_0
    move-exception v4

    goto :goto_2

    .line 136
    :cond_3
    :try_start_3
    const-string v0, "raw_referrers"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized savePushToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    const-string v0, "push_token"

    invoke-direct {p0, v0, p1}, Lcom/adjust/sdk/SharedPreferencesManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveRawReferrer(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrer(Ljava/lang/String;J)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 84
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 86
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 87
    invoke-virtual {p0, v0}, Lcom/adjust/sdk/SharedPreferencesManager;->saveRawReferrerArray(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveRawReferrerArray(Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    const-string v0, "raw_referrers"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInstallTracked()V
    .locals 2

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    const-string v0, "install_tracked"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;->saveBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSendingReferrersAsNotSent()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 182
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerArray()Lorg/json/JSONArray;

    move-result-object v3

    move v2, v0

    .line 184
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 185
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 186
    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->optInt(II)I

    move-result v5

    .line 187
    if-ne v5, v1, :cond_0

    .line 188
    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    move v0, v1

    .line 184
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_1
    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p0, v3}, Lcom/adjust/sdk/SharedPreferencesManager;->saveRawReferrerArray(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_1
.end method
