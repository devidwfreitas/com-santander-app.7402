.class public Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;
.super Lhmc;
.source "SourceFile"

# interfaces
.implements Lhmn;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lbr/com/santander/uisdk/error/SantanderErrorView;

.field private c:Lhms;

.field private d:Lhky;

.field private e:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lhmc;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;)Lhms;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->c:Lhms;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 66
    const v0, 0x7f1002f9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/error/SantanderErrorView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    .line 67
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const v1, 0x7f09020f

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextButton(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const v1, 0x7f0203be

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setIcon(I)V

    .line 69
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const v1, 0x7f090765

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    new-instance v1, Lhml;

    invoke-direct {v1, p0}, Lhml;-><init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f100205

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 79
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lhky;

    iget-object v2, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->c:Lhms;

    invoke-direct {v1, v2}, Lhky;-><init>(Lhkt;)V

    iput-object v1, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->d:Lhky;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 80
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lhmm;

    invoke-direct {v1, p0}, Lhmm;-><init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 93
    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lhmc;->a()V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->c:Lhms;

    invoke-interface {v0}, Lhms;->h()V

    .line 145
    return-void
.end method

.method public bridge synthetic a(Lhxl;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Lhmc;->a(Lhxl;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhxl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->d:Lhky;

    invoke-virtual {v0, p1}, Lhky;->a(Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->d:Lhky;

    invoke-virtual {v0}, Lhky;->a()V

    .line 103
    return-void
.end method

.method public bridge synthetic b(Lhxl;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Lhmc;->b(Lhxl;)V

    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->e:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->e:Landroid/app/Dialog;

    .line 120
    :cond_0
    return-void
.end method

.method public bridge synthetic c(Lhxl;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Lhmc;->c(Lhxl;)V

    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->e:Landroid/app/Dialog;

    .line 128
    :cond_0
    return-void
.end method

.method public d(Lhxl;)V
    .locals 0

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->a(Landroid/content/Context;Lhxl;)V

    .line 108
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public e(Lhxl;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->a(Landroid/content/Context;Lhxl;Z)V

    .line 113
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 149
    invoke-static {}, Lgpu;->i()V

    .line 150
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 154
    invoke-static {}, Lgpu;->j()V

    .line 155
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Lhya;->b(Landroid/content/Context;I)V

    .line 160
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Lhya;->a(Landroid/content/Context;I)V

    .line 165
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lhmc;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f04005d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->setContentView(I)V

    .line 51
    new-instance v0, Lhmt;

    invoke-direct {v0, p0}, Lhmt;-><init>(Lhmn;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->c:Lhms;

    .line 53
    const v0, 0x7f09020e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->c(I)V

    .line 54
    invoke-direct {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->k()V

    .line 56
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->c:Lhms;

    invoke-interface {v0}, Lhms;->d()V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lhmc;->onDestroy()V

    .line 62
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoListActivity;->c:Lhms;

    invoke-interface {v0}, Lhms;->f()V

    .line 63
    return-void
.end method
