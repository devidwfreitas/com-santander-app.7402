.class public Latr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/AttributionResponseData;

.field final synthetic b:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Latr;->b:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Latr;->a:Lcom/adjust/sdk/AttributionResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Latr;->b:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Latr;->a:Lcom/adjust/sdk/AttributionResponseData;

    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$2000(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    .line 483
    return-void
.end method
