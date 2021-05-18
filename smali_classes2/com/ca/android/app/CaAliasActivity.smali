.class public Lcom/ca/android/app/CaAliasActivity;
.super Landroid/app/AliasActivity;
.source "CaAliasActivity.java"

# interfaces
.implements Lcom/ca/android/app/ScreenLoadTimeMeter;


# instance fields
.field private mdoEndTime:J

.field private mdoStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 12
    invoke-direct {p0}, Landroid/app/AliasActivity;-><init>()V

    .line 87
    iput-wide v0, p0, Lcom/ca/android/app/CaAliasActivity;->mdoStartTime:J

    .line 88
    iput-wide v0, p0, Lcom/ca/android/app/CaAliasActivity;->mdoEndTime:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/ca/android/app/CaAliasActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/android/app/AnalyticsAgent;->dispatchTouchEventOfActivity(Landroid/view/MotionEvent;)V

    .line 63
    invoke-super {p0, p1}, Landroid/app/AliasActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public geStartTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/ca/android/app/CaAliasActivity;->mdoStartTime:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/ca/android/app/CaAliasActivity;->mdoEndTime:J

    return-wide v0
.end method

.method public getLoadTime()J
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/ca/android/app/CaAliasActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->getIntervalOnActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/AliasActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/ca/android/app/CaAliasActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onCreateOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 18
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/ca/android/app/CaAliasActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onPauseOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 38
    invoke-super {p0}, Landroid/app/AliasActivity;->onPause()V

    .line 39
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/ca/android/app/CaAliasActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onRestartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 50
    invoke-super {p0}, Landroid/app/AliasActivity;->onRestart()V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/AliasActivity;->onResume()V

    .line 24
    invoke-virtual {p0}, Lcom/ca/android/app/CaAliasActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onResumeOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/AliasActivity;->onStart()V

    .line 31
    invoke-virtual {p0}, Lcom/ca/android/app/CaAliasActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 32
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/ca/android/app/CaAliasActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStopOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 44
    invoke-super {p0}, Landroid/app/AliasActivity;->onStop()V

    .line 45
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/ca/android/app/CaAliasActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->onWindowFocusChangedOfActivity(Landroid/app/Activity;Z)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/AliasActivity;->onWindowFocusChanged(Z)V

    .line 57
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "mdoEndTime"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/ca/android/app/CaAliasActivity;->mdoEndTime:J

    .line 77
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "mdoStartTime"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/ca/android/app/CaAliasActivity;->mdoStartTime:J

    .line 71
    return-void
.end method
