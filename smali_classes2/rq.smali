.class Lrq;
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
            "Ltb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lrq;->a:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lrs;
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Llc;->layout_card_produtos_children_benefifiarios:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    new-instance v1, Lrs;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lrs;-><init>(Landroid/view/View;Lrr;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lrq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 50
    move-object v0, p1

    check-cast v0, Lrs;

    invoke-static {v0}, Lrs;->a(Lrs;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lrq;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltb;

    invoke-virtual {v0}, Ltb;->a()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lta;

    invoke-virtual {v0}, Lta;->a()Lacc;

    move-result-object v0

    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    check-cast p1, Lrs;

    invoke-static {p1}, Lrs;->b(Lrs;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lrq;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltb;

    invoke-virtual {v0}, Ltb;->a()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lta;

    invoke-virtual {v0}, Lta;->a()Lacc;

    move-result-object v0

    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lrq;->a(Landroid/view/ViewGroup;I)Lrs;

    move-result-object v0

    return-object v0
.end method
