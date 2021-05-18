.class public Lef;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)I
    .locals 1

    .prologue
    .line 271
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "android.hardware.telephony.gsm"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 24
    const-string v1, "android_id"

    .line 23
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    const-string v0, ""

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "android.hardware.telephony.cdma"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    .line 44
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v0, ""

    .line 60
    :goto_0
    return-object v0

    .line 50
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    const-string v0, ""

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const-string v0, ""

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "android.hardware.telephony"

    return-object v0
.end method

.method static c(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 67
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    :try_start_0
    const-string v0, "a"

    invoke-static {p0}, Lef;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v0, "b"

    invoke-static {p0}, Lef;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v0, "c"

    invoke-static {p0}, Lef;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "android.hardware.camera.external"

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, ""

    .line 91
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 93
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :goto_0
    if-nez v0, :cond_0

    .line 102
    const-string v0, ""

    .line 106
    :cond_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const-string v0, ""

    goto :goto_0
.end method

.method private static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-string v0, "android.hardware.fingerprint"

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 112
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 114
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    const-string v2, "a"

    invoke-static {}, Lef;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v2, "b"

    invoke-static {}, Lef;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v2, "c"

    invoke-static {}, Lef;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v2, "d"

    invoke-static {}, Lef;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 162
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 164
    const-string v4, "a"

    invoke-static {}, Lef;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    const-string v4, "b"

    invoke-static {}, Lef;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    const-string v4, "c"

    invoke-static {}, Lef;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    const-string v4, "d"

    invoke-static {}, Lef;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    const-string v4, "b"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 173
    const-string v4, "a"

    invoke-static {}, Lef;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v4, "b"

    invoke-static {}, Lef;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    const-string v4, "c"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 179
    const-string v4, "a"

    invoke-static {}, Lef;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v4, "b"

    invoke-static {}, Lef;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    const-string v4, "c"

    invoke-static {}, Lef;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v4, "d"

    invoke-static {}, Lef;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string v4, "d"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 187
    const-string v4, "a"

    invoke-static {}, Lef;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v4, "b"

    invoke-static {}, Lef;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lef;->a(Z)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v4, "c"

    invoke-static {}, Lef;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lef;->a(Z)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    const-string v2, "e"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 194
    const-string v2, "a"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "android.hardware.camera.front"

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string v0, "android.hardware.camera.flash"

    return-object v0
.end method

.method private static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "android.hardware.camera.capability.manual_sensor"

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "android.hardware.camera.capability.manual_post_processing"

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string v0, "android.hardware.camera.autofocus"

    return-object v0
.end method

.method private static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "android.hardware.camera"

    return-object v0
.end method

.method private static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const-string v0, "android.hardware.bluetooth_le"

    return-object v0
.end method

.method private static m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string v0, "android.hardware.bluetooth"

    return-object v0
.end method

.method private static n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method private static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private static p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private static q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method
