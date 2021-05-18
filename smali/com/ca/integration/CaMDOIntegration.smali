.class public Lcom/ca/integration/CaMDOIntegration;
.super Ljava/lang/Object;
.source "CaMDOIntegration.java"


# static fields
.field public static final CAMAA_CRASH_OCCURRED:Ljava/lang/String; = "crashOccured"

.field public static final CAMAA_CUSTOM:Ljava/lang/String; = "custom"

.field public static final CAMAA_CUSTOMER_ID:Ljava/lang/String; = "customerId"

.field public static final CAMAA_DOUBLE:Ljava/lang/String; = "double"

.field public static final CAMAA_HEADER_COUNTRY:Ljava/lang/String; = "ct"

.field public static final CAMAA_HEADER_ZIPCODE:Ljava/lang/String; = "zp"

.field public static final CAMAA_SCREENSHOT_QUALITY_DEFAULT:I = -0x1

.field public static final CAMAA_SCREENSHOT_QUALITY_HIGH:I = 0x1e

.field public static final CAMAA_SCREENSHOT_QUALITY_LOW:I = 0xf

.field public static final CAMAA_SCREENSHOT_QUALITY_MEDIUM:I = 0x14

.field public static final CAMAA_SSL_PINNINGMODE_CERTIFICATE:Ljava/lang/String; = "certificate"

.field public static final CAMAA_SSL_PINNINGMODE_FINGERPRINT_SHA1SIGNATURE:Ljava/lang/String; = "sha1signature"

.field public static final CAMAA_SSL_PINNINGMODE_NONE:Ljava/lang/String; = "none"

.field public static final CAMAA_SSL_PINNINGMODE_PUBLICKEY:Ljava/lang/String; = "pk"

.field public static final CAMAA_SSL_PINNINGMODE_PUBLICKEYHASH:Ljava/lang/String; = "hash"

