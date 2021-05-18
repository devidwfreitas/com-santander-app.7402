.class Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$category:Lbr/com/santander/msgsdk/configPanel/model/Category;

.field final synthetic val$santanderSwitch:Lbr/com/santander/uisdk/SantanderSwitch;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;Lbr/com/santander/uisdk/SantanderSwitch;Lbr/com/santander/msgsdk/configPanel/model/Category;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    iput-object p2, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->val$santanderSwitch:Lbr/com/santander/uisdk/SantanderSwitch;

    iput-object p3, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->val$category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    iput-object p4, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->val$santanderSwitch:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-virtual {v0, v1, v1}, Lbr/com/santander/uisdk/SantanderSwitch;->setChecked(ZZ)V

    .line 224
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->val$category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/configPanel/model/Category;->setMembershipStatus(Z)V

    .line 225
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-static {v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->access$200(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->val$category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->setStatus(Lbr/com/santander/msgsdk/configPanel/model/Category;)V

    .line 226
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->this$0:Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->val$category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->trackingConfigNotificationAction(Lbr/com/santander/msgsdk/configPanel/model/Category;)V

    .line 227
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 228
    return-void
.end method
