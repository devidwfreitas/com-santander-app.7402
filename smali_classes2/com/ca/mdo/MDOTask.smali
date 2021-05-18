.class public Lcom/ca/mdo/MDOTask;
.super Ljava/lang/Object;
.source "MDOTask.java"


# instance fields
.field activity:Landroid/app/Activity;

.field activityObj:Lorg/json/JSONObject;

.field bitmap:Landroid/graphics/Bitmap;

.field hasFocus:Z

.field isScreenshotByApi:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;ZLandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "activity1"    # Landroid/app/Activity;
    .param p2, "activityObj1"    # Lorg/json/JSONObject;
    .param p3, "hasFocus1"    # Z
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ca/mdo/MDOTask;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;ZZ)V

    .line 23
    iput-object p4, p0, Lcom/ca/mdo/MDOTask;->bitmap:Landroid/graphics/Bitmap;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;ZZ)V
    .locals 2
    .param p1, "activity1"    # Landroid/app/Activity;
    .param p2, "activityObj1"    # Lorg/json/JSONObject;
    .param p3, "hasFocus1"    # Z
    .param p4, "isScreenshotByApi"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/ca/mdo/MDOTask;->activity:Landroid/app/Activity;

    .line 16
    iput-object v0, p0, Lcom/ca/mdo/MDOTask;->activityObj:Lorg/json/JSONObject;

    .line 17
    iput-boolean v1, p0, Lcom/ca/mdo/MDOTask;->hasFocus:Z

    .line 18
    iput-boolean v1, p0, Lcom/ca/mdo/MDOTask;->isScreenshotByApi:Z

    .line 19
    iput-object v0, p0, Lcom/ca/mdo/MDOTask;->bitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object p1, p0, Lcom/ca/mdo/MDOTask;->activity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/ca/mdo/MDOTask;->activityObj:Lorg/json/JSONObject;

    .line 30
    iput-boolean p3, p0, Lcom/ca/mdo/MDOTask;->hasFocus:Z

    .line 31
    iput-boolean p4, p0, Lcom/ca/mdo/MDOTask;->isScreenshotByApi:Z

    .line 32
    return-void
.end method


# virtual methods
.method public process()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/ca/mdo/MDOTask;->takeScreenShot()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 37
    .local v0, "success":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ca/mdo/MDOTask;->sendData(Ljava/lang/Boolean;)V

    .line 38
    return-void
.end method

.method protected sendData(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/16 v0, 0x4f

    iget-object v1, p0, Lcom/ca/mdo/MDOTask;->activityObj:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendGeneralEvent(ILorg/json/JSONObject;)V

    .line 79
    :cond_0
    return-void
.end method

.method public takeScreenShot()Ljava/lang/Boolean;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 40
    const/4 v5, 0x1

    .line 41
    .local v5, "takeScreenshot":Z
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isInPrivateZone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 72
    :goto_0
    return-object v6

    .line 43
    :cond_0
    sget-object v6, Lcom/ca/mdo/DatabaseHandler;->isDBFull:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 44
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 46
    :cond_1
    iget-object v6, p0, Lcom/ca/mdo/MDOTask;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ca/mdo/MDOTask;->activityObj:Lorg/json/JSONObject;

    if-eqz v6, :cond_5

    .line 47
    iget-boolean v6, p0, Lcom/ca/mdo/MDOTask;->hasFocus:Z

    if-nez v6, :cond_2

    .line 48
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isCrossWalk()Z

    move-result v5

    .line 51
    :cond_2
    iget-object v6, p0, Lcom/ca/mdo/MDOTask;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/ca/mdo/PolicyUtil;->getPolicyManager(Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;

    move-result-object v3

    .line 53
    .local v3, "policyManager":Lcom/ca/mdo/PolicyManager;
    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/ca/mdo/PolicyManager;->isScreenshotEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/ca/mdo/MDOTask;->isScreenshotByApi:Z

    if-eqz v6, :cond_5

    .line 54
    :cond_3
    iget-object v6, p0, Lcom/ca/mdo/MDOTask;->activity:Landroid/app/Activity;

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/ca/mdo/MDOTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v7, v8}, Lcom/ca/mdo/Util;->takeScreenshot(Landroid/app/Activity;ILandroid/graphics/Bitmap;)Lcom/ca/mdo/Util$Screenshot;

    move-result-object v4

    .line 55
    .local v4, "screenshot":Lcom/ca/mdo/Util$Screenshot;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v0, "eventAttribs":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "or"

    invoke-static {}, Lcom/ca/mdo/AppDeviceData;->getDeviceOrientation()I

    move-result v7

    invoke-static {v7}, Lcom/ca/mdo/AppDeviceData;->getDeviceOrientationString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "isScreenshotAvailable":Z
    if-eqz v4, :cond_4

    .line 60
    const-string v6, "ss"

    iget-object v7, v4, Lcom/ca/mdo/Util$Screenshot;->encodedValue:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v6, "w"

    iget v7, v4, Lcom/ca/mdo/Util$Screenshot;->screenShotWidth:I

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v6, "h"

    iget v7, v4, Lcom/ca/mdo/Util$Screenshot;->screenShotHeight:I

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const/4 v1, 0x1

    .line 65
    :cond_4
    iget-object v6, p0, Lcom/ca/mdo/MDOTask;->activityObj:Lorg/json/JSONObject;

    const-string v7, "attr"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "eventAttribs":Lorg/json/JSONObject;
    .end local v1    # "isScreenshotAvailable":Z
    .end local v3    # "policyManager":Lcom/ca/mdo/PolicyManager;
    .end local v4    # "screenshot":Lcom/ca/mdo/Util$Screenshot;
    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 66
    .restart local v0    # "eventAttribs":Lorg/json/JSONObject;
    .restart local v3    # "policyManager":Lcom/ca/mdo/PolicyManager;
    .restart local v4    # "screenshot":Lcom/ca/mdo/Util$Screenshot;
    :catch_0
    move-exception v2

    .line 67
    .local v2, "jsonE":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0
.end method
