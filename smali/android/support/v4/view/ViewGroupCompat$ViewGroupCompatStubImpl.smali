.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 90
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingParent;->getNestedScrollAxes()I

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
