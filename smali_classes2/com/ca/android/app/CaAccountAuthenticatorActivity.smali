.class public Lcom/ca/android/app/CaAccountAuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "CaAccountAuthenticatorActivity.java"

# interfaces
.implements Lcom/ca/android/app/ScreenLoadTimeMeter;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field private mdoEndTime:J

.field private mdoStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 92
    iput-wide v0, p0, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->mdoStartTime:J

    .line 93
    iput-wide v0, p0, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->mdoEndTime:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ca/android/app/AnalyticsAgent;->dispatchTouchEventOfActivity(Landroid/view/MotionEvent;)V

    .line 68
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public geStartTime()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->mdoStartTime:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->mdoEndTime:J

    return-wide v0
.end method

.method public getLoadTime()J
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->getApplication()Landroid/app/Application;

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
    .line 20
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onCreateOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 23
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onPauseOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 43
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onPause()V

    .line 44
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onRestartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 55
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onRestart()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onResume()V

    .line 29
    invoke-virtual {p0}, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onResumeOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V

    .line 31
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStart()V

    .line 36
    invoke-virtual {p0}, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStartOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 37
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onStopOfActivity(Lcom/ca/android/app/ScreenLoadTimeMeter;)V

    .line 49
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStop()V

    .line 50
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->onWindowFocusChangedOfActivity(Landroid/app/Activity;Z)V

    .line 61
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onWindowFocusChanged(Z)V

    .line 62
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "mdoEndTime"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->mdoEndTime:J

    .line 82
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "mdoStartTime"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/ca/android/app/CaAccountAuthenticatorActivity;->mdoStartTime:J

    .line 76
    return-void
.end method
