.class public Lhdi;
.super Lfqg;
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
            "Lftl;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Activity;

.field private h:Lnfd;

.field private i:Lcom/santander/app/dpp/DPPPreenchimentoActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 7

    .prologue
    .line 51
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lhdi;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lfqg;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lhdi;->h:Lnfd;

    .line 41
    iput-object p2, p0, Lhdi;->a:Landroid/support/v4/view/ViewPager;

    .line 42
    iput-object p4, p0, Lhdi;->b:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lhdi;->c:Landroid/widget/ImageView;

    .line 44
    iput p6, p0, Lhdi;->d:I

    .line 45
    iput-object p3, p0, Lhdi;->e:Lcom/santander/app/widget/Indicator;

    .line 46
    iput-object p1, p0, Lhdi;->g:Landroid/app/Activity;

    .line 47
    check-cast p1, Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iput-object p1, p0, Lhdi;->i:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 48
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lhdi;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lhdi;->d:I

    .line 143
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lhdi;->a:Landroid/support/v4/view/ViewPager;

    .line 119
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lhdi;->b:Landroid/widget/ImageView;

    .line 127
    return-void
.end method

.method public a(Lcom/santander/app/widget/Indicator;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lhdi;->e:Lcom/santander/app/widget/Indicator;

    .line 151
    return-void
.end method

.method public a(Ljava/util/Vector;IIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lftl;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lhdi;->f:Ljava/util/List;

    .line 63
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 64
    new-instance v0, Lftl;

    invoke-direct {v0}, Lftl;-><init>()V

    .line 65
    iget-object v1, p0, Lhdi;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    new-instance v0, Lhdj;

    iget-object v1, p0, Lhdi;->g:Landroid/app/Activity;

    iget-object v2, p0, Lhdi;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2, p3, p4}, Lhdj;-><init>(Landroid/app/Activity;Ljava/util/List;IZ)V

    .line 69
    iget-object v1, p0, Lhdi;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 70
    iget-object v1, p0, Lhdi;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 71
    iget-object v1, p0, Lhdi;->e:Lcom/santander/app/widget/Indicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/santander/app/widget/Indicator;->setIndicatorLayout(Landroid/view/View;)V

    .line 72
    iget-object v1, p0, Lhdi;->e:Lcom/santander/app/widget/Indicator;

    .line 73
    invoke-virtual {v0}, Lhdj;->getCount()I

    move-result v0

    iget-object v2, p0, Lhdi;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lhdi;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lhdi;->a:Landroid/support/v4/view/ViewPager;

    .line 72
    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 77
    iget-object v0, p0, Lhdi;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 79
    invoke-virtual {p0, p2}, Lhdi;->onPageSelected(I)V

    .line 80
    return-void
.end method

.method public a(Lnfd;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lhdi;->h:Lnfd;

    .line 156
    return-void
.end method

.method public b()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lhdi;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public b(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lhdi;->c:Landroid/widget/ImageView;

    .line 135
    return-void
.end method

.method public c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lhdi;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public d()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lhdi;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lhdi;->d:I

    return v0
.end method

.method public f()Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lhdi;->e:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lftl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lhdi;->f:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lhdi;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 95
    iget-object v0, p0, Lhdi;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lhdi;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lhdi;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lhdi;->e:Lcom/santander/app/widget/Indicator;

    iget-object v5, p0, Lhdi;->g:Landroid/app/Activity;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 102
    iget-object v0, p0, Lhdi;->h:Lnfd;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lhdi;->h:Lnfd;

    invoke-interface {v0, p1}, Lnfd;->a(I)V

    .line 106
    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lhdi;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lhdi;->i:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Z)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lhdi;->i:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Z)V

    goto :goto_0
.end method
