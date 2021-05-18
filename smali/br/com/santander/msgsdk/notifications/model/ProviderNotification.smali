.class public Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private notificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

.field private notificationDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;"
        }
    .end annotation
.end field

.field private providerNotificationReceiverInterface:Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->notificationDetailList:Ljava/util/List;

    .line 24
    new-instance v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-direct {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->notificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 28
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->providerNotificationReceiverInterface:Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->notificationDetailList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->providerNotificationReceiverInterface:Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;

    return-object v0
.end method


# virtual methods
.method public getNotifications()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v1

    invoke-interface {v1}, Lbr/com/santander/msgsdk/MSG;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$1;

    invoke-direct {v2, p0}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$1;-><init>(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)V

    invoke-interface {v0, v1, v2}, Lbr/com/santander/msgsdk/MSG;->requestNotifications(Ljava/lang/String;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;)V

    .line 93
    return-void
.end method

.method public updateStatusReadOrDelete(ILbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V
    .locals 6

    .prologue
    .line 97
    sget-object v0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatusReadOrDelete - read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatusReadOrDelete - delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusExcluded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    .line 100
    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v3

    .line 103
    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusExcluded()Z

    move-result v4

    new-instance v5, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;

    invoke-direct {v5, p0, p1, p2}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;-><init>(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;ILbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V

    .line 99
    invoke-interface/range {v0 .. v5}, Lbr/com/santander/msgsdk/MSG;->requestUpdateStatusReadOrDelete(Ljava/lang/String;Ljava/lang/String;ZZLbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;)V

    .line 128
    return-void
.end method
