.class public Lcom/ca/mdo/DummyAppMode;
.super Ljava/lang/Object;
.source "DummyAppMode.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mdo/DummyAppMode$Listener;
    }
.end annotation


# static fields
.field public static final CHECK_DELAY:J = 0x1f4L

.field public static initialized:Z

.field private static instance:Lcom/ca/mdo/DummyAppMode;


# instance fields
.field private check:Ljava/lang/Runnable;

.field private foreground:Z

.field private handler:Landroid/os/Handler;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ca/mdo/DummyAppMode$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ca/mdo/DummyAppMode;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ca/mdo/DummyAppMode;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ca/mdo/DummyAppMode;->paused:Z

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ca/mdo/DummyAppMode;->handler:Landroid/os/Handler;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mdo/DummyAppMode;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ca/mdo/DummyAppMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ca/mdo/DummyAppMode;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/ca/mdo/DummyAppMode;->foreground:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ca/mdo/DummyAppMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ca/mdo/DummyAppMode;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ca/mdo/DummyAppMode;->foreground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ca/mdo/DummyAppMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ca/mdo/DummyAppMode;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/ca/mdo/DummyAppMode;->paused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ca/mdo/DummyAppMode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ca/mdo/DummyAppMode;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ca/mdo/DummyAppMode;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static get()Lcom/ca/mdo/DummyAppMode;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/ca/mdo/DummyAppMode;->instance:Lcom/ca/mdo/DummyAppMode;

    return-object v0
.end method

.method public static get(Landroid/app/Application;)Lcom/ca/mdo/DummyAppMode;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 61
    sget-object v0, Lcom/ca/mdo/DummyAppMode;->instance:Lcom/ca/mdo/DummyAppMode;

    if-nez v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/ca/mdo/DummyAppMode;->init(Landroid/app/Application;)Lcom/ca/mdo/DummyAppMode;

    .line 64
    :cond_0
    sget-object v0, Lcom/ca/mdo/DummyAppMode;->instance:Lcom/ca/mdo/DummyAppMode;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/ca/mdo/DummyAppMode;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v1, Lcom/ca/mdo/DummyAppMode;->instance:Lcom/ca/mdo/DummyAppMode;

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "appCtx":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Landroid/app/Application;

    .end local v0    # "appCtx":Landroid/content/Context;
    invoke-static {v0}, Lcom/ca/mdo/DummyAppMode;->init(Landroid/app/Application;)Lcom/ca/mdo/DummyAppMode;

    .line 75
    :cond_0
    sget-object v1, Lcom/ca/mdo/DummyAppMode;->instance:Lcom/ca/mdo/DummyAppMode;

    return-object v1
.end method

.method public static init(Landroid/app/Application;)Lcom/ca/mdo/DummyAppMode;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/ca/mdo/DummyAppMode;->instance:Lcom/ca/mdo/DummyAppMode;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/ca/mdo/DummyAppMode;

    invoke-direct {v0}, Lcom/ca/mdo/DummyAppMode;-><init>()V

    sput-object v0, Lcom/ca/mdo/DummyAppMode;->instance:Lcom/ca/mdo/DummyAppMode;

    .line 52
    sget-object v0, Lcom/ca/mdo/DummyAppMode;->instance:Lcom/ca/mdo/DummyAppMode;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/DummyAppMode;->initialized:Z

    .line 55
    :cond_0
    sget-object v0, Lcom/ca/mdo/DummyAppMode;->instance:Lcom/ca/mdo/DummyAppMode;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/ca/mdo/DummyAppMode$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ca/mdo/DummyAppMode$Listener;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ca/mdo/DummyAppMode;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public isBackground()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/ca/mdo/DummyAppMode;->foreground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/ca/mdo/DummyAppMode;->foreground:Z

    return v0
.end method

.method public mdoSync(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 171
    invoke-static {}, Lcom/ca/mdo/PolicyUtil;->refreshPolicy()V

    .line 172
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ca/mdo/DummyAppMode;->paused:Z

    .line 126
    iget-object v0, p0, Lcom/ca/mdo/DummyAppMode;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/ca/mdo/DummyAppMode;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ca/mdo/DummyAppMode;->check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/ca/mdo/DummyAppMode;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ca/mdo/DummyAppMode$1;

    invoke-direct {v1, p0, p1}, Lcom/ca/mdo/DummyAppMode$1;-><init>(Lcom/ca/mdo/DummyAppMode;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/ca/mdo/DummyAppMode;->check:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    iput-boolean v2, p0, Lcom/ca/mdo/DummyAppMode;->paused:Z

    .line 104
    iget-boolean v4, p0, Lcom/ca/mdo/DummyAppMode;->foreground:Z

    if-nez v4, :cond_0

    move v2, v3

    .line 105
    .local v2, "wasBackground":Z
    :cond_0
    iput-boolean v3, p0, Lcom/ca/mdo/DummyAppMode;->foreground:Z

    .line 107
    iget-object v3, p0, Lcom/ca/mdo/DummyAppMode;->check:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/ca/mdo/DummyAppMode;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ca/mdo/DummyAppMode;->check:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    :cond_1
    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {p0, p1}, Lcom/ca/mdo/DummyAppMode;->mdoSync(Landroid/app/Activity;)V

    .line 112
    iget-object v3, p0, Lcom/ca/mdo/DummyAppMode;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mdo/DummyAppMode$Listener;

    .line 114
    .local v1, "l":Lcom/ca/mdo/DummyAppMode$Listener;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/ca/mdo/DummyAppMode$Listener;->onBecameForeground(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "exc":Ljava/lang/Exception;
    const-string v4, "Listener threw exception!"

    invoke-static {v4, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v0    # "exc":Ljava/lang/Exception;
    .end local v1    # "l":Lcom/ca/mdo/DummyAppMode$Listener;
    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 153
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 158
    return-void
.end method

.method public removeListener(Lcom/ca/mdo/DummyAppMode$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ca/mdo/DummyAppMode$Listener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ca/mdo/DummyAppMode;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method
