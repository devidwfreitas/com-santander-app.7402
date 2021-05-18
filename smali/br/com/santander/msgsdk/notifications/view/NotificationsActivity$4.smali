.class Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

.field final synthetic val$swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;Lbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$4;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    iput-object p2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$4;->val$swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->swipeNotificationPopUpOptionCancel()V

    .line 211
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$4;->val$swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    return-void
.end method
