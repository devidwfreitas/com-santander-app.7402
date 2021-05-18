.class public Lue;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/github/mikephil/charting/charts/PieChart;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/Button;

.field private t:Lacg;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:I

.field private z:Lsy;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 76
    check-cast p2, Lack;

    invoke-direct {p0, p2, p1}, Lacr;-><init>(Lack;Landroid/view/View;)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lue;->y:I

    .line 77
    iput-object p1, p0, Lue;->a:Landroid/view/View;

    .line 79
    invoke-direct {p0}, Lue;->d()V

    .line 80
    new-instance v0, Lte;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lte;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lue;->a(Lte;)V

    .line 81
    return-void
.end method

.method static synthetic a(Lue;Lacg;)Lacg;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lue;->t:Lacg;

    return-object p1
.end method

.method static synthetic a(Lue;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;[F)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 380
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 383
    array-length v5, p2

    move v0, v2

    move v1, v3

    :goto_0
    if-ge v0, v5, :cond_0

    aget v6, p2, v0

    .line 384
    add-float/2addr v1, v6

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    array-length v5, p2

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_1

    aget v6, p2, v0

    .line 389
    new-instance v7, Lcom/github/mikephil/charting/data/PieEntry;

    div-float/2addr v6, v1

    invoke-direct {v7, v6}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(F)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_1
    new-instance v5, Lcgz;

    const-string v0, ""

    invoke-direct {v5, v4, v0}, Lcgz;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 393
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Lcgz;->a(F)V

    .line 394
    invoke-virtual {v5, v3}, Lcgz;->f(F)V

    .line 397
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 399
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 400
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 403
    :cond_2
    invoke-virtual {v5, v4}, Lcgz;->a(Ljava/util/List;)V

    .line 404
    new-instance v0, Lcgy;

    invoke-direct {v0, v5}, Lcgy;-><init>(Lcis;)V

    .line 405
    invoke-virtual {v0, v3}, Lcgy;->b(F)V

    .line 406
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcgo;)V

    .line 407
    iget-object v0, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    .line 409
    iget-object v0, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->av()Lcfn;

    move-result-object v0

    .line 410
    invoke-virtual {v0, v2}, Lcfn;->g(Z)V

    .line 411
    return-void
.end method

