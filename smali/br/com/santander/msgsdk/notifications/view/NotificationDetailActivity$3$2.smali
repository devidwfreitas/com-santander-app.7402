.class Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$2;
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
    .line 122
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$2;->this$1:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->notificationDetailedPopUpOptionCancel()V

    .line 130
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 131
    return-void
.end method
