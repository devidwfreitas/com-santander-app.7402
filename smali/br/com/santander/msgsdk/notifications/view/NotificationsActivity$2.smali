.class Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$2;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-static {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->access$000(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 159
    return-void
.end method
