.class public Lato;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/EventResponseData;

.field final synthetic b:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lato;->b:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lato;->a:Lcom/adjust/sdk/EventResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lato;->b:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lato;->a:Lcom/adjust/sdk/EventResponseData;

    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$1700(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    .line 453
    return-void
.end method
