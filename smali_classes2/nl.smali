.class public Lnl;
.super Lacr;
.source "SourceFile"


# static fields
.field public static final a:I = 0x63


# instance fields
.field private c:Landroid/support/v4/widget/NestedScrollView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/ImageButton;

.field private i:Lacg;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 47
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lnl;->i:Lacg;

    .line 48
    invoke-direct {p0}, Lnl;->b()V

    .line 49
    invoke-direct {p0}, Lnl;->d()V

    .line 50
    invoke-direct {p0}, Lnl;->c()V

    .line 51
    return-void
.end method

.method private a(Lne;)V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lnl;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lne;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 109
    iget-object v1, p0, Lnl;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 110
    iget-object v0, p0, Lnl;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 111
    iget-object v0, p0, Lnl;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-virtual {p1}, Lne;->b()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnc;

    .line 115
    invoke-virtual {v0}, Lnc;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lnc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    invoke-virtual {v0}, Lnc;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lnc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lnl;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lni;

    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lni;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object v0, p0, Lnl;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void
.end method

.method static synthetic a(Lnl;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lnl;->d()V

    return-void
.end method

.method static synthetic a(Lnl;Lne;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lnl;->a(Lne;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v0

    sget v1, Lla;->cdb_progressivo_body:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lnl;->c:Landroid/support/v4/widget/NestedScrollView;

    .line 55
    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v0

    sget v1, Lla;->cdb_progressivo_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnl;->d:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v0

    sget v1, Lla;->cdb_progressivo_text:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnl;->e:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v0

    sget v1, Lla;->cdb_progressivo_lista:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lnl;->f:Landroid/support/v7/widget/RecyclerView;

    .line 59
    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v0

    sget v1, Lla;->cdb_progressivo_btn_compartilhar:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnl;->g:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v0

    sget v1, Lla;->print_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lnl;->h:Landroid/widget/ImageButton;

    .line 62
    iget-object v0, p0, Lnl;->h:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 63
    iget-object v0, p0, Lnl;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 67
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lnl;->h:Landroid/widget/ImageButton;

    new-instance v1, Lnm;

    invoke-direct {v1, p0}, Lnm;-><init>(Lnl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lnl;->g:Landroid/widget/Button;

    new-instance v1, Lnn;

    invoke-direct {v1, p0}, Lnn;-><init>(Lnl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    .line 126
    new-instance v0, Lnf;

    invoke-direct {v0}, Lnf;-><init>()V

    .line 128
    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lnl;->i:Lacg;

    invoke-virtual {v2}, Lacg;->n()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnl;->i:Lacg;

    .line 129
    invoke-virtual {v3}, Lacg;->n()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnl;->i:Lacg;

    invoke-virtual {v4}, Lacg;->y()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnl;->i:Lacg;

    invoke-virtual {v5}, Lacg;->z()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lno;

    invoke-direct {v6, p0}, Lno;-><init>(Lnl;)V

    .line 128
    invoke-virtual/range {v0 .. v6}, Lnf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnh;)V

    .line 151
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lnl;->h:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lnl;->e()Lack;

    move-result-object v0

    iget-object v1, p0, Lnl;->c:Landroid/support/v4/widget/NestedScrollView;

    invoke-static {v0, v1}, Laau;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lnl;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "SHARE CDB"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
