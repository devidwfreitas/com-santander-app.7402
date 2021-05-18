.class Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

.field final synthetic val$notificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;ILbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    iput p2, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->val$position:I

    iput-object p3, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->val$notificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lis;)V
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROVIDER updateStatusReadOrDelete onError: statusCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    invoke-static {}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROVIDER updateStatusReadOrDelete onError - jsonObjectResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->val$notificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusExcluded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-static {v1}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$200(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;

    move-result-object v1

    iget v2, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->val$position:I

    invoke-interface {v1, v2, v0}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;->updateStatusDeleteResult(ILjava/lang/Error;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-static {v1}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$200(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;

    move-result-object v1

    iget v2, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->val$position:I

    invoke-interface {v1, v2, v0}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;->updateStatusReadResult(ILjava/lang/Error;)V

    goto :goto_0
.end method

.method public onSuccess(Lis;)V
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROVIDER updateStatusReadOrDelete onSuccess:  statusCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    invoke-static {}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROVIDER updateStatusReadOrDelete onSuccess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$200(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;

    move-result-object v0

    iget v1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$2;->val$position:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;->updateStatusReadResult(ILjava/lang/Error;)V

    .line 112
    return-void
.end method
