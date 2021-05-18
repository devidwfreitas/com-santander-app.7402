.class public abstract Lhob;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lhoc;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    iput-object p1, p0, Lhob;->a:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lhoc;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 47
    new-instance v0, Lhog;

    invoke-direct {v0, p0, p1}, Lhog;-><init>(Lhob;Landroid/view/ViewGroup;)V

    .line 51
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 49
    new-instance v0, Lhoe;

    invoke-direct {v0, p0, p1}, Lhoe;-><init>(Lhob;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lhof;

    invoke-direct {v0, p0, p1}, Lhof;-><init>(Lhob;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lhob;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lhoc;I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhob;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    .line 58
    invoke-virtual {p1, v0}, Lhoc;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;)V

    .line 59
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lhob;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhob;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lhob;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;->getType()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lhoc;

    invoke-virtual {p0, p1, p2}, Lhob;->a(Lhoc;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lhob;->a(Landroid/view/ViewGroup;I)Lhoc;

    move-result-object v0

    return-object v0
.end method
