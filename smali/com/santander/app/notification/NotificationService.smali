.class public Lcom/santander/app/notification/NotificationService;
.super Lcyw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcyw;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcyw;->onCreate()V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcyw;->onDestroy()V

    .line 34
    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/santander/app/notification/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->a(Landroid/content/Context;)V

    .line 43
    :cond_0
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0, p2}, Lbr/com/santander/msgsdk/MSG;->fromBundle(Landroid/os/Bundle;)Lbr/com/santander/msgsdk/domain/NotificationData;

    move-result-object v0

    .line 44
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v3

    invoke-virtual {v3}, Lgnp;->b()Lie;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lbr/com/santander/msgsdk/MSG;->initOffline(Landroid/content/Context;Lie;Z)V

    .line 45
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v1

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lbr/com/santander/msgsdk/MSG;->sendNotification(Landroid/content/Context;Lbr/com/santander/msgsdk/domain/NotificationData;)V

    .line 46
    return-void
.end method
