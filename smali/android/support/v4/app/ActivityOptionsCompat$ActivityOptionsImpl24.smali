.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 393
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    .line 394
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat24;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActivityOptionsCompat24;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 423
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 412
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActivityOptionsCompat24;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat24;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 2

    .prologue
    .line 403
    instance-of v0, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    if-eqz v0, :cond_0

    .line 405
    check-cast p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 406
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    iget-object v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat24;->update(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    .line 408
    :cond_0
    return-void
.end method
