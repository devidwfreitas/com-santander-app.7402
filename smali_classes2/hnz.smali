.class public Lhnz;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lhoa;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;",
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
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lhnz;->a:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lhoa;
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402ff

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    new-instance v1, Lhoa;

    invoke-direct {v1, p0, v0}, Lhoa;-><init>(Lhnz;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lhoa;I)V
    .locals 5

    .prologue
    const/16 v3, 0x5a

    const/high16 v2, -0x1000000

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-object v0, p1, Lhoa;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    iget-object v0, p1, Lhoa;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    iget-object v0, p1, Lhoa;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v0, p1, Lhoa;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p1, Lhoa;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48
    :cond_0
    iget-object v1, p1, Lhoa;->b:Landroid/widget/TextView;

    if-nez p2, :cond_1

    const-string v0, "Valor Total"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p1, Lhoa;->c:Landroid/widget/TextView;

    const-string v2, "R$ %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lhnz;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;->getTotalInstallmentAmount()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void

    .line 48
    :cond_1
    const-string v0, "09/08/2017"

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lhnz;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhnz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lhoa;

    invoke-virtual {p0, p1, p2}, Lhnz;->a(Lhoa;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lhnz;->a(Landroid/view/ViewGroup;I)Lhoa;

    move-result-object v0

    return-object v0
.end method
