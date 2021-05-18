.class public Lcom/ca/mdo/AppModeActivityStateCheck;
.super Ljava/lang/Object;
.source "AppModeActivityStateCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private appMode:Lcom/ca/mdo/AppMode;

.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/ca/mdo/AppMode;Landroid/content/Context;)V
    .locals 0
    .param p1, "appMode"    # Lcom/ca/mdo/AppMode;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ca/mdo/AppModeActivityStateCheck;->appMode:Lcom/ca/mdo/AppMode;

    .line 16
    iput-object p2, p0, Lcom/ca/mdo/AppModeActivityStateCheck;->ctx:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 21
    iget-object v2, p0, Lcom/ca/mdo/AppModeActivityStateCheck;->appMode:Lcom/ca/mdo/AppMode;

    iget-boolean v2, v2, Lcom/ca/mdo/AppMode;->foreground:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ca/mdo/AppModeActivityStateCheck;->appMode:Lcom/ca/mdo/AppMode;

    iget-boolean v2, v2, Lcom/ca/mdo/AppMode;->paused:Z

    if-eqz v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/ca/mdo/AppModeActivityStateCheck;->appMode:Lcom/ca/mdo/AppMode;

    iput-boolean v3, v2, Lcom/ca/mdo/AppMode;->foreground:Z

    .line 23
    const-string v2, "went background"

    invoke-static {v2}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->appEnteredBackGroundEvent()V

    .line 25
    invoke-static {v3}, Lcom/ca/mdo/CAMobileDevOps;->setSessionProcessed(Z)V

    .line 26
    iget-object v2, p0, Lcom/ca/mdo/AppModeActivityStateCheck;->appMode:Lcom/ca/mdo/AppMode;

    iget-object v2, v2, Lcom/ca/mdo/AppMode;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mdo/AppMode$Listener;

    .line 28
    .local v1, "l":Lcom/ca/mdo/AppMode$Listener;
    :try_start_0
    iget-object v3, p0, Lcom/ca/mdo/AppModeActivityStateCheck;->ctx:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/ca/mdo/AppMode$Listener;->onBecameBackground(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "exc":Ljava/lang/Exception;
    const-string v3, "Listener threw exception!"

    invoke-static {v3, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 34
    .end local v0    # "exc":Ljava/lang/Exception;
    .end local v1    # "l":Lcom/ca/mdo/AppMode$Listener;
    :cond_0
    const-string v2, "still foreground"

    invoke-static {v2}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 36
    :cond_1
    iput-object v4, p0, Lcom/ca/mdo/AppModeActivityStateCheck;->appMode:Lcom/ca/mdo/AppMode;

    .line 37
    iput-object v4, p0, Lcom/ca/mdo/AppModeActivityStateCheck;->ctx:Landroid/content/Context;

    .line 38
    return-void
.end method
