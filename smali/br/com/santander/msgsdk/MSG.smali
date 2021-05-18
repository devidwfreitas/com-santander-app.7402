.class public interface abstract Lbr/com/santander/msgsdk/MSG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/request/RequestProvider;


# static fields
.field public static final MSG_NOTI_DEL:Ljava/lang/String; = "msg_noti_del"

.field public static final MSG_NOTI_ID:Ljava/lang/String; = "msg_noti_id"

.field public static final MSG_NOTI_INTENT_EXTRA:Ljava/lang/String; = "msg_noti_intent_extra"

.field public static final MSG_NOTI_INTENT_TYPE:Ljava/lang/String; = "msg_noti_intent_type"

.field public static final MSG_NOTI_STIMULUM_ID:Ljava/lang/String; = "msg_noti_stimulum_id"

.field public static final MSG_PUSH_ID:Ljava/lang/String; = "msg_push_id"

.field public static final MSG_PUSH_UUID:Ljava/lang/String; = "msg_push_uuid"


# virtual methods
.method public abstract areNotificationsEnabled()Z
.end method

.method public abstract fromBundle(Landroid/os/Bundle;)Lbr/com/santander/msgsdk/domain/NotificationData;
.end method

.method public abstract fromIntent(Landroid/content/Intent;)Lbr/com/santander/msgsdk/domain/NotificationData;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHubConnector()Lie;
.end method

.method public abstract getToolbarColor()I
.end method

.method public abstract getTracking()Lbr/com/santander/msgsdk/Tracking;
.end method

.method public abstract getUnreadNotificationsNumber(Landroid/content/Context;)I
.end method

.method public abstract init(Landroid/content/Context;Lie;Ljava/lang/String;Z)V
.end method

.method public abstract init(Landroid/content/Context;Lie;Ljava/lang/String;ZZ)V
.end method

.method public abstract initConfigPanel(Landroid/app/Activity;)V
.end method

.method public abstract initNotifications(Landroid/app/Activity;)V
.end method

.method public abstract initOffline(Landroid/content/Context;Lie;Z)V
.end method

.method public abstract isPlayServiceSuccess()Z
.end method

.method public abstract offlineMessagesArch(Lbr/com/santander/msgsdk/MSGSDK$CallbackOfflineMessage;)V
.end method

.method public abstract requestConfigPanel(Ljava/lang/String;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;)V
.end method

.method public abstract requestConfigPanelUpdate(Ljava/lang/String;Lbr/com/santander/msgsdk/configPanel/model/Category;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;)V
.end method

.method public abstract requestNotifications(Ljava/lang/String;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;)V
.end method

.method public abstract requestUpdateStatusReadOrDelete(Ljava/lang/String;Ljava/lang/String;ZZLbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;)V
.end method

.method public abstract saveUserPreferences()V
.end method

.method public abstract sendNotification(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V
.end method

.method public abstract setAuthentication(Lbr/com/santander/msgsdk/Authentication;)V
.end method

.method public abstract setConnectorEnvironment(Lbr/com/santander/msgsdk/request/ConnectorEnvironment;)V
.end method

.method public abstract setHubConnector(Lie;)V
.end method

.method public abstract setIdProvider(Lbr/com/santander/msgsdk/IdProvider;)V
.end method

.method public abstract setInternalNotificationListener(Lbr/com/santander/msgsdk/MSGSDK$InternalNotificationListener;)V
.end method

.method public abstract setToolbarColor(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
.end method

.method public abstract setTracking(Lbr/com/santander/msgsdk/Tracking;)V
.end method

.method public abstract showPlayServiceError(Landroid/app/Activity;)V
.end method

.method public abstract subscribeArch(Lbr/com/santander/msgsdk/MSGSDK$Callback;)V
.end method

.method public abstract unsubscribeArch(Lbr/com/santander/msgsdk/MSGSDK$Callback;)V
.end method

.method public abstract updateStatusArch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;)V
.end method
