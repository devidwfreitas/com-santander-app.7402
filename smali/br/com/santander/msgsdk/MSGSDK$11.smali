.class Lbr/com/santander/msgsdk/MSGSDK$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/MSGSDK;

.field final synthetic val$callbackRequestNotifications:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$11;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK$11;->val$callbackRequestNotifications:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$11;->val$callbackRequestNotifications:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;

    invoke-interface {v0, p1}, Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;->onError(Lis;)V

    .line 585
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$11;->val$callbackRequestNotifications:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;

    invoke-interface {v0, p1}, Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestNotifications;->onSuccess(Lis;)V

    .line 580
    return-void
.end method
