.class Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$5;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 278
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$5;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->finish()V

    .line 279
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$5;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->access$200(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 280
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$5;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->onBackPressed()V

    .line 282
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
