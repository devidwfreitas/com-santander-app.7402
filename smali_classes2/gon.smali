.class public Lgon;
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
    .line 53
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lgon;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lfom;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lgon;->h:Lnez;

    .line 37
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgon;->i:Lmip;

    .line 42
    iput-object p2, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    .line 43
    iput-object p4, p0, Lgon;->b:Landroid/widget/ImageView;

    .line 44
    iput-object p5, p0, Lgon;->c:Landroid/widget/ImageView;

    .line 45
    iput p6, p0, Lgon;->d:I

    .line 46
    iput-object p3, p0, Lgon;->e:Lcom/santander/app/widget/Indicator;

    .line 47
    iput-object p1, p0, Lgon;->g:Landroid/app/Activity;

    .line 49
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lgon;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgon;->f:Ljava/util/List;

    .line 64
    new-instance v0, Lfpr;

    iget-object v1, p0, Lgon;->g:Landroid/app/Activity;

    iget-object v2, p0, Lgon;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfpr;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 65
    iget-object v1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    iget-object v1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 67
    iget-object v1, p0, Lgon;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfpr;->getCount()I

    move-result v0

    iget-object v2, p0, Lgon;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lgon;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 68
    iget-object v0, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 69
    invoke-virtual {p0, p1}, Lgon;->onPageSelected(I)V

    .line 70
    return-void
.end method

.method public a(ILjava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lgon;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgon;->f:Ljava/util/List;

    .line 89
    new-instance v0, Lfpr;

    iget-object v1, p0, Lgon;->g:Landroid/app/Activity;

    iget-object v2, p0, Lgon;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lfpr;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 90
    iget-object v1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 91
    iget-object v1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 92
    iget-object v1, p0, Lgon;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfpr;->getCount()I

    move-result v0

    iget-object v2, p0, Lgon;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lgon;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 93
    iget-object v0, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 95
    invoke-virtual {p0, p1}, Lgon;->onPageSelected(I)V

    .line 96
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    .line 153
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lgon;->b:Landroid/widget/ImageView;

    .line 161
    return-void
.end method

.method public a(Lcom/santander/app/widget/Indicator;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lgon;->e:Lcom/santander/app/widget/Indicator;

    .line 185
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
    iput-object p1, p0, Lgon;->f:Ljava/util/List;

    .line 115
    new-instance v0, Lfpr;

    iget-object v1, p0, Lgon;->g:Landroid/app/Activity;

    iget-object v2, p0, Lgon;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfpr;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 116
    iget-object v1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 117
    iget-object v1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 118
    iget-object v1, p0, Lgon;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfpr;->getCount()I

    move-result v0

    iget-object v2, p0, Lgon;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lgon;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 119
    iget-object v0, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 121
    invoke-virtual {p0, p2}, Lgon;->onPageSelected(I)V

    .line 122
    return-void
.end method

.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lgon;->h:Lnez;

    .line 190
    return-void
.end method

.method public b()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public b(I)V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lgon;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgon;->f:Ljava/util/List;

    .line 76
    new-instance v0, Lfpr;

    iget-object v1, p0, Lgon;->g:Landroid/app/Activity;

    iget-object v2, p0, Lgon;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfpr;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 77
    iget-object v1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 78
    iget-object v1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 79
    iget-object v1, p0, Lgon;->e:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Lfpr;->getCount()I

    move-result v0

    iget-object v2, p0, Lgon;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lgon;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 80
    iget-object v0, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 82
    invoke-virtual {p0, p1}, Lgon;->onPageSelected(I)V

    .line 83
    return-void
.end method

.method public b(ILjava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lgon;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgon;->f:Ljava/util/List;

    .line 102
    new-instance v0, Lfpr;

    iget-object v1, p0, Lgon;->g:Landroid/app/Activity;

    iget-object v2, p0, Lgon;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lfpr;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 103
    iget-object v1, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v0, p0, Lgon;->e:Lcom/santander/app/widget/Indicator;

    const/4 v1, 0x0

    iget-object v2, p0, Lgon;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lgon;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 105
    iget-object v0, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 107
    invoke-virtual {p0, p1}, Lgon;->onPageSelected(I)V

    .line 108
    return-void
.end method

.method public b(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lgon;->c:Landroid/widget/ImageView;

    .line 169
    return-void
.end method

.method public c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lgon;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lgon;->d:I

    .line 177
    return-void
.end method

.method public d()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lgon;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lgon;->d:I

    return v0
.end method

.method public f()Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lgon;->e:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 139
    iget-object v0, p0, Lgon;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lgon;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lgon;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lgon;->e:Lcom/santander/app/widget/Indicator;

    iget-object v5, p0, Lgon;->g:Landroid/app/Activity;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 141
    iget-object v0, p0, Lgon;->h:Lnez;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lgon;->h:Lnez;

    invoke-interface {v0, p1}, Lnez;->b(I)V

    .line 145
    :cond_0
    return-void
.end method
