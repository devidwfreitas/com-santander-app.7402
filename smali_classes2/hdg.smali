.class public Lhdg;
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
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Activity;

.field private h:Lnfd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 7

    .prologue
    .line 49
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lhdg;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lfqg;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lhdg;->h:Lnfd;

    .line 39
    iput-object p2, p0, Lhdg;->a:Landroid/support/v4/view/ViewPager;

    .line 40
    iput-object p4, p0, Lhdg;->b:Landroid/widget/ImageView;

    .line 41
    iput-object p5, p0, Lhdg;->c:Landroid/widget/ImageView;

    .line 42
    iput p6, p0, Lhdg;->d:I

    .line 43
    iput-object p3, p0, Lhdg;->e:Lcom/santander/app/widget/Indicator;

    .line 44
    iput-object p1, p0, Lhdg;->g:Landroid/app/Activity;

    .line 46
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lhdg;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lhdg;->d:I

    .line 130
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lhdg;->a:Landroid/support/v4/view/ViewPager;

    .line 106
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lhdg;->b:Landroid/widget/ImageView;

    .line 114
    return-void
.end method

.method public a(Lcom/santander/app/widget/Indicator;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lhdg;->e:Lcom/santander/app/widget/Indicator;

    .line 138
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lhdg;->f:Ljava/util/List;

    .line 61
    new-instance v0, Lhdh;

    iget-object v1, p0, Lhdg;->g:Landroid/app/Activity;

    iget-object v2, p0, Lhdg;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lhdh;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 62
    iget-object v1, p0, Lhdg;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    iget-object v1, p0, Lhdg;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 64
    iget-object v1, p0, Lhdg;->e:Lcom/santander/app/widget/Indicator;

    .line 65
    invoke-virtual {v0}, Lhdh;->getCount()I

    move-result v0

    iget-object v2, p0, Lhdg;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lhdg;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lhdg;->a:Landroid/support/v4/view/ViewPager;

    .line 64
    invoke-static {v1, v0, v2, v3, v4}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 69
    iget-object v0, p0, Lhdg;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 71
    invoke-virtual {p0, p2}, Lhdg;->onPageSelected(I)V

    .line 72
    return-void
.end method

.method public a(Lnfd;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lhdg;->h:Lnfd;

    .line 143
    return-void
.end method

.method public b()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lhdg;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public b(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lhdg;->c:Landroid/widget/ImageView;

    .line 122
    return-void
.end method

.method public c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lhdg;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public d()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lhdg;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lhdg;->d:I

    return v0
.end method

.method public f()Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lhdg;->e:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lhdg;->f:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lhdg;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lhdg;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lhdg;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lhdg;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lhdg;->e:Lcom/santander/app/widget/Indicator;

    iget-object v5, p0, Lhdg;->g:Landroid/app/Activity;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 94
    iget-object v0, p0, Lhdg;->h:Lnfd;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lhdg;->h:Lnfd;

    invoke-interface {v0, p1}, Lnfd;->a(I)V

    .line 98
    :cond_0
    return-void
.end method
