.class public Lxn;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Lsy;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lack;Lsy;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 51
    invoke-virtual {p1}, Lack;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lxn;->a:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lxn;->c:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lxn;->h:Lsy;

    .line 55
    invoke-direct {p0}, Lxn;->a()V

    .line 56
    return-void
.end method

.method static synthetic a(Lxn;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lxn;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lxn;->b()V

    .line 60
    invoke-direct {p0}, Lxn;->c()V

    .line 61
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lxn;->c:Landroid/app/Activity;

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lxn;->d:Landroid/widget/ImageButton;

    .line 65
    iget-object v0, p0, Lxn;->c:Landroid/app/Activity;

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxn;->e:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lxn;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lxn;->h:Lsy;

    invoke-virtual {v1}, Lsy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lxn;->d:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lxn;->c:Landroid/app/Activity;

    sget v1, Lla;->resgate_recycler_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lxn;->g:Landroid/support/v7/widget/RecyclerView;

    .line 69
    iget-object v0, p0, Lxn;->d:Landroid/widget/ImageButton;

    new-instance v1, Lxo;

    invoke-direct {v1, p0}, Lxo;-><init>(Lxn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lxn;->c:Landroid/app/Activity;

    sget v1, Lla;->txt_total_investimentos:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxn;->f:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lxn;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Llg;->CDB:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxn;->i:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private c()V
    .locals 15

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    iget-object v0, p0, Lxn;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lxn;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 83
    iget-object v0, p0, Lxn;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 84
    iget-object v0, p0, Lxn;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v0, p0, Lxn;->h:Lsy;

    invoke-virtual {v0}, Lsy;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lto;

    .line 89
    invoke-virtual {v0}, Lto;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltk;

    .line 90
    invoke-virtual {v1}, Ltk;->c()Lsw;

    move-result-object v2

    invoke-virtual {v2}, Lsw;->a()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_4

    move v2, v3

    .line 91
    :goto_1
    if-eqz v2, :cond_1

    .line 92
    new-instance v2, Lwq;

    invoke-direct {v2}, Lwq;-><init>()V

    .line 93
    invoke-virtual {v2, v0}, Lwq;->a(Lto;)V

    .line 94
    invoke-virtual {v2, v1}, Lwq;->a(Ltk;)V

    .line 96
    invoke-virtual {v1}, Ltk;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labz;

    .line 97
    invoke-virtual {v1}, Labz;->d()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Lwq;->a(Ljava/util/List;)V

    .line 99
    iget-object v10, p0, Lxn;->c:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Llg;->property_contract_date:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-virtual {v1}, Labz;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacc;

    .line 101
    invoke-virtual {v1}, Lacc;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 102
    if-eqz v12, :cond_3

    .line 104
    :try_start_0
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "dd/MM/yyyy"

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v12, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 105
    invoke-virtual {v1}, Lacc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Lwq;->a(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 107
    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    :cond_4
    move v2, v4

    .line 90
    goto :goto_1

    .line 114
    :cond_5
    iget-object v1, p0, Lxn;->h:Lsy;

    invoke-virtual {v1}, Lsy;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lxn;->i:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    :cond_6
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    :cond_7
    new-instance v0, Lxp;

    invoke-direct {v0, p0}, Lxp;-><init>(Lxn;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v0, p0, Lxn;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lwr;

    iget-object v2, p0, Lxn;->h:Lsy;

    invoke-virtual {p0}, Lxn;->e()Lack;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6}, Lwr;-><init>(Lsy;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 132
    invoke-virtual {p0}, Lxn;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Llg;->investimentos_disponiveis:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lxn;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method
