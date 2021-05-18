.class public Lcy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcy;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcy;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    :try_start_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "google_sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Emulator"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Android SDK built for x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v2

    .line 60
    :goto_0
    if-eqz v3, :cond_1

    move v0, v1

    .line 110
    :goto_1
    return v0

    :cond_0
    move v3, v1

    .line 59
    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "generic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    or-int/2addr v0, v3

    .line 65
    if-eqz v0, :cond_3

    move v0, v1

    .line 66
    goto :goto_1

    :cond_2
    move v0, v2

    .line 64
    goto :goto_2

    .line 68
    :cond_3
    const-string v3, "google_sdk"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 69
    if-eqz v0, :cond_4

    move v0, v1

    .line 70
    goto :goto_1

    .line 73
    :cond_4
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 74
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 81
    :cond_5
    :try_start_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 82
    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 89
    :cond_6
    :try_start_2
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 90
    goto :goto_1

    .line 92
    :catch_2
    move-exception v0

    .line 97
    :cond_7
    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 98
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v3, "Android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 101
    goto :goto_1

    .line 106
    :catch_3
    move-exception v0

    :cond_8
    move v0, v2

    .line 110
    goto :goto_1
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 118
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 120
    if-eqz v2, :cond_1

    const-string v4, "test-keys"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v4, "/system/app/Superuser.apk"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v2

    if-nez v2, :cond_0

    .line 135
    :goto_1
    const/16 v2, 0x8

    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "/sbin/"

    aput-object v2, v5, v1

    const-string v2, "/system/bin/"

    aput-object v2, v5, v0

    const/4 v2, 0x2

    const-string v4, "/system/xbin/"

    aput-object v4, v5, v2

    const/4 v2, 0x3

    const-string v4, "/data/local/xbin/"

    aput-object v4, v5, v2

    const/4 v2, 0x4

    .line 136
    const-string v4, "/data/local/bin/"

    aput-object v4, v5, v2

    const/4 v2, 0x5

    const-string v4, "/system/sd/xbin/"

    aput-object v4, v5, v2

    const/4 v2, 0x6

    const-string v4, "/system/bin/failsafe/"

    aput-object v4, v5, v2

    const/4 v2, 0x7

    const-string v4, "/data/local/"

    aput-object v4, v5, v2

    .line 138
    const-string v4, "su"

    .line 140
    array-length v6, v5

    move v2, v1

    :goto_2
    if-lt v2, v6, :cond_4

    .line 149
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v4, "which ls"

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 150
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 151
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    .line 153
    if-eqz v4, :cond_b

    move v4, v0

    .line 160
    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_2
    move v2, v4

    .line 163
    :goto_4
    if-eqz v2, :cond_3

    .line 164
    const-string v6, "which su"

    .line 166
    array-length v7, v5

    move v4, v1

    :goto_5
    if-lt v4, v7, :cond_6

    :cond_3
    move v0, v1

    .line 187
    goto :goto_0

    .line 140
    :cond_4
    aget-object v7, v5, v2

    .line 141
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 157
    :catch_0
    move-exception v2

    move-object v2, v3

    .line 160
    :goto_6
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    move v2, v1

    goto :goto_4

    .line 159
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 160
    :goto_7
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 161
    :cond_5
    throw v0

    .line 166
    :cond_6
    aget-object v2, v5, v4

    .line 169
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 170
    :try_start_4
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 171
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v8

    .line 173
    if-eqz v8, :cond_9

    .line 180
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_0

    .line 177
    :catch_1
    move-exception v2

    move-object v2, v3

    .line 180
    :goto_8
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 166
    :cond_7
    :goto_9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    .line 179
    :catchall_1
    move-exception v0

    .line 180
    :goto_a
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 181
    :cond_8
    throw v0

    .line 180
    :cond_9
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_9

    .line 179
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_a

    .line 177
    :catch_2
    move-exception v8

    goto :goto_8

    .line 159
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 157
    :catch_3
    move-exception v4

    goto :goto_6

    .line 131
    :catch_4
    move-exception v2

    goto/16 :goto_1

    :cond_a
    move v2, v1

    goto/16 :goto_4

    :cond_b
    move v4, v1

    goto/16 :goto_3
.end method
