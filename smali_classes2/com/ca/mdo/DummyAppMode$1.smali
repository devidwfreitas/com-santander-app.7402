.class Lcom/ca/mdo/DummyAppMode$1;
.super Ljava/lang/Object;
.source "DummyAppMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mdo/DummyAppMode;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/mdo/DummyAppMode;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ca/mdo/DummyAppMode;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/mdo/DummyAppMode;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ca/mdo/DummyAppMode$1;->this$0:Lcom/ca/mdo/DummyAppMode;

    iput-object p2, p0, Lcom/ca/mdo/DummyAppMode$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 131
    iget-object v2, p0, Lcom/ca/mdo/DummyAppMode$1;->this$0:Lcom/ca/mdo/DummyAppMode;

    invoke-static {v2}, Lcom/ca/mdo/DummyAppMode;->access$000(Lcom/ca/mdo/DummyAppMode;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ca/mdo/DummyAppMode$1;->this$0:Lcom/ca/mdo/DummyAppMode;

    invoke-static {v2}, Lcom/ca/mdo/DummyAppMode;->access$100(Lcom/ca/mdo/DummyAppMode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/ca/mdo/DummyAppMode$1;->this$0:Lcom/ca/mdo/DummyAppMode;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ca/mdo/DummyAppMode;->access$002(Lcom/ca/mdo/DummyAppMode;Z)Z

    .line 133
    iget-object v2, p0, Lcom/ca/mdo/DummyAppMode$1;->this$0:Lcom/ca/mdo/DummyAppMode;

    invoke-static {v2}, Lcom/ca/mdo/DummyAppMode;->access$200(Lcom/ca/mdo/DummyAppMode;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mdo/DummyAppMode$Listener;

    .line 135
    .local v1, "l":Lcom/ca/mdo/DummyAppMode$Listener;
    :try_start_0
    iget-object v3, p0, Lcom/ca/mdo/DummyAppMode$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/ca/mdo/DummyAppMode$Listener;->onBecameBackground(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "exc":Ljava/lang/Exception;
    const-string v3, "Listener threw exception!"

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v0    # "exc":Ljava/lang/Exception;
    .end local v1    # "l":Lcom/ca/mdo/DummyAppMode$Listener;
    :cond_0
    return-void
.end method
