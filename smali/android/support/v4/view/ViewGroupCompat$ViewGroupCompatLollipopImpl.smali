.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatLollipopImpl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 137
    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompatLollipop;->getNestedScrollAxes(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 132
    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompatLollipop;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 127
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewGroupCompatLollipop;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    .line 128
    return-void
.end method
