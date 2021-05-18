.class public Lfoz;
.super Lfom;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfoy;",
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
            "Lfoy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lfom;-><init>()V

    .line 26
    iput-object v0, p0, Lfoz;->a:Ljava/util/Vector;

    .line 27
    iput-object v0, p0, Lfoz;->b:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lfoz;->c:Lnez;

    .line 32
    iput-object p1, p0, Lfoz;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lfoz;->a:Ljava/util/Vector;

    .line 34
    return-void
.end method

.method static synthetic a(Lfoz;)Lnez;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lfoz;->c:Lnez;

    return-object v0
.end method


# virtual methods
.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lfoz;->c:Lnez;

    .line 44
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lfoz;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 53
    iget-object v0, p0, Lfoz;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040295

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    new-instance v1, Lfpa;

    invoke-direct {v1, p0, p2}, Lfpa;-><init>(Lfoz;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f100dd3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    const v2, 0x7f100dd4

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    const v3, 0x7f1008e4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    const v4, 0x7f100dd5

    .line 73
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 74
    iget-object v5, p0, Lfoz;->a:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfoy;

    invoke-virtual {v5}, Lfoy;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lfoz;->a:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfoy;

    invoke-virtual {v1}, Lfoy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lfoz;->a:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfoy;

    invoke-virtual {v1}, Lfoy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lfoz;->a:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfoy;

    invoke-virtual {v1}, Lfoy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 79
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 84
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
