.class Lbr/com/santander/msgsdk/MSGSDK$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/MSGSDK;

.field final synthetic val$callbackUpdateStatusReadOrDelete:Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$12;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK$12;->val$callbackUpdateStatusReadOrDelete:Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$12;->val$callbackUpdateStatusReadOrDelete:Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;

    invoke-interface {v0, p1}, Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;->onError(Lis;)V

    .line 614
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$12;->val$callbackUpdateStatusReadOrDelete:Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;

    invoke-interface {v0, p1}, Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatusReadOrDelete;->onSuccess(Lis;)V

    .line 609
    return-void
.end method
