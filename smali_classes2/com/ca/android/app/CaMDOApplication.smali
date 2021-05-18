.class public Lcom/ca/android/app/CaMDOApplication;
.super Landroid/app/Application;
.source "CaMDOApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/android/app/AnalyticsAgent;->onConfigurationChangedOfApplication(Landroid/content/res/Configuration;)V

    .line 45
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    invoke-static {p0}, Lcom/ca/mdo/SDK;->initialize(Landroid/app/Application;)V

    .line 17
    invoke-static {p0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onCreateOfApplication(Landroid/app/Application;)V

    .line 19
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->onLowMemoryOfApplication()V

    .line 24
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 25
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/android/app/AnalyticsAgent;->onTerminateOfApplication()V

    .line 33
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 34
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/android/app/AnalyticsAgent;->onTrimMemoryOfApplication(I)V

    .line 39
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 40
    return-void
.end method
