.class public Latx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Latx;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Latx;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$100(Lcom/adjust/sdk/ActivityHandler;)V

    .line 280
    iget-object v0, p0, Latx;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$200(Lcom/adjust/sdk/ActivityHandler;)V

    .line 282
    iget-object v0, p0, Latx;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$300(Lcom/adjust/sdk/ActivityHandler;)V

    .line 284
    iget-object v0, p0, Latx;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$400(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string v1, "Subsession start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Latx;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$500(Lcom/adjust/sdk/ActivityHandler;)V

    .line 287
    return-void
.end method
