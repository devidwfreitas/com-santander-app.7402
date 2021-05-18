.class Lbr/com/santander/msgsdk/MSGSDK$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/MSGSDK;

.field final synthetic val$callbackRequestConfigPanel:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$9;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK$9;->val$callbackRequestConfigPanel:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$9;->val$callbackRequestConfigPanel:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;

    invoke-interface {v0, p1}, Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;->onError(Lis;)V

    .line 532
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$9;->val$callbackRequestConfigPanel:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;

    invoke-interface {v0, p1}, Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;->onSuccess(Lis;)V

    .line 527
    return-void
.end method
