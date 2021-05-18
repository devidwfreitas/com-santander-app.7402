.class final Lcom/ca/org/acra/collector/SettingsCollector;
.super Ljava/lang/Object;
.source "SettingsCollector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v3, "result":Ljava/lang/StringBuilder;
    const-class v5, Landroid/provider/Settings$Secure;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 81
    .local v2, "keys":[Ljava/lang/reflect/Field;
    array-length v7, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v2, v6

    .line 82
    .local v1, "key":Ljava/lang/reflect/Field;
    const-class v5, Ljava/lang/Deprecated;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v8, Ljava/lang/String;

    if-ne v5, v8, :cond_0

    invoke-static {v1}, Lcom/ca/org/acra/collector/SettingsCollector;->isAuthorized(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error : "

    invoke-static {v5, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 90
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error : "

    invoke-static {v5, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 96
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "key":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v3, "result":Ljava/lang/StringBuilder;
    const-class v5, Landroid/provider/Settings$System;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 49
    .local v2, "keys":[Ljava/lang/reflect/Field;
    array-length v7, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v2, v6

    .line 53
    .local v1, "key":Ljava/lang/reflect/Field;
    const-class v5, Ljava/lang/Deprecated;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v8, Ljava/lang/String;

    if-ne v5, v8, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error : "

    invoke-static {v5, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 61
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error : "

    invoke-static {v5, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 67
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "key":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static isAuthorized(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/reflect/Field;

    .prologue
    .line 100
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI_AP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
