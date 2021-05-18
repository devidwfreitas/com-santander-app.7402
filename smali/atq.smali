.class public Latq;
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
    .line 469
    iput-object p1, p0, Latq;->b:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Latq;->a:Lcom/adjust/sdk/SessionResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Latq;->b:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Latq;->a:Lcom/adjust/sdk/SessionResponseData;

    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$1900(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    .line 473
    return-void
.end method
