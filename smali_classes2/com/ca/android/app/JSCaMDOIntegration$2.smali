.class Lcom/ca/android/app/JSCaMDOIntegration$2;
.super Ljava/lang/Object;
.source "JSCaMDOIntegration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/android/app/JSCaMDOIntegration;->executeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/android/app/JSCaMDOIntegration;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$callbackFunName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ca/android/app/JSCaMDOIntegration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/android/app/JSCaMDOIntegration;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/ca/android/app/JSCaMDOIntegration$2;->this$0:Lcom/ca/android/app/JSCaMDOIntegration;

    iput-object p2, p0, Lcom/ca/android/app/JSCaMDOIntegration$2;->val$callback:Ljava/lang/String;

    iput-object p3, p0, Lcom/ca/android/app/JSCaMDOIntegration$2;->val$callbackFunName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration$2;->this$0:Lcom/ca/android/app/JSCaMDOIntegration;

    invoke-static {v0}, Lcom/ca/android/app/JSCaMDOIntegration;->access$400(Lcom/ca/android/app/JSCaMDOIntegration;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration$2;->this$0:Lcom/ca/android/app/JSCaMDOIntegration;

    invoke-static {v0}, Lcom/ca/android/app/JSCaMDOIntegration;->access$400(Lcom/ca/android/app/JSCaMDOIntegration;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/app/JSCaMDOIntegration$2;->val$callback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/ca/android/app/JSCaMDOIntegration$2;->this$0:Lcom/ca/android/app/JSCaMDOIntegration;

    invoke-static {v0}, Lcom/ca/android/app/JSCaMDOIntegration;->access$400(Lcom/ca/android/app/JSCaMDOIntegration;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:delete window["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ca/android/app/JSCaMDOIntegration$2;->val$callbackFunName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 573
    :cond_0
    return-void
.end method
