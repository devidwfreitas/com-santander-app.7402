.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoContratosAtuaisActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lhrc;


# instance fields
.field private a:Lhsd;

.field private b:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoContratosAtuaisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoContratosAtuaisActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 50
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoContratosAtuaisActivity;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 51
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoContratosAtuaisActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 52
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_InformativoResumoContratual_Acao"

    const-string v1, "InformativoContratosAtuais"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lhnz;

    invoke-direct {v0, p1}, Lhnz;-><init>(Ljava/util/List;)V

    .line 44
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoContratosAtuaisActivity;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoContratosAtuaisActivity;->setContentView(I)V

    .line 36
    new-instance v0, Lhse;

    invoke-direct {v0, p0}, Lhse;-><init>(Lhrc;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoContratosAtuaisActivity;->a:Lhsd;

    .line 37
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoContratosAtuaisActivity;->a:Lhsd;

    invoke-interface {v0}, Lhsd;->a()V

    .line 39
    return-void
.end method
