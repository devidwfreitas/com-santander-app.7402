.class Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$1;->this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lis;)V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROVIDER onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    invoke-static {}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROVIDER onSuccess - jsonObjectResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$1;->this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-static {v1}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$200(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;->getNotificationsResult(Ljava/util/List;Ljava/lang/Error;)V

    .line 91
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-static {}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROVIDER onSuccess: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    :goto_0
    invoke-static {}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROVIDER onSuccess - jsonObjectResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-nez v0, :cond_1

    .line 82
    :goto_1
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    :try_start_0
    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "notifications"

    .line 45
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_2
    move v3, v2

    .line 46
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 47
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 49
    new-instance v5, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-direct {v5}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;-><init>()V

    .line 51
    const-string v1, "text"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "text"

    .line 52
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    :goto_4
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setText(Ljava/lang/String;)V

    .line 54
    const-string v1, "category"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "category"

    .line 55
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "category"

    .line 56
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    :goto_5
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setTitle(Ljava/lang/String;)V

    .line 57
    const-string v1, "sentDate"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "sentDate"

    .line 58
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_6
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setSentDate(Ljava/lang/String;)V

    .line 59
    const-string v1, "expirationDate"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "expirationDate"

    .line 60
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_7
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setExpirationDate(Ljava/lang/String;)V

    .line 61
    const-string v1, "uuid"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "uuid"

    .line 62
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :goto_8
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setUuid(Ljava/lang/String;)V

    .line 63
    const-string v1, "url"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "url"

    .line 64
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_9
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setUrl(Ljava/lang/String;)V

    .line 65
    const-string v1, "stimulum"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "stimulum"

    .line 66
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "stimulum"

    .line 67
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    :goto_a
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setStimulumType(Ljava/lang/String;)V

    .line 68
    const-string v1, "stimulum"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "stimulum"

    .line 69
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "stimulum"

    .line 70
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_b
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setStimulumId(Ljava/lang/String;)V

    .line 71
    const-string v1, "timestamp"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "timestamp"

    .line 72
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :goto_c
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setTimestamp(Ljava/lang/String;)V

    .line 73
    const-string v1, "status"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "status"

    .line 74
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "read"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "status"

    .line 75
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "read"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    .line 73
    :goto_d
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setStatusRead(Z)V

    .line 76
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$1;->this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-static {v1}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$100(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3

    .line 45
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 81
    :cond_3
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$1;->this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$200(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification$1;->this$0:Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;

    invoke-static {v1}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;->access$100(Lbr/com/santander/msgsdk/notifications/model/ProviderNotification;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbr/com/santander/msgsdk/notifications/model/ProviderNotificationReceiverInterface;->getNotificationsResult(Ljava/util/List;Ljava/lang/Error;)V

    goto/16 :goto_1

    .line 52
    :cond_4
    :try_start_1
    const-string v1, ""

    goto/16 :goto_4

    .line 56
    :cond_5
    const-string v1, ""

    goto/16 :goto_5

    .line 58
    :cond_6
    const-string v1, ""

    goto/16 :goto_6

    .line 60
    :cond_7
    const-string v1, ""

    goto/16 :goto_7

    .line 62
    :cond_8
    const-string v1, ""

    goto/16 :goto_8

    .line 64
    :cond_9
    const-string v1, ""

    goto/16 :goto_9

    .line 67
    :cond_a
    const-string v1, ""

    goto/16 :goto_a

    .line 70
    :cond_b
    const-string v1, ""

    goto/16 :goto_b

    .line 72
    :cond_c
    const-string v1, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :cond_d
    move v1, v2

    .line 75
    goto :goto_d
.end method
