.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lhrh;


# static fields
.field public static final a:I = 0xc8

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private d:Lcom/santander/app/components/view/SantanderTextView;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Lcom/santander/app/components/view/SantanderButtonView;

.field private g:Lhsi;

.field private w:Lhob;

.field private x:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;)Lhsi;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->g:Lhsi;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;)Lcom/santander/app/components/view/SantanderButtonView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->f:Lcom/santander/app/components/view/SantanderButtonView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->w:Lhob;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->w:Lhob;

    invoke-virtual {v0}, Lhob;->notifyDataSetChanged()V

    .line 115
    :cond_0
    return-void
.end method

.method public a(Lhxq;)V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 80
    const-string v1, "Desconto em folha de pagamento.\n"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 81
    const-string v1, "Dinheiro liberado "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 82
    invoke-interface {p1}, Lhxq;->getDiasUteisFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 83
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 84
    const v1, 0x7f0902bc

    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 85
    const-string v1, " "

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 86
    invoke-interface {p1}, Lhxq;->getNomeConvenio()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Lbfj;

    .line 87
    const-string v1, " preenchendo os dados abaixo."

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 88
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lhre;

    invoke-direct {v0, p0, p1}, Lhre;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->w:Lhob;

    .line 104
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 106
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->w:Lhob;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 108
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 119
    const v0, 0x7f0902bf

    const v1, 0x7f0902be

    .line 121
    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0907fc

    const/4 v3, 0x0

    .line 119
    invoke-static {p0, v0, v1, v2, v3}, Lhys;->a(Landroid/app/Activity;ILjava/lang/String;IZ)V

    .line 124
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->setResult(I)V

    .line 129
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->finish()V

    .line 130
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->setResult(I)V

    .line 135
    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lhys;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 136
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lhrf;

    invoke-direct {v0, p0}, Lhrf;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lhrg;

    invoke-direct {v0, p0}, Lhrg;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->x:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 161
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->x:Landroid/app/Dialog;

    .line 163
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->x:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->x:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->x:Landroid/app/Dialog;

    .line 171
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f090329

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->c(I)V

    .line 54
    const v0, 0x7f100204

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    .line 55
    const v0, 0x7f100205

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->e:Landroid/support/v7/widget/RecyclerView;

    .line 56
    const v0, 0x7f100206

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->f:Lcom/santander/app/components/view/SantanderButtonView;

    .line 58
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->f:Lcom/santander/app/components/view/SantanderButtonView;

    new-instance v1, Lhrd;

    invoke-direct {v1, p0}, Lhrd;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->setResult(I)V

    .line 67
    new-instance v0, Lhsj;

    invoke-direct {v0, p0}, Lhsj;-><init>(Lhrh;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->g:Lhsi;

    .line 68
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->g:Lhsi;

    invoke-interface {v0}, Lhsi;->a()V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoDadosObrigatoriosActivity;->g:Lhsi;

    invoke-interface {v0}, Lhsi;->b()V

    .line 75
    return-void
.end method
