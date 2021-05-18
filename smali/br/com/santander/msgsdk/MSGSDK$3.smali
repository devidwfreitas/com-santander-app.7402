.class Lbr/com/santander/msgsdk/MSGSDK$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic this$0:Lbr/com/santander/msgsdk/MSGSDK;

.field final synthetic val$callback:Lbr/com/santander/msgsdk/MSGSDK$Callback;


# direct methods
.method constructor <init>(Lbr/com/santander/msgsdk/MSGSDK;Lbr/com/santander/msgsdk/MSGSDK$Callback;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$3;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    iput-object p2, p0, Lbr/com/santander/msgsdk/MSGSDK$3;->val$callback:Lbr/com/santander/msgsdk/MSGSDK$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 272
    const-string v0, "MSGSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsubscribe - Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$3;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    invoke-static {v0}, Lbr/com/santander/msgsdk/MSGSDK;->access$200(Lbr/com/santander/msgsdk/MSGSDK;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/util/Preferences;->setSubscribe(Landroid/content/Context;Z)V

    .line 275
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$3;->val$callback:Lbr/com/santander/msgsdk/MSGSDK$Callback;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$3;->val$callback:Lbr/com/santander/msgsdk/MSGSDK$Callback;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSGSDK$Callback;->onError()V

    .line 278
    :cond_0
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 2

    .prologue
    .line 263
    const-string v0, "MSGSDK"

    const-string v1, "unsubscribe - Success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$3;->this$0:Lbr/com/santander/msgsdk/MSGSDK;

    invoke-static {v0}, Lbr/com/santander/msgsdk/MSGSDK;->access$200(Lbr/com/santander/msgsdk/MSGSDK;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbr/com/santander/msgsdk/util/Preferences;->setSubscribe(Landroid/content/Context;Z)V

    .line 265
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$3;->val$callback:Lbr/com/santander/msgsdk/MSGSDK$Callback;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$3;->val$callback:Lbr/com/santander/msgsdk/MSGSDK$Callback;

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSGSDK$Callback;->onSuccess()V

    .line 268
    :cond_0
    return-void
.end method
