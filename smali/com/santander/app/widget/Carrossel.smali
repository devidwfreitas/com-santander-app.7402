.class public Lcom/santander/app/widget/Carrossel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field public a:Landroid/support/v4/view/ViewPager;

.field protected b:Lcom/santander/app/widget/Indicator;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/ImageView;

.field private e:Lnez;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    .line 29
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->b:Lcom/santander/app/widget/Indicator;

    .line 30
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->e:Lnez;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    .line 29
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->b:Lcom/santander/app/widget/Indicator;

    .line 30
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->e:Lnez;

    .line 41
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 145
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_4

    .line 148
    if-ne v0, v4, :cond_1

    .line 149
    iget-object v1, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 159
    if-ne v0, v4, :cond_5

    .line 160
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->b:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->e:Lnez;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->e:Lnez;

    invoke-interface {v0, p1}, Lnez;->b(I)V

    .line 175
    :cond_0
    return-void

    .line 150
    :cond_1
    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_3

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 161
    :cond_5
    if-eq v0, v5, :cond_6

    if-ne v0, v6, :cond_7

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 167
    :cond_8
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setAdapter(Lfom;)V
    .locals 5

    .prologue
    const v2, 0x7f020067

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 56
    const v0, 0x7f100407

    invoke-virtual {p0, v0}, Lcom/santander/app/widget/Carrossel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    .line 58
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lnew;

    invoke-direct {v1, p0}, Lnew;-><init>(Lcom/santander/app/widget/Carrossel;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    const v0, 0x7f10040a

    invoke-virtual {p0, v0}, Lcom/santander/app/widget/Carrossel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->b:Lcom/santander/app/widget/Indicator;

    .line 74
    const v0, 0x7f1004c8

    invoke-virtual {p0, v0}, Lcom/santander/app/widget/Carrossel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f1004c9

    invoke-virtual {p0, v0}, Lcom/santander/app/widget/Carrossel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p1}, Lfom;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->b:Lcom/santander/app/widget/Indicator;

    invoke-virtual {p1}, Lfom;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 79
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->b:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, v3}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 80
    invoke-virtual {p1}, Lfom;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 82
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 84
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->e:Lnez;

    invoke-virtual {p1, v0}, Lfom;->a(Lnez;)V

    .line 99
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    new-instance v1, Lnex;

    invoke-direct {v1, p0}, Lnex;-><init>(Lcom/santander/app/widget/Carrossel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    new-instance v1, Lney;

    invoke-direct {v1, p0}, Lney;-><init>(Lcom/santander/app/widget/Carrossel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 123
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    :goto_1
    return-void

    .line 86
    :cond_0
    if-eq v0, v4, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/Carrossel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/widget/Carrossel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 49
    return-void
.end method

.method public setListener(Lnez;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/santander/app/widget/Carrossel;->e:Lnez;

    .line 45
    return-void
.end method