.field public static final CAMAA_STRING:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToApmHeader(Ljava/lang/String;)V
    .locals 1
    .param p0, "headerString"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->addToApmHeader(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public static disableSDK()V
    .locals 3

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->disableSDKByAPI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 165
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static enableSDK()V
    .locals 3

    .prologue
    .line 151
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->enableSDKByAPI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static enterPrivateZone()V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->enterPrivateZone()V

    .line 199
    return-void
.end method

.method public static exitPrivateZone()V
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->exitPrivateZone()V

    .line 207
    return-void
.end method

.method public static getAPMHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->getAPMHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ignoreView(Ljava/lang/String;)V
    .locals 1
    .param p0, "viewName"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->ignoreView(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public static ignoreViews(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "viewNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->ignoreViews(Ljava/util/HashSet;)V

    .line 391
    return-void
.end method

.method public static isInPrivateZone()Z
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->isInPrivateZone()Z

    move-result v0

    return v0
.end method

.method public static isSDKEnabled()Z
    .locals 6

    .prologue
    .line 174
    const/4 v1, 0x1

    .line 176
    .local v1, "isEnabled":Z
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getSDKEnabledByAPI()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "sdkEnabledByApi":Ljava/lang/String;
    sget-boolean v3, Lcom/ca/mdo/SDK;->isSDKEnabledByPolicy:Z

    .line 178
    .local v3, "sdkEnabledByPolicy":Z
    if-eqz v2, :cond_1

    .line 179
    const-string v4, "TRUE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    const/4 v1, 0x1

    .line 190
    .end local v2    # "sdkEnabledByApi":Ljava/lang/String;
    .end local v3    # "sdkEnabledByPolicy":Z
    :goto_0
    return v1

    .line 182
    .restart local v2    # "sdkEnabledByApi":Ljava/lang/String;
    .restart local v3    # "sdkEnabledByPolicy":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 185
    :cond_1
    move v1, v3

    goto :goto_0

    .line 187
    .end local v2    # "sdkEnabledByApi":Ljava/lang/String;
    .end local v3    # "sdkEnabledByPolicy":Z
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isScreenshotPolicyEnabled()Z
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->isScreenshotPolicyEnabled()Z

    move-result v0

    return v0
.end method

.method public static logNetworkEvent(Ljava/lang/String;IIII)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "responseTime"    # I
    .param p3, "inBytes"    # I
    .param p4, "outBytes"    # I

    .prologue
    .line 284
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/ca/android/app/AnalyticsAgent;->logNetworkEvent(Ljava/lang/String;IIII)V

    .line 285
    return-void
.end method

.method public static logNetworkEvent(Ljava/lang/String;IIIILcom/ca/integration/CaMDOCallback;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "responseTime"    # I
    .param p3, "inBytes"    # I
    .param p4, "outBytes"    # I
    .param p5, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 300
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/ca/android/app/AnalyticsAgent;->logNetworkEvent(Ljava/lang/String;IIIILcom/ca/integration/CaMDOCallback;)V

    .line 301
    return-void
.end method

.method public static logNumericMetric(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Double;
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ca/integration/CaMDOCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ca/android/app/AnalyticsAgent;->logNumericMetric(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V

    .line 328
    return-void
.end method

.method public static logTextMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ca/integration/CaMDOCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ca/integration/CaMDOCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ca/android/app/AnalyticsAgent;->logTextMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V

    .line 339
    return-void
.end method

.method public static onPauseOfFragment(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p0, "fragmentName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 347
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->onPauseOffragment(Ljava/lang/String;Landroid/app/Activity;)V

    .line 348
    return-void
.end method

.method public static onResumeOfFragment(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p0, "fragmentName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 344
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->onResumeOffragment(Ljava/lang/String;Landroid/app/Activity;)V

    .line 345
    return-void
.end method

.method public static registerAppFeedBack(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p0, "messageReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 131
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->registerAppFeedBackOnIntegration(Landroid/content/BroadcastReceiver;)V

    .line 132
    return-void
.end method

.method public static sendScreenShot(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "quality"    # I
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 226
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/android/app/AnalyticsAgent;->takeScreenshotOnIntegration(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V

    .line 227
    return-void
.end method

.method public static setCustomerFeedback(Ljava/lang/String;)V
    .locals 1
    .param p0, "feedback"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->setCustomerFeedbackOnIntegration(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static setCustomerId(Ljava/lang/String;)V
    .locals 1
    .param p0, "customerId"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->setCustomerId(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public static setCustomerLocation(Landroid/location/Location;)V
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 58
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->setCustomerLocationOnIntegration(Landroid/location/Location;)V

    .line 59
    return-void
.end method

.method public static setCustomerLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "zipCode"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->setCustomerLocationOnIntegration(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static setSSLPinningMode(Landroid/app/Application;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "sslPinningMode"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 395
    invoke-static {p1, p2}, Lcom/ca/mdo/CAMobileDevOps;->setSSLPinning(Ljava/lang/String;[B)V

    .line 396
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/SDK;->isSslMode:Z

    .line 397
    return-void
.end method

.method public static setSessionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/android/app/AnalyticsAgent;->setSessionAttributeOnIntegration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static startApplicationTransaction(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "transactionName"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 81
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->startApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V

    .line 82
    return-void
.end method

.method public static startApplicationTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "transactionName"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 93
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/android/app/AnalyticsAgent;->startApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V

    .line 94
    return-void
.end method

.method public static startNewSession()V
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->startNewSession()V

    .line 251
    return-void
.end method

.method public static stopApplicationTransaction(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "transactionName"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 107
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->stopApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V

    .line 108
    return-void
.end method

.method public static stopApplicationTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "transactionName"    # Ljava/lang/String;
    .param p1, "failure"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 123
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/android/app/AnalyticsAgent;->stopApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V

    .line 124
    return-void
.end method

.method public static stopCurrentAndStartNewSession()V
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->stopCurrentAndStartNewSession()V

    .line 258
    return-void
.end method

.method public static stopCurrentSession()V
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->stopCurrentSession()V

    .line 243
    return-void
.end method

.method public static uploadEvents(Lcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 315
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->uploadEvents(Lcom/ca/integration/CaMDOCallback;)V

    .line 316
    return-void
.end method

.method public static viewLoaded(Ljava/lang/String;I)V
    .locals 1
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "screenLoadTime"    # I

    .prologue
    .line 261
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->viewLoaded(Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method public static viewLoaded(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V
    .locals 1
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "screenLoadTime"    # I
    .param p2, "callback"    # Lcom/ca/integration/CaMDOCallback;

    .prologue
    .line 272
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ca/android/app/AnalyticsAgent;->viewLoaded(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V

    .line 273
    return-void
.end method
