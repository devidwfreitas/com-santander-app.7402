.class public Latp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/SdkClickResponseData;

.field final synthetic b:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SdkClickResponseData;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Latp;->b:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Latp;->a:Lcom/adjust/sdk/SdkClickResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Latp;->b:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Latp;->a:Lcom/adjust/sdk/SdkClickResponseData;

    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$1800(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SdkClickResponseData;)V

    .line 463
    return-void
.end method
