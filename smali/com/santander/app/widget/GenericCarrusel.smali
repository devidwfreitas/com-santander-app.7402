.class public Lcom/santander/app/widget/GenericCarrusel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/santander/app/widget/Indicator;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lmip;

.field private f:Lnfd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    .line 28
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->b:Lcom/santander/app/widget/Indicator;

    .line 29
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->d:Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->f:Lnfd;

    .line 36
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->e:Lmip;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    .line 28
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->b:Lcom/santander/app/widget/Indicator;

    .line 29
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->d:Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->f:Lnfd;

    .line 41
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->e:Lmip;

    .line 42
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/widget/GenericCarrusel;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/GenericCarrusel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 157
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/GenericCarrusel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->b:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 168
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->f:Lnfd;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->f:Lnfd;

    invoke-interface {v0, p1}, Lnfd;->a(I)V

    .line 171
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/GenericCarrusel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/GenericCarrusel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/GenericCarrusel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/GenericCarrusel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setAdapter(Lfqg;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 57
    const v0, 0x7f100407

    invoke-virtual {p0, v0}, Lcom/santander/app/widget/GenericCarrusel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    .line 59
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lnfa;

    invoke-direct {v1, p0}, Lnfa;-><init>(Lcom/santander/app/widget/GenericCarrusel;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    const v0, 0x7f10040a

    invoke-virtual {p0, v0}, Lcom/santander/app/widget/GenericCarrusel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->b:Lcom/santander/app/widget/Indicator;

    .line 75
    const v0, 0x7f1004c8

    invoke-virtual {p0, v0}, Lcom/santander/app/widget/GenericCarrusel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->d:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f1004c9

    invoke-virtual {p0, v0}, Lcom/santander/app/widget/GenericCarrusel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {p1}, Lfqg;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/GenericCarrusel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->b:Lcom/santander/app/widget/Indicator;

    invoke-virtual {p1}, Lfqg;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->b:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0, v3}, Lcom/santander/app/widget/Indicator;->setSelected(I)V

    .line 94
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->f:Lnfd;

    invoke-virtual {p1, v0}, Lfqg;->a(Lnfd;)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->d:Landroid/widget/ImageView;

    new-instance v1, Lnfb;

    invoke-direct {v1, p0}, Lnfb;-><init>(Lcom/santander/app/widget/GenericCarrusel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    new-instance v1, Lnfc;

    invoke-direct {v1, p0}, Lnfc;-><init>(Lcom/santander/app/widget/GenericCarrusel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    :goto_1
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/GenericCarrusel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/widget/GenericCarrusel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/widget/GenericCarrusel;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 50
    return-void
.end method

.method public setListener(Lnfd;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/santander/app/widget/GenericCarrusel;->f:Lnfd;

    .line 46
    return-void
.end method
