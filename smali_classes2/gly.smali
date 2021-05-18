.class public Lgly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lglb;


# instance fields
.field public a:Landroid/support/v4/view/ViewPager;

.field private final b:Landroid/view/View$OnClickListener;

.field private c:Ljde;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljde;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Lgla;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/santander/app/widget/Indicator;

.field private k:Lgme;

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljde;

    invoke-direct {v0}, Ljde;-><init>()V

    iput-object v0, p0, Lgly;->c:Ljde;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgly;->d:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lgly;->k:Lgme;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgly;->l:Z

    .line 55
    iput-object p2, p0, Lgly;->b:Landroid/view/View$OnClickListener;

    .line 56
    iget-object v0, p0, Lgly;->d:Ljava/util/List;

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->r()Ljky;

    move-result-object v1

    invoke-interface {v1}, Ljky;->b()Ljde;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iput-object p1, p0, Lgly;->f:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic a(Lgly;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lgly;->e:I

    return p1
.end method

.method static synthetic a(Lgly;)Lcom/santander/app/widget/Indicator;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgly;->j:Lcom/santander/app/widget/Indicator;

    return-object v0
.end method

.method static synthetic a(Lgly;Lgme;)Lgme;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lgly;->k:Lgme;

    return-object p1
.end method

.method static synthetic a(Lgly;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lgly;->l:Z

    return p1
.end method

.method static synthetic b(Lgly;)Lgme;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgly;->k:Lgme;

    return-object v0
.end method

.method static synthetic c(Lgly;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lgly;->l:Z

    return v0
.end method

.method private d()Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lglz;

    invoke-direct {v0, p0}, Lglz;-><init>(Lgly;)V

    return-object v0
.end method

.method static synthetic d(Lgly;)Ljde;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgly;->c:Ljde;

    return-object v0
.end method

.method static synthetic e(Lgly;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgly;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic f(Lgly;)Lgla;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgly;->g:Lgla;

    return-object v0
.end method

.method static synthetic g(Lgly;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgly;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f04011f

    return v0
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/support/v4/view/PagerAdapter;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lgma;

    invoke-direct {v0, p0, p2, p3}, Lgma;-><init>(Lgly;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 292
    iput p1, p0, Lgly;->e:I

    .line 293
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 77
    const v0, 0x7f1005c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgly;->h:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lgly;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lgly;->f:Landroid/content/Context;

    const v2, 0x7f0906ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v0, 0x7f1005c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgly;->i:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lgly;->i:Landroid/widget/ImageView;

    const v1, 0x7f020426

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    const v0, 0x7f10040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Indicator;

    iput-object v0, p0, Lgly;->j:Lcom/santander/app/widget/Indicator;

    .line 84
    const v0, 0x7f1005ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lgly;->a:Landroid/support/v4/view/ViewPager;

    .line 86
    iget-object v0, p0, Lgly;->f:Landroid/content/Context;

    iget-object v1, p0, Lgly;->d:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lgly;->a(Landroid/view/View;Landroid/content/Context;Ljava/util/List;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lgly;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 89
    iget-object v1, p0, Lgly;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 90
    iget-object v1, p0, Lgly;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lgly;->d()Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 92
    iget-object v1, p0, Lgly;->j:Lcom/santander/app/widget/Indicator;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/widget/Indicator;->setSize(I)V

    .line 93
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lgly;->j:Lcom/santander/app/widget/Indicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Indicator;->setVisibility(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public a(Lgla;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lgly;->g:Lgla;

    .line 303
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 287
    check-cast p1, Ljde;

    iput-object p1, p0, Lgly;->c:Ljde;

    .line 288
    return-void
.end method

.method public a(Ljde;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lgly;->k:Lgme;

    invoke-static {v0}, Lgme;->f(Lgme;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljde;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lgly;->k:Lgme;

    invoke-static {v0}, Lgme;->h(Lgme;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljde;->b()Lftx;

    move-result-object v1

    invoke-virtual {v1}, Lftx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lgly;->c:Ljde;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 67
    iput p1, p0, Lgly;->m:I

    .line 68
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lgly;->a(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lgly;->e:I

    return v0
.end method
