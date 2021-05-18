.class public Lvp;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Lva;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lacg;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 39
    invoke-direct {p0}, Lvp;->b()V

    .line 41
    iget-object v0, p0, Lvp;->h:Lacg;

    invoke-virtual {v0}, Lacg;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lvp;->a()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0}, Lvp;->d()V

    goto :goto_0
.end method

.method static synthetic a(Lvp;Lva;)Lva;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lvp;->e:Lva;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lvq;

    invoke-direct {v0, p0}, Lvq;-><init>(Lvp;)V

    invoke-virtual {p0, v0}, Lvp;->a(Ltj;)V

    .line 71
    return-void
.end method

.method private a(Lva;)V
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p1}, Lva;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    .line 101
    invoke-virtual {v0}, Luz;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lvp;->h:Lacg;

    invoke-virtual {v3}, Lacg;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v2

    iget-object v3, p0, Lvp;->h:Lacg;

    invoke-virtual {v1, v2, v0, v3}, Lzs;->a(Landroid/content/Context;Luz;Lacg;)V

    .line 106
    :cond_1
    return-void
.end method

.method static synthetic a(Lvp;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lvp;->d()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lvp;->h:Lacg;

    .line 75
    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lvp;->a:Landroid/widget/ImageButton;

    .line 76
    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvp;->c:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v0

    sget v1, Lla;->list_subp_rv_familias:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lvp;->d:Landroid/support/v7/widget/RecyclerView;

    .line 78
    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v0

    sget v1, Lla;->list_subp_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvp;->f:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v0

    sget v1, Lla;->list_subp_main_view:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvp;->g:Landroid/view/View;

    .line 81
    return-void
.end method

.method static synthetic b(Lvp;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lvp;->a()V

    return-void
.end method

.method static synthetic b(Lvp;Lva;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lvp;->a(Lva;)V

    return-void
.end method

.method static synthetic c(Lvp;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lvp;->f:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lvp;->a:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lvp;->a:Landroid/widget/ImageButton;

    new-instance v1, Lvs;

    invoke-direct {v1, p0}, Lvs;-><init>(Lvp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lvp;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object v0, p0, Lvp;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lvf;

    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v2

    iget-object v3, p0, Lvp;->e:Lva;

    invoke-virtual {v3}, Lva;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lvf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 96
    iget-object v0, p0, Lvp;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 97
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lvp;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lvp;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    new-instance v0, Lvb;

    invoke-virtual {p0}, Lvp;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Lvb;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v1, Lvt;

    invoke-direct {v1, p0}, Lvt;-><init>(Lvp;)V

    invoke-virtual {v0, v1}, Lvb;->a(Lvd;)V

    .line 137
    return-void
.end method

.method static synthetic d(Lvp;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lvp;->c()V

    return-void
.end method

.method static synthetic e(Lvp;)Lacg;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lvp;->h:Lacg;

    return-object v0
.end method

.method static synthetic f(Lvp;)Lva;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lvp;->e:Lva;

    return-object v0
.end method

.method static synthetic g(Lvp;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lvp;->g:Landroid/view/View;

    return-object v0
.end method