.method private a(Lte;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {v0}, Laca;->b()Lach;

    move-result-object v0

    invoke-virtual {v0}, Lach;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lue;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Luf;

    invoke-direct {v1, p0}, Luf;-><init>(Lue;)V

    invoke-virtual {p1, v0, v1}, Lte;->a(Ljava/lang/String;Ltj;)V

    .line 141
    return-void
.end method

.method private a(Ltm;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 274
    iget-object v0, p0, Lue;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltm;->a()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Laat;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lue;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Ltm;->a()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->a()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p1}, Ltm;->a()Lsw;

    move-result-object v0

    invoke-virtual {v0}, Lsw;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 278
    iget-object v0, p0, Lue;->n:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    iget-object v0, p0, Lue;->n:Landroid/widget/Button;

    invoke-virtual {p0}, Lue;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_warm_grey_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 282
    :cond_0
    iget-object v0, p0, Lue;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lue;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 283
    iget-object v0, p0, Lue;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 284
    iget-object v0, p0, Lue;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 285
    iget-object v0, p0, Lue;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Ltu;

    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lue;->t:Lacg;

    invoke-virtual {p0}, Lue;->e()Lack;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ltu;-><init>(Ljava/util/List;Lacg;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 287
    iget-object v0, p0, Lue;->m:Landroid/widget/Button;

    new-instance v1, Lum;

    invoke-direct {v1, p0}, Lum;-><init>(Lue;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lue;->n:Landroid/widget/Button;

    new-instance v1, Lun;

    invoke-direct {v1, p0, p1}, Lun;-><init>(Lue;Ltm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-direct {p0, p1}, Lue;->d(Ltm;)V

    .line 316
    return-void
.end method

.method static synthetic a(Lue;Lte;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lue;->b(Lte;)V

    return-void
.end method

.method static synthetic a(Lue;Ltm;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lue;->e(Ltm;)V

    return-void
.end method

.method static synthetic b(Lue;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lue;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 214
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {v0}, Lzs;->d()V

    .line 215
    return-void
.end method

.method private b(Lte;)V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lui;

    invoke-direct {v0, p0}, Lui;-><init>(Lue;)V

    invoke-virtual {p1, v0}, Lte;->a(Ltj;)V

    .line 210
    return-void
.end method

.method private b(Ltm;)V
    .locals 4

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lue;->c(Ltm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Lue;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lue;->t:Lacg;

    invoke-virtual {p0}, Lue;->a()Lsy;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lzs;->a(Landroid/content/Context;Lacg;Lsy;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Lue;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lue;->t:Lacg;

    invoke-virtual {v0, v1, v2}, Lzs;->i(Landroid/content/Context;Lacg;)V

    goto :goto_0
.end method

.method static synthetic b(Lue;Ltm;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lue;->a(Ltm;)V

    return-void
.end method

.method static synthetic c(Lue;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lue;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 219
    return-void
.end method

.method static synthetic c(Lue;Ltm;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lue;->b(Ltm;)V

    return-void
.end method

.method private c(Ltm;)Z
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    .line 330
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    .line 331
    invoke-virtual {v0}, Lsy;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lto;

    .line 332
    invoke-virtual {v1}, Lto;->s()Lsw;

    move-result-object v1

    invoke-virtual {v1}, Lsw;->a()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v1, v8, v10

    if-lez v1, :cond_1

    move v1, v4

    .line 333
    :goto_1
    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Lue;->a(Lsy;)V

    .line 335
    add-int/lit8 v0, v2, 0x1

    .line 340
    :goto_2
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    move v1, v4

    .line 341
    :goto_3
    if-eqz v1, :cond_3

    .line 347
    :goto_4
    return v3

    :cond_1
    move v1, v3

    .line 332
    goto :goto_1

    :cond_2
    move v1, v3

    .line 340
    goto :goto_3

    :cond_3
    move v2, v0

    .line 345
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_4
.end method

.method static synthetic d(Lue;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->r:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 223
    iget-object v1, p0, Lue;->a:Landroid/view/View;

    sget v2, Lla;->header_titulo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lue;->u:Landroid/widget/TextView;

    .line 225
    sget-boolean v1, Lte;->a:Z

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lue;->u:Landroid/widget/TextView;

    const-string v2, "POUPAN\u00c7A"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_0
    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 232
    new-instance v1, Luk;

    invoke-direct {v1, p0}, Luk;-><init>(Lue;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->inv2_portifolio_layout_cards:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lue;->c:Landroid/widget/LinearLayout;

    .line 240
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->inv2_portifolio_layout_botao:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lue;->d:Landroid/widget/LinearLayout;

    .line 241
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->inv2_portifolio_layout_vazio:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lue;->e:Landroid/widget/LinearLayout;

    .line 242
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->inv2_portifolio_layout_loadinig:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lue;->f:Landroid/widget/RelativeLayout;

    .line 243
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->portifolio_carrinho_abandonado:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lue;->r:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->toast_dismiss_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lue;->g:Landroid/widget/ImageButton;

    .line 245
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->toast_msg_parametrizada:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lue;->h:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->toast_msg_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lue;->i:Landroid/widget/TextView;

    .line 247
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->portifolio_valor_total_investido:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lue;->j:Landroid/widget/TextView;

    .line 248
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->portifolio_valor_disponivel_resgate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lue;->k:Landroid/widget/TextView;

    .line 249
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->portifolio_chart1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    .line 250
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->portifolio_lista_de_produtos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lue;->o:Landroid/support/v7/widget/RecyclerView;

    .line 251
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->portifolio_botao_aplicar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lue;->m:Landroid/widget/Button;

    .line 252
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->portifolio_botao_resgatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lue;->n:Landroid/widget/Button;

    .line 253
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lue;->p:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->image_icon_state:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lue;->q:Landroid/widget/ImageView;

    .line 255
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->titulo_empty_state:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lue;->w:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->subTitulo_empty_state:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lue;->x:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lue;->a:Landroid/view/View;

    sget v1, Lla;->btn_begin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lue;->s:Landroid/widget/Button;

    .line 259
    iget-object v0, p0, Lue;->p:Landroid/view/View;

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 260
    iget-object v1, p0, Lue;->p:Landroid/view/View;

    sget v2, Lla;->header_titulo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lue;->v:Landroid/widget/TextView;

    .line 262
    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 263
    iget-object v1, p0, Lue;->v:Landroid/widget/TextView;

    sget v2, Llg;->app_investimentos_titulo:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 265
    new-instance v1, Lul;

    invoke-direct {v1, p0}, Lul;-><init>(Lue;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lue;->u:Landroid/widget/TextView;

    sget v2, Llg;->app_investimentos_titulo:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private d(Ltm;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    .line 352
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->au()Lcfl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcfl;->g(Z)V

    .line 353
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraOffsets(FFFF)V

    .line 354
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDragDecelerationFrictionCoef(F)V

    .line 355
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    .line 356
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    .line 357
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleColor(I)V

    .line 358
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    .line 359
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v2, 0x42960000    # 75.0f

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    .line 360
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawCenterText(Z)V

    .line 361
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationAngle(F)V

    .line 362
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setRotationEnabled(Z)V

    .line 363
    iget-object v1, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setHighlightPerTapEnabled(Z)V

    .line 365
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [F

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 368
    :goto_0
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 369
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->e()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    aput v0, v2, v1

    .line 370
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 373
    :cond_0
    invoke-direct {p0, v3, v2}, Lue;->a(Ljava/util/ArrayList;[F)V

    .line 375
    iget-object v0, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v1, 0x3e8

    sget-object v2, Lcew;->Linear:Lcew;

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->b(ILcew;)V

    .line 376
    iget-object v0, p0, Lue;->l:Lcom/github/mikephil/charting/charts/PieChart;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelColor(I)V

    .line 377
    return-void
.end method

.method static synthetic e(Lue;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private e(Ltm;)V
    .locals 3

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lue;->f(Ltm;)V

    .line 416
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Lue;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lue;->t:Lacg;

    invoke-virtual {v0, v1, v2}, Lzs;->a(Landroid/content/Context;Lacg;)V

    .line 417
    const/4 v0, 0x0

    sput-boolean v0, Lte;->a:Z

    .line 419
    invoke-virtual {p0}, Lue;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 420
    return-void
.end method

.method private f(Ltm;)V
    .locals 4

    .prologue
    .line 423
    invoke-virtual {p1}, Ltm;->b()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lue;->y:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    .line 425
    iget-object v2, p0, Lue;->t:Lacg;

    invoke-virtual {v0}, Lsy;->h()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lue;->y:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lto;

    invoke-virtual {v2, v1}, Lacg;->a(Lto;)V

    .line 426
    iget-object v1, p0, Lue;->t:Lacg;

    invoke-virtual {v0}, Lsy;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacg;->b(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lue;->t:Lacg;

    invoke-virtual {v0}, Lsy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacg;->c(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Lsy;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lue;->t:Lacg;

    invoke-virtual {v1, v0}, Lacg;->a(Ljava/lang/Integer;)V

    .line 431
    return-void
.end method

.method static synthetic f(Lue;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lue;->b()V

    return-void
.end method

.method static synthetic g(Lue;)Lacg;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->t:Lacg;

    return-object v0
.end method

.method static synthetic h(Lue;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lue;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lue;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic k(Lue;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lue;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lue;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lue;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lue;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic p(Lue;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lue;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lue;->s:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lue;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lue;->c()V

    return-void
.end method


# virtual methods
.method public a()Lsy;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lue;->z:Lsy;

    return-object v0
.end method

.method public a(Lsy;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lue;->z:Lsy;

    .line 439
    return-void
.end method
