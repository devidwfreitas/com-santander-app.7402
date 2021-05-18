.class public Lcom/ca/mdo/CaMDOFragmentImpl;
.super Ljava/lang/Object;
.source "CaMDOFragmentImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onPause(Landroid/app/Fragment;)V
    .locals 0
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/ca/mdo/CAMobileDevOps;->fragmentPause(Landroid/app/Fragment;)V

    .line 19
    return-void
.end method

.method static onResume(Landroid/app/Fragment;)V
    .locals 0
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/ca/mdo/CAMobileDevOps;->fragmentResume(Landroid/app/Fragment;)V

    .line 14
    return-void
.end method
