.class public Lcom/santander/app/widget/DisableableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/widget/DisableableViewPager;->a:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/widget/DisableableViewPager;->a:Z

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/widget/DisableableViewPager;->a:Z

    .line 36
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/widget/DisableableViewPager;->a:Z

    .line 40
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/santander/app/widget/DisableableViewPager;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
