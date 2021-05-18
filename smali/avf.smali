.class public Lavf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/AttributionHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AttributionHandler;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lavf;->a:Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lavf;->a:Lcom/adjust/sdk/AttributionHandler;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/adjust/sdk/AttributionHandler;->access$000(Lcom/adjust/sdk/AttributionHandler;J)V

    .line 76
    return-void
.end method
