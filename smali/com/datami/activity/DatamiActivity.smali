.class public Lcom/datami/activity/DatamiActivity;
.super Lcom/ca/android/app/CaMDOActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ca/android/app/CaMDOActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/ca/android/app/CaMDOActivity;->onPause()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/datami/smi/SmiSdk;->appVisibility(Landroid/content/Context;Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ca/android/app/CaMDOActivity;->onResume()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/datami/smi/SmiSdk;->appVisibility(Landroid/content/Context;Z)V

    return-void
.end method
