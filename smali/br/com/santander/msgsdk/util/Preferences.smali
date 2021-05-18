.class public Lbr/com/santander/msgsdk/util/Preferences;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearStatusToSend(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->STATUS_PREFERENCES:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method

.method public static clearUserRegistered(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->GCM_PREFERENCES:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    return-void
.end method

.method public static getStatusToSend(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->STATUS_PREFERENCES:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    sget-object v1, Lbr/com/santander/msgsdk/util/Constants;->STATUS_KEY:Ljava/lang/String;

    sget-object v2, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnreadNotifications(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->PREFERENCES_NOTIFICATIONS_UNREAD_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    sget-object v1, Lbr/com/santander/msgsdk/util/Constants;->PREFERENCES_NOTIFICATIONS_UNREAD_VALUE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserRegistered(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->GCM_PREFERENCES:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    sget-object v1, Lbr/com/santander/msgsdk/util/Constants;->GCM_VALUE_PREFERENCES:Ljava/lang/String;

    sget-object v2, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSubscribe(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->SUBSCRIBE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    sget-object v1, Lbr/com/santander/msgsdk/util/Constants;->SUBSCRIBE_VALUE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setStatusToSend(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->STATUS_PREFERENCES:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    sget-object v1, Lbr/com/santander/msgsdk/util/Constants;->STATUS_KEY:Ljava/lang/String;

    invoke-static {p0}, Lbr/com/santander/msgsdk/util/Preferences;->getStatusToSend(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    return-void
.end method

.method public static setSubscribe(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->SUBSCRIBE_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    sget-object v1, Lbr/com/santander/msgsdk/util/Constants;->SUBSCRIBE_VALUE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    return-void
.end method

.method public static setUnreadNotifications(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->PREFERENCES_NOTIFICATIONS_UNREAD_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    sget-object v1, Lbr/com/santander/msgsdk/util/Constants;->PREFERENCES_NOTIFICATIONS_UNREAD_VALUE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method

.method public static setUserRegisteredCloudMessaging(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->GCM_PREFERENCES:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 15
    sget-object v1, Lbr/com/santander/msgsdk/util/Constants;->GCM_VALUE_PREFERENCES:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    return-void
.end method
