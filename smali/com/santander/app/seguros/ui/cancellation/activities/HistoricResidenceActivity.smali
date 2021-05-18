.class public Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/support/v4/widget/NestedScrollView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Llev;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 67
    const v1, 0x7f090212

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqb;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 85
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    new-instance v0, Llev;

    invoke-direct {v0, p1}, Llev;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->g:Llev;

    .line 88
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 89
    iget-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->g:Llev;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 74
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->d:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v6, v6}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sua resid\u00eancia na "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " j\u00e1 foi protegida em diversas situa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->e:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->a:Landroid/widget/TextView;

    const-string v1, "fonts/opensans_semibold.ttf"

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->e:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->f:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {p0, v1, v2, v3, v4}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->w:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->a(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 97
    const v0, 0x7f10031c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->a:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f10031d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 99
    const v0, 0x7f10031e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->c:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->c:Landroid/widget/Button;

    new-instance v1, Llen;

    invoke-direct {v1, p0}, Llen;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f10031b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->d:Landroid/support/v4/widget/NestedScrollView;

    .line 108
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 113
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "residence-address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "residence-address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->f:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "list-historic-residence"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "list-historic-residence"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkqb;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->w:Ljava/util/List;

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->a()V

    .line 57
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->c()V

    .line 58
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/HistoricResidenceActivity;->b()V

    .line 59
    return-void
.end method
