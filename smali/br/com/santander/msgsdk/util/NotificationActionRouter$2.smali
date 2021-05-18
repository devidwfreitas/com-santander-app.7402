.class Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    iget-object v0, v0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 83
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    iget-object v1, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-static {v1}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->access$200(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->openDeepLink(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finish()V

    .line 85
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-static {v1}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->access$000(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPENED"

    iget-object v3, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;->this$0:Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-static {v3}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->access$100(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbr/com/santander/msgsdk/MSGSDK;->updateStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
