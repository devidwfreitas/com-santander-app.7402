.class public Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lhvw;


# instance fields
.field private a:Landroid/support/v4/widget/NestedScrollView;

.field private b:Lcom/santander/app/components/view/SantanderTextView;

.field private c:Lcom/santander/app/components/view/SantanderTextView;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Lhwk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f100232

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->a:Landroid/support/v4/widget/NestedScrollView;

    .line 60
    const v0, 0x7f10024a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 61
    const v0, 0x7f10024b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 62
    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 63
    return-void
.end method

.method private b(Lhxn;)V
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 73
    const-string v1, "Sua d\u00edvida total em "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 74
    invoke-interface {p1}, Lhxn;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 75
    const-string v1, " \u00e9:"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 76
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lhxn;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->b(Lhxn;)V

    .line 68
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-interface {p1}, Lhxn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhuk;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 81
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 83
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lhue;

    invoke-direct {v1, p1, v2}, Lhue;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 85
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->a:Landroid/support/v4/widget/NestedScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f09030f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->c(I)V

    .line 46
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->a()V

    .line 48
    new-instance v0, Lhwl;

    invoke-direct {v0, p0}, Lhwl;-><init>(Lhvw;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->e:Lhwk;

    .line 49
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->e:Lhwk;

    invoke-interface {v0}, Lhwk;->a()V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUDividaDetailActivity;->e:Lhwk;

    invoke-interface {v0}, Lhwk;->b()V

    .line 56
    return-void
.end method
