.class public Lcom/ca/android/app/CaPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CaPreferenceActivity.java"

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

    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    iput-wide v0, p0, Lcom/ca/android/app/CaPreferenceActivity;->mdoStartTime:J

    .line 91
    iput-wide v0, p0, Lcom/ca/android/app/CaPreferenceActivity;->mdoEndTime:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/ca/android/app/CaPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/android/app/AnalyticsAgent;->dispatchTouchEventOfActivity(Landroid/view/MotionEvent;)V

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public geStartTime()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/ca/android/app/CaPreferenceActivity;->mdoStartTime:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/ca/android/app/CaPreferenceActivity;->mdoEndTime:J

    return-wide v0
.end method

.method public getLoadTime()J
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/ca/android/app/CaPreferenceActivity;->getApplication()Landroid/app/Application;

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
    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/ca/android/app/CaPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onCreateOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 20
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/ca/android/app/CaPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onPauseOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 40
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 41
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/ca/android/app/CaPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onRestartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 26
    invoke-virtual {p0}, Lcom/ca/android/app/CaPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onResumeOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 28
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 33
    invoke-virtual {p0}, Lcom/ca/android/app/CaPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 34
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/ca/android/app/CaPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStopOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 47
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/ca/android/app/CaPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->onWindowFocusChangedOfActivity(Landroid/app/Activity;Z)V

    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onWindowFocusChanged(Z)V

    .line 60
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "mdoEndTime"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/ca/android/app/CaPreferenceActivity;->mdoEndTime:J

    .line 80
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "mdoStartTime"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/ca/android/app/CaPreferenceActivity;->mdoStartTime:J

    .line 74
    return-void
.end method
