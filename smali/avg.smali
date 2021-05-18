.class public Lavg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/SessionResponseData;

.field final synthetic b:Lcom/adjust/sdk/AttributionHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lavg;->b:Lcom/adjust/sdk/AttributionHandler;

    iput-object p2, p0, Lavg;->a:Lcom/adjust/sdk/SessionResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lavg;->b:Lcom/adjust/sdk/AttributionHandler;

    invoke-static {v0}, Lcom/adjust/sdk/AttributionHandler;->access$100(Lcom/adjust/sdk/AttributionHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 86
    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lavg;->b:Lcom/adjust/sdk/AttributionHandler;

    iget-object v2, p0, Lavg;->a:Lcom/adjust/sdk/SessionResponseData;

    invoke-static {v1, v0, v2}, Lcom/adjust/sdk/AttributionHandler;->access$200(Lcom/adjust/sdk/AttributionHandler;Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    goto :goto_0
.end method
