.class Lbr/com/santander/msgsdk/Notification;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lbr/com/santander/msgsdk/Notification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/Notification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static getDefaultPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string v1, "msg_noti_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v1, "msg_push_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getDeleteNotificationIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v1, "msg_noti_del"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-string v1, "msg_noti_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v1, "msg_push_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "msg_push_uuid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getPendingIntent(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;Landroid/support/v4/app/NotificationCompat$Builder;I)Landroid/app/PendingIntent;
    .locals 10

    .prologue
    const/high16 v9, 0x8000000

    .line 67
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getMsgPushId()Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getMsgPushId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 82
    packed-switch v4, :pswitch_data_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "msg_noti_id"

    sget-object v2, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "msg_push_id"

    sget-object v2, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "msg_noti_intent_type"

    sget-object v2, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "msg_noti_stimulum_id"

    sget-object v2, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "msg_noti_intent_extra"

    sget-object v2, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "msg_push_uuid"

    sget-object v2, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-static {p0, p3, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    sget-object v1, Lbr/com/santander/msgsdk/Notification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lbr/com/santander/msgsdk/Notification;->getDefaultPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lbr/com/santander/msgsdk/Notification;->getDefaultPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v1, "msg_noti_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v1, "msg_push_id"

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getPushId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "msg_noti_intent_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v1, "msg_noti_stimulum_id"

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getStimulumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "msg_noti_intent_extra"

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getMsgPushValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "msg_push_uuid"

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-static {p0, p3, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getInterAcaoList()Ljava/util/List;

    move-result-object v5

    .line 115
    if-eqz v5, :cond_2

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 117
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/domain/InterAcao;

    .line 118
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v6, "msg_noti_id"

    invoke-virtual {v2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v6, "msg_push_id"

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getPushId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v6, "msg_noti_intent_type"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v6, "msg_noti_stimulum_id"

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getStimulumId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v6, "msg_noti_intent_extra"

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/domain/InterAcao;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v6, "msg_push_uuid"

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    add-int v6, p3, v1

    invoke-static {p0, v6, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 131
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Action;

    .line 132
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/domain/InterAcao;->getIcon()I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_1

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/domain/InterAcao;->getIcon()I

    move-result v2

    .line 133
    :goto_2
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/domain/InterAcao;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v2, v0, v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 131
    invoke-virtual {p2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 132
    :cond_1
    sget v2, Lbr/com/santander/msgsdk/R$drawable;->upx:I

    goto :goto_2

    :cond_2
    move-object v0, v3

    goto/16 :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sendNotification(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 32
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getPushId()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getUuid()Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 38
    const v1, 0x7fffffff

    sub-int v0, v1, v0

    .line 39
    if-lez v0, :cond_1

    move v1, v0

    .line 41
    :goto_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lbr/com/santander/msgsdk/R$drawable;->ic_notification:I

    .line 42
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget v6, Lbr/com/santander/msgsdk/R$color;->notification_color:I

    .line 43
    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 45
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-array v2, v8, [J

    fill-array-data v2, :array_0

    .line 46
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 48
    invoke-static {p0, v1, v4, v5}, Lbr/com/santander/msgsdk/Notification;->getDeleteNotificationIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    .line 52
    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    :cond_0
    invoke-static {p0, p1, v2, v1}, Lbr/com/santander/msgsdk/Notification;->getPendingIntent(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;Landroid/support/v4/app/NotificationCompat$Builder;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 58
    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 59
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 61
    const-string v0, "notification"

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/domain/NotificationData;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 64
    return-void

    .line 39
    :cond_1
    mul-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_0

    .line 45
    :array_0
    .array-data 8
        0x64
        0x1f4
    .end array-data
.end method
