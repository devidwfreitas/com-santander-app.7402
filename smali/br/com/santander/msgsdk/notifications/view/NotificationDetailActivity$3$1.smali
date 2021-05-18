.class Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$1;->this$1:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->notificationDetailedPopUpOptionDelete()V

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    const-string v1, "position"

    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$1;->this$1:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;

    iget-object v2, v2, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-static {v2}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->access$100(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "excluded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$1;->this$1:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;

    iget-object v1, v1, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 145
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$1;->this$1:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;

    iget-object v0, v0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->finish()V

    .line 146
    return-void
.end method
