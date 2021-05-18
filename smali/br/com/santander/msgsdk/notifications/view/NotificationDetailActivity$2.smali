.class Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->notificationDetailedPopUpOptionUnread()V

    .line 106
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    const-string v1, "position"

    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-static {v2}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->access$100(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->access$000(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 110
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->finish()V

    .line 111
    return-void
.end method
