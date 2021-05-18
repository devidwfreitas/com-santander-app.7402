.class public abstract Lcom/ca/android/app/CaMDOFragment;
.super Landroid/app/Fragment;
.source "CaMDOFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 25
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onPauseOfFragment(Landroid/app/Fragment;)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 19
    invoke-virtual {p0}, Lcom/ca/android/app/CaMDOFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->getAgent(Landroid/app/Application;)Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ca/android/app/AnalyticsAgent;->onResumeOfFragment(Landroid/app/Fragment;)V

    .line 20
    return-void
.end method
