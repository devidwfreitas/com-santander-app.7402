.class public Limk;
.super Lfom;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:Lcom/santander/app/widget/Indicator;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Activity;

.field private h:Lnez;

.field private i:Lmip;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 7

    .prologue
    .line 58
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Limk;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lfom;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Limk;->h:Lnez;

    .line 42
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Limk;->i:Lmip;

    .line 47
    iput-object p2, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    .line 48
    iput-object p4, p0, Limk;->b:Landroid/widget/ImageView;

    .line 49
    iput-object p5, p0, Limk;->c:Landroid/widget/ImageView;

    .line 50
    iput p6, p0, Limk;->d:I

    .line 51
    iput-object p3, p0, Limk;->e:Lcom/santander/app/widget/Indicator;

    .line 52
    iput-object p1, p0, Limk;->g:Landroid/app/Activity;

    .line 54
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limk;->f:Ljava/util/List;

    .line 68
    iget-object v0, p0, Limk;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 69
    iget-object v2, p0, Limk;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lfpr;

    iget-object v1, p0, Limk;->g:Landroid/app/Activity;

    iget-object v2, p0, Limk;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfpr;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 73
    iget-object v1, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 74
    iget-object v1, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 75
    iget-object v1, p0, Limk;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfpr;->getCount()I

    move-result v0

    iget-object v2, p0, Limk;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Limk;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 76
    iget-object v0, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 78
    invoke-virtual {p0, p1}, Limk;->onPageSelected(I)V

    .line 79
    return-void
.end method

.method public a(ILjava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limk;->f:Ljava/util/List;

    .line 87
    iget-object v0, p0, Limk;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    .line 88
    iget-object v2, p0, Limk;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Limk;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v2

    .line 95
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Limk;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 96
    iget-object v0, p0, Limk;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :goto_2
    new-instance v0, Lfpr;

    iget-object v2, p0, Limk;->g:Landroid/app/Activity;

    iget-object v3, p0, Limk;->f:Ljava/util/List;

    invoke-direct {v0, v2, v3, p2}, Lfpr;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 103
    iget-object v2, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v2, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 105
    iget-object v2, p0, Limk;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfpr;->getCount()I

    move-result v0

    iget-object v3, p0, Limk;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Limk;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v2, v0, v3, v4, v5}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 106
    iget-object v0, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 107
    invoke-virtual {p0, v1}, Limk;->onPageSelected(I)V

    .line 108
    return-void

    .line 95
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_2
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    .line 152
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Limk;->b:Landroid/widget/ImageView;

    .line 160
    return-void
.end method

.method public a(Lcom/santander/app/widget/Indicator;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Limk;->e:Lcom/santander/app/widget/Indicator;

    .line 184
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Limk;->f:Ljava/util/List;

    .line 114
    new-instance v0, Lfpr;

    iget-object v1, p0, Limk;->g:Landroid/app/Activity;

    iget-object v2, p0, Limk;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfpr;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 115
    iget-object v1, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 116
    iget-object v1, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 117
    iget-object v1, p0, Limk;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfpr;->getCount()I

    move-result v0

    iget-object v2, p0, Limk;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Limk;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 118
    iget-object v0, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 120
    invoke-virtual {p0, p2}, Limk;->onPageSelected(I)V

    .line 121
    return-void
.end method

.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Limk;->h:Lnez;

    .line 189
    return-void
.end method

.method public b()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Limk;->d:I

    .line 176
    return-void
.end method

.method public b(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Limk;->c:Landroid/widget/ImageView;

    .line 168
    return-void
.end method

.method public c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Limk;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Limk;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Limk;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Limk;->d:I

    return v0
.end method

.method public f()Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Limk;->e:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 138
    iget-object v0, p0, Limk;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Limk;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Limk;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Limk;->e:Lcom/santander/app/widget/Indicator;

    iget-object v5, p0, Limk;->g:Landroid/app/Activity;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 140
    iget-object v0, p0, Limk;->h:Lnez;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Limk;->h:Lnez;

    invoke-interface {v0, p1}, Lnez;->b(I)V

    .line 144
    :cond_0
    return-void
.end method
