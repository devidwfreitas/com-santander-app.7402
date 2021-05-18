.class final Lcom/ca/mdo/CAMobileDevOps$1;
.super Landroid/content/BroadcastReceiver;
.source "CAMobileDevOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mdo/CAMobileDevOps;->registerForNetworkChangeStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1470
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x4f

    .line 1473
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1474
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1475
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    const-string v3, "WIFI"

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Lcom/ca/mdo/CAMobileDevOps;->checkNetwork(Ljava/lang/String;ILandroid/net/NetworkInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1476
    const-string v3, "Connected to WIFI"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1477
    const-string v3, "WIFI"

    invoke-static {v3}, Lcom/ca/mdo/CAMobileDevOps;->networkSwitchEvent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 1478
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CONNECTION"

    const-string v5, "WIFI"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1506
    :cond_0
    :goto_0
    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/ca/mdo/CAMobileDevOps;->sendMessage(ILorg/json/JSONObject;)V

    .line 1507
    return-void

    .line 1480
    :cond_1
    const-string v3, "MOBILE"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/ca/mdo/CAMobileDevOps;->checkNetwork(Ljava/lang/String;ILandroid/net/NetworkInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1481
    const-string v3, "Connected to Mobile"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1482
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, "currentNetworkConnection":Ljava/lang/String;
    invoke-static {v1}, Lcom/ca/mdo/CAMobileDevOps;->networkSwitchEvent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 1484
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CONNECTION"

    const-string v5, "MOBILE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1486
    .end local v1    # "currentNetworkConnection":Ljava/lang/String;
    :cond_2
    const-string v3, "WIMAX"

    const/4 v4, 0x6

    invoke-static {v3, v4, v2}, Lcom/ca/mdo/CAMobileDevOps;->checkNetwork(Ljava/lang/String;ILandroid/net/NetworkInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1487
    const-string v3, "Connected to WIMAX"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1488
    const-string v3, "WIMAX"

    invoke-static {v3}, Lcom/ca/mdo/CAMobileDevOps;->networkSwitchEvent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 1489
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CONNECTION"

    const-string v5, "WIMAX"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1491
    :cond_3
    const-string v3, "ETHERNET"

    const/16 v4, 0x9

    invoke-static {v3, v4, v2}, Lcom/ca/mdo/CAMobileDevOps;->checkNetwork(Ljava/lang/String;ILandroid/net/NetworkInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1492
    const-string v3, "Connected to ETHERNET"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1493
    const-string v3, "ETHERNET"

    invoke-static {v3}, Lcom/ca/mdo/CAMobileDevOps;->networkSwitchEvent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 1494
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CONNECTION"

    const-string v5, "ETHERNET"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1496
    :cond_4
    const-string v3, "BLUETOOTH"

    const/4 v4, 0x7

    invoke-static {v3, v4, v2}, Lcom/ca/mdo/CAMobileDevOps;->checkNetwork(Ljava/lang/String;ILandroid/net/NetworkInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1497
    const-string v3, "Connected to BLUETOOTH"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1498
    const-string v3, "BLUETOOTH"

    invoke-static {v3}, Lcom/ca/mdo/CAMobileDevOps;->networkSwitchEvent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 1499
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CONNECTION"

    const-string v5, "BLUETOOTH"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1501
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1502
    :cond_6
    const-string v3, "Not Connected"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->d(Ljava/lang/String;)I

    .line 1503
    const-string v3, "No Connectivity"

    invoke-static {v3}, Lcom/ca/mdo/CAMobileDevOps;->networkSwitchEvent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 1504
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CONNECTION"

    const-string v5, "No Connectivity"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
