.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lhrj;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lhsl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhxq;)V
    .locals 3

    .prologue
    .line 44
    const v0, 0x7f100209

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-interface {p1}, Lhxq;->getValorParcelasOutrosFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v0, 0x7f10020a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 47
    new-instance v0, Lhri;

    invoke-direct {v0, p0, p0}, Lhri;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;Landroid/content/Context;)V

    .line 54
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 55
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 57
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateContract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lhoh;

    invoke-direct {v0, p1}, Lhoh;-><init>(Ljava/util/List;)V

    .line 62
    iget-object v1, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f09031e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->c(I)V

    .line 38
    new-instance v0, Lhsm;

    invoke-direct {v0, p0}, Lhsm;-><init>(Lhrj;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->b:Lhsl;

    .line 39
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoEmpAtuaisActivity;->b:Lhsl;

    invoke-interface {v0}, Lhsl;->a()V

    .line 40
    return-void
.end method
