.class Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$1;
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
    .line 87
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$1;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->notificationDetailedPopUpOptionCancel()V

    .line 93
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$1;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->access$000(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 94
    return-void
.end method
