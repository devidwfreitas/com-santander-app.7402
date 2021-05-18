.class public Lgom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/santander/app/widget/Indicator;

.field private g:Landroid/app/Activity;

.field private h:Lfpq;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;Lfpq;)V
    .locals 8

    .prologue
    .line 54
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lgom;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;Lfpq;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;Lfpq;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lgom;->c:Landroid/support/v4/view/ViewPager;

    .line 40
    iput-object p4, p0, Lgom;->d:Landroid/widget/ImageView;

    .line 41
    iput-object p5, p0, Lgom;->e:Landroid/widget/ImageView;

    .line 42
    iput-object p3, p0, Lgom;->f:Lcom/santander/app/widget/Indicator;

    .line 43
    iput-object p1, p0, Lgom;->g:Landroid/app/Activity;

    .line 44
    iput-object p6, p0, Lgom;->h:Lfpq;

    .line 45
    iput p7, p0, Lgom;->i:I

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 79
    new-instance v0, Lfpp;

    iget-object v1, p0, Lgom;->g:Landroid/app/Activity;

    iget-object v2, p0, Lgom;->h:Lfpq;

    invoke-direct {v0, v1, v2}, Lfpp;-><init>(Landroid/app/Activity;Lfpq;)V

    .line 80
    iget-object v1, p0, Lgom;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 81
    iget-object v1, p0, Lgom;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 82
    iget-object v1, p0, Lgom;->f:Lcom/santander/app/widget/Indicator;

    .line 83
    invoke-virtual {v0}, Lfpp;->getCount()I

    move-result v2

    iget-object v3, p0, Lgom;->e:Landroid/widget/ImageView;

    iget-object v4, p0, Lgom;->d:Landroid/widget/ImageView;

    iget-object v5, p0, Lgom;->c:Landroid/support/v4/view/ViewPager;

    .line 82
    invoke-static {v1, v2, v3, v4, v5}, Lgpm;->a(Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 88
    invoke-virtual {v0}, Lfpp;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgom;->onPageSelected(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 6

    .prologue
    .line 65
    iput p1, p0, Lgom;->j:I

    .line 66
    new-instance v2, Lfpp;

    iget-object v0, p0, Lgom;->g:Landroid/app/Activity;

    iget-object v1, p0, Lgom;->h:Lfpq;

    invoke-direct {v2, v0, v1}, Lfpp;-><init>(Landroid/app/Activity;Lfpq;)V

    .line 67
    iget-object v0, p0, Lgom;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 68
    iget-object v0, p0, Lgom;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 69
    invoke-virtual {v2}, Lfpp;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgom;->onPageSelected(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lgom;->g:Landroid/app/Activity;

    iget v1, p0, Lgom;->j:I

    .line 72
    invoke-virtual {v2}, Lfpp;->getCount()I

    move-result v2

    iget-object v3, p0, Lgom;->e:Landroid/widget/ImageView;

    iget-object v4, p0, Lgom;->d:Landroid/widget/ImageView;

    iget-object v5, p0, Lgom;->c:Landroid/support/v4/view/ViewPager;

    .line 70
    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/app/Activity;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    .line 76
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lgom;->i:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lgom;->i:I

    .line 132
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 106
    iget v0, p0, Lgom;->i:I

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lgom;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lgom;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lgom;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lgom;->f:Lcom/santander/app/widget/Indicator;

    iget-object v5, p0, Lgom;->g:Landroid/app/Activity;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgpm;->a(Landroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/santander/app/widget/Indicator;ILandroid/app/Activity;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lgom;->i:I

    if-ne v0, v1, :cond_0

    .line 114
    iget v0, p0, Lgom;->j:I

    iget-object v1, p0, Lgom;->c:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lgom;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lgom;->d:Landroid/widget/ImageView;

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lgom;->g:Landroid/app/Activity;

    invoke-static/range {v0 .. v5}, Lgpm;->a(ILandroid/support/v4/view/ViewPager;Landroid/widget/ImageView;Landroid/widget/ImageView;ILandroid/app/Activity;)V

    goto :goto_0
.end method
