.class Lbr/com/santander/msgsdk/MSGSDK$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/MSGSDK;

.field final synthetic val$callbackRequestConfigPanelUpdate:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$10;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK$10;->val$callbackRequestConfigPanelUpdate:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$10;->val$callbackRequestConfigPanelUpdate:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;

    invoke-interface {v0, p1}, Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;->onError(Lis;)V

    .line 558
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$10;->val$callbackRequestConfigPanelUpdate:Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;

    invoke-interface {v0, p1}, Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;->onSuccess(Lis;)V

    .line 553
    return-void
.end method
