.class Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$1;->this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lis;)V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROVIDER onFailure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$1;->this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-static {v1}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$200(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;->getReceivedList(Ljava/util/List;Ljava/lang/Error;)V

    .line 67
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-static {}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$000()Ljava/lang/String;

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

    .line 38
    invoke-static {}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$000()Ljava/lang/String;

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

    .line 40
    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    const-string v1, "categories"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "categories"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_1
    move v3, v2

    .line 43
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 44
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 46
    new-instance v5, Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-direct {v5}, Lbr/com/santander/msgsdk/configPanel/model/Category;-><init>()V

    .line 47
    const-string v1, "code"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "code"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/configPanel/model/Category;->setCode(Ljava/lang/String;)V

    .line 48
    const-string v1, "alertMessage"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "alertMessage"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/configPanel/model/Category;->setAlertMessage(Ljava/lang/String;)V

    .line 49
    const-string v1, "description"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "description"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/configPanel/model/Category;->setDescription(Ljava/lang/String;)V

    .line 50
    const-string v1, "membershipStatus"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "membershipStatus"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/configPanel/model/Category;->setMembershipStatus(Z)V

    .line 51
    const-string v1, "title"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "title"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v5, v1}, Lbr/com/santander/msgsdk/configPanel/model/Category;->setTitle(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$1;->this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-static {v1}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$100(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 42
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 59
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$1;->this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-static {v0}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$200(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$1;->this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-static {v1}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$100(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;->getReceivedList(Ljava/util/List;Ljava/lang/Error;)V

    goto/16 :goto_0

    .line 47
    :cond_3
    :try_start_1
    const-string v1, ""

    goto :goto_3

    .line 48
    :cond_4
    const-string v1, ""

    goto :goto_4

    .line 49
    :cond_5
    const-string v1, ""

    goto :goto_5

    :cond_6
    move v1, v2

    .line 50
    goto :goto_6

    .line 51
    :cond_7
    const-string v1, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method
