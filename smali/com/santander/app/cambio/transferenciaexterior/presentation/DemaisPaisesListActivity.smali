.class public Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lgbd;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgbd;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgbd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

.field private f:Lgcw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;Lgbd;)Lgbd;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->b:Lgbd;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->d:Ljava/util/List;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lgbd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbd;

    .line 94
    invoke-virtual {v0}, Lgbd;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    return-object v2
.end method

.method private a()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f100d1c

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 53
    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 55
    const v0, 0x7f100d1d

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    const v0, 0x7f100d1e

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->e:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    .line 58
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->e:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    const v1, 0x7f0202e7

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setCursorDrawable(I)V

    .line 59
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->e:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    new-instance v1, Lgcl;

    invoke-direct {v1, p0}, Lgcl;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setOnQueryTextListener(Lgsm;)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->e:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    new-instance v1, Lgcm;

    invoke-direct {v1, p0}, Lgcm;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setOnSearchViewListener(Lgsn;)V

    .line 87
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)Lgcw;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->f:Lgcw;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 122
    const v0, 0x7f1006af

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 123
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 124
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 125
    new-instance v0, Lgcw;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->d:Ljava/util/List;

    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->c()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgcw;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->f:Lgcw;

    .line 126
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->f:Lgcw;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 127
    return-void
.end method

.method private c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lgcn;

    invoke-direct {v0, p0}, Lgcn;-><init>(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;)Lgbd;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->b:Lgbd;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->e:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-virtual {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->e:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-virtual {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->c()V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f04014e

    invoke-virtual {p0, v0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "demais_paises"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->c:Ljava/util/List;

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "demais_paises"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->d:Ljava/util/List;

    .line 47
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->a()V

    .line 48
    invoke-direct {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->b()V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    const v0, 0x7f101211

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/santander/app/cambio/transferenciaexterior/presentation/DemaisPaisesListActivity;->e:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->setMenuItem(Landroid/view/MenuItem;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method
