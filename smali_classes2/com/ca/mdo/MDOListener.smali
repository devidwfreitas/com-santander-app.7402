.class Lcom/ca/mdo/MDOListener;
.super Ljava/lang/Object;
.source "MDOListener.java"

# interfaces
.implements Lcom/ca/mdo/AppMode$Listener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static registerNetworkChangeReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 27
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/ca/mdo/CAMobileDevOps;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "registerNetworkReceiver caught exception."

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static unRegisterNetworkChangeReceiver(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    :try_start_0
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/ca/mdo/CAMobileDevOps;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "unRegisterNetworkReceiver caught exception."

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBecameBackground(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-static {p1}, Lcom/ca/mdo/MDOListener;->unRegisterNetworkChangeReceiver(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->unRegisterBatteryReceiver()V

    .line 23
    return-void
.end method

.method public onBecameForeground(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-static {p1}, Lcom/ca/mdo/MDOListener;->registerNetworkChangeReceiver(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->registerBatteryReceiver()V

    .line 17
    return-void
.end method
