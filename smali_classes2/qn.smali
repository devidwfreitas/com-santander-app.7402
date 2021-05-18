.class public Lqn;
.super Lacr;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/ImageButton;

.field private final c:Landroid/widget/TextView;

.field private d:Landroid/content/Context;

.field private e:Landroid/app/Activity;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqk;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/support/v7/widget/LinearLayoutManager;

.field private i:Lql;

.field private j:Landroid/widget/TextView;

.field private k:Lacg;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 51
    invoke-virtual {p1}, Lack;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lqn;->d:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lqn;->e:Landroid/app/Activity;

    .line 53
    invoke-virtual {p0}, Lqn;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lqn;->k:Lacg;

    .line 56
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->f()Ltp;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    sget v0, Lla;->configurar_inv_main:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    sget v0, Lla;->configurar_inv_loading:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    new-instance v0, Lqo;

    invoke-direct {v0, p0, p1}, Lqo;-><init>(Lqn;Lack;)V

    invoke-virtual {p0, v0}, Lqn;->a(Ltj;)V

    .line 75
    :cond_0
    sget v0, Lla;->configurar_investimento_disclamer:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqn;->j:Landroid/widget/TextView;

    .line 77
    sget v0, Lla;->configurar_investimento_recycler_view:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lqn;->f:Landroid/support/v7/widget/RecyclerView;

    .line 78
    iget-object v0, p0, Lqn;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 79
    iget-object v0, p0, Lqn;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 81
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->f()Ltp;

    move-result-object v0

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lqn;->g:Ljava/util/List;

    .line 84
    iget-object v4, p0, Lqn;->g:Ljava/util/List;

    invoke-direct {p0, v1}, Lqn;->a(Z)Lqk;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ltp;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ltp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 87
    :goto_0
    iget-object v1, p0, Lqn;->g:Ljava/util/List;

    invoke-direct {p0, v0}, Lqn;->b(Z)Lqk;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lqn;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lqn;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lqn;->h:Landroid/support/v7/widget/LinearLayoutManager;

    .line 92
    iget-object v0, p0, Lqn;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lqn;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    new-instance v0, Lql;

    iget-object v1, p0, Lqn;->d:Landroid/content/Context;

    iget-object v2, p0, Lqn;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lql;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lqn;->i:Lql;

    .line 95
    iget-object v0, p0, Lqn;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lqn;->i:Lql;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 97
    sget v0, Lla;->header_cancel:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lqn;->a:Landroid/widget/ImageButton;

    .line 98
    iget-object v0, p0, Lqn;->a:Landroid/widget/ImageButton;

    new-instance v1, Lqp;

    invoke-direct {v1, p0, p1}, Lqp;-><init>(Lqn;Lack;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lqn;->a:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 106
    sget v0, Lla;->header_titulo:I

    invoke-virtual {p1, v0}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqn;->c:Landroid/widget/TextView;

    .line 107
    return-void

    :cond_2
    move v0, v2

    .line 86
    goto :goto_0
.end method

.method static synthetic a(Lqn;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lqn;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Z)Lqk;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lqk;

    invoke-direct {v0}, Lqk;-><init>()V

    .line 111
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqk;->a(Ljava/lang/Boolean;)V

    .line 112
    iget-object v1, p0, Lqn;->d:Landroid/content/Context;

    sget v2, Llg;->config_inv_txt_escolher_produto_titulo:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqk;->a(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lqn;->d:Landroid/content/Context;

    sget v2, Llg;->config_inv_txt_escolher_produto_conteudo:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqk;->b(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lqn;->d:Landroid/content/Context;

    sget v2, Lkz;->ic_invest_valor_produto:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqk;->a(Landroid/graphics/drawable/Drawable;)V

    .line 115
    new-instance v1, Lqq;

    invoke-direct {v1, p0}, Lqq;-><init>(Lqn;)V

    invoke-virtual {v0, v1}, Lqk;->a(Landroid/view/View$OnClickListener;)V

    .line 126
    return-object v0
.end method

.method static synthetic b(Lqn;)Lacg;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lqn;->k:Lacg;

    return-object v0
.end method

.method private b(Z)Lqk;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lqk;

    invoke-direct {v0}, Lqk;-><init>()V

    .line 131
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqk;->a(Ljava/lang/Boolean;)V

    .line 132
    iget-object v1, p0, Lqn;->d:Landroid/content/Context;

    sget v2, Llg;->config_inv_txt_informar_valor_titulo:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqk;->a(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lqn;->d:Landroid/content/Context;

    sget v2, Llg;->config_inv_txt_informar_valor_conteudo:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqk;->b(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lqn;->d:Landroid/content/Context;

    sget v2, Lkz;->ic_invest_valor_primary:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqk;->a(Landroid/graphics/drawable/Drawable;)V

    .line 135
    new-instance v1, Lqr;

    invoke-direct {v1, p0}, Lqr;-><init>(Lqn;)V

    invoke-virtual {v0, v1}, Lqk;->a(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object v0
.end method
