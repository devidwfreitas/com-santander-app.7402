.class Lmk;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lacc;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lacc;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lmk;->a:Ljava/util/List;

    .line 25
    iput-boolean p2, p0, Lmk;->b:Z

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lmm;
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Llc;->layout_card_carrinho_propriedades:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    new-instance v1, Lmm;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmm;-><init>(Landroid/view/View;Lml;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Lmm;

    invoke-static {v0}, Lmm;->a(Lmm;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lmk;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacc;

    invoke-virtual {v0}, Lacc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 55
    check-cast v0, Lmm;

    invoke-static {v0}, Lmm;->b(Lmm;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lmk;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacc;

    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-boolean v0, p0, Lmk;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 58
    check-cast p1, Lmm;

    invoke-static {p1}, Lmm;->c(Lmm;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lmk;->a(Landroid/view/ViewGroup;I)Lmm;

    move-result-object v0

    return-object v0
.end method
