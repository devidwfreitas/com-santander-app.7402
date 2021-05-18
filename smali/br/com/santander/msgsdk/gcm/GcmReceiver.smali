.class public Lbr/com/santander/msgsdk/gcm/GcmReceiver;
.super Lcom/google/android/gms/gcm/GcmReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 20
    new-instance v1, Lbr/com/santander/msgsdk/domain/NotificationData;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lbr/com/santander/msgsdk/domain/NotificationData;-><init>(Landroid/os/Bundle;)V

    .line 21
    const-string v0, "GcmReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: Bundle --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/MSGSDK;

    check-cast v0, Lbr/com/santander/msgsdk/MSGSDK;

    invoke-virtual {v0, p1, v1}, Lbr/com/santander/msgsdk/MSGSDK;->updateStatusReceived(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V

    .line 23
    invoke-static {p1}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->setUnreadNotification(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->getUnreadNotificationsNumber(Landroid/content/Context;)I

    move-result v0

    .line 25
    invoke-static {p1, v0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->sendBroadcastMSG(Landroid/content/Context;I)V

    .line 26
    return-void
.end method
