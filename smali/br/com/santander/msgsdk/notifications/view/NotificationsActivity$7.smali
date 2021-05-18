.class Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$7;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 342
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$7;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->finish()V

    .line 343
    return-void
.end method
