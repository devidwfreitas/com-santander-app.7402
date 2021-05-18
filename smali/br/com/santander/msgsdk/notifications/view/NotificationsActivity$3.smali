.class Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

.field final synthetic val$position:I

.field final synthetic val$swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;ILbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    iput p2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;->val$position:I

    iput-object p3, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;->val$swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 217
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->swipeNotificationPopUpOptionDelete()V

    .line 220
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    iget v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;->val$position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->updateReadOrDelete(IZZ)V

    .line 221
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;->val$swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, v3}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    .line 222
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->access$100(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->notifyDataSetChanged()V

    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 224
    return-void
.end method
