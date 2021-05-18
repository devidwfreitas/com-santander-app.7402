.class public Lhky;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lhku;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhxl;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lhkt;


# direct methods
.method public constructor <init>(Lhkt;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhky;->a:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lhky;->b:Lhkt;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lhku;
    .locals 2

    .prologue
    .line 31
    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    .line 32
    new-instance v0, Lhkx;

    iget-object v1, p0, Lhky;->b:Lhkt;

    invoke-direct {v0, p1, v1}, Lhkx;-><init>(Landroid/view/ViewGroup;Lhkt;)V

    .line 34
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhks;

    iget-object v1, p0, Lhky;->b:Lhkt;

    invoke-direct {v0, p1, v1}, Lhks;-><init>(Landroid/view/ViewGroup;Lhkt;)V

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lhky;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    invoke-virtual {p0}, Lhky;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public a(Lhku;I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lhky;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxl;

    .line 41
    invoke-virtual {p1, v0}, Lhku;->a(Lhxl;)V

    .line 42
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
    .line 55
    iget-object v0, p0, Lhky;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iget-object v0, p0, Lhky;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-virtual {p0}, Lhky;->notifyDataSetChanged()V

    .line 58
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lhky;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lhky;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxl;

    invoke-interface {v0}, Lhxl;->a()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lhku;

    invoke-virtual {p0, p1, p2}, Lhky;->a(Lhku;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lhky;->a(Landroid/view/ViewGroup;I)Lhku;

    move-result-object v0

    return-object v0
.end method
