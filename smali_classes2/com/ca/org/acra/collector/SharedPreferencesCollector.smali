.class final Lcom/ca/org/acra/collector/SharedPreferencesCollector;
.super Ljava/lang/Object;
.source "SharedPreferencesCollector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collect(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v4, "result":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 51
    .local v6, "shrdPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/SharedPreferences;>;"
    const-string v8, "default"

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ca/org/acra/ACRAConfiguration;->additionalSharedPreferences()[Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "shrdPrefsIds":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 54
    array-length v10, v7

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v5, v7, v8

    .line 55
    .local v5, "shrdPrefId":Ljava/lang/String;
    invoke-virtual {p0, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v6, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 59
    .end local v5    # "shrdPrefId":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    .local v3, "prefsId":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 62
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_5

    .line 63
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 64
    .local v1, "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 65
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/ca/org/acra/collector/SharedPreferencesCollector;->filteredKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 67
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "null\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 75
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    const-string v9, "empty\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .end local v1    # "kv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_4
    :goto_3
    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 78
    :cond_5
    const-string v9, "null\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 83
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "prefsId":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static filteredKey(Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ca/org/acra/ACRAConfiguration;->excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 96
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 98
    .end local v0    # "regex":Ljava/lang/String;
    :cond_0
    return v1
.end method
