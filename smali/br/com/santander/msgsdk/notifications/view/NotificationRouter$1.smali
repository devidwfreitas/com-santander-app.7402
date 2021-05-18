.class Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$1;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$1;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->access$000(Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 68
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$1;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->finish()V

    .line 69
    return-void
.end method
