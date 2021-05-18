.class public Lcom/ca/android/app/CaMDOProgressBar;
.super Ljava/lang/Object;
.source "CaMDOProgressBar.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setVisibility(Landroid/widget/ProgressBar;I)V
    .locals 1
    .param p0, "bar"    # Landroid/widget/ProgressBar;
    .param p1, "visibility"    # I

    .prologue
    .line 14
    invoke-static {}, Lcom/ca/mdo/SDK;->getAgent()Lcom/ca/android/app/AnalyticsAgent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ca/android/app/AnalyticsAgent;->setVisibilityOnProgressBar(Landroid/widget/ProgressBar;I)V

    .line 15
    return-void
.end method
