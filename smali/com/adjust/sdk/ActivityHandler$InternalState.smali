.class public Lcom/adjust/sdk/ActivityHandler$InternalState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field background:Z

.field delayStart:Z

.field enabled:Z

.field firstLaunch:Z

.field offline:Z

.field sessionResponseProcessed:Z

.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field updatePackages:Z


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasSessionResponseNotBeenProcessed()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->sessionResponseProcessed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    return v0
.end method

.method public isFirstLaunch()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->firstLaunch:Z

    return v0
.end method

.method public isInBackground()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->background:Z

    return v0
.end method

.method public isInDelayedStart()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->delayStart:Z

    return v0
.end method

.method public isInForeground()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->background:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFirstLaunch()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->firstLaunch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotInDelayedStart()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->delayStart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffline()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itHasToUpdatePackages()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->updatePackages:Z

    return v0
.end method
