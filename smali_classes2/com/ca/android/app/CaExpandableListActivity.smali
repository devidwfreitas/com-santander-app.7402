.class public Lcom/ca/android/app/CaExpandableListActivity;
.super Landroid/app/ExpandableListActivity;
.source "CaExpandableListActivity.java"

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
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 88
    iput-wide v0, p0, Lcom/ca/android/app/CaExpandableListActivity;->mdoStartTime:J

    .line 89
    iput-wide v0, p0, Lcom/ca/android/app/CaExpandableListActivity;->mdoEndTime:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/ca/android/app/CaExpandableListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/android/app/AnalyticsAgent;->dispatchTouchEventOfActivity(Landroid/view/MotionEvent;)V

    .line 64
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public geStartTime()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/ca/android/app/CaExpandableListActivity;->mdoStartTime:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/ca/android/app/CaExpandableListActivity;->mdoEndTime:J

    return-wide v0
.end method

.method public getLoadTime()J
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/ca/android/app/CaExpandableListActivity;->getApplication()Landroid/app/Application;

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
    .line 16
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/ca/android/app/CaExpandableListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onCreateOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 19
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/ca/android/app/CaExpandableListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onPauseOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 39
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 40
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/ca/android/app/CaExpandableListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onRestartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 51
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onRestart()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 25
    invoke-virtual {p0}, Lcom/ca/android/app/CaExpandableListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onResumeOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 27
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStart()V

    .line 32
    invoke-virtual {p0}, Lcom/ca/android/app/CaExpandableListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 33
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/ca/android/app/CaExpandableListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStopOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 45
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStop()V

    .line 46
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/ca/android/app/CaExpandableListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->onWindowFocusChangedOfActivity(Landroid/app/Activity;Z)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onWindowFocusChanged(Z)V

    .line 58
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "mdoEndTime"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/ca/android/app/CaExpandableListActivity;->mdoEndTime:J

    .line 78
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "mdoStartTime"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/ca/android/app/CaExpandableListActivity;->mdoStartTime:J

    .line 72
    return-void
.end method
