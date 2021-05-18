.class public Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;
.implements Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelInterface;


# instance fields
.field private TAG_LOG:Ljava/lang/String;

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

.field private notificationViewModelReceiverInterface:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;

.field private providerNotification:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;


# direct methods
.method public constructor <init>(Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->TAG_LOG:Ljava/lang/String;

    .line 17
    new-instance v0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;-><init>(Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->providerNotification:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    .line 22
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->notificationViewModelReceiverInterface:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;

    .line 23
    return-void
.end method


# virtual methods
.method public getNotifications()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->providerNotification:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->getNotifications()V

    .line 28
    return-void
.end method

.method public getNotificationsResult(Ljava/util/List;Ljava/lang/Error;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;",
            "Ljava/lang/Error;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p2, :cond_0

    .line 33
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->notificationDetailList:Ljava/util/List;

    .line 34
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->notificationViewModelReceiverInterface:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;

    invoke-interface {v0, p1, v1}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;->getNotificationsResult(Ljava/util/List;Ljava/lang/Error;)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->notificationViewModelReceiverInterface:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;

    invoke-interface {v0, v1, p2}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;->getNotificationsResult(Ljava/util/List;Ljava/lang/Error;)V

    goto :goto_0
.end method

.method public setUpdateStatusReadOrDelete(ILbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->providerNotification:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-virtual {v0, p1, p2}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->updateStatusReadOrDelete(ILbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V

    .line 43
    return-void
.end method

.method public updateStatusDeleteResult(ILjava/lang/Error;)V
    .locals 2

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->notificationViewModelReceiverInterface:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;->updateStatusDeleteResult(ILjava/lang/Error;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->notificationViewModelReceiverInterface:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;

    invoke-interface {v0, p1, p2}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;->updateStatusDeleteResult(ILjava/lang/Error;)V

    goto :goto_0
.end method

.method public updateStatusReadResult(ILjava/lang/Error;)V
    .locals 2

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->notificationViewModelReceiverInterface:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;->updateStatusReadResult(ILjava/lang/Error;)V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->notificationViewModelReceiverInterface:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;

    invoke-interface {v0, p1, p2}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;->updateStatusReadResult(ILjava/lang/Error;)V

    goto :goto_0
.end method
