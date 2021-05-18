.class public Lauo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/AdjustEvent;

.field final synthetic b:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lauo;->b:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lauo;->a:Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lauo;->b:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$900(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lauo;->b:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$400(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Event tracked before first activity resumed.\nIf it was triggered in the Application class, it might timestamp or even send an install long before the user opens the app.\nPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lauo;->b:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$500(Lcom/adjust/sdk/ActivityHandler;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lauo;->b:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lauo;->a:Lcom/adjust/sdk/AdjustEvent;

    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$1000(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V

    .line 321
    return-void
.end method
