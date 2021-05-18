.class Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/MSGSDK$Callback;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$2;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$2;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-static {v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->access$100(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscribe error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$2;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-static {v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->access$100(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscribe success."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->saveUserPreferences()V

    .line 173
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$2;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/util/Preferences;->setSubscribe(Landroid/content/Context;Z)V

    .line 174
    return-void
.end method
