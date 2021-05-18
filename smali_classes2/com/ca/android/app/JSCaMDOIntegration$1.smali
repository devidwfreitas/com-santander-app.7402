.class Lcom/ca/android/app/JSCaMDOIntegration$1;
.super Lcom/ca/integration/CaMDOCallback;
.source "JSCaMDOIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/android/app/JSCaMDOIntegration;->getCallbackObj(Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field callbackFunName:Ljava/lang/String;

.field final synthetic this$0:Lcom/ca/android/app/JSCaMDOIntegration;

.field final synthetic val$jsMessage:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ca/android/app/JSCaMDOIntegration;Landroid/os/Handler;Ljava/util/Map;)V
    .locals 1
    .param p1, "this$0"    # Lcom/ca/android/app/JSCaMDOIntegration;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->this$0:Lcom/ca/android/app/JSCaMDOIntegration;

    iput-object p3, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->val$jsMessage:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/ca/integration/CaMDOCallback;-><init>(Landroid/os/Handler;)V

    .line 263
    iget-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->val$jsMessage:Ljava/util/Map;

    invoke-static {v0}, Lcom/ca/android/app/JSCaMDOIntegration;->access$000(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->callbackFunName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->callbackFunName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->this$0:Lcom/ca/android/app/JSCaMDOIntegration;

    iget-object v1, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->callbackFunName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->val$jsMessage:Ljava/util/Map;

    invoke-static {v2}, Lcom/ca/android/app/JSCaMDOIntegration;->access$100(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ca/android/app/JSCaMDOIntegration;->access$200(Lcom/ca/android/app/JSCaMDOIntegration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 274
    iget-object v1, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->callbackFunName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 275
    invoke-static {p1}, Lcom/ca/android/app/JSCaMDOIntegration;->access$300(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "bundleData":Ljava/lang/String;
    iget-object v1, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->this$0:Lcom/ca/android/app/JSCaMDOIntegration;

    iget-object v2, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->callbackFunName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ca/android/app/JSCaMDOIntegration$1;->val$jsMessage:Ljava/util/Map;

    invoke-static {v3}, Lcom/ca/android/app/JSCaMDOIntegration;->access$100(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/ca/android/app/JSCaMDOIntegration;->access$200(Lcom/ca/android/app/JSCaMDOIntegration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v0    # "bundleData":Ljava/lang/String;
    :cond_0
    return-void
.end method
