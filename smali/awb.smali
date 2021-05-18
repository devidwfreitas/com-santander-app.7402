.class public Lawb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/SdkClickHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/SdkClickHandler;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lawb;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 142
    iget-object v0, p0, Lawb;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$300(Lcom/adjust/sdk/SdkClickHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 143
    new-instance v11, Lcom/adjust/sdk/SharedPreferencesManager;

    .line 144
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/adjust/sdk/SharedPreferencesManager;-><init>(Landroid/content/Context;)V

    .line 146
    :try_start_0
    invoke-virtual {v11}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerArray()Lorg/json/JSONArray;

    move-result-object v12

    move v9, v10

    move v1, v10

    .line 149
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 150
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 152
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    .line 155
    if-eqz v2, :cond_0

    .line 149
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    .line 159
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    const/4 v2, 0x1

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v2, v6, v7}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v2

    .line 162
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 169
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getActivityState()Lcom/adjust/sdk/ActivityState;

    move-result-object v4

    .line 170
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    move-result-object v5

    .line 171
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getDeviceInfo()Lavo;

    move-result-object v6

    .line 172
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getSessionParameters()Lcom/adjust/sdk/SessionParameters;

    move-result-object v7

    .line 166
    invoke-static/range {v1 .. v7}, Lcom/adjust/sdk/PackageFactory;->buildReftagSdkClickPackage(Ljava/lang/String;JLcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/SessionParameters;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lawb;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-virtual {v2, v1}, Lcom/adjust/sdk/SdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    move v1, v8

    goto :goto_1

    .line 178
    :cond_1
    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {v11, v12}, Lcom/adjust/sdk/SharedPreferencesManager;->saveRawReferrerArray(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_2
    :goto_2
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    iget-object v1, p0, Lawb;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v1}, Lcom/adjust/sdk/SdkClickHandler;->access$100(Lcom/adjust/sdk/SdkClickHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string v2, "Send saved raw referrers error (%s)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
