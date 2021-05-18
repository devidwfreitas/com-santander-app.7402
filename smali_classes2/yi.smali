.class public Lyi;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Lxy;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Lace;


# direct methods
.method public constructor <init>(Lack;Lace;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 39
    iput-object p2, p0, Lyi;->h:Lace;

    .line 41
    new-instance v0, Lxy;

    invoke-direct {v0}, Lxy;-><init>()V

    iput-object v0, p0, Lyi;->a:Lxy;

    .line 43
    invoke-direct {p0}, Lyi;->c()V

    .line 44
    invoke-direct {p0}, Lyi;->a()V

    .line 45
    invoke-direct {p0}, Lyi;->b()V

    .line 46
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->termo_aceite_layout_tela:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lyi;->c:Landroid/widget/LinearLayout;

    .line 50
    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->termo_aceite_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lyi;->d:Landroid/widget/RelativeLayout;

    .line 51
    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyi;->e:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lyi;->f:Landroid/widget/ImageButton;

    .line 53
    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->termo_aceite_lista:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lyi;->g:Landroid/support/v7/widget/RecyclerView;

    .line 55
    return-void
.end method

.method private a(Lxx;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-virtual {p1}, Lxx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 60
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v2

    invoke-virtual {p1}, Lxx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb;

    invoke-virtual {v0}, Lyb;->a()Lxw;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lzs;->a(Landroid/content/Context;Lxw;)V

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lyi;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->termo_aceite:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lyi;->f:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 65
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 66
    iget-object v1, p0, Lyi;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v0, p0, Lyi;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 68
    iget-object v0, p0, Lyi;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 69
    iget-object v0, p0, Lyi;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lyc;

    invoke-virtual {p1}, Lxx;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lyc;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 71
    iget-object v0, p0, Lyi;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lyi;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lyi;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lyi;->c()V

    return-void
.end method

.method static synthetic a(Lyi;Lxx;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lyi;->a(Lxx;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lyi;->f:Landroid/widget/ImageButton;

    new-instance v1, Lyj;

    invoke-direct {v1, p0}, Lyj;-><init>(Lyi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lyi;->a:Lxy;

    invoke-virtual {p0}, Lyi;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lyi;->h:Lace;

    new-instance v3, Lyk;

    invoke-direct {v3, p0}, Lyk;-><init>(Lyi;)V

    invoke-virtual {v0, v1, v2, v3}, Lxy;->a(Landroid/content/Context;Lace;Lya;)V

    .line 103
    return-void
.end method
