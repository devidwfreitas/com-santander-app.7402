.class public Lcom/adjust/sdk/Reflection;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/adjust/sdk/Reflection;->createDefaultInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    return-object v0
.end method

.method public static varargs createInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 195
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v1, "getAdvertisingIdInfo"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    :try_start_0
    const-string v0, "com.adjust.sdk.plugin.AndroidIdUtil"

    const-string v1, "getAndroidId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    :try_start_0
    const-string v0, "android.os.Build"

    const-string v2, "CPU_ABI"

    invoke-static {v0, v2}, Lcom/adjust/sdk/Reflection;->readField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getImei(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 95
    :try_start_0
    const-string v0, "getImei"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 97
    goto :goto_0
.end method

.method public static getImei(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 104
    :try_start_0
    const-string v0, "getImei"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLocaleFromField(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 3

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 188
    :try_start_0
    const-string v0, "android.content.res.Configuration"

    const-string v2, "locale"

    invoke-static {v0, v2, p0}, Lcom/adjust/sdk/Reflection;->readField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getLocaleFromLocaleList(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 173
    .line 175
    :try_start_0
    const-string v0, "getLocales"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-object v1

    .line 179
    :cond_0
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 182
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    :try_start_0
    const-string v0, "com.adjust.sdk.plugin.MacAddressUtil"

    const-string v1, "getMacAddress"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMeid(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 114
    :try_start_0
    const-string v0, "getMeid"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 116
    goto :goto_0
.end method

.method public static getMeid(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    :try_start_0
    const-string v0, "getMeid"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPlayAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    const-string v2, "getId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 49
    goto :goto_0
.end method

.method public static getPluginKeys(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
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
    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 276
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/plugin/Plugin;

    .line 277
    invoke-interface {v0, p0}, Lcom/adjust/sdk/plugin/Plugin;->getParameter(Landroid/content/Context;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static getPlugins()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/plugin/Plugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/adjust/sdk/Constants;->PLUGINS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    sget-object v0, Lcom/adjust/sdk/Constants;->PLUGINS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    invoke-static {v0}, Lcom/adjust/sdk/Reflection;->createDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/adjust/sdk/plugin/Plugin;

    if-eqz v3, :cond_0

    .line 296
    check-cast v0, Lcom/adjust/sdk/plugin/Plugin;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_1
    return-object v1
.end method

.method public static getSupportedAbis()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    :try_start_0
    const-string v0, "android.os.Build"

    const-string v2, "SUPPORTED_ABIS"

    invoke-static {v0, v2}, Lcom/adjust/sdk/Reflection;->readField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getTelephonyId(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 133
    :try_start_0
    const-string v0, "getDeviceId"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 135
    goto :goto_0
.end method

.method public static getTelephonyId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    :try_start_0
    const-string v0, "getDeviceId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVMRuntimeObject()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 24
    :try_start_0
    const-string v1, "dalvik.system.VMRuntime"

    const-string v2, "getRuntime"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getVmInstructionSet()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/adjust/sdk/Reflection;->getVMRuntimeObject()Ljava/lang/Object;

    move-result-object v0

    .line 34
    const-string v2, "vmInstructionSet"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 37
    goto :goto_0
.end method

.method public static varargs invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 240
    invoke-static {v0, p1, p0, p2, p3}, Lcom/adjust/sdk/Reflection;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-virtual {v0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 231
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 233
    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2, p3}, Lcom/adjust/sdk/Reflection;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    const-string v3, "isLimitAdTrackingEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v5}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 59
    if-nez v0, :cond_0

    move-object v0, v1

    .line 63
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 63
    goto :goto_0
.end method

.method public static readField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/adjust/sdk/Reflection;->readField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-static {p0}, Lcom/adjust/sdk/Reflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 263
    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-object v0

    .line 266
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
