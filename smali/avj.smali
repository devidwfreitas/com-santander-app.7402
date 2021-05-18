.class public Lavj;
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
    .line 134
    iput-object p1, p0, Lavj;->a:Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lavj;->a:Lcom/adjust/sdk/AttributionHandler;

    invoke-static {v0}, Lcom/adjust/sdk/AttributionHandler;->access$500(Lcom/adjust/sdk/AttributionHandler;)V

    .line 138
    return-void
.end method
