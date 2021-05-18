.class Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$1;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$1;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->filter(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$1;->this$0:Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->filter(Ljava/lang/String;)V

    .line 82
    return-void
.end method
