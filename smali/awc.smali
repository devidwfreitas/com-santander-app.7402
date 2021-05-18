.class public Lawc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adjust/sdk/SdkClickHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/SdkClickHandler;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lawc;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lawc;->a:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$400(Lcom/adjust/sdk/SdkClickHandler;)V

    .line 225
    return-void
.end method
