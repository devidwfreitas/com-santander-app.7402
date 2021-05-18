.class final Lcom/ca/org/acra/collector/DeviceFeaturesCollector;
.super Ljava/lang/Object;
.source "DeviceFeaturesCollector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatures(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 36
    invoke-static {}, Lcom/ca/org/acra/collector/Compatibility;->getAPILevel()I

    move-result v10

    const/4 v12, 0x5

    if-ge v10, v12, :cond_0

    .line 37
    const-string v10, "Data available only with API Level >= 5"

    .line 63
    :goto_0
    return-object v10

    .line 40
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v9, "result":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 43
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-class v12, Landroid/content/pm/PackageManager;

    const-string v13, "getSystemAvailableFeatures"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 44
    .local v6, "getSystemAvailableFeatures":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 45
    .local v4, "features":[Ljava/lang/Object;
    array-length v12, v4

    :goto_1
    if-ge v11, v12, :cond_2

    aget-object v2, v4, v11

    .line 46
    .local v2, "feature":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v13, "name"

    invoke-virtual {v10, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    .local v3, "featureName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_2
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getGlEsVersion"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 51
    .local v5, "getGlEsVersion":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 52
    .local v7, "glEsVersion":Ljava/lang/String;
    const-string v10, "glEsVersion = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 57
    .end local v2    # "feature":Ljava/lang/Object;
    .end local v3    # "featureName":Ljava/lang/String;
    .end local v4    # "features":[Ljava/lang/Object;
    .end local v5    # "getGlEsVersion":Ljava/lang/reflect/Method;
    .end local v6    # "getSystemAvailableFeatures":Ljava/lang/reflect/Method;
    .end local v7    # "glEsVersion":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v10, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t retrieve DeviceFeatures for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const-string v10, "Could not retrieve data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method
