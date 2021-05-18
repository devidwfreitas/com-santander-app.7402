.class Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    iput-object p2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->access$000(Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 76
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->openDeepLink(Ljava/lang/String;)V

    .line 77
    return-void
.end method
