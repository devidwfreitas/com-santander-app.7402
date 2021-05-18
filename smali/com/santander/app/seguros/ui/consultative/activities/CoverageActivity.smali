.class public Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "coverage-id"

.field public static final b:Ljava/lang/String; = "product-code"


# instance fields
.field private c:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkps;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkny;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->x:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->d()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkny;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkny;

    .line 217
    invoke-virtual {v0}, Lkny;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 218
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 223
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v5, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 224
    new-instance v0, Llhz;

    invoke-direct {v0, v1}, Llhz;-><init>(Ljava/util/List;)V

    .line 225
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 226
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->w:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f10021b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 89
    const v0, 0x7f10021c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 90
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 97
    const v1, 0x7f090306

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 149
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 150
    new-instance v0, Lkxn;

    invoke-direct {v0}, Lkxn;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->g:Ljava/lang/String;

    new-instance v3, Llgp;

    invoke-direct {v3, p0}, Llgp;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V

    new-instance v4, Llgq;

    invoke-direct {v4, p0}, Llgq;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lkxm;->a(Ljava/lang/String;Ljava/lang/String;Lkxl;Lkxl;)V

    .line 171
    return-void
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 174
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 183
    const-string v0, "c"

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->x:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 187
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v2, v8

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 190
    const-string v0, "a"

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 192
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->w:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 194
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 198
    :goto_1
    new-instance v0, Llib;

    invoke-direct {v0, v9}, Llib;-><init>(Ljava/util/List;)V

    .line 199
    invoke-virtual/range {v0 .. v6}, Llib;->a(IIIIII)V

    .line 200
    new-instance v1, Llgr;

    invoke-direct {v1, p0}, Llgr;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V

    invoke-virtual {v0, v1}, Llib;->a(Llif;)V

    .line 207
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v8, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 208
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 210
    return-void

    :cond_0
    move v6, v7

    move v3, v7

    move v1, v7

    goto :goto_1

    :cond_1
    move v5, v7

    move v4, v7

    move v2, v7

    goto :goto_0
.end method

.method private f()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Llgs;

    invoke-direct {v0, p0}, Llgs;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 102
    new-instance v0, Lkyw;

    invoke-direct {v0}, Lkyw;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->e:Ljava/lang/String;

    new-instance v2, Llgn;

    invoke-direct {v2, p0}, Llgn;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V

    new-instance v3, Llgo;

    invoke-direct {v3, p0}, Llgo;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lkyv;->a(Ljava/lang/String;Lkxl;Lkxl;)V

    .line 146
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 231
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    const-string v1, "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->e:Ljava/lang/String;

    .line 73
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "coverage-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "coverage-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->f:Ljava/lang/String;

    .line 77
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "product-code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    const-string v1, "product-code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->g:Ljava/lang/String;

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->b()V

    .line 82
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->c()V

    .line 84
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;->a()V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 236
    return-void
.end method
