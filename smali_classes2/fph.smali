.class public Lfph;
.super Lfom;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfpg;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lnez;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lfpg;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lfom;-><init>()V

    .line 25
    iput-object v0, p0, Lfph;->a:Ljava/util/Vector;

    .line 26
    iput-object v0, p0, Lfph;->b:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lfph;->c:Lnez;

    .line 31
    iput-object p1, p0, Lfph;->b:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lfph;->a:Ljava/util/Vector;

    .line 33
    return-void
.end method

.method static synthetic a(Lfph;)Lnez;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lfph;->c:Lnez;

    return-object v0
.end method


# virtual methods
.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lfph;->c:Lnez;

    .line 43
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lfph;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Lfph;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    new-instance v1, Lfpi;

    invoke-direct {v1, p0, p2}, Lfpi;-><init>(Lfph;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f1005b8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    const v2, 0x7f100e0a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    const v3, 0x7f100e0e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 69
    iget-object v4, p0, Lfph;->a:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfpg;

    invoke-virtual {v4}, Lfpg;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lfph;->a:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpg;

    invoke-virtual {v1}, Lfpg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lfph;->a:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpg;

    invoke-virtual {v1}, Lfpg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 73
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 78
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
