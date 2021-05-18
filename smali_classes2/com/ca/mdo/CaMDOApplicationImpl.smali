.class public Lcom/ca/mdo/CaMDOApplicationImpl;
.super Ljava/lang/Object;
.source "CaMDOApplicationImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 36
    const-string v0, "------------- Application configuration changed  -------------"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method static onCreate(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 13
    const-string v0, "------------- Creating Application -------------"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 14
    return-void
.end method

.method static onLowMemory()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "-------------  Application on Low Memory -------------"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method static onTerminate()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "------------- Terminating Application -------------"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method static onTrimMemory(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 32
    const-string v0, "------------- Application on Trim Memory  -------------"

    invoke-static {v0}, Lcom/ca/mdo/CALog;->v(Ljava/lang/String;)I

    .line 34
    return-void
.end method
