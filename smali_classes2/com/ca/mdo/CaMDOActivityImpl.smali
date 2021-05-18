.class public Lcom/ca/mdo/CaMDOActivityImpl;
.super Ljava/lang/Object;
.source "CaMDOActivityImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/ca/mdo/CAMobileDevOps;->activityMotionEvent(Landroid/view/MotionEvent;)V

    .line 61
    return-void
.end method

.method static getInterval(Lcom/ca/android/app/ScreenLoadTimeMeter;)J
    .locals 7
    .param p0, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;

    .prologue
    const-wide/16 v5, 0x0

    .line 68
    invoke-interface {p0}, Lcom/ca/android/app/ScreenLoadTimeMeter;->geStartTime()J

    move-result-wide v2

    .line 69
    .local v2, "mdoStartTime":J
    invoke-interface {p0}, Lcom/ca/android/app/ScreenLoadTimeMeter;->getEndTime()J

    move-result-wide v0

    .line 71
    .local v0, "mdoEndTime":J
    cmp-long v4, v2, v5

    if-lez v4, :cond_0

    cmp-long v4, v0, v5

    if-lez v4, :cond_0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 72
    sub-long v4, v0, v2

    .line 75
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method static onCreate(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 2
    .param p0, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/ca/android/app/ScreenLoadTimeMeter;->setStartTime(J)V

    .line 14
    invoke-static {p1}, Lcom/ca/mdo/AppMode;->get(Landroid/content/Context;)Lcom/ca/mdo/AppMode;

    .line 15
    return-void
.end method

.method static onPause(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 2
    .param p0, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->activityPause(Landroid/app/Activity;)V

    .line 36
    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/ca/android/app/ScreenLoadTimeMeter;->setStartTime(J)V

    .line 38
    return-void
.end method

.method static onRestart(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 4
    .param p0, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-interface {p0}, Lcom/ca/android/app/ScreenLoadTimeMeter;->geStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/ca/android/app/ScreenLoadTimeMeter;->setStartTime(J)V

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->activityOnRestart(Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method static onResume(Lcom/ca/android/app/ScreenLoadTimeMeter;Landroid/app/Activity;)V
    .locals 2
    .param p0, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/ca/android/app/ScreenLoadTimeMeter;->setEndTime(J)V

    .line 20
    invoke-static {p1}, Lcom/ca/mdo/CAMobileDevOps;->activityResume(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method static onStart(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
    .locals 4
    .param p0, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;

    .prologue
    .line 27
    invoke-interface {p0}, Lcom/ca/android/app/ScreenLoadTimeMeter;->geStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/ca/android/app/ScreenLoadTimeMeter;->setStartTime(J)V

    .line 30
    :cond_0
    return-void
.end method

.method static onStop(Lcom/ca/android/app/ScreenLoadTimeMeter;)V
    .locals 2
    .param p0, "loadTimeMeter"    # Lcom/ca/android/app/ScreenLoadTimeMeter;

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/ca/android/app/ScreenLoadTimeMeter;->setStartTime(J)V

    .line 43
    return-void
.end method

.method static onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "hasFocus"    # Z

    .prologue
    .line 55
    invoke-static {p1, p0}, Lcom/ca/mdo/CAMobileDevOps;->activityOnWindowFocusChanged(ZLandroid/app/Activity;)V

    .line 56
    return-void
.end method
