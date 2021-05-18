.class public Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;
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

.method public static clearBadgeNumber(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/util/Preferences;->setUnreadNotifications(Landroid/content/Context;I)V

    .line 55
    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->sendBroadcastMSG(Landroid/content/Context;I)V

    .line 56
    return-void
.end method

.method public static countUnreadNotification(Landroid/content/Context;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 23
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 26
    goto :goto_0

    :cond_0
    move v0, v1

    .line 29
    :cond_1
    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/util/Preferences;->setUnreadNotifications(Landroid/content/Context;I)V

    .line 30
    const-string v1, "UnreadMessagesUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->sendBroadcastMSG(Landroid/content/Context;I)V

    .line 32
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static getUnreadNotificationsNumber(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lbr/com/santander/msgsdk/util/Preferences;->getUnreadNotifications(Landroid/content/Context;)I

    move-result v0

    .line 49
    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->sendBroadcastMSG(Landroid/content/Context;I)V

    .line 50
    return v0
.end method

.method public static sendBroadcastMSG(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v1, "badgeNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "br.com.santander.msgsdk.NOTIFICATIONS_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public static setReadNotification(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lbr/com/santander/msgsdk/util/Preferences;->getUnreadNotifications(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 43
    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/util/Preferences;->setUnreadNotifications(Landroid/content/Context;I)V

    .line 44
    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->sendBroadcastMSG(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method public static setUnreadNotification(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lbr/com/santander/msgsdk/util/Preferences;->getUnreadNotifications(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 37
    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/util/Preferences;->setUnreadNotifications(Landroid/content/Context;I)V

    .line 38
    invoke-static {p0, v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->sendBroadcastMSG(Landroid/content/Context;I)V

    .line 39
    return-void
.end method
