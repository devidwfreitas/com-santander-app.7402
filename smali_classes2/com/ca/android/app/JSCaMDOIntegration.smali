.class public Lcom/ca/android/app/JSCaMDOIntegration;
.super Ljava/lang/Object;
.source "JSCaMDOIntegration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;
    }
.end annotation


# static fields
.field public static final formRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final nonUrlFormActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "#"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "self"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "SELF"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/ca/android/app/JSCaMDOIntegration;->nonUrlFormActions:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/ca/android/app/JSCaMDOIntegration;->webView:Landroid/webkit/WebView;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/ca/android/app/JSCaMDOIntegration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ca/android/app/JSCaMDOIntegration;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/ca/android/app/JSCaMDOIntegration;->convertBundleToSuccessVal(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/ca/android/app/JSCaMDOIntegration;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/ca/android/app/JSCaMDOIntegration;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ca/android/app/JSCaMDOIntegration;Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;
    .locals 1
    .param p0, "x0"    # Lcom/ca/android/app/JSCaMDOIntegration;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v0

    return-object v0
.end method

.method private addToApmHeader(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 708
    :try_start_0
    const-string v2, "header"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 709
    .local v1, "headerString":Ljava/lang/String;
    invoke-static {v1}, Lcom/ca/android/app/CaMDOIntegration;->addToApmHeader(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v1    # "headerString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Error in processing javascript addToApmHeader"

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static convertBundleToSuccessVal(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 175
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "success"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    .local v2, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception creating JSON from Bundle :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 185
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 186
    .restart local v0    # "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception creating JSON from Bundle :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private disableSDK(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 524
    const/4 v2, 0x0

    .line 525
    .local v2, "error":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->disableSDK()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    if-eqz v0, :cond_0

    .line 533
    if-eqz v2, :cond_1

    .line 534
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v5, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    :goto_1
    return-void

    .line 528
    :catch_0
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while disableSDK from JS API:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    const-string v2, "failed to disable sdk"

    goto :goto_0

    .line 536
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enableSDK(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 487
    .local v2, "error":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->enableSDK()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_0
    if-eqz v0, :cond_0

    .line 495
    if-eqz v2, :cond_1

    .line 496
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_0
    :goto_1
    return-void

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while enableSDK from JS API:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    const-string v2, "failed to enable sdk"

    goto :goto_0

    .line 498
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callbackFunName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "returnVal"    # Ljava/lang/String;
    .param p4, "error"    # Ljava/lang/String;

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 557
    .local v1, "callbackScript":Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    :goto_0
    move-object v0, v1

    .line 565
    .local v0, "callback":Ljava/lang/String;
    iget-object v2, p0, Lcom/ca/android/app/JSCaMDOIntegration;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/ca/android/app/JSCaMDOIntegration$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/ca/android/app/JSCaMDOIntegration$2;-><init>(Lcom/ca/android/app/JSCaMDOIntegration;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void

    .line 559
    .end local v0    # "callback":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 562
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAPMHeader()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getAPMHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAPMHeaders(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 663
    .local v3, "error":Ljava/lang/String;
    const/4 v0, 0x0

    .line 665
    .local v0, "apmHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->getAPMHeaders()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 672
    :goto_0
    if-eqz v1, :cond_0

    .line 673
    if-eqz v3, :cond_1

    .line 674
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_0
    :goto_1
    return-void

    .line 668
    :catch_0
    move-exception v2

    .line 669
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while isInPrivateZone from JS API:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    const-string v3, "failed to check if sdk is in private zone"

    goto :goto_0

    .line 676
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/ca/android/app/JSCaMDOIntegration;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getAction(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "action"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "callbackfn_name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ca/integration/CaMDOCallback;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ca/android/app/JSCaMDOIntegration$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/ca/android/app/JSCaMDOIntegration$1;-><init>(Lcom/ca/android/app/JSCaMDOIntegration;Landroid/os/Handler;Ljava/util/Map;)V

    return-object v0
.end method

.method private getCustomerId(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 332
    .local v2, "error":Ljava/lang/String;
    const/4 v3, 0x0

    .line 334
    .local v3, "returnVal":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->getCustomerId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 341
    :goto_0
    if-eqz v0, :cond_0

    .line 342
    if-eqz v2, :cond_1

    .line 343
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_1
    return-void

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while getCustomerId from JS API:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    const-string v2, "failed to return customerID"

    goto :goto_0

    .line 345
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getDeviceId(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 352
    .local v2, "error":Ljava/lang/String;
    const/4 v3, 0x0

    .line 354
    .local v3, "returnVal":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 361
    :goto_0
    if-eqz v0, :cond_0

    .line 362
    if-eqz v2, :cond_1

    .line 363
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    :goto_1
    return-void

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while getDeviceId from JS API:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    const-string v2, "failed to return deviceID"

    goto :goto_0

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getJSON(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON Exception while converting map to JSON "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method private static getJSONAsMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v5

    .line 86
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    .line 88
    .local v6, "names":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 91
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 92
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "val":Ljava/lang/String;
    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "i":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v6    # "names":Lorg/json/JSONArray;
    .end local v7    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while getting Map from JsonString :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nException="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/ca/mdo/CALog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSuccessVal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "success"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception creating JSON from Bundle :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSuccessVal(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "val"    # Ljava/lang/Object;

    .prologue
    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "success"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 157
    const-string v2, "value"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception creating JSON from Bundle :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private ignoreViews(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 720
    :try_start_0
    const-string v4, "views"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 721
    .local v2, "ignoredList":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 722
    .local v1, "ignored":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 723
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, "ignoredViews":[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 725
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 728
    .end local v3    # "ignoredViews":[Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/ca/android/app/CaMDOIntegration;->ignoreViews(Ljava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v1    # "ignored":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "ignoredList":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "Error in processing javascript addToApmHeader"

    invoke-static {v4, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isSDKEnabled(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 394
    .local v2, "error":Ljava/lang/String;
    const/4 v4, 0x0

    .line 396
    .local v4, "returnVal":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->isSDKEnabled()Z

    move-result v3

    .line 399
    .local v3, "isEnabled":Z
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 404
    .end local v3    # "isEnabled":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 405
    if-eqz v2, :cond_1

    .line 406
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    :goto_1
    return-void

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while isSDKEnabled from JS API:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    const-string v2, "failed to check if sdk enabled"

    goto :goto_0

    .line 408
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isScreenshotPolicyEnabled(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 418
    .local v2, "error":Ljava/lang/String;
    const/4 v4, 0x0

    .line 420
    .local v4, "returnVal":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->isScreenshotPolicyEnabled()Z

    move-result v3

    .line 423
    .local v3, "isEnabled":Z
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 428
    .end local v3    # "isEnabled":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 429
    if-eqz v2, :cond_1

    .line 430
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    :goto_1
    return-void

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while isScreenshotPolicyEnabled from JS API:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    const-string v2, "failed to check if isScreenshotPolicy Enabled"

    goto :goto_0

    .line 432
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static logFormRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "actionUrl"    # Ljava/lang/String;
    .param p1, "formFullActionUrl"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "enctype"    # Ljava/lang/String;
    .param p4, "jsonObjFormData"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->isSDKEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/ca/android/app/JSCaMDOIntegration;->nonUrlFormActions:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    sget-object v1, Lcom/ca/android/app/JSCaMDOIntegration;->formRequests:Ljava/util/Map;

    new-instance v2, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/ca/android/app/JSCaMDOIntegration$FormRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "Exception while parsing form json data"

    invoke-static {v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logNetworkEvent(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 686
    if-eqz p1, :cond_0

    .line 687
    :try_start_0
    const-string v5, "url"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 688
    .local v0, "url":Ljava/lang/String;
    const-string v5, "status"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 689
    .local v10, "statusStr":Ljava/lang/String;
    const-string v5, "inbytes"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 690
    .local v7, "inbytesStr":Ljava/lang/String;
    const-string v5, "outbytes"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 691
    .local v8, "outbytesStr":Ljava/lang/String;
    const-string v5, "responsetime"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 692
    .local v9, "responseTimeStr":Ljava/lang/String;
    if-nez v10, :cond_1

    const/4 v1, -0x1

    .line 693
    .local v1, "status":I
    :goto_0
    if-nez v7, :cond_2

    move v3, v2

    .line 694
    .local v3, "inbytes":I
    :goto_1
    if-nez v8, :cond_3

    move v4, v2

    .line 695
    .local v4, "outbytes":I
    :goto_2
    if-nez v9, :cond_4

    .line 697
    .local v2, "responsetime":I
    :goto_3
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/ca/android/app/CaMDOIntegration;->logNetworkEvent(Ljava/lang/String;IIIILcom/ca/integration/CaMDOCallback;)V

    .line 703
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "status":I
    .end local v2    # "responsetime":I
    .end local v3    # "inbytes":I
    .end local v4    # "outbytes":I
    .end local v7    # "inbytesStr":Ljava/lang/String;
    .end local v8    # "outbytesStr":Ljava/lang/String;
    .end local v9    # "responseTimeStr":Ljava/lang/String;
    .end local v10    # "statusStr":Ljava/lang/String;
    :cond_0
    :goto_4
    return-void

    .line 692
    .restart local v0    # "url":Ljava/lang/String;
    .restart local v7    # "inbytesStr":Ljava/lang/String;
    .restart local v8    # "outbytesStr":Ljava/lang/String;
    .restart local v9    # "responseTimeStr":Ljava/lang/String;
    .restart local v10    # "statusStr":Ljava/lang/String;
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 693
    .restart local v1    # "status":I
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 694
    .restart local v3    # "inbytes":I
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    .line 695
    .restart local v4    # "outbytes":I
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_3

    .line 700
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "status":I
    .end local v3    # "inbytes":I
    .end local v4    # "outbytes":I
    .end local v7    # "inbytesStr":Ljava/lang/String;
    .end local v8    # "outbytesStr":Ljava/lang/String;
    .end local v9    # "responseTimeStr":Ljava/lang/String;
    .end local v10    # "statusStr":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 701
    .local v6, "ex":Ljava/lang/Exception;
    const-string v5, "Error in processing javascript integration api call."

    invoke-static {v5, v6}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private logNumericMetrics(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "value"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 316
    .local v3, "value":Ljava/lang/Double;
    const-string v4, "key"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    .local v2, "key":Ljava/lang/String;
    const-string v4, "attributes"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, "attributes":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 321
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v4

    invoke-static {v0}, Lcom/ca/android/app/JSCaMDOIntegration;->getJSONAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v6

    invoke-interface {v4, v2, v3, v5, v6}, Lcom/ca/android/app/AnalyticsAgent;->logNumericMetric(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while addSessionEvent from JS API:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private logTextMetrics(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "value"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .local v3, "value":Ljava/lang/String;
    const-string v4, "key"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    .local v2, "key":Ljava/lang/String;
    const-string v4, "attributes"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, "attributes":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 306
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v4

    invoke-static {v0}, Lcom/ca/android/app/JSCaMDOIntegration;->getJSONAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v6

    invoke-interface {v4, v2, v3, v5, v6}, Lcom/ca/android/app/AnalyticsAgent;->logTextMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while addSessionEvent from JS API:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logevent(Ljava/lang/String;JIIILjava/lang/String;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeSpent"    # J
    .param p3, "status"    # I
    .param p4, "inBytes"    # I
    .param p5, "outBytes"    # I
    .param p6, "corrId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->isSDKEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v10, "corrHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p6, :cond_0

    .line 109
    const-string v1, "corrId"

    move-object/from16 v0, p6

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    move/from16 v0, p4

    int-to-long v5, v0

    move/from16 v0, p5

    int-to-long v7, v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p3

    move-wide v3, p1

    invoke-static/range {v1 .. v12}, Lcom/ca/mdo/CAMobileDevOps;->getNetworkData(Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;

    move-result-object v13

    .line 112
    .local v13, "networkData":Lcom/ca/mdo/Network;
    invoke-static {v13}, Lcom/ca/mdo/CAMobileDevOps;->httpPerformance(Lcom/ca/mdo/Network;)V

    .line 114
    .end local v10    # "corrHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "networkData":Lcom/ca/mdo/Network;
    :cond_1
    return-void
.end method

.method private processJSMessage(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 593
    const-string v5, "sendScreenShot"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 594
    const-string v5, "screenname"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 595
    .local v4, "screenName":Ljava/lang/String;
    const-string v5, "quality"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 596
    .local v2, "quality":Ljava/lang/String;
    invoke-direct {p0, p1, v4, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->takeScreenshot(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "quality":Ljava/lang/String;
    .end local v4    # "screenName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 597
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v5, "getAPMHeaders"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 598
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAPMHeaders(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 656
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 657
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "Error in processing javascript integration api call."

    invoke-static {v5, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 599
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "setCustomerLocation"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 600
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->setCustomerLocation(Ljava/util/Map;)V

    goto :goto_0

    .line 601
    :cond_3
    const-string v5, "setSessionAttribute"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 602
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->setSessionAttribute(Ljava/util/Map;)V

    goto :goto_0

    .line 603
    :cond_4
    const-string v5, "startApplicationTransaction"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 604
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->startApplicationTransaction(Ljava/util/Map;)V

    goto :goto_0

    .line 605
    :cond_5
    const-string v5, "stopApplicationTransaction"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 606
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->stopApplicationTransaction(Ljava/util/Map;)V

    goto :goto_0

    .line 607
    :cond_6
    const-string v5, "setCustomerFeedback"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 608
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->setCustomerFeedback(Ljava/util/Map;)V

    goto :goto_0

    .line 609
    :cond_7
    const-string v5, "isSDKEnabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 610
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->isSDKEnabled(Ljava/util/Map;)V

    goto :goto_0

    .line 611
    :cond_8
    const-string v5, "isInPrivateZone"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 612
    invoke-virtual {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->isInPrivateZone(Ljava/util/Map;)V

    goto :goto_0

    .line 613
    :cond_9
    const-string v5, "enableSDK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 614
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->enableSDK(Ljava/util/Map;)V

    goto :goto_0

    .line 615
    :cond_a
    const-string v5, "exitPrivateZone"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 616
    invoke-virtual {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->exitPrivateZone(Ljava/util/Map;)V

    goto :goto_0

    .line 617
    :cond_b
    const-string v5, "disableSDK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 618
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->disableSDK(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 619
    :cond_c
    const-string v5, "enterPrivateZone"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 620
    invoke-virtual {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->enterPrivateZone(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 621
    :cond_d
    const-string v5, "isScreenshotPolicyEnabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 622
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->isScreenshotPolicyEnabled(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 623
    :cond_e
    const-string v5, "stopCurrentAndStartNewSession"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 624
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->stopCurrentAndStartNewSession(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 625
    :cond_f
    const-string v5, "stopCurrentSession"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 626
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->stopCurrentSession(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 627
    :cond_10
    const-string v5, "startNewSession"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 628
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->startNewSession(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 629
    :cond_11
    const-string v5, "viewLoaded"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 630
    const-string v5, "screenname"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 631
    .restart local v4    # "screenName":Ljava/lang/String;
    const-string v5, "screenloadtime"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 632
    .local v3, "screenLoadTime":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 633
    invoke-direct {p0, p1, v4, v3}, Lcom/ca/android/app/JSCaMDOIntegration;->viewLoaded(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 635
    .end local v3    # "screenLoadTime":Ljava/lang/String;
    .end local v4    # "screenName":Ljava/lang/String;
    :cond_12
    const-string v5, "logNetworkEvent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 636
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->logNetworkEvent(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 637
    :cond_13
    const-string v5, "uploadEvents"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 638
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/ca/android/app/CaMDOIntegration;->uploadEvents(Lcom/ca/integration/CaMDOCallback;)V

    goto/16 :goto_0

    .line 639
    :cond_14
    const-string v5, "logTextMetric"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 640
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->logTextMetrics(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 641
    :cond_15
    const-string v5, "logNumericMetric"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 642
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->logNumericMetrics(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 643
    :cond_16
    const-string v5, "customerId"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 644
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCustomerId(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 645
    :cond_17
    const-string v5, "deviceId"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 646
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getDeviceId(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 647
    :cond_18
    const-string v5, "ignoreViews"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 648
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->ignoreViews(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 649
    :cond_19
    const-string v5, "addToAPMHeader"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 650
    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->addToApmHeader(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 652
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not match with any supported api"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setCustomerFeedback(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 373
    .local v2, "error":Ljava/lang/String;
    const-string v4, "feedback"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 374
    .local v3, "feedback":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/ca/android/app/AnalyticsAgent;->setCustomerFeedbackOnIntegration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    if-eqz v0, :cond_0

    .line 382
    if-eqz v2, :cond_1

    .line 383
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_1
    return-void

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while setCustomerFeedback from JS API:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    const-string v2, "failed to set customer feedback"

    goto :goto_0

    .line 385
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCustomerLocation(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 193
    .local v3, "error":Ljava/lang/String;
    const-string v8, "zipcode"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 194
    .local v7, "zipCode":Ljava/lang/String;
    const-string v8, "countryCode"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    .local v1, "countryCode":Ljava/lang/String;
    const-string v8, "latitude"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 196
    .local v4, "latitude":Ljava/lang/String;
    const-string v8, "longitude"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 197
    .local v6, "longitude":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "callbackFunName":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v8

    invoke-interface {v8, v7, v1}, Lcom/ca/android/app/AnalyticsAgent;->setCustomerLocationOnIntegration(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 203
    new-instance v5, Landroid/location/Location;

    const-string v8, "user"

    invoke-direct {v5, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 204
    .local v5, "loc":Landroid/location/Location;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 205
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 206
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/ca/android/app/AnalyticsAgent;->setCustomerLocationOnIntegration(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v5    # "loc":Landroid/location/Location;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 213
    if-eqz v3, :cond_3

    .line 214
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v0, v8, v9, v3}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2
    :goto_1
    return-void

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while setCustomerLocation from JS API:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const-string v3, "failed to add set customer location"

    goto :goto_0

    .line 216
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v8, v9, v3}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setSessionAttribute(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 223
    .local v2, "error":Ljava/lang/String;
    const-string v4, ""

    .line 225
    .local v4, "returnVal":Ljava/lang/String;
    const-string v7, "type"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 226
    .local v5, "type":Ljava/lang/String;
    const-string v7, "value"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 227
    .local v6, "value":Ljava/lang/String;
    const-string v7, "key"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v7

    invoke-interface {v7, v5, v3, v6}, Lcom/ca/android/app/AnalyticsAgent;->setSessionAttributeOnIntegration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    if-eqz v0, :cond_0

    .line 237
    if-eqz v2, :cond_1

    .line 238
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v0, v7, v8, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while setSessionAttribute from JS API:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const-string v2, "failed to add session attribute"

    goto :goto_0

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startApplicationTransaction(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "transactionName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 248
    .local v2, "transactionName":Ljava/lang/String;
    const-string v3, "serviceName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 250
    .local v1, "serviceName":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 251
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v4

    invoke-interface {v3, v2, v1, v4}, Lcom/ca/android/app/AnalyticsAgent;->startApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V

    .line 258
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/ca/android/app/AnalyticsAgent;->startApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while startApplicationTransaction from JS API:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startNewSession(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 798
    .local v1, "error":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "callbackFunName":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->startNewSession()V

    .line 800
    if-eqz v0, :cond_0

    .line 801
    if-eqz v1, :cond_1

    .line 802
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopApplicationTransaction(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "transactionName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 284
    .local v2, "transactionName":Ljava/lang/String;
    const-string v3, "failure"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    .local v1, "failure":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 287
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v4

    invoke-interface {v3, v2, v1, v4}, Lcom/ca/android/app/AnalyticsAgent;->stopApplicationTransactionOnIntegration(Ljava/lang/String;Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/ca/android/app/AnalyticsAgent;->stopApplicationTransactionOnIntegration(Ljava/lang/String;Lcom/ca/integration/CaMDOCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while stopApplicationTransaction from JS API:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopCurrentAndStartNewSession(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 769
    .local v1, "error":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "callbackFunName":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->stopCurrentAndStartNewSession()V

    .line 771
    if-eqz v0, :cond_0

    .line 772
    if-eqz v1, :cond_1

    .line 773
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopCurrentSession(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 784
    .local v1, "error":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "callbackFunName":Ljava/lang/String;
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->stopCurrentSession()V

    .line 786
    if-eqz v0, :cond_0

    .line 787
    if-eqz v1, :cond_1

    .line 788
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private takeScreenshot(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "quality"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Lcom/ca/mdo/CAMobileDevOps;->getQuality(Ljava/lang/String;)I

    move-result v0

    .line 739
    .local v0, "qualityOfScreenShot":I
    iget-object v1, p0, Lcom/ca/android/app/JSCaMDOIntegration;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ca/android/app/JSCaMDOIntegration$3;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/ca/android/app/JSCaMDOIntegration$3;-><init>(Lcom/ca/android/app/JSCaMDOIntegration;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 745
    return-void
.end method

.method private viewLoaded(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "screenLoadTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 752
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 754
    .local v1, "screenTime":I
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 759
    :goto_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->isCrossWalk()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    const/4 v2, 0x0

    invoke-static {v2, p2, v1}, Lcom/ca/android/app/CaMDOWebView;->registerxWalkBitMapCallback(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;I)V

    .line 764
    :goto_1
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 762
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    int-to-long v2, v1

    invoke-direct {p0, p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v4

    invoke-static {p2, v2, v3, v4}, Lcom/ca/mdo/CAMobileDevOps;->viewLoaded(Ljava/lang/String;JLcom/ca/integration/CaMDOCallback;)V

    goto :goto_1
.end method


# virtual methods
.method public enterPrivateZone(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 506
    .local v2, "error":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->enterPrivateZone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    if-eqz v0, :cond_0

    .line 514
    if-eqz v2, :cond_1

    .line 515
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_0
    :goto_1
    return-void

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while enterPrivateZone from JS API:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    const-string v2, "failed to enter private zone"

    goto :goto_0

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitPrivateZone(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 468
    .local v2, "error":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->exitPrivateZone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    if-eqz v0, :cond_0

    .line 476
    if-eqz v2, :cond_1

    .line 477
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_1
    return-void

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while exitPrivateZone from JS API:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    const-string v2, "failed to exit private zone"

    goto :goto_0

    .line 479
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isInPrivateZone(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 442
    .local v2, "error":Ljava/lang/String;
    const/4 v4, 0x0

    .line 444
    .local v4, "returnVal":Ljava/lang/String;
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackFuncName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "callbackFunName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ca/android/app/CaMDOIntegration;->isInPrivateZone()Z

    move-result v3

    .line 447
    .local v3, "isEnabled":Z
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 452
    .end local v3    # "isEnabled":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 453
    if-eqz v2, :cond_1

    .line 454
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_0
    :goto_1
    return-void

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while isInPrivateZone from JS API:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    const-string v2, "failed to check if sdk is in private zone"

    goto :goto_0

    .line 456
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/ca/android/app/JSCaMDOIntegration;->getSuccessVal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "stringifiedJSON"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 580
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->getJSONAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 581
    .local v0, "jsMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/ca/android/app/JSCaMDOIntegration;->processJSMessage(Ljava/util/Map;)V

    .line 582
    return-void
.end method
