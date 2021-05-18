.class public Lcom/ca/android/app/CaMDOActivityGroup;
.super Landroid/app/ActivityGroup;
.source "CaMDOActivityGroup.java"

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

    .line 19
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 96
    iput-wide v0, p0, Lcom/ca/android/app/CaMDOActivityGroup;->mdoStartTime:J

    .line 97
    iput-wide v0, p0, Lcom/ca/android/app/CaMDOActivityGroup;->mdoEndTime:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOActivityGroup;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/android/app/AnalyticsAgent;->dispatchTouchEventOfActivity(Landroid/view/MotionEvent;)V

    .line 72
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public geStartTime()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/ca/android/app/CaMDOActivityGroup;->mdoStartTime:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/ca/android/app/CaMDOActivityGroup;->mdoEndTime:J

    return-wide v0
.end method

.method public getLoadTime()J
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOActivityGroup;->getApplication()Landroid/app/Application;

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
    .line 24
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOActivityGroup;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onCreateOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOActivityGroup;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onPauseOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 46
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 47
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOActivityGroup;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onRestartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 58
    invoke-super {p0}, Landroid/app/ActivityGroup;->onRestart()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 32
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOActivityGroup;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onResumeOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 39
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOActivityGroup;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 40
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOActivityGroup;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStopOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 52
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 53
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onWindowFocusChanged(Z)V

    .line 66
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "mdoEndTime"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/ca/android/app/CaMDOActivityGroup;->mdoEndTime:J

    .line 86
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "mdoStartTime"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/ca/android/app/CaMDOActivityGroup;->mdoStartTime:J

    .line 80
    return-void
.end method
