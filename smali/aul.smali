.class public Laul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/SessionResponseData;

.field final synthetic b:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Laul;->b:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Laul;->a:Lcom/adjust/sdk/SessionResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Laul;->b:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$2500(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-object v0, p0, Laul;->b:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$2500(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Laul;->b:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$2500(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    iget-object v1, p0, Laul;->a:Lcom/adjust/sdk/SessionResponseData;

    invoke-virtual {v1}, Lcom/adjust/sdk/SessionResponseData;->getFailureResponseData()Lcom/adjust/sdk/AdjustSessionFailure;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/OnSessionTrackingFailedListener;->onFinishedSessionTrackingFailed(Lcom/adjust/sdk/AdjustSessionFailure;)V

    goto :goto_0
.end method
