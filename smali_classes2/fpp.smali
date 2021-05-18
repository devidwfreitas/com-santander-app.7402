.class public Lfpp;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lfpq;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfpq;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lfpp;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lfpp;->b:Lfpq;

    .line 32
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfpp;->b:Lfpq;

    invoke-interface {v0}, Lfpq;->a()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lfpp;->b:Lfpq;

    iget-object v1, p0, Lfpp;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lfpq;->a(Landroid/content/Context;Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
