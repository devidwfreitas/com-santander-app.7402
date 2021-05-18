.class public Latz;
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
    .line 549
    iput-object p1, p0, Latz;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Latz;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->resetSessionPartnerParametersI()V

    .line 553
    return-void
.end method
