.class public Lfey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x10

.field private static final b:Ljava/lang/String; = "ApplicationKey"

.field private static final c:Ljava/lang/String; = "rsa_application_key_prefs"

.field private static final d:Ljava/lang/String; = "com.rsa.mobilesdk.app_key"

.field private static final e:Ljava/lang/String; = "INVALID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    const-class v1, Lfey;

    monitor-enter v1

    const/4 v0, 0x0

    .line 54
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    invoke-static {p0}, Lfey;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-static {p0}, Lfey;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {p0, v0}, Lfey;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    const-string v0, "rsa_application_key_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 110
    const-string v0, "ApplicationKey"

    const-string v1, "unexpected error in storeApplicationKey, can\'t get shared preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    const-string v1, "com.rsa.mobilesdk.app_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    const-string v0, "rsa_application_key_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 76
    const-string v0, "ApplicationKey"

    const-string v1, "unexpected error in getStoredApplicationKey, can\'t get shared preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v0, "INVALID"

    .line 80
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-string v1, "com.rsa.mobilesdk.app_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    const-string v0, ""

    .line 91
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 92
    invoke-static {v0}, Lfgf;->b([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v0, "ApplicationKey"

    const-string v1, "unexpected error in getStoredApplicationKey, can\'t generate key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v0, "INVALID"

    .line 99
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-static {v0}, Lfgf;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
