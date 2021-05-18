.class Lcom/ca/mdo/AppMode;
.super Ljava/lang/Object;
.source "AppMode.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mdo/AppMode$Listener;
    }
.end annotation


# static fields
.field public static final CHECK_DELAY:J = 0x1f4L

.field public static initialized:Z

.field private static instance:Lcom/ca/mdo/AppMode;


# instance fields
.field private check:Ljava/lang/Runnable;

.field protected foreground:Z

.field private handler:Landroid/os/Handler;

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ca/mdo/AppMode$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ca/mdo/AppMode;->initialized:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ca/mdo/AppMode;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ca/mdo/AppMode;->paused:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ca/mdo/AppMode;->handler:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mdo/AppMode;->listeners:Ljava/util/List;

    return-void
.end method

.method public static get()Lcom/ca/mdo/AppMode;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/ca/mdo/AppMode;->instance:Lcom/ca/mdo/AppMode;

    return-object v0
.end method

.method public static get(Landroid/app/Application;)Lcom/ca/mdo/AppMode;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 71
    sget-object v0, Lcom/ca/mdo/AppMode;->instance:Lcom/ca/mdo/AppMode;

    if-nez v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/ca/mdo/AppMode;->init(Landroid/app/Application;)Lcom/ca/mdo/AppMode;

    .line 74
    :cond_0
    sget-object v0, Lcom/ca/mdo/AppMode;->instance:Lcom/ca/mdo/AppMode;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/ca/mdo/AppMode;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v1, Lcom/ca/mdo/AppMode;->instance:Lcom/ca/mdo/AppMode;

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, "appCtx":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Landroid/app/Application;

    .end local v0    # "appCtx":Landroid/content/Context;
    invoke-static {v0}, Lcom/ca/mdo/AppMode;->init(Landroid/app/Application;)Lcom/ca/mdo/AppMode;

    .line 85
    :cond_0
    sget-object v1, Lcom/ca/mdo/AppMode;->instance:Lcom/ca/mdo/AppMode;

    return-object v1
.end method

.method public static init(Landroid/app/Application;)Lcom/ca/mdo/AppMode;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/ca/mdo/AppMode;->instance:Lcom/ca/mdo/AppMode;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/ca/mdo/AppMode;

    invoke-direct {v0}, Lcom/ca/mdo/AppMode;-><init>()V

    sput-object v0, Lcom/ca/mdo/AppMode;->instance:Lcom/ca/mdo/AppMode;

    .line 62
    sget-object v0, Lcom/ca/mdo/AppMode;->instance:Lcom/ca/mdo/AppMode;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ca/mdo/AppMode;->initialized:Z

    .line 65
    :cond_0
    sget-object v0, Lcom/ca/mdo/AppMode;->instance:Lcom/ca/mdo/AppMode;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/ca/mdo/AppMode$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ca/mdo/AppMode$Listener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ca/mdo/AppMode;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public isBackground()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/ca/mdo/AppMode;->foreground:Z

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
    .line 94
    iget-boolean v0, p0, Lcom/ca/mdo/AppMode;->foreground:Z

    return v0
.end method

.method public mdoSync(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 193
    instance-of v3, p1, Lcom/ca/android/app/ScreenLoadTimeMeter;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 194
    check-cast v3, Lcom/ca/android/app/ScreenLoadTimeMeter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/ca/android/app/ScreenLoadTimeMeter;->setEndTime(J)V

    .line 196
    :cond_0
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->getSessionProcessed()Z

    move-result v0

    .line 197
    .local v0, "alreadyProcessed":Z
    if-nez v0, :cond_1

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v1, "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "onResume"

    invoke-static {p1, v3}, Lcom/ca/mdo/CAMobileDevOps;->processResumeActivityDetails(Landroid/app/Activity;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 200
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "jsonObj"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v3, "currentTimeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/ca/mdo/CAMobileDevOps;->sendSessionStart(ILjava/util/Map;)V

    .line 204
    .end local v1    # "message":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ca/mdo/AppMode;->paused:Z

    .line 141
    iget-object v0, p0, Lcom/ca/mdo/AppMode;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/ca/mdo/AppMode;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ca/mdo/AppMode;->check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    :cond_0
    new-instance v0, Lcom/ca/mdo/AppModeActivityStateCheck;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ca/mdo/AppModeActivityStateCheck;-><init>(Lcom/ca/mdo/AppMode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ca/mdo/AppMode;->check:Ljava/lang/Runnable;

    .line 164
    iget-object v0, p0, Lcom/ca/mdo/AppMode;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ca/mdo/AppMode;->check:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    iput-boolean v2, p0, Lcom/ca/mdo/AppMode;->paused:Z

    .line 114
    iget-boolean v4, p0, Lcom/ca/mdo/AppMode;->foreground:Z

    if-nez v4, :cond_0

    move v2, v3

    .line 115
    .local v2, "wasBackground":Z
    :cond_0
    iput-boolean v3, p0, Lcom/ca/mdo/AppMode;->foreground:Z

    .line 117
    iget-object v3, p0, Lcom/ca/mdo/AppMode;->check:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/ca/mdo/AppMode;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ca/mdo/AppMode;->check:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    :cond_1
    if-eqz v2, :cond_2

    .line 121
    const-string v3, "went foreground"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/ca/mdo/CAMobileDevOps;->appEnteredForeGroundEvent()V

    .line 123
    invoke-virtual {p0, p1}, Lcom/ca/mdo/AppMode;->mdoSync(Landroid/app/Activity;)V

    .line 124
    iget-object v3, p0, Lcom/ca/mdo/AppMode;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mdo/AppMode$Listener;

    .line 126
    .local v1, "l":Lcom/ca/mdo/AppMode$Listener;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/ca/mdo/AppMode$Listener;->onBecameForeground(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "exc":Ljava/lang/Exception;
    const-string v4, "Listener threw exception!"

    invoke-static {v4, v0}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 132
    .end local v0    # "exc":Ljava/lang/Exception;
    .end local v1    # "l":Lcom/ca/mdo/AppMode$Listener;
    :cond_2
    const-string v3, "still foreground"

    invoke-static {v3}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 134
    :cond_3
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    return-void
.end method

.method public removeListener(Lcom/ca/mdo/AppMode$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ca/mdo/AppMode$Listener;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ca/mdo/AppMode;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method
