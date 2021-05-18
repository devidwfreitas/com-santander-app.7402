.class public Laua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Laua;->c:Lcom/adjust/sdk/ActivityHandler;

    iput-boolean p2, p0, Laua;->a:Z

    iput-object p3, p0, Laua;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 562
    iget-boolean v0, p0, Laua;->a:Z

    if-nez v0, :cond_0

    .line 563
    new-instance v0, Lcom/adjust/sdk/SharedPreferencesManager;

    iget-object v1, p0, Laua;->c:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;-><init>(Landroid/content/Context;)V

    .line 564
    iget-object v1, p0, Laua;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/SharedPreferencesManager;->savePushToken(Ljava/lang/String;)V

    .line 567
    :cond_0
    iget-object v0, p0, Laua;->c:Lcom/adjust/sdk/ActivityHandler;

    invoke-static {v0}, Lcom/adjust/sdk/ActivityHandler;->access$900(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Laua;->c:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Laua;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adjust/sdk/ActivityHandler;->access$2200(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;)V

    goto :goto_0
.end method
