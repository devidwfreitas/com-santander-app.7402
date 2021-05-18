.class public Lcom/ca/android/app/CaNativeActivity;
.super Landroid/app/NativeActivity;
.source "CaNativeActivity.java"

# interfaces
.implements Lcom/ca/android/app/ScreenLoadTimeMeter;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private mdoEndTime:J

.field private mdoStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 91
    iput-wide v0, p0, Lcom/ca/android/app/CaNativeActivity;->mdoStartTime:J

    .line 92
    iput-wide v0, p0, Lcom/ca/android/app/CaNativeActivity;->mdoEndTime:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/ca/android/app/CaNativeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/android/app/AnalyticsAgent;->dispatchTouchEventOfActivity(Landroid/view/MotionEvent;)V

    .line 67
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public geStartTime()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/ca/android/app/CaNativeActivity;->mdoStartTime:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/ca/android/app/CaNativeActivity;->mdoEndTime:J

    return-wide v0
.end method

.method public getLoadTime()J
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/ca/android/app/CaNativeActivity;->getApplication()Landroid/app/Application;

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
    .line 19
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/ca/android/app/CaNativeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onCreateOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/ca/android/app/CaNativeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onPauseOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 42
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 43
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/ca/android/app/CaNativeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onRestartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 54
    invoke-super {p0}, Landroid/app/NativeActivity;->onRestart()V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 28
    invoke-virtual {p0}, Lcom/ca/android/app/CaNativeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onResumeOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 35
    invoke-virtual {p0}, Lcom/ca/android/app/CaNativeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 36
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/ca/android/app/CaNativeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStopOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 48
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 49
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/ca/android/app/CaNativeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->onWindowFocusChangedOfActivity(Landroid/app/Activity;Z)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 61
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "mdoEndTime"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/ca/android/app/CaNativeActivity;->mdoEndTime:J

    .line 81
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "mdoStartTime"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/ca/android/app/CaNativeActivity;->mdoStartTime:J

    .line 75
    return-void
.end method
