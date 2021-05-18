.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lhqo;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/santander/app/seguros/ui/widgets/CircleChartView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/app/Dialog;

.field private w:Lhrp;

.field private x:Lhnw;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 129
    new-instance v0, Lhqm;

    invoke-direct {v0, p0}, Lhqm;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->y:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lhqn;

    invoke-direct {v0, p0}, Lhqn;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->z:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;)Lhrp;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->w:Lhrp;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->b:Lcom/santander/app/seguros/ui/widgets/CircleChartView;

    invoke-virtual {v0, p1}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->setProgress(I)V

    .line 87
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->c:Landroid/widget/TextView;

    const-string v1, "%s%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->x:Lhnw;

    invoke-virtual {v0, p1, p2, p3}, Lhnw;->a(Ljava/lang/String;ZZ)V

    .line 99
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->g:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 104
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->g:Landroid/app/Dialog;

    .line 106
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->g:Landroid/app/Dialog;

    .line 114
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPContratacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->finish()V

    .line 121
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoRefinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f09031b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->c(I)V

    .line 47
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->a:Landroid/view/View;

    .line 48
    const v0, 0x7f10022b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->b:Lcom/santander/app/seguros/ui/widgets/CircleChartView;

    .line 49
    const v0, 0x7f10022c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->c:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f10022d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->d:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f10022e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->e:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f10022f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->f:Landroid/support/v7/widget/RecyclerView;

    .line 54
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 56
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 58
    new-instance v0, Lhnw;

    invoke-direct {v0}, Lhnw;-><init>()V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->x:Lhnw;

    .line 59
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->x:Lhnw;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 61
    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f100231

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v0, Lhrq;

    invoke-direct {v0, p0}, Lhrq;-><init>(Lhqo;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->w:Lhrp;

    .line 65
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->w:Lhrp;

    invoke-interface {v0}, Lhrp;->a()V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPRetentionActivity;->w:Lhrp;

    invoke-interface {v0}, Lhrp;->b()V

    .line 72
    return-void
.end method
