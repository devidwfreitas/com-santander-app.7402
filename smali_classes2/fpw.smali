.class public Lfpw;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfpv;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lfpv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lfpw;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lfpw;->a:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lfpw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 58
    iget-object v0, p0, Lfpw;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040338

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 62
    const v1, 0x7f10104b

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 64
    const v1, 0x7f10104e

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 66
    const v1, 0x7f101051

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 70
    iget-object v1, p0, Lfpw;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpv;

    invoke-virtual {v1}, Lfpv;->c()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfpw;->a:Ljava/util/List;

    .line 71
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpv;

    invoke-virtual {v1}, Lfpv;->c()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 72
    :cond_0
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v1, 0x7f10104c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    const v3, 0x7f10104d

    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    iget-object v3, p0, Lfpw;->a:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfpv;

    invoke-virtual {v3}, Lfpv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    .line 109
    :goto_0
    iget-object v1, p0, Lfpw;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpv;

    invoke-virtual {v1}, Lfpv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 112
    return-object v0

    .line 81
    :cond_1
    iget-object v1, p0, Lfpw;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpv;

    invoke-virtual {v1}, Lfpv;->c()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lfpw;->a:Ljava/util/List;

    .line 82
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpv;

    invoke-virtual {v1}, Lfpv;->c()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    .line 84
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 87
    const v1, 0x7f101052

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    const v2, 0x7f101053

    .line 89
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    iget-object v3, p0, Lfpw;->a:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfpv;

    invoke-virtual {v3}, Lfpv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const v1, 0x7f10104f

    .line 98
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    const v2, 0x7f101050

    .line 100
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 101
    iget-object v3, p0, Lfpw;->a:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfpv;

    invoke-virtual {v3}, Lfpv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v3, Lguj;

    invoke-direct {v3}, Lguj;-><init>()V

    .line 104
    invoke-virtual {v3, v2}, Lguj;->a(Landroid/widget/EditText;)V

    .line 105
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object v2, v1

    goto/16 :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
