.class Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->finish()V

    .line 85
    return-void
.end method
