.class final Lbr/com/santander/msgsdk/MSGSDK$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/MSGSDK$CallbackUpdateStatus;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalCount:I

.field final synthetic val$pushIdP:Ljava/lang/String;

.field final synthetic val$statusP:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$finalCount:I

    iput-object p3, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$pushIdP:Ljava/lang/String;

    iput-object p4, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$statusP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Lbr/com/santander/msgsdk/MSGSDK;->access$002(Z)Z

    .line 133
    const-string v0, "MSGSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error - updateStatus - n\u00ba "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$finalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - pushId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$pushIdP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$statusP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-static {v0}, Lbr/com/santander/msgsdk/MSGSDK;->access$002(Z)Z

    .line 124
    iget-object v0, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Preferences;->clearStatusToSend(Landroid/content/Context;)V

    .line 125
    sget-object v0, Lbr/com/santander/msgsdk/util/Constants;->EMPTY:Ljava/lang/String;

    invoke-static {v0}, Lbr/com/santander/msgsdk/MSGSDK;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    const-string v0, "MSGSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success - updateStatus - n\u00ba "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$finalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - pushId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$pushIdP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/MSGSDK$1;->val$statusP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method
