.class public Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljgy;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljiu;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljdo;)V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p1}, Ljdo;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljhl;

    invoke-direct {v1, p0}, Ljhl;-><init>(Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Ljii;

    invoke-virtual {p1}, Ljdo;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljii;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0906f1

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iput-object p0, p0, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->a:Landroid/app/Activity;

    .line 45
    const v0, 0x7f040098

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 50
    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 56
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljiv;

    invoke-direct {v0, p0}, Ljiv;-><init>(Ljgy;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->b:Ljiu;

    .line 63
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->b:Ljiu;

    invoke-interface {v0}, Ljiu;->a()V

    .line 65
    const v0, 0x7f1003c8

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->f:Landroid/support/v7/widget/RecyclerView;

    .line 67
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 69
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/PerfilInvestidorActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 71
    return-void
.end method
