.class public abstract Lcom/ca/mdo/DefaultAnalyticsAgentImpl;
.super Ljava/lang/Object;
.source "DefaultAnalyticsAgentImpl.java"

# interfaces
.implements Lcom/ca/android/app/AnalyticsAgent;


# instance fields
.field protected application:Landroid/app/Application;

.field private lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkIfInit()V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->init()V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->checkIfInit()V

    .line 31
    iget-object v0, p0, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 32
    return-void
.end method

.method register(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p1, "lifecycleCallbacks"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 20
    return-void
.end method

.method register(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->application:Landroid/app/Application;

    .line 16
    return-void
.end method

.method public resume()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->checkIfInit()V

    .line 38
    iget-object v0, p0, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/ca/mdo/DefaultAnalyticsAgentImpl;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 39
    return-void
.end method
