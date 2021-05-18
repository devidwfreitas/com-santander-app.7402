.class public Lbr/com/santander/msgsdk/gcm/GcmService;
.super Lcyw;
.source "SourceFile"


# instance fields
.field public lastPushId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcyw;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 20
    new-instance v1, Lbr/com/santander/msgsdk/domain/NotificationData;

    invoke-direct {v1, p2}, Lbr/com/santander/msgsdk/domain/NotificationData;-><init>(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Lbr/com/santander/msgsdk/gcm/GcmService;->lastPushId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/gcm/GcmService;->lastPushId:Ljava/lang/String;

    invoke-virtual {v1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getPushId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {v1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getPushId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/gcm/GcmService;->lastPushId:Ljava/lang/String;

    .line 26
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/MSGSDK;

    .line 28
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/MSGSDK;->getInternalNotificationListener()Lbr/com/santander/msgsdk/MSGSDK$InternalNotificationListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/gcm/GcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lbr/com/santander/msgsdk/MSGSDK;->updateStatusReceived(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V

    .line 30
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/MSGSDK;->getInternalNotificationListener()Lbr/com/santander/msgsdk/MSGSDK$InternalNotificationListener;

    move-result-object v0

    .line 31
    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/MSGSDK$InternalNotificationListener;->onNotificationReceived(Lbr/com/santander/msgsdk/domain/NotificationData;)V

    .line 37
    :goto_1
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/gcm/GcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->setUnreadNotification(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/gcm/GcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->getUnreadNotificationsNumber(Landroid/content/Context;)I

    move-result v0

    .line 39
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/gcm/GcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->sendBroadcastMSG(Landroid/content/Context;I)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, p0, v1}, Lbr/com/santander/msgsdk/MSGSDK;->sendNotification(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V

    .line 34
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/gcm/GcmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lbr/com/santander/msgsdk/MSGSDK;->updateStatusReceived(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V

    goto :goto_1
.end method
