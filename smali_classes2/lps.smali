.class public Llps;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Llps;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Llps;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Llps;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lgrs;->onPause()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Llps;->a:Z

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lgrs;->onResume()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Llps;->a:Z

    .line 34
    return-void
.end method
