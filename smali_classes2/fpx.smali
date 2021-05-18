.class public Lfpx;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfpm;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lfpm;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 24
    iput-object v0, p0, Lfpx;->a:Ljava/util/Vector;

    .line 25
    iput-object v0, p0, Lfpx;->b:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Lfpx;->b:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lfpx;->a:Ljava/util/Vector;

    .line 30
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 35
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lfpx;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lfpx;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040114

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 46
    const v1, 0x7f1005a7

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    iget-object v2, p0, Lfpx;->a:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfpm;

    invoke-virtual {v2}, Lfpm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 50
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 55
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
