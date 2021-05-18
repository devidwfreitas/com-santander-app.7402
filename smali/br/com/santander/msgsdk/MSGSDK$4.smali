.class Lbr/com/santander/msgsdk/MSGSDK$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/MSGSDK;

.field final synthetic val$callback:Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$4;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK$4;->val$callback:Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$4;->val$callback:Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;->onError()V

    .line 307
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$4;->val$callback:Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;->onSuccess()V

    .line 302
    return-void
.end method
