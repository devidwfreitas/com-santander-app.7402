.class Lcom/ca/mdo/AppDeviceData$DynInfoHolder;
.super Ljava/lang/Object;
.source "AppDeviceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mdo/AppDeviceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynInfoHolder"
.end annotation


# instance fields
.field countryCode:Ljava/lang/String;

.field ipAddresss:Ljava/lang/String;

.field networkType:Ljava/lang/String;

.field opName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->access$000()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 215
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ca/mdo/AppDeviceData;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->networkType:Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->ipAddresss:Ljava/lang/String;

    .line 217
    invoke-static {v1}, Lcom/ca/mdo/AppDeviceData;->getNetworkOperatorName(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->opName:Ljava/lang/String;

    .line 218
    invoke-static {v1}, Lcom/ca/mdo/AppDeviceData;->getNetworkCountryCode(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->countryCode:Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->networkType:Ljava/lang/String;

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    const-string v2, "WIFI"

    iput-object v2, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->opName:Ljava/lang/String;

    .line 228
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    iget-object v2, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->networkType:Ljava/lang/String;

    const-string v3, "Offline"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "Offline"

    iput-object v2, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->opName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Error in initializing DynInfoHolder - network information."

    invoke-static {v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    .line 226
    invoke-static {v0}, Lcom/ca/mdo/CALog;->ex(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, "dynHeader":Ljava/lang/StringBuilder;
    const-string v1, ";n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->opName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ";l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v1, p0, Lcom/ca/mdo/AppDeviceData$DynInfoHolder;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
