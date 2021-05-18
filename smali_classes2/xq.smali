.class public Lxq;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private c:Landroid/widget/ImageButton;

.field private d:Lacg;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 42
    iput-object p1, p0, Lxq;->a:Landroid/app/Activity;

    .line 43
    invoke-virtual {p0}, Lxq;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lxq;->d:Lacg;

    .line 44
    invoke-direct {p0}, Lxq;->a()V

    .line 45
    new-instance v0, Lte;

    invoke-virtual {p1}, Lack;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lte;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lxq;->a(Lte;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lxq;Lacg;)Lacg;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lxq;->d:Lacg;

    return-object p1
.end method

.method static synthetic a(Lxq;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lxq;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lxq;->a:Landroid/app/Activity;

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lxq;->c:Landroid/widget/ImageButton;

    .line 51
    iget-object v0, p0, Lxq;->a:Landroid/app/Activity;

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxq;->e:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lxq;->e:Landroid/widget/TextView;

    sget v1, Llg;->app_investimentos_titulo:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v0, p0, Lxq;->c:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lxq;->c:Landroid/widget/ImageButton;

    new-instance v1, Lxr;

    invoke-direct {v1, p0}, Lxr;-><init>(Lxq;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lxq;->a:Landroid/app/Activity;

    sget v1, Lla;->resgate_recycler_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lxq;->f:Landroid/support/v7/widget/RecyclerView;

    .line 64
    iget-object v0, p0, Lxq;->a:Landroid/app/Activity;

    sget v1, Lla;->inv2_portifolio_layout_loadinig:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lxq;->g:Landroid/widget/RelativeLayout;

    .line 65
    iget-object v0, p0, Lxq;->a:Landroid/app/Activity;

    sget v1, Lla;->configurar_inv_main:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lxq;->h:Landroid/widget/LinearLayout;

    .line 66
    return-void
.end method

.method private a(Lte;)V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lxs;

    invoke-direct {v0, p0}, Lxs;-><init>(Lxq;)V

    invoke-virtual {p1, v0}, Lte;->a(Ltj;)V

    .line 125
    return-void
.end method

.method private a(Ltm;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lxq;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lxq;->e()Lack;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 129
    iget-object v1, p0, Lxq;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 130
    iget-object v1, p0, Lxq;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    move v1, v0

    .line 132
    :goto_0
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 133
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->i()Lsw;

    move-result-object v0

    invoke-virtual {v0}, Lsw;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lxv;

    invoke-direct {v1, p0}, Lxv;-><init>(Lxq;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    iget-object v0, p0, Lxq;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lwu;

    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lxq;->d:Lacg;

    invoke-virtual {p0}, Lxq;->e()Lack;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lwu;-><init>(Ljava/util/List;Lacg;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lxq;Lte;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lxq;->a(Lte;)V

    return-void
.end method

.method static synthetic a(Lxq;Ltm;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lxq;->a(Ltm;)V

    return-void
.end method

.method static synthetic b(Lxq;)Lacg;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lxq;->d:Lacg;

    return-object v0
.end method

.method static synthetic c(Lxq;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lxq;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lxq;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lxq;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method
