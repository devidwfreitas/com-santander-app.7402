.class Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    sget v1, Lbr/com/santander/msgsdk/R$string;->msg_dialog_title_delete_notification:I

    .line 120
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_delete_notification:I

    .line 121
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_calcel_button:I

    new-instance v3, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$2;

    invoke-direct {v3, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$2;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;)V

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_continue_button:I

    new-instance v3, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$1;

    invoke-direct {v3, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3$1;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;)V

    .line 133
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 148
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-static {v1}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->access$000(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 149
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 150
    return-void
.end method
