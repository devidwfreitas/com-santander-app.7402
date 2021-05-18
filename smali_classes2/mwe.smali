.class public final Lmwe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0xfe8

.field private static final b:Ljava/lang/String; = "DrawOverlaySettingPrefs"

.field private static final c:Ljava/lang/String; = "DrawOverlaySettingPrefs_Active"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    const/16 v1, 0xfe8

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 67
    const/16 v0, 0xfe8

    if-ne p1, v0, :cond_1

    .line 68
    invoke-static {}, Lmwe;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-static {p0}, Lmwe;->c(Landroid/content/Context;)V

    .line 75
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 76
    invoke-static {}, Lgpu;->a()V

    .line 79
    :cond_1
    return-void

    .line 72
    :cond_2
    invoke-static {p0}, Lmwe;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lmwe;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmwe;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0}, Lmwe;->d(Landroid/content/Context;)V

    .line 63
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 82
    invoke-static {p0}, Lmwe;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DrawOverlaySettingPrefs_Active"

    const/4 v2, 0x1

    .line 84
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 89
    invoke-static {p0}, Lmwe;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DrawOverlaySettingPrefs_Active"

    const/4 v2, 0x0

    .line 91
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    return-void
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 96
    invoke-static {p0}, Lmwe;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DrawOverlaySettingPrefs_Active"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static f(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 100
    const-string v0, "DrawOverlaySettingPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
