.class Lcom/ca/android/app/JSCaMDOIntegration$3;
.super Ljava/lang/Object;
.source "JSCaMDOIntegration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/android/app/JSCaMDOIntegration;->takeScreenshot(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/android/app/JSCaMDOIntegration;

.field final synthetic val$jsMessage:Ljava/util/Map;

.field final synthetic val$qualityOfScreenShot:I

.field final synthetic val$screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ca/android/app/JSCaMDOIntegration;Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/android/app/JSCaMDOIntegration;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/ca/android/app/JSCaMDOIntegration$3;->this$0:Lcom/ca/android/app/JSCaMDOIntegration;

    iput-object p2, p0, Lcom/ca/android/app/JSCaMDOIntegration$3;->val$screenName:Ljava/lang/String;

    iput p3, p0, Lcom/ca/android/app/JSCaMDOIntegration$3;->val$qualityOfScreenShot:I

    iput-object p4, p0, Lcom/ca/android/app/JSCaMDOIntegration$3;->val$jsMessage:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 742
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/ca/android/app/JSCaMDOIntegration$3;->val$screenName:Ljava/lang/String;

    iget v2, p0, Lcom/ca/android/app/JSCaMDOIntegration$3;->val$qualityOfScreenShot:I

    iget-object v3, p0, Lcom/ca/android/app/JSCaMDOIntegration$3;->this$0:Lcom/ca/android/app/JSCaMDOIntegration;

    iget-object v4, p0, Lcom/ca/android/app/JSCaMDOIntegration$3;->val$jsMessage:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/ca/android/app/JSCaMDOIntegration;->access$500(Lcom/ca/android/app/JSCaMDOIntegration;Ljava/util/Map;)Lcom/ca/integration/CaMDOCallback;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ca/android/app/AnalyticsAgent;->takeScreenshotOnIntegration(Ljava/lang/String;ILcom/ca/integration/CaMDOCallback;)V

    .line 743
    return-void
.end method
