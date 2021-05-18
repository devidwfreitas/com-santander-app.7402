.class public Lss;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Lsl;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Lacg;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:I

.field private k:Lsp;

.field private l:Lyt;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>(Lack;Lyt;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 50
    iput v1, p0, Lss;->j:I

    .line 58
    invoke-virtual {p1}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lss;->g:Lacg;

    .line 59
    new-instance v0, Lsl;

    invoke-direct {v0}, Lsl;-><init>()V

    iput-object v0, p0, Lss;->a:Lsl;

    .line 60
    iput-object p2, p0, Lss;->l:Lyt;

    .line 61
    iput-object p3, p0, Lss;->m:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lss;->g:Lacg;

    invoke-virtual {v0}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lss;->n:Z

    .line 64
    invoke-direct {p0}, Lss;->b()V

    .line 65
    invoke-direct {p0}, Lss;->c()V

    .line 66
    invoke-virtual {p0}, Lss;->a()V

    .line 67
    return-void

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method static synthetic a(Lss;)Lacg;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lss;->g:Lacg;

    return-object v0
.end method

.method static synthetic a(Lss;Lsp;)Lsp;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lss;->k:Lsp;

    return-object p1
.end method

.method static synthetic b(Lss;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lss;->f:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lss;->g:Lacg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lacg;->c(Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Lss;->g:Lacg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lacg;->d(Ljava/util/List;)V

    .line 74
    invoke-virtual {p0}, Lss;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lss;->c:Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Lss;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lss;->d:Landroid/view/View;

    .line 76
    invoke-virtual {p0}, Lss;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_logo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lss;->e:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lss;->e()Lack;

    move-result-object v0

    sget v1, Lla;->efetivacao_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lss;->h:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lss;->e()Lack;

    move-result-object v0

    sget v1, Lla;->efe_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lss;->i:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lss;->i:Landroid/view/View;

    iget-object v0, p0, Lss;->g:Lacg;

    invoke-virtual {v0}, Lacg;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lss;->e()Lack;

    move-result-object v0

    sget v1, Lla;->efe_lista_efetivacao:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lss;->f:Landroid/support/v7/widget/RecyclerView;

    .line 84
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lss;)Lsp;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lss;->k:Lsp;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lss;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lss;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lss;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    new-instance v0, Lsp;

    invoke-virtual {p0}, Lss;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lss;->g:Lacg;

    invoke-virtual {v2}, Lacg;->l()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsp;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lss;->k:Lsp;

    .line 93
    iget-object v0, p0, Lss;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lss;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v0, p0, Lss;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lss;->k:Lsp;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 97
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 100
    iget-object v0, p0, Lss;->g:Lacg;

    invoke-virtual {v0}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 102
    iget-object v0, p0, Lss;->a:Lsl;

    invoke-virtual {p0}, Lss;->e()Lack;

    move-result-object v1

    iget-object v3, p0, Lss;->g:Lacg;

    invoke-virtual {v3}, Lacg;->C()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lss;->l:Lyt;

    iget-object v5, p0, Lss;->m:Ljava/lang/String;

    new-instance v6, Lst;

    invoke-direct {v6, p0, v2}, Lst;-><init>(Lss;Ljava/lang/Boolean;)V

    invoke-virtual/range {v0 .. v6}, Lsl;->a(Landroid/content/Context;Ljava/lang/Boolean;Ljava/util/List;Lyt;Ljava/lang/String;Lsn;)V

    .line 173
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
