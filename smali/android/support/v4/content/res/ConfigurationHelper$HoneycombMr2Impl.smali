.class Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;
.super Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
