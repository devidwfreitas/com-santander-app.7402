.class Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$2;->this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lis;)V
    .locals 4

    .prologue
    .line 89
    invoke-static {}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROVIDER_UPDATE onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    invoke-static {}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROVIDER_UPDATE onSuccess - jsonObjectResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$2;->this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-static {v1}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$200(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;->getResultUpdateStatus(Ljava/lang/Error;)V

    .line 94
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROVIDER onSuccess: statusCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statusMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    invoke-static {}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$000()Ljava/lang/String;

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

    .line 84
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$2;->this$0:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-static {v0}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->access$200(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;->getResultUpdateStatus(Ljava/lang/Error;)V

    .line 85
    return-void
.end method
